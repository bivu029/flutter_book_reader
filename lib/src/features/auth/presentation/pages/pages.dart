import 'dart:async';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/core/routes/names.dart';

import 'package:go_router/go_router.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:bookbazar/src/core/api/api.dart';
import 'package:bookbazar/src/core/gen/assets.gen.dart';

import 'package:bookbazar/src/features/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:bookbazar/src/features/auth/presentation/widgets/sign_button/sign_in_but.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

GoogleSignIn _googleSignIn = GoogleSignIn(
  clientId: Api.webclinetId,
  scopes: Api.scopes,
);

class _AuthPageState extends State<AuthPage> {
  GoogleSignInAccount? _currentUser;
  bool _isAuthorized = false; // has granted permissions?

  @override
  void initState() {
    super.initState();

    _googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount? account) async {
      // #docregion CanAccessScopes
      // In mobile, being authenticated means being authorized...
      bool isAuthorized = account != null;
      // However, on web...
      if (kIsWeb && account != null) {
        isAuthorized = await _googleSignIn.canAccessScopes(Api.scopes);
      }
      setState(() {
        _currentUser = account;
        _isAuthorized = isAuthorized;
      });

      // Now that we know that the user can access the required scopes, the app
      // can call the REST API.
      if (isAuthorized) {
        unawaited(_handleAccess(account!));
      }
    });
    //_googleSignIn.signInSilently();
  }

  Future<void> _handleAccess(GoogleSignInAccount account) async {
    final auth = await account.authentication;

    if (mounted) {
      context.read<AuthBloc>().add(
            ServercallEvent(
              authModel: User(
                email: account.email,
                idToken: auth.idToken!,
                name: account.displayName!,
                photoUrl: account.photoUrl,
              ),
            ),
          );
    }
  }

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print("this google sign error");
    }
  }

  Future<void> _handleAuthorizeScopes() async {
    final bool isAuthorized = await _googleSignIn.requestScopes(Api.scopes);
    // #enddocregion RequestScopes
    setState(() {
      _isAuthorized = isAuthorized;
    });

    // #docregion RequestScopes
    if (isAuthorized) {
      unawaited(_handleAccess(_currentUser!));
    }
    // #enddocregion RequestScopes
  }

  @override
  Widget build(BuildContext context) {
    final GoogleSignInAccount? user = _currentUser;

    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: user != null
          ? BlocConsumer<AuthBloc, AuthState>(
              buildWhen: (previous, current) => previous != current,
              listenWhen: (previous, current) => previous != current,
              listener: (context, state) async {
            
                if (state is AuthErrorState) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    width: 370,
                    behavior: SnackBarBehavior.floating,
                    content: Text(state.message!),
                    backgroundColor: Colors.red,
                  ));
                  await _googleSignIn.signOut();
                } else if (state is AuthSucessState) {
                  GoRouter.of(context).pushReplacementNamed(
                      RoutesNameEnum.dashboard.name,
                     );
                }
              },
              builder: (context, state) {
                if (state is AuthLoadingState) {
                  return const Center(
                    child: SizedBox(
                      height: 70,
                      width: 70,
                      child: LoadingIndicator(
                        indicatorType: Indicator.ballSpinFadeLoader,

                        /// Required, The loading type of the widget
                        colors: [
                          Colors.blue,
                          Colors.yellow,
                          Colors.green,
                          Colors.red,
                          Colors.cyan,
                          Colors.amber
                        ],

                        /// Optional, The color collections
                        strokeWidth: 2,
                      ),
                    ),
                  );
                } else {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("sign successfully"),
                        const SizedBox(
                          height: 50,
                        ),
                        if (!_isAuthorized) ...<Widget>[
                          const Text(
                              'Additional permissions needed to read your contacts.'),
                          ElevatedButton(
                            onPressed: _handleAuthorizeScopes,
                            child: const Text('REQUEST PERMISSIONS'),
                          ),
                        ]
                      ],
                    ),
                  );
                }
              },
            )
          : Center(
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(maxWidth: 400, maxHeight: size.height),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 1 / 5,
                      ),
                      Image(
                          height: size.height * 1.48 / 5,
                          width: 190,
                          image: AssetImage(Assets.image.image11.path)),
                      ConstrainedBox(
                        constraints:
                            BoxConstraints(maxHeight: size.height * .448),
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: Card(
                            color: const Color.fromARGB(255, 186, 255, 201),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      right: 20, left: 20, top: 20),
                                  child: Text(
                                    "Immerse Yourself, Discover ",
                                    style: TextStyle(
                                      fontFamily: 'Josefin_Sans',
                                      fontSize: 22,
                                      fontWeight: FontWeight
                                          .w600, // Use GraphikBold.otf
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Skills, and  Adventures",
                                  style: TextStyle(
                                    fontFamily: 'Josefin_Sans',
                                    fontSize: 22,
                                    fontWeight:
                                        FontWeight.w600, // Use GraphikBold.otf
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * .44 * .07,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      right: 15, left: 15, top: 20),
                                  child: Text(
                                    "Explore the latest arrivals and ",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 129, 126, 126),
                                      fontFamily: 'Josefin_Sans',
                                      fontSize: 18,
                                      fontWeight: FontWeight
                                          .w500, // Use GraphikBold.otf
                                    ),
                                  ),
                                ),
                                const Text(
                                  "new literary treasures BookBazaar",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 129, 126, 126),
                                    fontFamily: 'Josefin_Sans',
                                    fontSize: 18,
                                    fontWeight:
                                        FontWeight.w500, // Use GraphikBold.otf
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * .44 * .14,
                                ),
                                buildSignInButton(onPressed: _handleSignIn)
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
    ));
  }
}

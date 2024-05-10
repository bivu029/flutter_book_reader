import 'package:bookbazar/src/core/routes/names.dart';
import 'package:bookbazar/src/features/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_indicator/loading_indicator.dart';

class IsFirstTimer extends StatefulWidget {
  const IsFirstTimer({super.key});

  @override
  State<IsFirstTimer> createState() => _FirstTimerState();
}

class _FirstTimerState extends State<IsFirstTimer> {
  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(JwtIsExistEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocConsumer<AuthBloc, AuthState>(
        buildWhen: (previous, current) => previous != current,
        listenWhen: (previous, current) => previous != current,
        listener: (context, state) {
       
          if (state is JwtSucess && state.authEntity?.jwtToken != null) {
           
            GoRouter.of(context).pushReplacementNamed(
              RoutesNameEnum.dashboard.name,
            );
          } else {
            GoRouter.of(context).pushReplacementNamed(
              RoutesNameEnum.signin.name,
            );
          }
        },
        builder: (context, state) {
          return const SizedBox(
            height: 200,
            width: 300,
            child: Center(
              child: LoadingIndicator(
                indicatorType: Indicator.ballRotateChase,

                /// Required, The loading type of the widget
                colors: [Colors.blue, Colors.green, Colors.cyan],

                /// Optional, The color collections
                strokeWidth: 2,
              ),
            ),
          );
        },
      )),
    );
  }
}

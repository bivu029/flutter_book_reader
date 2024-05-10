import 'package:flutter/material.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

import 'stub.dart';

/// Renders a SIGN IN button that calls `handleSignIn` onclick.
Widget buildSignInButton({HandleSignInFn? onPressed}) {
  return SignInButton(
      width: 230,
      padding: 14,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      buttonType: ButtonType.google,
      onPressed: onPressed);
}

import 'package:flutter/material.dart';
import 'package:google_sign_in_web/web_only.dart' as web;

import 'stub.dart';

/// Renders a web-only SIGN IN button.
Widget buildSignInButton({HandleSignInFn? onPressed}) {
  return web.renderButton();
}
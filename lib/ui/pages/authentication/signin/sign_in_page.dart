import 'package:flutter/material.dart';
import 'package:flutter_application/ui/blocs/blocs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../generated/l10n.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await context.read<AuthBloc>().login("username", "");
          },
          child: Text(
            "SIGN IN",
            style: GoogleFonts.nanumPenScript(
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}

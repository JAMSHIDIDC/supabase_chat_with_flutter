// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:my_chat_app/chat.dart';
import 'package:my_chat_app/chat/chat_profile.dart';
import 'package:my_chat_app/constant.dart';
import 'package:my_chat_app/register.dart';

/// Page to redirect users to the appropriate page depending on the initial auth state
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration.zero);

    final session = supabase.auth.currentSession;
    if (session == null) {
      Navigator.of(context)
          .pushAndRemoveUntil(RegisterPage.route(), (route) => false);
    } else {
      Navigator.of(context)
          .pushAndRemoveUntil(ChatUserProfilePage.route(), (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: preloader);
  }
}

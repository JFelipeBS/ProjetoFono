import 'package:flutter/material.dart';
import 'package:projeto_fono/features/home/home_page.dart';
import 'package:projeto_fono/features/loading/loading_page.dart';
import 'package:projeto_fono/features/login/login_page.dart';
import 'package:projeto_fono/services/auth_service.dart';
import 'package:provider/provider.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);

    if (auth.isLoading) {
      return LoadingPage();
    } else if (auth.usuario == null) {
      return LoginPage();
    } else {
      return HomePage();
    }
  }
}

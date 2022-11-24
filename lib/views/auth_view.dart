import 'package:dartz/dartz.dart' as dz;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pr2/data/repository/auth_repositories_impl.dart';
import 'package:pr2/views/demo_view.dart';

import '../common/custom_button.dart';
import '../domain/entity/role_entity.dart';
import 'utilis/text_filed_password.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  final _authImplementation = AuthRepositoriImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              const Text(
                'MPT pract',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              TextFormField(controller: _loginController),
              const SizedBox(height: 20),
              TextFiledPassword(_passwordController),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Войти в систему',
                onPressed: () async {
                  dz.Either<String, RoleEnum> authResult =
                      await _authImplementation.signIn(
                    _loginController.text,
                    _passwordController.text,
                  );
                  if (authResult.isLeft()) {
                    Get.snackbar('Ошибка', authResult.toString());
                  } else {
                    DemoView(message: 'auth done you are ${authResult.toString()}');
                  }
                },
              ),
              const SizedBox(height: 10),
              CustomButton(
                text: 'Зарегистрироваться',
                onPressed: () async {
                  dz.Either<String, bool> authResult =
                      await _authImplementation.signUp(
                    _loginController.text,
                    _passwordController.text,
                  );
                  if (authResult.isLeft()) {
                    Get.snackbar('Ошибка', authResult.toString());
                  } else {DemoView(message: 'New user!!');}
                },
              ),
              const Spacer(
                flex: 3,
              ),
              Text(
                '# Нам кибер ПИS*OS #',
                textAlign: TextAlign.center,
                style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Router
import 'package:go_router/go_router.dart';
// Material
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({ super.key });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Bem-vindo(a)!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 24),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Senha',
            border: OutlineInputBorder(),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 24),
        const SizedBox(height: 12),
        TextButton(
          onPressed: () {
            context.go('/login/forgot');
          },
          child: const Text('Esqueci minha senha'),
        ),
        ElevatedButton(
          onPressed: () {
            context.go('/');
          },
          child: const Text('Entrar'),
        ),
      ],
    );
  }
}

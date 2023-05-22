import 'package:flutter/material.dart';
import 'package:quitanda_virtual/src/auth/components/custom_text_field.dart';
import 'package:quitanda_virtual/src/config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwathColor,
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                'Cadastro',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
            ),
          ),

          //Formulário
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 40,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(45),
              ),
            ),
            child: Column(
              children: [
                const CustomTextField(
                  icon: Icons.email,
                  label: 'E-mail',
                ),
                const CustomTextField(
                  icon: Icons.lock,
                  label: 'Senha',
                  isSecret: true,
                ),
                const CustomTextField(
                  icon: Icons.person,
                  label: 'Nome',
                ),
                const CustomTextField(
                  icon: Icons.phone,
                  label: 'Celular',
                ),
                const CustomTextField(
                  icon: Icons.file_copy,
                  label: 'CPF',
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Cadastrar Usuário',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

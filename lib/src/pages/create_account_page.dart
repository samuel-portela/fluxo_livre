import 'package:app_nivardo/src/widget/custo_text_field.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagem de fundo
          SizedBox.expand(
            child: Image.asset(
              'assets/images/img_fundologin.png',
              fit: BoxFit.cover,
            ),
          ),
          // Conteúdo sobre a imagem
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              // Adicionado para evitar overflow em telas menores
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  // Logo
                  const Image(
                    image: AssetImage('assets/images/et.png'),
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 16),
                  // Título
                  const Text(
                    'Criar Nova Conta',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 32),
                  // Inputs
                  CustomTextField(
                    icon: Icons.person,
                    hint: 'Nome',
                    obscure: false,
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    icon: Icons.email,
                    hint: 'E-mail',
                    obscure: false,
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    icon: Icons.credit_card,
                    hint: 'CPF',
                    obscure: false,
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    icon: Icons.lock,
                    hint: 'Senha',
                    obscure: true,
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    icon: Icons.lock_outline,
                    hint: 'Confirmar senha',
                    obscure: true,
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/home');
                        },
                        child: const Text('Cadastrar'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancelar'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

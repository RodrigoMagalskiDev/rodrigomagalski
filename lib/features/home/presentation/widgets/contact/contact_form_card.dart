import 'package:flutter/material.dart';
import 'package:portfolio/core/ui/widgets/gradient_button.dart';
import 'package:validatorless/validatorless.dart';

class ContactFormCard extends StatefulWidget {
  const ContactFormCard({super.key});

  @override
  State<ContactFormCard> createState() => _ContactFormCardState();
}

class _ContactFormCardState extends State<ContactFormCard> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _companyController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _companyController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Envie uma Mensagem',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 12),
              Text('Nome *', style: TextStyle(color: Colors.black)),
              TextFormField(
                controller: _nameController,
                validator: Validatorless.required('Campo obrigatório'),
                decoration: const InputDecoration(labelText: 'Nome'),
              ),
              const SizedBox(height: 16),
              Text('Email *', style: TextStyle(color: Colors.black)),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                validator: Validatorless.multiple([
                  Validatorless.required('Campo obrigatório'),
                  Validatorless.email('Email inválido'),
                ]),
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _companyController,
                decoration: const InputDecoration(labelText: 'Empresa'),
              ),
              const SizedBox(height: 16),
              Text('Mensagem *', style: TextStyle(color: Colors.black)),
              TextFormField(
                controller: _messageController,
                maxLines: 3,
                validator: Validatorless.required('Campo obrigatório'),
                decoration: const InputDecoration(labelText: 'Mensagem'),
              ),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: GradientButton(
                  onPressed: _send,
                  filled: true,
                  title: 'Enviar Mensagem',
                  // width: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _send() {
    final valid = _formKey.currentState?.validate() ?? false;
    if (!valid) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Mensagem enviada!')));
    _formKey.currentState?.reset();
    _nameController.clear();
    _emailController.clear();
    _companyController.clear();
    _messageController.clear();
  }
}

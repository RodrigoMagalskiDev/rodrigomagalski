import 'package:flutter/material.dart';
import 'package:portfolio/app/services/email_service.dart';
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
  final _emailService = EmailService();
  bool _isLoading = false;

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
                child: _isLoading
                    ? const CircularProgressIndicator()
                    : GradientButton(
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

  Future<void> _send() async {
    final valid = _formKey.currentState?.validate() ?? false;
    if (!valid) return;

    setState(() {
      _isLoading = true;
    });

    try {
      await _emailService.sendEmail(
        name: _nameController.text,
        email: _emailController.text,
        message: _messageController.text,
        company: _companyController.text,
      );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Mensagem enviada com sucesso!'),
            backgroundColor: Colors.green,
          ),
        );
        _formKey.currentState?.reset();
        _nameController.clear();
        _emailController.clear();
        _companyController.clear();
        _messageController.clear();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erro ao enviar mensagem: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  String _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map(
          (MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
        )
        .join('&');
  }
}

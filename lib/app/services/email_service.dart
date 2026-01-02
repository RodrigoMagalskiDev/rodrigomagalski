import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EmailService {
  final Dio _dio;

  EmailService() : _dio = Dio();

  Future<void> sendEmail({
    required String name,
    required String email,
    required String message,
    String? company,
  }) async {
    final contactEmail = dotenv.env['CONTACT_EMAIL'];

    if (contactEmail == null) {
      throw Exception('Contact email not found in .env');
    }

    try {
      await _dio.post(
        'https://formsubmit.co/$contactEmail',
        data: {
          'name': name,
          'email': email,
          '_subject': 'Novo contato do Portfólio - $name',
          'message': message,
          'company': company ?? '',
          '_captcha': 'false',
          '_template': 'table',
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
    } catch (e) {
      throw Exception('Failed to send email: $e');
    }
  }
}

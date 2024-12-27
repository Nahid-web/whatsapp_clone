import 'package:flutter_dotenv/flutter_dotenv.dart';


final String cloudName = dotenv.env['CLOUD_NAME'] ?? '';
final String uploadPreset = dotenv.env['UPLOAD_PRESET'] ?? '';
final String uploadUrl = dotenv.env['UPLOAD_URL'] ?? '';

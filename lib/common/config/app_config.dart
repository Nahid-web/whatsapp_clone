import 'package:flutter_dotenv/flutter_dotenv.dart';


final String cloudName = dotenv.env['CLOUD_NAME'] ?? '';
final String uploadPreset = dotenv.env['UPLOAD_PRESET'] ?? '';
final String uploadUrl = dotenv.env['UPLOAD_URL'] ?? '';
final String giphyApiKey = dotenv.env['GIPHY_API'] ?? '';



class AgoraConfig{
static String token = dotenv.env['agoraToken'] ?? '';
static String appId = dotenv.env['agoraAppId']  ?? '';
static String appCertificate = dotenv.env['agoraAppCertificate'] ?? '';
static String serverBaseUrl = dotenv.env['serverBaseUrl'] ?? '';
}

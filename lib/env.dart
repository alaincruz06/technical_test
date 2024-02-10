import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  //FIREBASE
  @EnviedField(varName: 'PROJECT_ID', obfuscate: true)
  static final String projectId = _Env.projectId;
  @EnviedField(varName: 'STORAGE_BUCKET', obfuscate: true)
  static final String storageBucket = _Env.storageBucket;
  @EnviedField(varName: 'MESSAGING_SENDER_ID', obfuscate: true)
  static final String messagingSenderId = _Env.messagingSenderId;
  @EnviedField(varName: 'FIREBASE_ANDROID_APP_ID', obfuscate: true)
  static final String firebaseAndroidAppId = _Env.firebaseAndroidAppId;
  @EnviedField(varName: 'FIREBASE_ANDROID_API_KEY', obfuscate: true)
  static final String firebaseAndroidApiKey = _Env.firebaseAndroidApiKey;

  //TMDB
  @EnviedField(varName: 'API_KEY', obfuscate: true)
  static final String apiKey = _Env.apiKey;
  @EnviedField(varName: 'API_READ_ACCESS_TOKEN', obfuscate: true)
  static final String apiReadAccessToken = _Env.apiReadAccessToken;
}

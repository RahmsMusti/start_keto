import 'dart:io';

class AdHelper {
  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-6928372813488925/1740652347';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-6928372813488925/9389904043';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}

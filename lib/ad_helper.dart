import 'dart:io';

class AdHelper {
  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-6928372813488925~7184550715';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-6928372813488925~6418263955';
    } else {
      throw new UnsupportedError('Unsupported platform');
    }
  }
}

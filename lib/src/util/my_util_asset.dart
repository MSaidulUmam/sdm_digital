import '../resource/resource.dart';

extension MyUtilAsset on String {
  String? utilTipeAsset() {
    switch (this) {
      case 'skkni':
        return MyAssets.assetsImagesSkkniPng;
      case 'peta-ukupasi':
        return MyAssets.assetsImagesPetaOkupasiPng;
    }
    return null;
  }
}

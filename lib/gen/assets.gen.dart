/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsCardsGen {
  const $AssetsCardsGen();

  /// File path: assets/cards/Frame 2.png
  AssetGenImage get frame2 => const AssetGenImage('assets/cards/Frame 2.png');

  /// File path: assets/cards/Frame 3.png
  AssetGenImage get frame3 => const AssetGenImage('assets/cards/Frame 3.png');

  /// File path: assets/cards/Frame 4.png
  AssetGenImage get frame4 => const AssetGenImage('assets/cards/Frame 4.png');

  /// File path: assets/cards/Frame 5.png
  AssetGenImage get frame5 => const AssetGenImage('assets/cards/Frame 5.png');

  /// List of all assets
  List<AssetGenImage> get values => [frame2, frame3, frame4, frame5];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/grommet-icons_resources.svg
  String get grommetIconsResources =>
      'assets/icons/grommet-icons_resources.svg';

  /// File path: assets/icons/icon-park_return.svg
  String get iconParkReturn => 'assets/icons/icon-park_return.svg';

  /// File path: assets/icons/ion_navigate-circle.svg
  String get ionNavigateCircle => 'assets/icons/ion_navigate-circle.svg';

  /// File path: assets/icons/logos_mastercard.svg
  String get logosMastercard => 'assets/icons/logos_mastercard.svg';

  /// File path: assets/icons/logos_paypal.svg
  String get logosPaypal => 'assets/icons/logos_paypal.svg';

  /// File path: assets/icons/material-symbols_home.svg
  String get materialSymbolsHome => 'assets/icons/material-symbols_home.svg';

  /// File path: assets/icons/material-symbols_search.svg
  String get materialSymbolsSearch =>
      'assets/icons/material-symbols_search.svg';

  /// File path: assets/icons/mdi_gift.svg
  String get mdiGift => 'assets/icons/mdi_gift.svg';

  /// File path: assets/icons/mingcute_back-line.svg
  String get mingcuteBackLine => 'assets/icons/mingcute_back-line.svg';

  /// File path: assets/icons/openmoji_return.svg
  String get openmojiReturn => 'assets/icons/openmoji_return.svg';

  /// List of all assets
  List<String> get values => [
        grommetIconsResources,
        iconParkReturn,
        ionNavigateCircle,
        logosMastercard,
        logosPaypal,
        materialSymbolsHome,
        materialSymbolsSearch,
        mdiGift,
        mingcuteBackLine,
        openmojiReturn
      ];
}

class Assets {
  Assets._();

  static const $AssetsCardsGen cards = $AssetsCardsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

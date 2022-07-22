/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/events.png
  AssetGenImage get events => const AssetGenImage('assets/images/events.png');

  /// File path: assets/images/flutter.svg
  String get flutter => 'assets/images/flutter.svg';

  /// File path: assets/images/flutter_kolkata.png
  AssetGenImage get flutterKolkata =>
      const AssetGenImage('assets/images/flutter_kolkata.png');

  /// File path: assets/images/fluttercon.png
  AssetGenImage get fluttercon =>
      const AssetGenImage('assets/images/fluttercon.png');

  /// File path: assets/images/google-devs.svg
  String get googleDevs => 'assets/images/google-devs.svg';

  /// File path: assets/images/gyt_logo.svg
  String get gytLogo => 'assets/images/gyt_logo.svg';

  /// File path: assets/images/kolkata.jpeg
  AssetGenImage get kolkata =>
      const AssetGenImage('assets/images/kolkata.jpeg');

  /// File path: assets/images/meetup.svg
  String get meetup => 'assets/images/meetup.svg';

  /// File path: assets/images/whatsapp.svg
  String get whatsapp => 'assets/images/whatsapp.svg';
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}

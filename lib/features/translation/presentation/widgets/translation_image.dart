

import 'package:flutter/material.dart';
import 'package:shded/core/strings/app_strings.dart';

class TranslationImage extends StatelessWidget {
  const TranslationImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('${kSrcForAssetsImages}translation.png')
      ],
    );
  }
}

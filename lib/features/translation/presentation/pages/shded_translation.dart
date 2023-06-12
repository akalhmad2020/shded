

import 'package:flutter/material.dart';
import 'package:shded/core/strings/app_strings.dart';
import 'package:shded/features/translation/presentation/widgets/language_item.dart';

import '../widgets/translation_image.dart';

class ShdedTranslation extends StatefulWidget {
  const ShdedTranslation({super.key});

  @override
  State<ShdedTranslation> createState() => _ShdedTranslationState();
}

class _ShdedTranslationState extends State<ShdedTranslation> {


  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return  Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(height: height * 0.1,),
           const  TranslationImage() ,
           SizedBox(height: height * 0.1,),
           Container(
             margin: EdgeInsets.symmetric(horizontal: width * 0.06),
             child: const Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                  Text("Choose app's language" , style: TextStyle(fontFamily: kFamilyFontName ,
                     fontWeight: FontWeight.w500 , fontSize: 18),),
                 LanguageItem()
               ],
             ),
           ),

         ],
        ),
      ),
    );
  }
}

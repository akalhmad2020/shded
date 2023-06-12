

import 'package:flutter/material.dart';

class LanguageItem extends StatelessWidget {
  const LanguageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding : const EdgeInsets.all(5),
      margin:  const EdgeInsets.symmetric(horizontal: 10),
      decoration:  BoxDecoration(
        border: Border.all(color: const Color(0xffCCCCCC) , width: 1.0)
      ),
      child: Row(
        children: [
          const  SizedBox(width: 20,),
          RadioMenuButton(
            value: 1,
            groupValue: 1,
            onChanged: (int? x){} ,
            child: const SizedBox(),) ,
          const Spacer(),
         const Text('English'),

        ],
      ),
    );
  }
}

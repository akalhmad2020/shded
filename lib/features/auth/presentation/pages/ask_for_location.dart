

import 'package:flutter/material.dart';
import 'package:shded/core/app_theam.dart';
import 'package:shded/core/strings/app_strings.dart';
import 'package:shded/features/home/presentation/home.dart';

class AskForLocation extends StatelessWidget {
  const AskForLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 24),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  const Text('Get Location') ,
                  const SizedBox(height: 50,) ,
                  Image.asset('${kSrcForAssetsImages}map.png'),
                  const SizedBox(height: 30,) ,
                 const Text('Determine Location' , style: TextStyle(
                   fontSize: 26 , fontWeight: FontWeight.w700 , fontFamily: kFamilyFontName
                 ),),
                  const SizedBox(height: 20,) ,
                  const Text('Allow to get your location' , style: TextStyle(
                      fontSize: 16 , fontWeight: FontWeight.w500 , fontFamily: kFamilyFontName
                  ),),
                  const SizedBox(height: 100,) ,
                  _buildContainer(primaryColor, 'Allow access' , context) ,
                  const SizedBox(height: 20,) ,
                  const Text('Cancel' , style: TextStyle(
                      fontSize: 16 , fontWeight: FontWeight.w500 , fontFamily: kFamilyFontName
                  ),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container _buildContainer(Color color, String text , BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5)
      ),
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child:  InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=> const Home()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              text, style: const TextStyle(color: Colors.white,
                fontFamily: kFamilyFontName,
                fontWeight: FontWeight.w500,
                fontSize: 18),),
          ],
        ),
      ),
    );
  }
}

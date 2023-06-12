
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shded/core/strings/app_strings.dart';
import 'package:firebase_core/firebase_core.dart';

class Splash extends StatefulWidget {
  const Splash({super.key , required this.sharedPreferences});
  final SharedPreferences sharedPreferences;

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

 late bool? isItNotFirstTime ;

  Future<void> _navigateToOnBoardingScreenOrAnotherOne()async{
    await Future.delayed(const Duration(seconds: 2));
   isItNotFirstTime = widget.sharedPreferences.getBool(kIsItNotFirstTime);

   if( isItNotFirstTime! ){
     // ignore: use_build_context_synchronously
     Navigator.of(context).pushReplacementNamed(kSignUp);
   } else if(isItNotFirstTime == null){
     // ignore: use_build_context_synchronously
     Navigator.of(context).pushReplacementNamed(kOnBoarding);
   }
  }

  @override
  void initState() {
    _navigateToOnBoardingScreenOrAnotherOne();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width  ;
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding:  EdgeInsets.symmetric(horizontal: width * .025 , vertical:  width * .06) ,
        width: double.infinity,
        height: width *.03,
        decoration: const BoxDecoration (
          color:  Colors.white,
        ),
        child: Center(
          child: SizedBox(
            width: width *.6,
            height: width *.2,
            child: Image.asset(
              '${kSrcForAssetsImages}splash_logo.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
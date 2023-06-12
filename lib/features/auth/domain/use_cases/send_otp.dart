import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:shded/features/auth/domain/repositiries_interfaces/repository_auth_interface.dart';
import 'package:shded/features/auth/domain/repositiries_interfaces/send_otp_interface.dart';
import '../entity/person.dart';
class SendOtpUseCase {

  SendOtpUseCase({required this.sendOtpInter});
  final SendOtpInter sendOtpInter ;
  Future<bool> sendOtpUseCase ({required String otp , required String vId})async{
    return sendOtpInter.sendOtp(otp , vId );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:shded/features/auth/domain/repositiries_interfaces/send_otp_interface.dart';

class SendOtpImpl implements SendOtpInter{
  @override
  Future<bool> sendOtp(String otp, String verificationId) async {

      PhoneAuthCredential phoneAuthCredential =
      PhoneAuthProvider.credential(verificationId: verificationId, smsCode: otp);
      await FirebaseAuth.instance.signInWithCredential(phoneAuthCredential);
     return  Future.value(true);

  }

}
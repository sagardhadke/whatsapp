import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/uihelper.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/welcome.png"),
            SizedBox(height: 20),
            Uihelper.CustomText(
                text: "Welcome to WhatsApp",
                height: 20,
                color: Color(0XFF000000)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: "Read out ", height: 14),
                Uihelper.CustomText(
                    text: "Privacy Policy.",
                    height: 14,
                    color: Color(0XFF0C42CC)),
                Uihelper.CustomText(
                    text: " Tap 'Agree and continue'", height: 14)
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: "to accept the", height: 14),
                Uihelper.CustomText(
                    text: "Teams of Service.",
                    height: 14,
                    color: Color(0XFF0C42CC))
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(callback: (){
          
      }, buttonname: "Agree and continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}

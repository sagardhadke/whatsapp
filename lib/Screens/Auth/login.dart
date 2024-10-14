import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/uiHelper.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phonecontroller = TextEditingController();
  String selectedcountry = "India";

  List<String> countries = ["India", "America", "Africa", "Germany", "London"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Uihelper.CustomText(
            text: "Enter your phone number",
            height: 16,
            fontweight: FontWeight.bold,
            color: Color(0XFF00A884)),
      ),
      body: Center(
        child: Column(
          children: [
            //method 2
            // SizedBox(height: 80,),
            // Center(child:
            // Uihelper.CustomText(text: "Enter your phone number",
            // height: 20, fontweight: FontWeight.bold),)

            //body

            Uihelper.CustomText(
                text: "WhatsApp will need to verify your phone", height: 16),
            Uihelper.CustomText(
                text: "number. Carrier charges may apply.", height: 16),
            Uihelper.CustomText(
                text: "What’s my number?",
                height: 16,
                color: Color(0XFF00A884)),

            SizedBox(height: 50),

            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: DropdownButtonFormField(
                items: countries.map((String country) {
                  return DropdownMenuItem(
                    child: Text(country),
                    value: country,
                  );
                }).toList(),
                onChanged: (newvalue) {
                  setState(() {
                    selectedcountry = newvalue!;
                  });
                },
                value: selectedcountry,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)))),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: '+91',
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF00A884))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF00A884))),
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0XFF00A884)))),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 250,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: phonecontroller,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF00A884)))),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton:
          Uihelper.CustomButton(callback: () {}, buttonname: 'Next'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

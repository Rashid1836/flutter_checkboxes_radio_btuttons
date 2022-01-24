import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            // elevation: 0,
            title: Text(
              "shopNow",
              style: GoogleFonts.dancingScript(
                  textStyle:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
            ),
            centerTitle: true,
            backgroundColor: Color(0xff34495E),
          ),
          drawer: Drawer(),
          body: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Product List",
                  style: GoogleFonts.lato(
                      textStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ),
                CheckboxGroup(
                  labels: ["Macbook M1 Pro", "iPhone", "Airpods", "iMac"],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      child: Icon(Icons.credit_card),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Select payment method",
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    RadioButtonGroup(labels: ["PayPal"]),
                    RadioButtonGroup(labels: ["Credit Card"])
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff34495E)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Proceed order",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

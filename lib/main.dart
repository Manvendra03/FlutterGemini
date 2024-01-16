import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_gemini_ai/Widgets/bottom_bar_widget.dart';
import 'package:provider/provider.dart';

String api_key = "AIzaSyCUuVZ-WNegoSDLq5iH48Ak6EIIaXTwh50";

void main() {
  Gemini.init(apiKey: api_key);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Gemini',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 34, 37, 45),
          appBar: AppBar(
            leading: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            title: const Text(
              "Flutter Gemini",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: const Color(0xff13161B),
          ),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(
                          top: 10,
                          right: index % 2 == 0 ? 50 : 0,
                          left: index % 2 == 1 ? 50 : 0,
                        ),
                        alignment: index % 2 == 0
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(1, 1),
                                  color: Colors.black,
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                ),
                              ],
                              color: index % 2 == 0
                                  ? Color.fromARGB(255, 54, 72, 102)
                                  : Color.fromARGB(255, 60, 65, 80),
                              borderRadius: BorderRadius.only(
                                topRight: index % 2 == 0
                                    ? Radius.circular(15)
                                    : Radius.zero,
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                topLeft: index % 2 == 1
                                    ? Radius.circular(15)
                                    : Radius.zero,
                              )),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Hello AI this  side but this text is very lonf hren we got sme sort of error in user interface ",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                BottomBarWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

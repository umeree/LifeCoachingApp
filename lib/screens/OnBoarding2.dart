import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:lifecoaching/screens/OnBoarding1.dart';
import 'package:lifecoaching/screens/OnBoarding3.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double fontsize = screenWidth < 500 ? 17 : 30;
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.dark),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Skip",
                  style: TextStyle(fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                    child: Container(
                      width: screenWidth * 0.5,
                      height: screenHeight * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)),
                      child: const Image(
                        image:
                            AssetImage("assets/images/Illustration 2@2x.png"),
                        // fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ConstrainedBox(
                      child: Text(
                        "What our mission is?",
                        style: TextStyle(
                            fontSize: fontsize,
                            height: 2,
                            fontWeight: FontWeight.w700),
                      ),
                      constraints: BoxConstraints(
                        maxWidth: 150,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Image(
                    image: AssetImage("assets/images/Target_icon.png"),
                    width: screenWidth / 5,
                    height: screenHeight / 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 300,
                    ),
                    child: Text(
                      "To unlock young professsionals of color's full potentional to maximize their potential",
                      style: TextStyle(
                        fontSize: fontsize,
                        fontWeight: FontWeight.w200,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnBoarding3()));
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 50),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          backgroundColor:
                              const Color.fromARGB(255, 14, 20, 88),
                          foregroundColor: Colors.white),
                      child: const Text(
                        "Next",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

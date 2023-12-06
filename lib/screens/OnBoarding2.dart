import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lifecoaching/screens/OnBoarding3.dart';

class ResponsiveWidget {
  static double getResponsiveFontSize(double screenWidth, double baseFontSize) {
    return screenWidth < 500 ? 17 : 30;
  }

  static double getResponsiveWidth(double screenWidth, double percentage) {
    return screenWidth * percentage;
  }

  static double getResponsiveHeight(double screenHeight, double percentage) {
    return screenHeight * percentage;
  }
}

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key});

  Widget targetImage() {
    return Image(image: AssetImage("assets/images/Target_icon.png"));
  }

  Widget IllustrationImage() {
    return Image(image: AssetImage("assets/images/Illustration.png"));
  }

  Widget Illustration2Image() {
    return Image(image: AssetImage("assets/images/Illustration 2@2x.png"));
  }

  Widget Illustration3Image() {
    return Image(image: AssetImage("assets/images/Illustration 3@2x-1.png"));
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double fontsize = ResponsiveWidget.getResponsiveFontSize(screenWidth, 30);

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
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
                    width:
                        ResponsiveWidget.getResponsiveWidth(screenWidth, 0.5),
                    height: ResponsiveWidget.getResponsiveHeight(
                        screenHeight, 0.25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Illustration2Image(),
                  ),
                ),
              ),
              // ConstrainedBox(
              //   constraints: (BoxConstraints(maxWidth: 200)),
              //   child: Text(
              //     "Welcome!",
              //     style: TextStyle(
              //         fontSize: fontsize,
              //         fontWeight: FontWeight.w700,
              //         height: 1.5),
              //   ),
              // ),
              ConstrainedBox(
                constraints: (BoxConstraints(minHeight: 90, maxWidth: 160)),
                child: Text("What our mission Is?",
                    style: TextStyle(
                      fontSize: fontsize,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              targetImage(),
              ConstrainedBox(
                constraints: (BoxConstraints(maxHeight: 130, maxWidth: 300)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "To unlock young professionals of color’s full potential to maximize their performance.",
                      style: TextStyle(
                          fontSize: fontsize,
                          fontWeight: FontWeight.w200,
                          height: 2),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OnBoarding3()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      backgroundColor: const Color.fromARGB(255, 14, 20, 88),
                      foregroundColor: Colors.white,
                    ),
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
      ),
    );
  }
}

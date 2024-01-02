import 'package:flutter/material.dart';
import 'package:portfolio_manisha/Projects.dart';
import 'package:portfolio_manisha/aboutMe.dart';
import 'package:portfolio_manisha/contact_me.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen(),
    ),
  );
}

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<Color> nameColors = [
    Colors.blue,
    Colors.blueAccent,
    Colors.purple,
    Colors.purpleAccent,
    Colors.pinkAccent,
    Colors.pink,
    Colors.red,
    Colors.deepOrange,
    Colors.orange,
    Colors.amberAccent,
    Colors.lime,
    Colors.limeAccent,
    Colors.lightGreenAccent,
    Colors.lightGreen,
    Colors.green,
    Colors.greenAccent,
    Colors.tealAccent,
    Colors.teal,
  ];
  int currentColorIndex = 0;

  List<String> developerTitles = [
    "Flutter Developer",
    "FullStack Web Developer",
    "Software Engineer",
  ];
  int currentDeveloperTitleIndex = 0;

  @override
  void initState() {
    super.initState();
    // Schedule a callback to change the color and title every 2 seconds
    Future.delayed(Duration(seconds: 1), _changeColorAndTitle);
  }

  void _changeColorAndTitle() {
    setState(() {
      currentColorIndex = (currentColorIndex + 1) % nameColors.length;
      currentDeveloperTitleIndex =
          (currentDeveloperTitleIndex + 1) % developerTitles.length;
    });

    // Schedule the next color and title change
    Future.delayed(Duration(seconds: 2), _changeColorAndTitle);
  }

  void _launchUrl(String url) async {
    try{
      launchUrl(
          Uri.parse(url),
          mode: LaunchMode.inAppWebView
      );
    }catch(e){
      print("Error   "+e.toString());
    }
    // print(url);
    // //const url = "https://github.com/Chandan0034/PriceComprison/blob/main/Backend/AddDataIntoMongodb.js";
    //  else {
    //   throw " Could not launch url";
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "\nManishaKumari Tiwari",
          style: TextStyle(
            color: nameColors[currentColorIndex],
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Colors.tealAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: const Opacity(
                  opacity: 0.7,
                  child: Image(
                    image: AssetImage(
                      "assets/best_background.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 300,
                left: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: " Hello I'm\n ",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(
                              text: "Man",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 40,
                                fontFamily: "Permanent",
                              ),
                            ),
                            const TextSpan(
                              text: "ishakumari\n",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontFamily: "Permanent",
                              ),
                            ),
                            const TextSpan(
                              text: "Ti",
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 40,
                                fontFamily: "Permanent",
                              ),
                            ),
                            const TextSpan(
                              text: "wari\n",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontFamily: "Permanent",
                              ),
                            ),
                            TextSpan(
                              text:
                              "<${developerTitles[currentDeveloperTitleIndex]}>",
                              style: const TextStyle(
                                color: Colors.pink,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: (){
                            _launchUrl("https://www.linkedin.com/in/manishakumari-tiwari-ab65aa229/");
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            "LinkedIn",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _launchUrl("https://github.com/Manishat10");
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            "GitHub",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Column(
                  children: [
                    AboutMe(),
                    Projects(),
                    Divider(color: Colors.black26, height: 20, thickness: 2),
                    ContactMe(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

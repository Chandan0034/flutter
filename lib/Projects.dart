import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  bool showTravelPage = false;
  bool showTributePage = false;
  bool showDLP = false;
  bool showQuizApp = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Projects",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            decoration: TextDecoration.none,
            fontFamily: "Rubik",
          ),
        ),
        SizedBox(height: 15,),
        buildProjectContainer(
          "Travel Page",
          "This is a travel booking system page which contains packages for different destinations and allows users to book tickets for different countries. This page is built using HTML, CSS, JS, and PHP",
          "assets/travelPage.png",
          showTravelPage,
              () {
            setState(() {
              showTravelPage = !showTravelPage;
            });
          },
        ),
        buildProjectContainer(
          "Tribute Page",
          "This is the Tribute page to swami vivekananda which contains in formationabout the early Life of swami ji, his education details, information about different books written by him and celebrations related to him like national youth day. This page is built using HTML and CSS",
          "assets/TributePage.png",
          showTributePage,
              () {
            setState(() {
              showTributePage = !showTributePage;
            });
          },
        ),
        buildProjectContainer(
          "Digital Literacy Platform",
          "Our project on digital literacy aims to bridge generational gaps by providing tailored programs for both children and the elderly. This Project is built using HTML, CSS, JS, and PHP",
          "assets/DLP.png",
          showDLP,
              () {
            setState(() {
              showDLP = !showDLP;
            });
          },
        ),
        buildProjectContainer(
          "Quiz App",
          "This Quiz App Contains questions which user is supposed to answer, at last it gives a summary of how many questions user answered correctly, what was the chosen. This app is built using Flutter",
          "assets/quizApp.png",
          showQuizApp,
              () {
            setState(() {
              showQuizApp = !showQuizApp;
            });
          },
        ),
      ],
    );
  }

  Widget buildProjectContainer(
      String title,
      String description,
      String imagePath,
      bool isVisible,
      VoidCallback onTap,
      ) {
    return Container(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              color: Colors.teal,
              padding: EdgeInsets.all(8),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 10,),
            if (isVisible)
              Column(
                children: [
                  Image(
                    image: AssetImage(imagePath),
                  ),
                  Text(
                    description,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio_manisha/languages.dart';
import 'package:portfolio_manisha/showResume.dart';
import 'package:portfolio_manisha/skills.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  void _launchResume() async {
    const resumeUrl = 'assets/resume.pdf';
    launchUrl(Uri.parse(resumeUrl));
    // Using url_launcher to open the PDF file
    // if (await canLaunch(resumeUrl)) {
    //   await launch(resumeUrl);
    // } else {
    //   // Handle the case where the PDF cannot be opened
    //   showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return AlertDialog(
    //         title: Text('Error'),
    //         content: Text('Could not open the resume.'),
    //         actions: <Widget>[
    //           TextButton(
    //             onPressed: () {
    //               Navigator.of(context).pop();
    //             },
    //             child: Text('OK'),
    //           ),
    //         ],
    //       );
    //     },
    //   );
    // }
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 900,
        ),
        const Text(
          "About Me",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            decoration: TextDecoration.none,
            fontFamily: "Rubik",
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.black45),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              // CircleAvatar(
              //   backgroundImage: AssetImage("assets/ha.png"),radius: 110,
              // ),
              Image(
                image: AssetImage("assets/ha.png"),
                height: 260,
                width: 260,
              ),
              Text(
                "     I am a third-year computer engineering student at Dr. D. Y. Patil Institute of Technology, Pimpri, Pune. I am deeply passionate about Flutter app development and possess a solid understanding of Flutter, Firebase, and Getx. With a keen awareness of the significance of time and a strong foundation in collaborative work, I have actively participated in team projects, including the All India Women-Only Hackathon. \n     As a computer engineering student, I bring a disciplined and detail-oriented approach to my work, emphasizing both efficiency and quality. My self-description centers around being an individual with an insatiable appetite for learning. I consistently strive to acquire new skills and knowledge, particularly in the realm of Flutter app development. \n     In addition to my technical skills, I am driven by a desire for continuous improvement, always seeking opportunities to enhance my capabilities.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowResume()));
                },
                child: Text(
                  'Download Resume',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
              Divider(color: Colors.black26, height: 20, thickness: 2),
              Container(
                // decoration: BoxDecoration(color: Colors.black12),
                child: Column(
                  children: [
                    Text(
                      "Languages",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 40,
                          fontFamily: "Permanent"),
                    ),
                    GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      childAspectRatio: 1.0,
                      children: [
                        Languages(percentage: 0.99, name: "Hindi"),
                        Languages(percentage: 0.93, name: "English"),
                        Languages(percentage: 0.8, name: "Marathi"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(color: Colors.black26, height: 20, thickness: 2),
                    Text(
                      "Skills",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 40,
                          fontFamily: "Permanent"),
                    ),
                    Skills(
                      name: "HTML",
                      value: 0.9,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Skills(
                      name: "CSS",
                      value: 0.9,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Skills(
                      name: "JavaScript",
                      value: 0.85,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Skills(
                      name: "Flutter",
                      value: 0.9,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Skills(
                      name: "C++ Programming",
                      value: 0.75,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Skills(
                      name: "Java",
                      value: 0.5,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Skills(
                      name: "Python",
                      value: 0.5,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

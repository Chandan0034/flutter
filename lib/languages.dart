import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Languages extends StatefulWidget {
  final double percentage;
  final String name;

  const Languages({Key? key, required this.percentage, required this.name})
      : super(key: key);

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  late double currentPercentage;
  bool isBlinking = false;
  late double initialPercentage;

  @override
  void initState() {
    super.initState();
    currentPercentage = widget.percentage;
    initialPercentage = widget.percentage;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isBlinking = true;
          currentPercentage = 0.0;
        });
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isBlinking = true;
            currentPercentage = initialPercentage;
          });
        },
        onExit: (_) {
          setState(() {
            isBlinking = false;
            currentPercentage = initialPercentage;
          });
        },
        child: Container(
          margin: EdgeInsets.all(5),
          child: AspectRatio(
            aspectRatio: 1,
            child: TweenAnimationBuilder(
              tween: Tween<double>(
                begin: 0,
                end: isBlinking ? 1.0 : currentPercentage,
              ),
              duration: Duration(seconds: 1),
              onEnd: () {
                // Reset the state after the animation completes
                if (isBlinking) {
                  setState(() {
                    isBlinking = false;
                    currentPercentage = initialPercentage;
                  });
                }
              },
              builder: (context, double value, child) => Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: value,
                    color: Color(0xFFFFC107),
                    backgroundColor: Colors.black12,
                  ),
                  Center(
                    child: Text(
                      widget.name,
                      style: TextStyle(
                        color: isBlinking
                            ? Colors.redAccent
                            : Colors.yellowAccent,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

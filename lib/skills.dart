import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key, required this.name, required this.value})
      : super(key: key);
  final double value;
  final String name;

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: widget.value),
          duration: Duration(seconds: 3),
          builder: (context, double value, child) => Column(
            children: [
              Row(
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              LinearProgressIndicator(
                value: value,
                color: Colors.yellow,
                backgroundColor: Colors.black38,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

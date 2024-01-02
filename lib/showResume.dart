

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class ShowResume extends StatefulWidget {
  const ShowResume({super.key});

  @override
  State<ShowResume> createState() => _ShowResumeState();
}

class _ShowResumeState extends State<ShowResume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Resume")),
        centerTitle: true,
        backgroundColor: Colors.blue.shade500,
      ),
      body:SfPdfViewer.asset("assets/resume.pdf",
      canShowPageLoadingIndicator: true,
      pageSpacing: 2.0,
      canShowPaginationDialog: true,),
    );
  }
}

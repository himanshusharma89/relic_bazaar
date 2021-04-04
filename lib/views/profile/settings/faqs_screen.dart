import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/retro_button.dart';

class FaqsScreen extends StatefulWidget {
  @override
  _FaqsScreenState createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {

  bool _loading=true;
  PDFDocument _doc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadDocument();
  }

  Future<void> loadDocument() async {
    _doc = await PDFDocument.fromAsset('assets/FAQ.pdf');

    setState(() => _loading = false);
  }

  Future<void> changePDF(int value) async {
    setState(() => _loading = true);
    if (value == 1) {
      _doc = await PDFDocument.fromAsset('assets/FAQ.pdf');
    } else if (value == 2) {
      _doc = await PDFDocument.fromURL(
        'http://conorlastowka.com/book/CitationNeededBook-Sample.pdf',
      );
    } else {
      _doc = await PDFDocument.fromAsset('assets/FAQ.pdf');
    }
    setState(() => _loading = false);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: RelicColors.backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const RelicBazaarStackedView(
              upperColor: Colors.white,
              width: 35,
              height: 35,
              borderColor: Colors.white,
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
        title: const Text('FAQs'),
        elevation: 0.0,
      ),
      body: Center(
        child: _loading
            ? const Center(child: CircularProgressIndicator())
            : PDFViewer(
          document: _doc,
          zoomSteps: 1,
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
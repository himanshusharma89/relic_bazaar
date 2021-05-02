import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/widgets/back_button.dart';

class FaqsScreen extends StatefulWidget {
  @override
  _FaqsScreenState createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  bool _loading = true;
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
        leading: appBarBackButton(context),
        title: const Text('FAQs'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body:  Center(
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

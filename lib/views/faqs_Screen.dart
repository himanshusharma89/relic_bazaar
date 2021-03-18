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
  PDFDocument doc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    doc = await PDFDocument.fromAsset('assets/FAQ.pdf');

    setState(() => _loading = false);
  }

  changePDF(value) async {
    setState(() => _loading = true);
    if (value == 1) {
      doc = await PDFDocument.fromAsset('assets/FAQ.pdf');
    } else if (value == 2) {
      doc = await PDFDocument.fromURL(
        "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf",
        /* cacheManager: CacheManager(
          Config(
            "customCacheKey",
            stalePeriod: const Duration(days: 2),
            maxNrOfCacheObjects: 10,
          ),
        ), */
      );
    } else {
      doc = await PDFDocument.fromAsset('assets/FAQ.pdf');
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
            child: RetroButton(
              upperColor: Colors.white,
              lowerColor: Colors.black,
              width: 35,
              height: 35,
              borderColor: Colors.white,
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
        title: Text("FAQs"),
        elevation: 0.0,
      ),
      body: Center(
        child: _loading
            ? Center(child: CircularProgressIndicator())
            : PDFViewer(
          document: doc,
          zoomSteps: 1,
          scrollDirection: Axis.vertical,
          //uncomment below line to preload all pages
          // lazyLoad: false,
          //uncomment below code to replace bottom navigation with your own
          /* navigationBuilder:
                      (context, page, totalPages, jumpToPage, animateToPage) {
                    return ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.first_page),
                          onPressed: () {
                            jumpToPage()(page: 0);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            animateToPage(page: page - 2);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: () {
                            animateToPage(page: page);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.last_page),
                          onPressed: () {
                            jumpToPage(page: totalPages - 1);
                          },
                        ),
                      ],
                    );
                  }, */
        ),
      ),
    );
  }
}
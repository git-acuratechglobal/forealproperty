import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class PDFViewerScreen extends StatefulWidget {
  final String pdfAssetPath;

  const PDFViewerScreen({required this.pdfAssetPath, super.key});

  @override
  State<PDFViewerScreen> createState() => _PDFViewerScreenState();
}

class _PDFViewerScreenState extends State<PDFViewerScreen> {
  late PdfControllerPinch _pdfController;

  @override
  void initState() {
    super.initState();
    _pdfController = PdfControllerPinch(
      document: PdfDocument.openAsset(widget.pdfAssetPath),
    );
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aggrement PDF")),
      body: PdfViewPinch(controller: _pdfController),
    );
  }
}

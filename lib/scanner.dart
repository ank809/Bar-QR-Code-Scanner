import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  var value= 'result';

  Future <void> barcode() async{
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(  
      '#ff6666',  'Cancel',   true, ScanMode.BARCODE );
      value= barcodeScanRes;
      setState(() {
        
      });
  }
 Future <void> qrcode() async{
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(  
      '#ff6666',  'Cancel',   true, ScanMode.QR );
      value= barcodeScanRes;
      setState(() {
        
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scanner'),),
      body:Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [  
          ElevatedButton(onPressed: (){
            barcode();
          }, child: Text('Bar code scanner'),),
          ElevatedButton(onPressed: (){
            qrcode();
          }, child: Text('QR code scanner'),),
          SelectableText(value, style: TextStyle(fontSize: 26.0),),
        ], 
          ),
      ),
    );
  }
}
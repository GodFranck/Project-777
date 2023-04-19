import 'package:miproyecto/pesta%C3%B1as.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ConversionesT());
}

class ConversionesT extends StatefulWidget {
  @override
  State<ConversionesT> createState() => ConversionesTState();
}

class ConversionesTState extends State<ConversionesT> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "°C-°K",
                ),
                Tab(text: "°C-°F"),
                
                Tab(text: "°F-°C"),
                Tab(text: "°F-°K"),
                
                Tab(text: "°K-°C"),
                
                Tab(text: "°K-°F"),
              ],
            ),
            title: Text('ConversionesT'),
          ),
          body: TabBarView(
            children: [
              PrimeraPagina(),
              SegundaPagina(),
              TerceraPagina(),
              CuartaPagina(),
              QuintaPagina(),
              SextaPagina(),
            ],
          ),
        ),
      ),
    );
  }
}

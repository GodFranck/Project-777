import 'package:miproyecto/operaciones.dart';
import 'package:flutter/material.dart';

class PrimeraPagina extends StatefulWidget {
  const PrimeraPagina({super.key});

  @override
  State<PrimeraPagina> createState() => PrimeraState();
}

class PrimeraState extends State<PrimeraPagina> {
  TextEditingController textEditingController = TextEditingController();
  String labelGrados = '';
  double celsius = 0;
  double kelvin = 0;
  String resultado = "";
  Temperatura operacion = new Temperatura();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            SizedBox(width: 300),
            Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        "°C",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: textEditingController,
                        style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      height: 50,
                      width: 250,
                      color: Color.fromARGB(255, 2, 56, 79),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        celsius = double.parse(textEditingController.text);
                        kelvin = operacion.celsiusToKelvin(celsius);
                        resultado = kelvin.toString();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(resultado + "K°"),
                            action: SnackBarAction(
                              label: 'Action',
                              onPressed: () {
                                // Code to execute.
                              },
                            ),
                          ),
                        );
                      },
                      child: Text("Convertir "),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Segunda
class SegundaPagina extends StatefulWidget {
  const SegundaPagina({super.key});

  @override
  State<SegundaPagina> createState() => SegundaState();
}

class SegundaState extends State<SegundaPagina> {
  TextEditingController textEditingController = TextEditingController();
  String labelGrados = '';
  double celsius = 0;
  double fahrenheit = 0;
  String resultado = "";
  Temperatura operacion = new Temperatura();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            SizedBox(width: 300),
            Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        "°C",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: textEditingController,
                        style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      height: 50,
                      width: 250,
                      color: Color.fromARGB(255, 2, 56, 79),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        celsius = double.parse(textEditingController.text);
                        fahrenheit = operacion.celsiusToFahrenheit(celsius);
                        resultado = fahrenheit.toString();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(resultado + "°F"),
                            action: SnackBarAction(
                              label: 'Action',
                              onPressed: () {
                                // Code to execute.
                              },
                            ),
                          ),
                        );
                      },
                      child: Text("Convertir "),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Tercera
class TerceraPagina extends StatefulWidget {
  const TerceraPagina({super.key});

  @override
  State<TerceraPagina> createState() => TerceraState();
}

class TerceraState extends State<TerceraPagina> {
  TextEditingController textEditingController = TextEditingController();
  String labelGrados = '';
  double celsius = 0;
  double fahrenheit = 0;
  String resultado = "";
  Temperatura operacion = new Temperatura();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            SizedBox(width: 300),
            Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        "°F",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: textEditingController,
                        style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      height: 50,
                      width: 250,
                      color: Color.fromARGB(255, 2, 56, 79),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        fahrenheit = double.parse(textEditingController.text);
                        celsius = operacion.fahrenheitToCelsius(fahrenheit);
                        resultado = celsius.toString();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(resultado + "C°"),
                            action: SnackBarAction(
                              label: 'Action',
                              onPressed: () {
                                // Code to execute.
                              },
                            ),
                          ),
                        );
                      },
                      child: Text("Convertir"),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Cuarta
class CuartaPagina extends StatefulWidget {
  const CuartaPagina({super.key});

  @override
  State<CuartaPagina> createState() => CuartaState();
}

class CuartaState extends State<CuartaPagina> {
  TextEditingController textEditingController = TextEditingController();
  String labelGrados = '';
  double kelvin = 0;
  double fahrenheit = 0;
  String resultado = "";
  Temperatura operacion = new Temperatura();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            SizedBox(width: 300),
            Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        "°F",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: textEditingController,
                        style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      height: 50,
                      width: 250,
                      color: Color.fromARGB(255, 2, 56, 79),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        fahrenheit = double.parse(textEditingController.text);
                        kelvin = operacion.fahrenheitToKelvin(fahrenheit);
                        resultado = kelvin.toString();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(resultado + "°K"),
                            action: SnackBarAction(
                              label: 'Action',
                              onPressed: () {
                                // Code to execute.
                              },
                            ),
                          ),
                        );
                      },
                      child: Text("Convertir"),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Quinta
class QuintaPagina extends StatefulWidget {
  const QuintaPagina({super.key});

  @override
  State<QuintaPagina> createState() => QuintaState();
}

class QuintaState extends State<QuintaPagina> {
  TextEditingController textEditingController = TextEditingController();
  String labelGrados = '';
  double kelvin = 0;
  double celsius = 0;
  String resultado = "";
  Temperatura operacion = new Temperatura();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            SizedBox(width: 300),
            Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        "°K",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: textEditingController,
                        style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      height: 50,
                      width: 250,
                      color: Color.fromARGB(255, 2, 56, 79),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        kelvin = double.parse(textEditingController.text);
                        celsius = operacion.kelvinToCelsius(kelvin);
                        resultado = celsius.toString();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(resultado + "°K"),
                            action: SnackBarAction(
                              label: 'Action',
                              onPressed: () {
                                // Code to execute.
                              },
                            ),
                          ),
                        );
                      },
                      child: Text("Convertir"),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Sexta
class SextaPagina extends StatefulWidget {
  const SextaPagina({super.key});

  @override
  State<SextaPagina> createState() => SextaState();
}

class SextaState extends State<SextaPagina> {
  TextEditingController textEditingController = TextEditingController();
  String labelGrados = '';
  double kelvin = 0;
  double fahrenheit = 0;
  String resultado = "";
  Temperatura operacion = new Temperatura();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            SizedBox(width: 300),
            Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        "°K",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: textEditingController,
                        style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      height: 50,
                      width: 250,
                      color: Color.fromARGB(255, 2, 56, 79),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        kelvin = double.parse(textEditingController.text);
                        fahrenheit = operacion.kelvinToFahrenheit(kelvin);
                        resultado = fahrenheit.toString();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(resultado + "°K"),
                            action: SnackBarAction(
                              label: 'Action',
                              onPressed: () {
                                // Code to execute.
                              },
                            ),
                          ),
                        );
                      },
                      child: Text("Convertir"),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

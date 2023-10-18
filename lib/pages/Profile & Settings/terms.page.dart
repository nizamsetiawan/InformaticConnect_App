import 'package:flutter/material.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff181A20),
        appBar: AppBar(
          title: Padding(
              padding: EdgeInsets.only(top: 24),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Terms & Conditions',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              )),
          backgroundColor: const Color(0xff181A20),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(24, 48, 24, 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Condition & Attending',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Text(
                  'At enim hic etiam dolore. Dulce amarum, leve asperum, prope longe, stare movere, quadratum rotundum. At certe gravius. Nullus est igitur cuiusquam dies natalis. Paulum, cum regem Persem captum adduceret, eodem flumine invectio?',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Quare hoc videndum est, possitne nobis hoc ratio philosophorum dare. Sed finge non solum callidum eum, qui aliquid improbe faciat, verum etiam praepotentem, ut M. Est autem officium, quod ita factum est, ut eius facti probabilis ratio reddi possit.',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Terms & Use',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Text(
                  'At enim hic etiam dolore. Dulce amarum, leve asperum, prope longe, stare movere, quadratum rotundum. At certe gravius. Nullus est igitur cuiusquam dies natalis. Paulum, cum regem Persem captum adduceret, eodem flumine invectio?',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Quare hoc videndum est, possitne nobis hoc ratio philosophorum dare. Sed finge non solum callidum eum, qui aliquid improbe faciat, verum etiam praepotentem, ut M. Est autem officium, quod ita factum est, ut eius facti probabilis ratio reddi possit.',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

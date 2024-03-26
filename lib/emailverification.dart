import 'package:flutter/material.dart';

class emailverification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Logo na jednoj četvrtini ekrana
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/logo.png'), // Putanja do vašeg loga
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 16),


            Container(
              color: Colors.white,
              // Jedna četvrtina ekrana
              child: Center(
                child: Text(
                  'E-Mail-Verifizierung',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Bijeli tekst za kontrast
                  ),
                ),
              ),
            ),

            SizedBox(height: 16),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Wir haben einen Code an Ihre E-Mail-Adresse gesendet.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),

            SizedBox(height: 36),

            // Kvadrati za unos koda
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4), // Dodajte padding sa svake strane
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), // Zaobljeni rubovi
                        border: Border.all(), // Dodajte rub
                      ),
                      child: _buildCodeTextField(),
                    ),
                  ),
                ),
                SizedBox(width: 8), // Manji razmak između kvadrata
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4), // Dodajte padding sa svake strane
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), // Zaobljeni rubovi
                        border: Border.all(), // Dodajte rub
                      ),
                      child: _buildCodeTextField(),
                    ),
                  ),
                ),
                SizedBox(width: 8), // Manji razmak između kvadrata
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4), // Dodajte padding sa svake strane
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), // Zaobljeni rubovi
                        border: Border.all(), // Dodajte rub
                      ),
                      child: _buildCodeTextField(),
                    ),
                  ),
                ),
                SizedBox(width: 8), // Manji razmak između kvadrata
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4), // Dodajte padding sa svake strane
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), // Zaobljeni rubovi
                        border: Border.all(), // Dodajte rub
                      ),
                      child: _buildCodeTextField(),
                    ),
                  ),
                ),
              ],
            ),





            SizedBox(height: 36),



            // Dodatni tekst ispod dugmeta
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sie haben Ihren Code nicht erhalten? ',
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    onPressed: () {
                      // Logika za prijelaz na prijavu ili neku drugu akciju
                      print('Prijavite se');
                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.pink),
                    ),
                    child: Text('Erneut senden'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Metoda koja kreira TextField za unos koda
  Widget _buildCodeTextField() {
    return Container(
      width: 50,
      child: TextField(
        maxLength: 1, // Ograničava unos na jedan znak
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: '', // Skriva brojač znakova
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  void main() {
    runApp(MaterialApp(
      home: emailverification(),
    ));
  }
}

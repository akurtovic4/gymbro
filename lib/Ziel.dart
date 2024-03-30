import 'package:flutter/material.dart';
import 'package:gymbro/ZielDrei.dart';
import 'package:gymbro/height.dart';

class Ziel extends StatefulWidget {
  @override
  _ZielState createState() => _ZielState();
}

class _ZielState extends State<Ziel> {
  List<String> _selectedInterests = []; // Lista odabranih interesa

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Logo na jednoj četvrtini ekrana
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/logo.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        'Was ist dein Ziel?',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Schritt 5 von 10',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 36),
                  // Progress bar
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 10,
                    child: Row(
                      children: [
                        // Prvi segment u rozoj boji
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.horizontal(left: Radius.circular(5)),
                            ),
                          ),
                        ),
                        // Ostali segmenti u sivoj boji
                        Expanded(
                          flex: 9, // 11 sivih segmenata
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.horizontal(right: Radius.circular(5)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 36),
                  // Dugmad za izbor interesa
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _interestButton('Werde fitter'),
                      _interestButton('Bessere Schlafgewohnheiten'),
                      _interestButton('Gewichtsverlust'),
                      _interestButton('Verfolgen Sie meine Ernährung'),
                      _interestButton('Allgemeine Fitness verbessern'),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Dugme "Vorherige"
            ElevatedButton(
              onPressed: () {
                // Logika za dugme "Vorherige"

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => height()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                // Bijela pozadina
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    // Zaobljeni rubovi
                    side: BorderSide(color: Colors.pink), // Roze okvir
                  ),
                ),
                fixedSize: MaterialStateProperty.all(
                    Size(120, 40)), // Postavljanje fiksne veličine
              ),
              child: Text(
                'Vorherige',
                style: TextStyle(
                  color: Colors.pink, // Roze slova
                ),
              ),
            ),

            // Dugme "Anmelden"
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ZielDrei()),
                );
                // Logika za dugme "Weitermachen"
                print(
                    'Dugme Weitermachen je pritisnuto. Odabrani interesi: $_selectedInterests');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Zaobljeni rubovi
                  ),
                ),
                fixedSize: MaterialStateProperty.all(
                    Size(120, 40)), // Postavljanje fiksne veličine
              ),
              child: Text(
                'Weitermachen',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _interestButton(String text) {
    bool isSelected = _selectedInterests.contains(text); // Provjera je li trenutni interes odabran

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: ElevatedButton(
        onPressed: () {
          // Ažuriranje liste odabranih interesa
          setState(() {
            if (isSelected) {
              _selectedInterests.remove(text); // Ako je odabrano, ukloni iz liste
            } else {
              _selectedInterests.add(text); // Inače, dodaj u listu
            }
          });
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(isSelected ? Colors.pink : Colors.grey[300]), // Boja se mijenja ovisno o tome je li odabrana
          padding: MaterialStateProperty.all(EdgeInsets.all(16)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Ziel(),
  ));
}

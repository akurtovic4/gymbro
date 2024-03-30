import 'package:flutter/material.dart';
import 'package:gymbro/FitnessLevel.dart';

class Sports extends StatefulWidget {
  @override
  _SportState createState() => _SportState();
}

class _SportState extends State<Sports> {
  int _selectedSportIndex = -1; // Inicijalno nijedan sport nije odabran

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                  'Welche Sportart bevorzugen Sie?',
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
                'Schritt 8 von 10',
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
            // Dugmad za izbor sportova
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _sportButton(Icons.directions_run, 'Cardio', 0), // Cardio
                _sportButton(Icons.fitness_center, 'Krafttraining', 1), // Krafttraining
                _sportButton(Icons.directions_bike, 'Strecken', 2), // Strecken
                _sportButton(Icons.music_note, 'Tanzen', 3), // Tanzen
                _sportButton(Icons.spa, 'Yoga', 4), // Yoga
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FitnessLevel()),
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
                // Logika za dugme "Weitermachen"
                print('Dugme Weitermachen je pritisnuto.');
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

  Widget _sportButton(IconData icon, String text, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: ElevatedButton.icon(
        onPressed: () {
          // Ažurirajte indeks odabrane sporta
          setState(() {
            _selectedSportIndex = index;
          });
        },
        icon: Icon(icon),
        label: Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              index == _selectedSportIndex ? Colors.pink : Colors.grey[300]),
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
    home: Sports(),
  ));
}

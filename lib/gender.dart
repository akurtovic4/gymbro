import 'package:flutter/material.dart';

class height extends StatefulWidget {
  @override
  _HeightState createState() => _HeightState();
}

class _HeightState extends State<height> {
  int _selectedGenderIndex = -1; // Inicijalno nijedna opcija nije odabrana

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
                  'Wählen Sie Geschlecht',
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
                'Schritt 1 von 12',
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
                    flex: 11, // 11 sivih segmenata
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
            // Dugmad za izbor spola
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _genderButton(Icons.female, 'Frauen', 0), // Žensko
                _genderButton(Icons.male, 'Mann', 1), // Muško
                _genderButton(Icons.transgender, 'Diverse', 2), // Transgender
              ],
            ),
            SizedBox(height: 20),
            // Dugme "Anmelden"
            Container(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  // Logika za dugme "Losgen"
                  print('Dugme Losgen je pritisnuto.');
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(100, 0)),
                  maximumSize: MaterialStateProperty.all(
                      Size(100, double.infinity)),
                  backgroundColor: MaterialStateProperty.all(Colors.pink),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 12, vertical: 8)),
                ),
                child: Text(
                  'Weitermachen',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _genderButton(IconData icon, String text, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: ElevatedButton.icon(
        onPressed: () {
          // Ažurirajte indeks odabranog spola
          setState(() {
            _selectedGenderIndex = index;
          });
        },
        icon: Icon(icon),
        label: Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              index == _selectedGenderIndex ? Colors.pink : Colors.grey[300]),
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
    home: height(),
  ));
}

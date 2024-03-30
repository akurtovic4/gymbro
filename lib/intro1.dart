import 'package:flutter/material.dart';
import 'intro2.dart';

class intro1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Slika na jednoj četvrtini ekrana
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/intro1.png'), // Stavite putanju do vaše slike
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Logo ispod slike
            Container(
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/logo.png'), // Stavite putanju do vašeg loga
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Naslov "Willkommen bei GymBro"
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Willkommen bei GymBro',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Opis teksta "Die GymBro-Anwendung..."
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Die GymBro-Anwendung bietet Ihnen Workout-Training, einen Diätplan und das Kennenlernen neuer Mitglieder in ganz Europa.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),

            SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCircle(Colors.pink),
                SizedBox(width: 8),
                _buildCircle(Colors.grey),
                SizedBox(width: 8),
                _buildCircle(Colors.grey),
                SizedBox(width: 8),
                _buildCircle(Colors.grey),
              ],
            ),
            // Dugme "Losgen"
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigacija na idući ekran
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => intro2()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink), // Roze boja dugmeta
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 44, vertical: 8)),
                ),
                child: Text(
                  'Losgen',
                  style: TextStyle(
                    color: Colors.white, // Bijela boja teksta
                  ),
                ),
              ),
            ),


            // Dodatni tekst ispod dugmeta
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sie haben bereits ein Konto? ',
                  ),
                  TextButton(
                    onPressed: () {
                      // Logika za prijelaz na prijavu ili neku drugu akciju
                      print('Prijavite se');
                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.pink),
                    ),
                    child: Text('Einloggen'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Funkcija za izgradnju malih krugova
  Widget _buildCircle(Color color) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: intro1(),
  ));
}

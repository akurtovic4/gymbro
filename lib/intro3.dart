import 'package:flutter/material.dart';

import 'intro4.dart';

class intro3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Slika na jednoj četvrtini ekrana
          Container(
            height: MediaQuery.of(context).size.height / 1.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/intro2.png'), // Stavite putanju do vaše slike
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Logo ispod slike


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Matching-Benutzer',
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
              'Probieren Sie unser Matching aus und finden Sie einen Trainingspartner basierend auf Ihren Interessen. Nutzen Sie GymBro und finden Sie einen entsprechenden Benutzer für ein gesundes Leben.',
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
              _buildCircle(Colors.grey),
              SizedBox(width: 8),
              _buildCircle(Colors.grey),
              SizedBox(width: 8),
              _buildCircle(Colors.pink),
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
                  MaterialPageRoute(builder: (context) => intro4()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 44, vertical: 8)),
              ),
              child: Text(
                'Weiter',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),


        ],
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
    home: intro3(),
  ));
}

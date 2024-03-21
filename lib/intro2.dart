import 'package:flutter/material.dart';

class intro2 extends StatelessWidget {
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
              'Trainingskategorien',
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
              _buildCircle(Colors.grey),
              SizedBox(width: 8),
              _buildCircle(Colors.pink),
              SizedBox(width: 8),
              _buildCircle(Colors.grey),
              SizedBox(width: 8),
              _buildCircle(Colors.grey),
            ],
          ),
          // Dugme "Losgen"

          SizedBox(height: 16),

          Container(
            width: 100,
            child: ElevatedButton(
              onPressed: () {
                // Logika za dugme "Losgen"
                print('Dugme Losgen je pritisnuto.');
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(100, 0)),
                maximumSize: MaterialStateProperty.all(Size(100, double.infinity)),
                backgroundColor: MaterialStateProperty.all(Colors.pink),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 12, vertical: 8)),
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
    home: intro2(),
  ));
}

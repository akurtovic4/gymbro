import 'package:flutter/material.dart';
import 'package:gymbro/chooseplan.dart';

class intro4 extends StatelessWidget {
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
                image: AssetImage('images/intro4.png'), // Stavite putanju do vaše slike
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Logo ispod slike


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Individuelle Workouts',
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
              'Erstellen und speichern Sie Ihre eigenen benutzerdefinierten Workouts. Benennen Sie Ihre Trainingseinheiten, speichern Sie sie und teilen Sie ihnen automatisch mit, wann Sie zum Training bereit sind.',
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
              _buildCircle(Colors.grey),
              SizedBox(width: 8),
              _buildCircle(Colors.pink),
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
                  MaterialPageRoute(builder: (context) => chooseplan()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 44, vertical: 8)),
              ),
              child: Text(
                'Start',
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
    home: intro4(),
  ));
}

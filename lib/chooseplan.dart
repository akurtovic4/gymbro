import 'package:flutter/material.dart';

class chooseplan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Slika na jednoj četvrtini ekrana
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/chooseplan.png'), // Stavite putanju do vaše slike
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Naslov "Willkommen bei GymBro"
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Millionen Benutzerauswahl',
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
              'Wir glauben, dass unsere Apps Sie dazu inspirieren sollen, die beste Version Ihrer selbst zu sein.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),

          SizedBox(height: 16),

          Column(
            children: [
              ChoiceOption(icon: Icons.check_circle, text: 'Professionelle Videos mit Kitteln',),
              ChoiceOption(icon: Icons.check_circle, text: 'Über 100 vorgefertigte Workouts',),
              ChoiceOption(icon: Icons.check_circle, text: 'Ihren persönlichen Trainingsplan',),
              ChoiceOption(icon: Icons.check_circle, text: 'Ohne Werbung',),
              ChoiceOption(icon: Icons.check_circle, text: 'Benutzerzuordnung',),
            ],
          ),

          SizedBox(height: 16),


          Container(
            width: 100,
            child: ElevatedButton(
              onPressed: () {

                print('Dugme Weiter je pritisnuto.');
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
}

class ChoiceOption extends StatelessWidget {
  final IconData icon;
  final String text;

  const ChoiceOption({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.pink, // Promijenite boju ikone u roze
          ),
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              color: Colors.black, // Promijenite boju teksta po želji
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: chooseplan(),
  ));
}

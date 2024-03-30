import 'package:flutter/material.dart';

import 'age.dart';
import 'height.dart';

class weight extends StatefulWidget {
  @override
  _weightState createState() => _weightState();

}

int _selectedWeight = 60; // Podešena težina

class _weightState extends State<weight> {
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
                  .height / 4,
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
                  'Wie viel wiegen Sie?',
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
                'Schritt 3 von 10',
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
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(5)),
                      ),
                    ),
                  ),
                  // Ostali segmenti u sivoj boji
                  Expanded(
                    flex: 7,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(5)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 36),


            // Horizontalni picker za težinu
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 150,
                itemBuilder: (context, index) {
                  // Stvaranje elemenata za prikaz težine
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedWeight = index + 1;
                      });
                    },
                    child: Container(
                      width: 40,
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: _selectedWeight == index + 1
                            ? Colors.pink
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: _selectedWeight == index + 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 20),

            // Dugme "Vorherige" i "Anmelden"
            // Dugme "Vorherige" i "Anmelden"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Dugme "Vorherige"
                ElevatedButton(
                  onPressed: () {
                    // Logika za dugme "Vorherige"
                    print('Dugme Vorherige je pritisnuto.');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => age()),
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
                      MaterialPageRoute(builder: (context) => height()),
                    );

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

          ],
        ),
      ),
    );
  }

}
void main() {
  runApp(MaterialApp(
    home: weight(),
  ));
}

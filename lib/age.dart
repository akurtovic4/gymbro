import 'package:flutter/material.dart';

class age extends StatefulWidget {
  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<age> {
  int _selectedAge = 18;
  FixedExtentScrollController _controller = FixedExtentScrollController(initialItem: 17);

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
                  'Wie alt bist du?',
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
                'Schritt 2 von 10',
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
                    flex: 8,
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


            // Number picker za godine
            Container(
              height: 200,
              child: ListWheelScrollView(
                itemExtent: 50,
                controller: _controller,
                children: List.generate(
                  150,
                      (index) => Center(
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                        fontSize: 24,
                        color: _selectedAge == index + 1 ? Colors.pink : Colors.black,
                      ),
                    ),
                  ),
                ),
                onSelectedItemChanged: (index) {
                  setState(() {
                    _selectedAge = index + 1;
                  });
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
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white), // Bijela pozadina
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Zaobljeni rubovi
                        side: BorderSide(color: Colors.pink), // Roze okvir
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all(Size(120, 40)), // Postavljanje fiksne veličine
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
                    // Logika za dugme "Losgen"
                    print('Dugme Losgen je pritisnuto. Odabrana godina: $_selectedAge');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Zaobljeni rubovi
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all(Size(120, 40)), // Postavljanje fiksne veličine
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
    home: age(),
  ));
}

import 'package:flutter/material.dart';

class registraion extends StatelessWidget {
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
                  image: AssetImage('images/logo.png'), // Putanja do vašeg loga
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 16),


            Container(
              color: Colors.white,
              // Jedna četvrtina ekrana
              child: Center(
                child: Text(
                  'Registrierung',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Bijeli tekst za kontrast
                  ),
                ),
              ),
            ),

            SizedBox(height: 16),

            // Polje za unos "Benutzername / Email"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Vollständiger Name',
                  filled: true,
                  fillColor: Colors.grey[200], // Siva pozadina
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Zaobljeni rubovi
                  ),
                ),
              ),
            ),

            SizedBox(height: 8),

            // Polje za unos " Email"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email adresse',
                  filled: true,
                  fillColor: Colors.grey[200], // Siva pozadina
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Zaobljeni rubovi
                  ),
                ),
              ),
            ),

            SizedBox(height: 8),



            // Polje za unos "Telefon"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                keyboardType: TextInputType.phone, // Ograničava unos na brojeve
                decoration: InputDecoration(
                  labelText: 'Telefon',
                  filled: true,
                  fillColor: Colors.grey[200], // Siva pozadina
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Zaobljeni rubovi
                  ),
                ),
              ),
            ),

            SizedBox(height: 8),


            // Polje za unos "Passwort"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Passwort',
                  filled: true,
                  fillColor: Colors.grey[200], // Siva pozadina
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Zaobljeni rubovi
                  ),
                ),
              ),
            ),

            SizedBox(height: 26),

            Row(
              children: [
                Checkbox(
                  value: false, // Postavite ovu vrijednost na true ili false prema potrebi
                  onChanged: (newValue) {
                    // Ovdje možete implementirati logiku koja se izvršava kada se promijeni vrijednost checkbox-a
                  },
                ),
                Expanded(
                  child: Text(
                    'Indem Sie fortfahren, akzeptieren Sie unsere Datenschutzrichtlinie.',
                    style: TextStyle(
                      fontSize: 16, // Promijenite veličinu fonta prema potrebi
                      // Dodajte druge stilove teksta prema potrebi
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 26),

            // Dugme "Registirung"
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
                  'Registrierung',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: 16),


            Container(
              color: Colors.white, // Crna pozadina za kontrast
              // Jedna četvrtina ekrana
              child: Center(
                child: Text(
                  'Anmelden mit',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Bijeli tekst za kontrast
                  ),
                ),
              ),
            ),

            // Dugmad za prijavu s društvenim mrežama
            /*  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Image.asset('images/apple_logo.png'),
                    // Putanja do Apple loga
                    onPressed: () {
                      // Logika za prijavu s Apple računom
                      print('Prijavi se putem Apple računa');
                    },
                  ),
                  IconButton(
                    icon: Image.asset('images/facebook_logo.png'),
                    // Putanja do Facebook loga
                    onPressed: () {
                      // Logika za prijavu s Facebook računom
                      print('Prijavi se putem Facebook računa');
                    },
                  ),
                  IconButton(
                    icon: Image.asset('images/google_logo.png'),
                    // Putanja do Google loga
                    onPressed: () {
                      // Logika za prijavu s Google računom
                      print('Prijavi se putem Google računa');
                    },
                  ),
                ],
              ),
            ), */


            // Dodatni tekst ispod dugmeta
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sie haben kein Konto? ',
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    onPressed: () {
                      // Logika za prijelaz na prijavu ili neku drugu akciju
                      print('Prijavite se');
                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.pink),
                    ),
                    child: Text('Anmeldung'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void main() {
    runApp(MaterialApp(
      home: registraion(),
    ));
  }
}
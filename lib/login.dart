import 'package:flutter/material.dart';

class login extends StatelessWidget {
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
                  image: AssetImage('images/logo.png'), // Putanja do vašeg loga
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  'Einloggen',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
                  labelText: 'Benutzername / Email',
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
                ),
              ),
            ),

            SizedBox(height: 16),

            // Dugme "Anmelden"
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Logika za prijavu
                  print('Anmelden button pressed');
                },
                child: Text('Anmelden'),
              ),
            ),

            SizedBox(height: 16),

            // Tekst "Passwort vergessen?"
            TextButton(
              onPressed: () {
                // Logika za resetiranje lozinke
                print('Passwort vergessen button pressed');
              },
              child: Text(
                'Passwort vergessen?',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: login(),
  ));
}

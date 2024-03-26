import 'package:flutter/material.dart';

class height extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int currentStep = 1;
    int totalSteps = 12;

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
                'Schritt $currentStep von $totalSteps',
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
                children: List.generate(
                  totalSteps,
                      (index) {
                    return Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: index < currentStep
                              ? Colors.pink
                              : Colors.grey[300],
                          borderRadius: BorderRadius.only(
                            topLeft: index == 0 ? Radius.circular(5) : Radius.zero,
                            bottomLeft: index == 0 ? Radius.circular(5) : Radius.zero,
                            topRight: index == totalSteps - 1 ? Radius.circular(5) : Radius.zero,
                            bottomRight: index == totalSteps - 1 ? Radius.circular(5) : Radius.zero,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 36),




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
}

void main() {
  runApp(MaterialApp(
    home: height(),
  ));
}

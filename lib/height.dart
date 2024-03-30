import 'package:flutter/material.dart';
import 'package:gymbro/Ziel.dart';
import 'package:gymbro/weight.dart';

class height extends StatefulWidget {
  @override
  _heightState createState() => _heightState();
}

class _heightState extends State<height> {
  int _selectedHeight = 150;
  FixedExtentScrollController _controller =
  FixedExtentScrollController(initialItem: 120); // Initial height 150 cm

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
                  'Wie groß bist du?',
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
                'Schritt 4 von 10',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 36),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 10,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(5)),
                      ),
                    ),
                  ),
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
            Container(
              height: 200,
              child: ListWheelScrollView(
                itemExtent: 50,
                controller: _controller,
                children: List.generate(
                  271, // Range from 30 to 300 (inclusive)
                      (index) => Center(
                    child: Text(
                      '${index + 30}', // Starting from 30
                      style: TextStyle(
                        fontSize: 24,
                        color: _selectedHeight == index + 30
                            ? Colors.pink
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
                onSelectedItemChanged: (index) {
                  setState(() {
                    _selectedHeight = index + 30; // Adjusting for starting from 30
                    print(_selectedHeight);
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => weight()),
                    );
                    print('Dugme Vorherige je pritisnuto.');
                  },
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.pink),
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all(Size(120, 40)),
                  ),
                  child: Text(
                    'Vorherige',
                    style: TextStyle(
                      color: Colors.pink,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print(
                        'Dugme Losgen je pritisnuto. Odabrana visina: $_selectedHeight');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Ziel()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all(Size(120, 40)),
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
    home: height(),
  ));
}

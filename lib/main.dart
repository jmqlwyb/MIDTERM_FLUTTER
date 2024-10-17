import 'package:flutter/material.dart';

class MidtermExamApp extends StatefulWidget {
  @override
  _MidtermExamAppState createState() => _MidtermExamAppState();
}

class _MidtermExamAppState extends State<MidtermExamApp> {
  List<String> products = [
      'Buwad',
      'Ginamos',
      'Sardinas', 
      'Humba',
      'Adobo',
      'Piniritong Manok',
      'Utan Bisaya', 
      'Saging Dinung-ag',
      'Saging Pinirito', 
      'Piniritong Isda'
  ];

  
  List<bool> isAdded = List.generate(10, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Benito MidTerm'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            color: isAdded[index] ? const Color.fromARGB(255, 205, 201, 205) : Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      products[index],
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Details of ${products[index]}');
                    },
                    child: Text('Details'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isAdded[index] = true;
                      });
                    },
                    child: Text(isAdded[index] ? 'Added' : 'Add'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MidtermExamApp(),
  ));
}

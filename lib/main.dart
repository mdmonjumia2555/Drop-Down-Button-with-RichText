import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var store = 'Nationality';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 155,
              height: 32,
              color: Colors.brown,
              child: Center(
                child: Text(
                  store,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            DropdownButton(
                iconEnabledColor: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                iconSize: 30,
                dropdownColor: Colors.green,
                items: [
                  DropdownMenuItem(
                    value: 'Bangladesh',
                    child: Text(
                      'Bangladesh',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'India',
                    child: Text(
                      'India',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'USA',
                    child: Text(
                      'USA',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Japan',
                    child: Text(
                      'Japan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Chaina',
                    child: Text(
                      'Chaina',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
                onChanged: (monju) {
                  setState(() {
                    store = '$monju';
                  });
                }),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: 'Please Click on the ',
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                      text: '  Subscribe',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int _courses = 0;
  int _selectedImage = 0;
  var _images = [
    'images/1.png',
    'images/2.png',
    'images/3.png',
    'images/4.png',
    'images/5.png',
    'images/6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center, // centralizado horizontalmente
          children: <Widget>[
            Image.asset(_images[_selectedImage], height: 100.0,),
            Text('Courses', 
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.display2,
            ),
            Text('You completed $_courses', 
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.w300),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: FloatingActionButton(
                      onPressed: (){
                        setState(() {
                        _courses++;

                        int selectedImage = _courses ~/ 2;

                        if(selectedImage <= 4){
                          _selectedImage = selectedImage;
                        } 

                        if(selectedImage > 4){
                          _selectedImage = 5;
                        }

                        });
                      },
                      child: Icon(Icons.add),
                    ),
            ),
          ],
    );      
  }
}
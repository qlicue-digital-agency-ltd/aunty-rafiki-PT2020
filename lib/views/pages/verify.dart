import 'package:aunty_rafiki/views/pages/home_page.dart';
import 'package:flutter/material.dart';

class Verify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/decorative_friends.png'),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(border: Border.all(color: Colors.pink,width: 2),
              borderRadius: BorderRadius.circular(50.0),
              ),
              

              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 50,
            
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                 
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.pink,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomePage()));
                },
                child: Text(
                  'VERIFY',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:aunty_rafiki/views/pages/verify.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
//import 'package:country_code_picker/country_localizations.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/decorative_friends.png'),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.pink),
                borderRadius: BorderRadius.circular(50.0),
                // borderSide: BorderSide(width: 50.0),
              ),
              width: 300,
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    child: CountryCodePicker(
                      onChanged: print,
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      initialSelection: 'IT',
                      favorite: ['255', 'TZ'],
                      // optional. Shows only country name and flag
                      showCountryOnly: false,
                      // optional. Shows only country name and flag when popup is closed.
                      showOnlyCountryWhenClosed: false,
                      showFlagMain: true,
                      // optional. aligns the flag and the Text left
                      alignLeft: false,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none),
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 50,
              width: 300,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Verify()));
                },
                color: Colors.pink,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                child: Text(
                  'SUBMIT',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    ));
  }
}

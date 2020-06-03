import 'package:flutter/material.dart';
import 'package:jurustani/pages/awal.dart';
import 'package:jurustani/pages/landing_page.dart';
import 'package:jurustani/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(38.0), // here the desired height
        child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xFF81C784),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AwalPage()),
                );
              },
            )),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40.0),
            Center(
              child: Image.asset(
                'assets/logo.png',
                scale: 15.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Welcome Back',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Please, Sign In to Continue',
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 50.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username/email',
              ),
            ),
            TextFormField(
              obscureText: _isHidePassword,
              autofocus: false,
              initialValue: '',
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: GestureDetector(
                  onTap: () {
                    _togglePasswordVisibility();
                  },
                  child: Icon(
                    _isHidePassword ? Icons.visibility_off : Icons.visibility,
                    color: _isHidePassword ? Colors.grey : Colors.green,
                  ),
                ),
                isDense: true,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              child: InkWell(
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.green),
                  textAlign: TextAlign.left,
                ),
                onTap: () {},
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Text('Sign In', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return new LandingPage();
                  }));
                },
                color: Colors.green,
              ),
            ),
            SizedBox(height: 17.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Don\'t have an account?',
                ),
                InkWell(
                  child: Text(
                    ' Sign up',
                    style: TextStyle(color: Colors.green),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterPage();
                    }));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

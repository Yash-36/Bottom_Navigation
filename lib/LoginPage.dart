import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        _login();
                      },
                      child: Text('Login'),
                    ),
                    SizedBox(height: 10.0),
                    TextButton(
                      onPressed: () {
                        // Navigate to password recovery page
                      },
                      child: Text('Forgot Password?'),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Or continue with',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _buildSocialButton(
                          'assets/google_logo.png',
                          'Google',
                              () {
                            // Perform Google login
                          },
                        ),
                        SizedBox(width: 20.0),
                        _buildSocialButton(
                          'assets/facebook_logo.png',
                          'Facebook',
                              () {
                            // Perform Facebook login
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton(String imagePath, String text, Function onPressed) {
    return MaterialButton(
      onPressed: () {
        onPressed();
      },
      padding: EdgeInsets.all(15.0),
      color: Colors.white,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            imagePath,
            height: 25.0,
          ),
          SizedBox(width: 10.0),
          Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  void _login() {
    // You can implement your login logic here
    String username = _usernameController.text;
    String password = _passwordController.text;

    // For demonstration, just print the credentials
    print('Username: $username, Password: $password');
  }
}

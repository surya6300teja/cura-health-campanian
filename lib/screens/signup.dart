import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
// import 'package:glee/main.d';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'LoginPage.dart';

// Initialize the Supabase client
final supabase = Supabase.instance.client;

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // Text editing controllers
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    // Dispose controllers when not needed to free up resources
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 250),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Logo or image
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Image.asset(
                  "assets/images/logo.jpg",
                  width: 150,
                  height: 150,
                ),
              ),
              // Add space icon (replace with your actual icon)
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                      'Cura',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              // Name input field
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintText: 'Name',
                  ),
                ),
              ),
              // Email input field
              Form(
                key: _formKey,
                child:Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(20.0),),
                      hintText: 'email@domain.com',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              // Password input field
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder( borderRadius: BorderRadius.circular(20.0),),
                    hintText: 'Password',
                  ),
                ),
              ),
              // Confirm password input field
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: TextField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder( borderRadius: BorderRadius.circular(20.0),),
                    hintText: 'Confirm Password',
                  ),
                ),
              ),
              // Signup button
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () async {
                    // Password match validation
                    if (passwordController.text !=
                        confirmPasswordController.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Passwords do not match!'),
                        ),
                      );
                      return;
                    }
                    if (_formKey.currentState!.validate()) {
                      try {
                        // Attempt to sign up using Supabase
                        await supabase.auth.signUp(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim(),
                          data: {
                            'name': nameController.text.trim(),
                          },
                          emailRedirectTo: 'io.supabase.flutterquickstart://login-callback/login',
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage()),
                        );
                      } catch (error) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Error: $error'),
                          ),
                        );
                      }
                    }
                  },
                  child: Text('Sign up'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.lightBlueAccent,
                    fixedSize: Size(200, 50),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextButton(
                  onPressed: () {
                    context.go('/LoginPage');
                  },
                  child: Text('Already have an account? Sign in'),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

// Placeholder for another page
class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Another Page'),
      ),
      body: Center(
        child: Text('Welcome to another page!'),
      ),
    );
  }
}
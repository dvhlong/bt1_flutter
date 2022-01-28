import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_flutter/view/signup.dart';

class MyApp5 extends StatelessWidget {
  const MyApp5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var fKey = GlobalKey<FormState>();
  var txtUserName = TextEditingController();
  var txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: fKey,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Sign In",
              style: TextStyle(
                fontSize: 30,
                color: Colors.deepOrangeAccent,
              ),
            ),
            TextFormField(
              controller: txtUserName,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "User name cannot empty";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Please input username",
                  labelText: "User name"),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: txtPassword,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Password cannot empty";
                } else if (value.length < 6) {
                  return "Length minimum is 6";
                } else
                  return null;
              },
              decoration: InputDecoration(
                  icon: Icon(Icons.lock_open),
                  hintText: "Please input Password",
                  labelText: "Password"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (fKey.currentState!.validate()) {
                  print("Okie");
                  var username = txtUserName.text;
                  var password = txtPassword.text;
                  var alertDialog = AlertDialog(
                    content: Text("${username}, ${password}"),
                  );
                  showDialog(
                      context: context,
                      builder: (context) {
                        return alertDialog;
                      });
                } else
                  print("Not ok");
              },
              child: Text("Login"),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: EdgeInsets.only(right: 30),
                child: Container(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 30, color: Colors.blue),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        })))
          ],
        ),
      ),
    );
  }
}

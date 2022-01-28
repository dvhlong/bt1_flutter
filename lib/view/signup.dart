import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var fKey = GlobalKey<FormState>();
  var txtUserName = TextEditingController();
  var txtPassword = TextEditingController();
  var txtPhone = TextEditingController();

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
              "Sign Up",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            TextFormField(
              controller: txtUserName,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please cannot empty username';
                } else if (RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value)) {
                  return null;
                } else {
                  return "not validate";
                }
              },
              decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Please input user name",
                  labelText: "User name"),
            ),
            TextFormField(
              controller: txtPassword,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Password cannot empty";
                } else if (value.length < 6) {
                  return "Please input password >= 6";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: "Please input Password",
                  labelText: "Password"),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: txtPhone,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Phone cannot empty";
                } else if (value.length != 10) {
                  return "Phone is length 10";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: "Please input Phone",
                  labelText: "Phone"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (fKey.currentState!.validate()) {
                    var username = txtUserName.text;
                    var password = txtPassword.text;
                    var phone = txtPhone.text;

                    var alert = AlertDialog(
                      content: Text(
                          "Sign Up Success, ${username},${password}, ${phone}"),
                    );

                    showDialog(
                        context: context,
                        builder: (context) {
                          return alert;
                        });
                  } else {
                    print("Sign Up unSuccess");
                  }
                },
                child: Text("Sign Up"))
          ],
        ),
      ),
    );
  }
}
// ý mình là k sửa chi hết sao nãy bị lỗi nhnhi do bạn k .text kp cái đó. lỗi ở bài á
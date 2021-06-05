import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
        body: Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login.png",
            fit: BoxFit.cover,),
            SizedBox(
              height: 20.0,
            ),
            Text("Welcome", style:
              TextStyle(fontSize: 24.0,
              fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Enter UserName"
                    ),
                  ),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter Password",
                      )),
                  SizedBox(height: 20.0,),
                  ElevatedButton(
                      onPressed: (){},
                      child: Text("Login")),
                ],
              ),
            )
          ],
        ),
    ),
      );
  }
}


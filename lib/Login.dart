import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  Login({super.key});

  TextEditingController usernamee = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Login"),
          ),
          body: Center(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      controller: usernamee,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 10.0,
                            color: Colors.green
                          ),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        labelText: "Email",
                        hintText: "Enter email"
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      controller: password,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_box) ,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 10.0,
                                  color: Colors.green
                              ),
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          labelText: "Password",
                          hintText: "Enter password"
                      ),
                      keyboardType: TextInputType.number,
                      obscureText: true,
                    ),
                  ),
                  InkWell (
                    child: OutlinedButton(
                        onPressed: () => {
                          print ("username : ${usernamee.text} and pasword : ${password.text}")
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height/12,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                              child: Text("Login",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              )
                          ),
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';

class Text_field extends StatefulWidget {
  const Text_field({super.key});

  @override
  State<Text_field> createState() => _Text_fieldState();
}

class _Text_fieldState extends State<Text_field> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Field')),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Enter Email here",
                  // enabled: false,
                  label: Text("Enter a number"),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  // suffixText: "exit",
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.amber,
                  ),
                ),
              ),
              Container(
                height: 10,
              ),
              TextField(
                controller: passwordController,

                // textAlign: TextAlign.center,
                // keyboardType: TextInputType.number,
                // cursorHeight: 25,
                obscureText: true,
                // obscuringCharacter: "*",
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },

                decoration: InputDecoration(
                    hintText: "Enter password",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Colors.amber)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.password)),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove_red_eye_rounded))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    var email = emailController.text.toString();
                    var pass = passwordController.text.toString();

                    print("Email: $email Password: $pass");
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}

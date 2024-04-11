import 'package:cook_book/utils/constant/size.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: MySizes.appBarHeight,
            horizontal: MySizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Text(
                "Welcome Back",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                "Discover Limitless Choise and Others",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 50),

              ///
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mail_outlined),
                        labelText: "Email",
                      ),
                    ),

                    ///
                    const SizedBox(height: MySizes.defaultSpace),

                    ///
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password_rounded),
                        labelText: "Password",
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                  ],
                ),
              ),

              ///
              ElevatedButton(
                onPressed: () {},
                child: Text("Sign In"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Create Account"),
              ),

              ///
              Row(
                children: [
                  Flexible(
                    child: Divider(thickness: 0.5, indent: 60, endIndent: 5),
                  ),
                  Text("Or Sign in with", style: Theme.of(context).textTheme.labelMedium),
                  Flexible(
                    child: Divider(thickness: 0.5, indent: 5, endIndent: 60),
                  ),
                ],
              ),

              ///
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(100)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

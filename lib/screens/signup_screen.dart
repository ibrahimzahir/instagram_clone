import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/text_field_input.dart';
import '../utils/colors.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupState();
}

class _SignupState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(), flex: 2),
              SvgPicture.asset('assets/ic_instagram.svg',
                  color: primaryColor, height: 64),
              const SizedBox(height: 64),
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                    'assets/default_avator.webp',
                  ),
                  ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(onPressed: (){

                  },
                  icon: const Icon(
                    Icons.add_a_photo,
                  ),),),
                ],
              ),
              const SizedBox(height: 64),
              TextFieldInput(
                textEditingController: _usernameController,
                hintText: "Enter Username",
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 24),
              TextFieldInput(
                textEditingController: _emailController,
                hintText: "Enter Email",
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 24),
              TextFieldInput(
                textEditingController: _passwordController,
                hintText: "Enter Password",
                textInputType: TextInputType.text,
                isPass: true,
              ),
              SizedBox(height: 24),
              TextFieldInput(
                textEditingController: _bioController,
                hintText: "Enter a Bio",
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 24),
              Container(
                child: const Text("Sign up"),
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                ),
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  color: blueColor,
                ),
              ),
              SizedBox(height: 12),
              Flexible(child: Container(), flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    child: const Text("Log in"),
                    padding: const EdgeInsets.symmetric(vertical: 8),
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

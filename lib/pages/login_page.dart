import 'package:chat_app/widgets/custom_btn.dart';
import 'package:chat_app/widgets/textfield_wgt.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();

  final void Function()? onTap;
  LoginPage({super.key, required this.onTap});

  void loginMethod(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
             Icon(Icons.message, size: 60, color: Theme.of(context).colorScheme.inversePrimary),
             const SizedBox(height: 40),
            //welcome back msg
            Text("Welcome back, you've been missed!", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Theme.of(context).colorScheme.primary),),
            const SizedBox(height: 24,),
            //email textfield
            CustomTextField(
              inputController: emailController,
              hintText: 'Enter your email',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 12,),
            //pw textfield
            CustomTextField(
              inputController: pwdController,
              hintText: 'Enter your password', textInputType: TextInputType.visiblePassword, isPwd: true),
            const SizedBox(height: 16,),
            //login btn
            GestureDetector(
              onTap: onTap,
              child: const CustomBtn(
                btnText: 'Login', 
              ),
            ),
            const SizedBox(height: 24,), 
            //register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Don't have an account? ", style: TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w400),),
              InkWell(
                onTap: onTap,
                child: Text("Register now", style: TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),)),
            ],)
          ],
        ),
      ),
    );
  }
}
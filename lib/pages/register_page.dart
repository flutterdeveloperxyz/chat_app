import 'package:chat_app/widgets/custom_btn.dart';
import 'package:chat_app/widgets/textfield_wgt.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();
  final TextEditingController confPwdController = TextEditingController();

  final void Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  void registerMethod(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.message, size: 60, color: Theme.of(context).colorScheme.inversePrimary,),
          const SizedBox(height: 40,),
          //welcome back msg
            Text("Let's create a new account for you", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Theme.of(context).colorScheme.primary),),
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
            const SizedBox(height: 12,),
            //pw textfield
            CustomTextField(
              inputController: confPwdController,
              hintText: 'Re-enter the password', textInputType: TextInputType.visiblePassword, isPwd: true),
            const SizedBox(height: 16,),
            //login btn
            GestureDetector(
              onTap: onTap,
              child: const CustomBtn(
                btnText: 'Register', 
              ),
            ),
            const SizedBox(height: 24,), 
            //register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Already have an account? ", style: TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w400),),
              InkWell(
                onTap: onTap, 
                child: Text("Login now", style: TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),)),
            ],)
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_tech_test/ui/home/home_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  String email='';
  String password='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key:formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email',style: TextStyle(color: Colors.black,fontSize: 16),),
                    const SizedBox(height: 4,),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email tidak boleh kosong';
                        } else if (GetUtils.isEmail(value) == false) {
                          return 'Email tidak valid';
                        }
                        return null;
                      },
                      controller: emailController,
                      enabled: true,
                      decoration: InputDecoration(
                          focusColor: Colors.green,
                          hintText: 'Email',
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14)),
                          contentPadding: const EdgeInsets.all(12)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Password',style: TextStyle(color: Colors.black,fontSize: 16),),
                    const SizedBox(height: 4,),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password tidak boleh kosong';
                        } else if (value.length < 5) {
                          return 'Password harus lebih dari 6 karakter';
                        }
                        return null;
                      },
                      controller: emailController,
                      enabled: true,
                      obscureText: true,
                      decoration: InputDecoration(
                          focusColor: Colors.green,
                          hintText: 'Password',
                          prefixIcon: Icon(
                            Icons.key,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14)),
                          contentPadding: const EdgeInsets.all(12)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => HomePage());
                  },
                  child: Container(
                    width: Get.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 18),),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

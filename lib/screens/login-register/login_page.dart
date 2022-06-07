import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:get/get.dart';

class LoginController extends GetxController {
  LoginController();

  final key = GlobalKey<FormBuilderState>();
}

class LoginPage extends StatelessWidget {
  final controller = Get.find<LoginController>();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/backlogin.png"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logoHome.png",
                    height: 150,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ingrese su correo electrónico",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 10),
              FormBuilder(
                  key: controller.key,
                  child: Column(
                    children: [
                      FormBuilderTextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        name: 'email',
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        //controller: controller.userController,

                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(context),
                          FormBuilderValidators.email(context,
                              errorText:
                                  "Introduce un correo electrónico válido"),
                        ]),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text("SIGUIENTE"))),
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

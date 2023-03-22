import 'package:dashfleet_app_flutter/presentation/shared/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shared/widgets/check_box.dart';
import '../../shared/widgets/text_field.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = Get.put(LoginController());

  var numberController = TextEditingController();
  var codeController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              headerLogin(height, width),
              Container(
                height: height * 0.73,
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    textFieldArea(),
                    checkBoxArea(),
                    buttonArea(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonArea() {
    return Column(
      children: [
        SizedBox(
          width: 150,
          height: 50,
          child: ElevatedButton(
            onPressed: buttonEntrarFunction,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                const Color.fromRGBO(16, 26, 35, 1),
              ),
            ),
            child: const Text(
              "Entrar",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("Recuperar Contraseña")
      ],
    );
  }

  Widget checkBoxArea() {
    return Row(
      children: const [
        CheckBoxComponent(),
        Text(
          "Recordar",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Container textFieldArea() {
    return Container(
      padding: const EdgeInsets.all(0),
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Celular 3246728300",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFieldComponent(
            controller: numberController,
            numero: true,
            prefixText: "+57 ",
          ),
          const Text(
            "Clave 123456",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFieldComponent(
            controller: codeController,
            numero: true,
          )
        ],
      ),
    );
  }

  Container headerLogin(double height, double width) {
    return Container(
      padding: const EdgeInsets.only(top: 80),
      height: height * 0.27,
      width: width,
      color:Constans.ColorPrimario,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "AMB APP",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          Text(
            "Ingresar",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  buttonEntrarFunction() async {
    var number = numberController.text;
    var code = codeController.text;
    await controller.loginWithCredentials(number, code);
  }
}

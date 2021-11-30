
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paginas/pallete.dart';
import 'package:paginas/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(image: 'assets/image/BannerFlores.jpg',),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const Flexible(
                child: Center(
                  child: Text(
                    'Vault Anime',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:60,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:[
                  const InicioSesion(
                  icon: FontAwesomeIcons.envelope,
                  hint: 'E-mail',
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                  ),

                  const Contrasena(
                  icon: FontAwesomeIcons.lock,
                  hint: 'Contraseña',
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.done,
                  ),

                  GestureDetector(
                    onTap:() => Navigator.pushNamed(context,
                    'rcontrasena'),
                    child: const Text(
                      'Olvido su Contraseña?',
                      style: kBodytext,
                      ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),
                  const BotonInicio(buttonName: 'Iniciar sesión',),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context,
                  'crearnuevousuario'),
                  child: Container(
                    child: const Text(
                      'Crear una nueva cuenta',
                      style: kBodytext,
                      ),
                      decoration:const BoxDecoration(border: Border(
                        bottom: BorderSide(width: 1,
                        color: kWhite))),
                  ),
                ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}


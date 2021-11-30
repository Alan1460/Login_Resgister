import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paginas/pallete.dart';
import 'package:paginas/widgets/background_image.dart';
import 'package:paginas/widgets/boton_input.dart';
import 'package:paginas/widgets/contrasena_input.dart';
import 'package:paginas/widgets/email_input.dart';

class CrearNuevoUsuario extends StatelessWidget {
  const CrearNuevoUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children:[
        const BackgroundImage(image:'assets/image/Registro1.png',),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.width * 0.3,
                ),
                Stack(
                  children: [
                    Center(
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX:0,
                          sigmaY: 0),
                          child: CircleAvatar(
                            radius: size.width * 0.14,
                            backgroundColor: kyellow,
                            child: Icon(
                            FontAwesomeIcons.user,
                            color: Colors.black,
                            size: size.width * 0.1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.08,
                      left: size.width * 0.56,
                      child: Container(
                        height:size.width * 0.1 ,
                        width: size.width * 0.1,
                        decoration: BoxDecoration(
                          color: kyellow,
                          shape: BoxShape.circle,
                          border: Border.all
                          (color: Colors.black, width:2)
                        ),
                        child: const Icon(
                          FontAwesomeIcons.arrowUp,
                          color: Colors.black,
                          ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.width * 0.1,
                ),
                Column(
                  children:[
                    const InicioSesion(
                      icon: FontAwesomeIcons.user, 
                      hint: 'Usuario', 
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next),
          
                    const InicioSesion(
                      icon:FontAwesomeIcons.envelope , 
                      hint: 'E-mail', 
                      inputType: TextInputType.emailAddress, 
                      inputAction: TextInputAction.next),
          
                    const Contrasena(
                      icon: FontAwesomeIcons.lock, 
                      hint: 'Contraseña', 
                      inputType: TextInputType.name, 
                      inputAction: TextInputAction.next),
          
                    const Contrasena(
                      icon: FontAwesomeIcons.lock, 
                      hint: 'Repetir Contraseña', 
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.done,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const BotonInicio(buttonName: 'Registrar'
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children:[
                        const Text(
                          '¿Ya tienes una cuenta?',
                          style: kBodytext,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/'),
                          child: Text(
                            'Inicia sesion',
                            style: kBodytext.copyWith(
                            color: kred,
                            fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        )

      ],
    );
  }
}
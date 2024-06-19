import 'package:flutter/material.dart';
import 'package:panaderia/services/firebase_service.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late String _nameOrEmail = '';
  late String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, 
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor, 
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context); 
                      },
                      icon: const Icon(Icons.close, color: Colors.black),
                    ),
                  ],
                ),
                const Text(
                  "Acceso",
                  style: TextStyle(
                    fontFamily: "DMSerifDisplay",
                    fontSize: 30.0, 
                    color: Color.fromARGB(255, 111, 88, 71),
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nombre de usuario o correo electrónico *",
                    labelStyle: const TextStyle(color: Color.fromARGB(255, 75, 75, 75)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  validator: (valor) {
                    if (valor == null || valor.isEmpty) {
                      return 'Por favor, ingrese su nombre de usuario o correo';
                    }
                    return null;
                  },
                  onChanged: (valor) {
                    setState(() {}); // Actualizar el estado para que desaparezca la validación
                  },
                  onSaved: (valor) {
                    _nameOrEmail = valor!;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Contraseña *",
                    labelStyle: const TextStyle(color: Color.fromARGB(255, 75, 75, 75)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  validator: (valor) {
                    if (valor == null || valor.isEmpty) {
                      return 'Por favor, ingrese su contraseña';
                    }
                    return null;
                  },
                  onChanged: (valor) {
                    setState(() {}); // Actualizar el estado para que desaparezca la validación
                  },
                  onSaved: (valor) {
                    _password = valor!;
                  },
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/forgot-password");
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(right: 200.0), 
                    child: Text(
                      "¿Olvidaste la contraseña?",
                      style: TextStyle(
                        color: Color.fromARGB(255, 92, 77, 66),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Autenticación del usuario
                      var user = await authenticateUser(_nameOrEmail, _password);
                      if (user != null) {
                        // Usuario autenticado correctamente
                        Navigator.pushNamed(context, "/welcome");
                      } else {
                        // Error de autenticación
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Usuario o contraseña incorrectos')),
                        );
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: const Color.fromARGB(255, 122, 90, 77), // Fondo 
                  ),
                  child: const Text('Acceder', style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/register");
                  },
                  child: const Text(
                    "¿Sin cuenta? Regístrate",
                    style: TextStyle(
                      color: Color.fromARGB(255, 92, 77, 66),
                    ),
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

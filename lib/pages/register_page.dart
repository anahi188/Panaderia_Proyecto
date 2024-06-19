import 'package:flutter/material.dart';
import 'package:panaderia/services/firebase_service.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    late String _name = '';
    late String _email = '';
    late String _password = '';
    
    
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(10.0),
        child: AppBar(
          backgroundColor: const Color(0xFFB29079),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              const Text(
                'Registrarse',
                style: TextStyle(
                  fontFamily: "DMSerifDisplay",
                  fontSize: 30.0, // Tamaño de la fuente reducido
                  color: Color.fromARGB(255, 111, 88, 71),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          labelText: 'Nombre de Usuario*',
                          labelStyle: TextStyle(color: const Color.fromARGB(255, 75, 75, 75)),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingrese su nombre de usuario';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _name = value ?? '';
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          labelText: 'Correo Electrónico*',
                          labelStyle: TextStyle(color: const Color.fromARGB(255, 75, 75, 75)),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingrese su correo electrónico';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _email = value ?? '';
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          labelText: 'Contraseña*',
                          labelStyle: TextStyle(color: const Color.fromARGB(255, 75, 75, 75)),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingrese su contraseña';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _password = value ?? '';
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          labelText: 'Confirmar Contraseña*',
                          labelStyle: TextStyle(color: const Color.fromARGB(255, 75, 75, 75)),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, confirme su contraseña';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    await saveUser(_name, _email, _password);
                    Navigator.pushNamed(context, "/welcome");
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: const Color.fromARGB(255, 122, 90, 77), 
                ),
                child: const Text('Registrarse', style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
              //PIE DE PAGINA
              const SizedBox(height: 232), //CUANDO SE PONE ENVIAR ESTO SE BAJA Y SALE LINEA AMARILLA
              Container(
                color: const Color(0xFFB29079),
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '© 2024 OvenFresh. Todos los derechos reservados.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
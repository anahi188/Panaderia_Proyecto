import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    late String _nombre = '';
    late String _password = '';

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(10.0),
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
              const SizedBox(height: 80),
              const Text(
                '¡Ponerse en contacto!',
                style: TextStyle(
                  fontFamily: "DMSerifDisplay",
                  fontSize: 30.0, // Tamaño de la fuente reducido
                  color: Color.fromARGB(255, 111, 88, 71),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
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
                          labelStyle: const TextStyle(color: Color.fromARGB(255, 75, 75, 75)),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingrese su nombre de usuario';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _nombre = value ?? '';
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          labelText: 'Correo Electrónico*',
                          labelStyle: const TextStyle(color: Color.fromARGB(255, 75, 75, 75)),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingrese su correo electrónico';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            //Modificar el borde de radio 
                          ),
                          labelText: 'Tú comentario*',
                          labelStyle: const TextStyle(color: Color.fromARGB(255, 75, 75, 75)),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingrese un comentario';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _nombre = value ?? '';
                        },
                      ),
          
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.pushNamed(context, "/");
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
                child: const Text('Enviar', style: TextStyle(fontSize: 18, color: Colors.white)),
              ),

              //PIE DE PAGINA
                const SizedBox(height: 265),
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
          )
        ),
      ),
    );
  }
}

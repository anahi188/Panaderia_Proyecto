import 'package:flutter/material.dart';

class OptionPage extends StatelessWidget {
  const OptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center( // Centra el texto
          child: Text("Options Page"),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: const Color.fromARGB(255, 195, 165, 159),  // Fondo
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 8,
                color: const Color.fromARGB(255, 237, 167, 163),  // Línea horizontal
              ),
              const SizedBox(height: 20),
              const Text(
                'Opciones de Panadería',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 166, 227, 219), // Cambia el color de fondo del botón
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Ajusta el padding del botón
                ),
                child: const Text("Pastelería"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 229, 225, 153), 
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
                ),
                child: const Text("Repostería"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 131, 186, 234), 
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
                ),
                child: const Text("Bocaditos"),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                child: const Text("Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

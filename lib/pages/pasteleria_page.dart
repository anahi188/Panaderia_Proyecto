import 'package:flutter/material.dart';
import 'package:panaderia/pages/login_page.dart';

class PasteleriaPage extends StatelessWidget {
  const PasteleriaPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          backgroundColor: const Color(0xFFB29079),
          title: const Text(
            '¡Tú paladar, te lo agradecerá!',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
      ),
      drawer: Drawer(
        // MENU DRAWER
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFE1DACA), // Fondo menu
          ),
          child: ListView(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Text(
                    'OvenFresh',
                    textAlign: TextAlign.center, // Centra el texto
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Inicio"),
                iconColor: const Color.fromARGB(255, 92, 77, 66),
                onTap: () {
                  Navigator.pushNamed(context, "/");
                },
              ),
              ExpansionTile(
                leading: const Icon(Icons.shopping_cart),
                title: const Text("Productos"),
                iconColor: const Color.fromARGB(255, 92, 77, 66),
                trailing: Icon(Icons.arrow_drop_down_outlined),
                children: [
                  ListTile(
                    title: const Text("Pastelería"),
                    onTap: () {
                      Navigator.pushNamed(context, "/pasteleria");
                    }, //poner la ruta
                    contentPadding: EdgeInsets.only(left: 70.0),
                  ),
                  ListTile(
                    title: const Text("Panadería"),
                    onTap: () {
                      Navigator.pushNamed(context, "/panaderia");
                    },
                    contentPadding: EdgeInsets.only(left: 70.0),
                  ),
                ],
              ),
              ListTile(
                leading: const Icon(Icons.group),
                title: const Text("Sobre Nosotros"),
                iconColor: const Color.fromARGB(255, 92, 77, 66),
                onTap: () {
                  Navigator.pushNamed(context, "/description");
                },
              ),
               ListTile(
                leading: const Icon(Icons.phone),
                title: const Text("Contáctanos"),
                iconColor: const Color.fromARGB(255, 92, 77, 66),
                onTap: () {
                  Navigator.pushNamed(context, "/contact");
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text("Acceder"),
                iconColor: const Color.fromARGB(255, 92, 77, 66),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.transparent,
                        content: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child:
                              const LoginPage(), // Muestra el LoginPage como ventana emergente
                        ),
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xFFF6F5EC), // Fondo para la parte superior
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Builder(
                      builder: (context) => IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    ),
                  ),
                  const Text(
                    'OvenFresh',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Desde 2004',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Pastelería',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 121, 85, 72),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'images/pastel.jpg',
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/selva.jpg',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 30),
                      const Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SELVA NEGRA',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Bizcochuelo de chocolate humedecido con tres leches, relleno de crema de cerezas.',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Precio: \$26.50',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/hojas.jpg',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 30),
                      const Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MILHOJAS GRANDE',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Masa de hojaldre relleno de crema pastelera, manjar y durazno.',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Precio: \$20.50',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/frutas.jpg',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 30),
                      const Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PIE DE FRUTAS',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Variedad de frutas y crema pastelera sobre una galleta crujiente.',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Precio: \$22.50',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/maracuya.jpg',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 30),
                      const Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CHESSCAKE MARACUYA',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Exquisita masa cubierta de maracuya sobre una base de galleta.',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Precio: \$28.50',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/selva.jpg',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 30),
                      const Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SELVA NEGRA',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Bizcochuelo de chocolate humedecido con tres leches, relleno de crema de cerezas.',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Precio: \$26.50',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/hojas.jpg',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 30),
                      const Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MILHOJAS GRANDE',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Masa de hojaldre relleno de crema pastelera, manjar y durazno.',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Precio: \$20.50',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/frutas.jpg',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 30),
                      const Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PIE DE FRUTAS',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Variedad de frutas y crema pastelera sobre una galleta crujiente.',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Precio: \$22.50',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/maracuya.jpg',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 30),
                      const Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CHESSCAKE MARACUYA',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Exquisita masa cubierta de maracuya sobre una base de galleta.',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Precio: \$28.50',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/register");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(102, 64, 50, 1.0),
                ),
                child: const Text(
                  'Ver más',
                  style: TextStyle(
                    color: Colors.white, // Color del texto
                  ),
                ),
              ),
            ),
            //PIE DE PAGINA
            const SizedBox(height: 20),
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
    );
  }
}

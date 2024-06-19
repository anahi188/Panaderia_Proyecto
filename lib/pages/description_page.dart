//MODIFICAR CIERTAS COSAS
import 'package:flutter/material.dart';
import 'package:panaderia/pages/login_page.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30.0),
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
              const SizedBox(height: 60),
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
                trailing: const Icon(Icons.arrow_drop_down_outlined),
                children: [
                  ListTile(
                    title: const Text("Pastelería"),
                    onTap: () {
                  Navigator.pushNamed(context, "/pasteleria");
                },
                    contentPadding: const EdgeInsets.only(left: 70.0),
                  ),
                  ListTile(
                    title: const Text("Panadería"),
                     onTap: () {
                  Navigator.pushNamed(context, "/panaderia");
                },
                    contentPadding: const EdgeInsets.only(left: 70.0),
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
                    'Sobre Nosotros',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 121, 85, 72), 
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.asset(
                    'images/nosotros.jpg', 
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Historia de OvenFresh:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 121, 85, 72),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'OvenFresh nació en el corazón de una familia apasionada por la panadería. Con el deseo de llevar productos frescos y deliciosos a la comunidad, se estableció en 2004 con un compromiso inquebrantable con la calidad y el sabor.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          'images/nosotros1.jpg',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Image.asset(
                          'images/nosotros2.jpg',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Misión:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color:Color.fromARGB(255, 121, 85, 72),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Nuestra misión es brindar a nuestros clientes productos frescos y deliciosos, elaborados con ingredientes de la más alta calidad y con un toque de amor en cada preparación.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Visión:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 121, 85, 72),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Nos visualizamos como la panadería de referencia en la ciudad, reconocida por la frescura y calidad de nuestros productos, así como por nuestro compromiso con la satisfacción de nuestros clientes.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 40),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                        'Nuestra solidaridad ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 121, 85, 72),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Esquinas redondeadas
                                  child: Image.asset(
                                    'images/solidaridad.jpg',
                                    height: 200,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Esquinas redondeadas
                                  child: Image.asset(
                                    'images/solidaridad1.jpg',
                                    height: 200,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Esquinas redondeadas
                                  child: Image.asset(
                                    'images/solidaridad2.jpg',
                                    height: 200,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ],
              ),
            ),
            
            //PIE DE PAGINA
                const SizedBox(height: 295),
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

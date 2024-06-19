import 'package:flutter/material.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({super.key});

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  int quantity = 1; 
  double price = 40.00; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30.0),
        child: AppBar(
          backgroundColor: const Color(0xFFB29079),
          title: const Text(
            '¡Tú paladar, te lo agradecerá! ',
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
            color: Color(0xFFE1DACA),
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
              const SizedBox(height: 20),
              const UserAccountsDrawerHeader(
                accountName: Text("Arianna Cóndor"),
                accountEmail: Text("ari.condor@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/user.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 92, 77, 66),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Inicio"),
                iconColor: const Color.fromARGB(255, 92, 77, 66),
                onTap: () {
                  Navigator.pushNamed(context, "/welcome");
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
                    }, //poner la ruta
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
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                const Column(
                  children: [
                    Text(
                      'Tú carrito de compras',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 121, 85, 72),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Carrito Actualizado',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20), // Margen a la izquierda de la imagen
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/paquete5.jpg',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Paquete para eventos de 50 personas',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            ' \$${price.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 35),
                          Text(
                            'Total: \$${(price * quantity).toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    if (quantity > 1) {
                                      quantity--;
                                    }
                                  });
                                },
                              ),
                              Text(
                                '$quantity',
                                style: const TextStyle(fontSize: 18),
                              ),
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    quantity++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 130),
                 Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/packages");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(102, 64, 50, 1.0),
                    ),
                    child: const Text(
                      'Regresar',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                
                
                //PIE DE PAGINA
                const SizedBox(height: 240),
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
      ),
    );
  }
}

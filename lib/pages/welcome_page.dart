import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
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
              SizedBox(height: 20),
              const UserAccountsDrawerHeader(
            accountName: Text("Arianna Cóndor"), 
            accountEmail: Text("ari.condor@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/user.jpg'),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 92, 77, 66),),
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
                leading: const Icon(Icons.exit_to_app),
                title: const Text("Salir"),
                iconColor: const Color.fromARGB(255, 92, 77, 66),
                onTap: () {
                  Navigator.pushNamed(context, "/");
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white, // Fondo blanco para todo el body
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color:
                      const Color(0xFFF6F5EC), // Fondo para la parte superior
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
                  child: const Text(
                    '¡Hola, Arianna! Nos alegra tenerte en OvenFresh.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.brown),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal:
                          16.0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            20.0), 
                        child: Image.asset(
                          'images/panaderia.jpg', 
                          width: double.infinity,
                          height: 400,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(
                              20.0), // Ajusta el radio de las esquinas según tu preferencia
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  bottom:
                                      20.0), // Ajusta este valor para mover el texto hacia arriba
                              child: Text(
                                '¡Comienza el día de la mejor manera!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            //SI TERMINO VA, SINO QUITAR
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/packages");
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(216, 103, 85, 1.0),
                              ),
                              child: const Text(
                                'VER PAQUETES',
                                style: TextStyle(
                                  color: Colors.white, 
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const Divider(
                  color:
                      Color.fromARGB(255, 179, 170, 165), // Color de la línea
                  thickness: 1, // Grosor de la línea
                  indent: 20, // Espacio a la izquierda de la línea
                  endIndent: 20, // Espacio a la derecha de la línea
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                        'Las mejores delicias de una panadería y pastelería',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 121, 85, 72),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 400.0, // Altura aumentada de las tarjetas
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                      items: [
                        BakeryItem(
                          imageUrl: 'images/pan.jpg',
                          title: 'Panadería',
                          description: 'Delicioso pan recién horneado.',
                          height:
                              300, // Ajusta la altura de la imagen según sea necesario
                        ),
                        BakeryItem(
                          imageUrl: 'images/pastel.jpg',
                          title: 'Pastelería',
                          description: 'Un exquisito pastel de chocolate.',
                          height:
                              300, // Ajusta la altura de la imagen según sea necesario
                        ),
                        BakeryItem(
                          imageUrl: 'images/galletas.jpg',
                          title: 'Galletería',
                          description: 'Crujientes y deliciosas galletas.',
                          height:
                              300, // Ajusta la altura de la imagen según sea necesario
                        ),
                      ].map((item) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Card(
                              color: Color.fromRGBO(
                                  193, 170, 157, 1.0), // Color café
                              child: Column(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Ajusta el radio de las esquinas
                                    child: Image.asset(
                                      item.imageUrl,
                                      fit: BoxFit.cover,
                                      height:
                                          250, // Altura aumentada de la imagen
                                      width: double.infinity,
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      item.title,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white, // Color del texto
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      item.description,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                        '"Deléitate con una gama de sabores exquisitos para los paladares más exigentes."',
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
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Te invitamos a degustar productos del horno a tu mesa, con los más altos estándares de calidad y precios accesibles a nuestra comunidad. Contamos con 32 años de experiencia en el mercado.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, "/description");
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(
                                          102, 64, 50, 1.0),
                                    ),
                                    child: const Text(
                                      'Leer más',
                                      style: TextStyle(
                                        color: Colors.white, // Color del texto
                                      ),
                                    ),
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
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  20.0), // Esquinas redondeadas
                              child: Image.asset(
                                'images/paladares.jpg',
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal:
                          16.0), // Ajusta el padding según tu preferencia
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            20.0), // Ajusta el radio de las esquinas según tu preferencia
                        child: Image.asset(
                          'images/local.jpg', // Ruta de tu imagen grande
                          width: double.infinity,
                          height: 400,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(
                              20.0), // Ajusta el radio de las esquinas según tu preferencia
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  bottom:
                                      5.0), // Ajusta este valor para mover el texto hacia arriba
                              child: Text(
                                'VISITA NUESTROS LOCALES',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(  //SI ALCANZO HACER ESTO SINO BORRAR
                              onPressed: () {
                                // Acción del botón
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(216, 103, 85, 1.0),
                              ),
                              child: const Text(
                                'ENCONTRAR',
                                style: TextStyle(
                                  color: Colors.white, // Color del texto
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                        'Nuestro Blog',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 121, 85, 72),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    //TRES IMAGENES
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/pancakes.jpg',
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Pancakes',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                              height:
                                  5), // Espacio entre el texto y el subtítulo
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Te enseñaremos a preparar los más ricos pancakes con nuestra receta Chokolat.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow
                                  .ellipsis, // Corta el texto si es muy largo
                              maxLines: 2, // Limita el texto a 2 líneas
                              textAlign: TextAlign.center, // Centra el texto
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                        height:
                            30), // Espacio entre las imágenes y el siguiente texto
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/waffles.jpg',
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Waffles',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                              height:
                                  5), // Espacio entre el texto y el subtítulo
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Prueba nuestra deliciosa receta de waffles y disfruta de su rico sabor.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow
                                  .ellipsis, // Corta el texto si es muy largo
                              maxLines: 2, // Limita el texto a 2 líneas
                              textAlign: TextAlign.center, // Centra el texto
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                        height:30), // Espacio entre las imágenes y el siguiente texto
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/empolvados.jpg',
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Empolvados',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                              height:
                                  5), // Espacio entre el texto y el subtítulo
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Descubre los empolvados, unos deliciosos bocaditos dulces que combinan una suave masa esponjosa con una capa de azúcar impalpable.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow
                                  .ellipsis, // Corta el texto si es muy largo
                              maxLines: 2, // Limita el texto a 2 líneas
                              textAlign: TextAlign.center, // Centra el texto
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                        'Procesos de Calidad ',
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
                                    'images/panadero.jpg',
                                    height: 200,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        10), // Espacio entre la imagen y el texto
                                const Text(
                                  'Profecionales Calificados',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
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
                                    'images/pastel.jpg',
                                    height: 200,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        10), // Espacio entre la imagen y el texto
                                const Text(
                                  'Pastele Personalizados',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
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
                                    'images/pasion.jpg',
                                    height: 200,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        10), // Espacio entre la imagen y el texto
                                const Text(
                                  'Pasión por las Galletas',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
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
                const SizedBox(height: 40),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                        'Pídelo por: ',
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
                                ClipOval(
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                      'images/rappi.jpg',
                                      fit: BoxFit.cover,
                                    ),
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
                                ClipOval(
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                      'images/uber.jpg',
                                      fit: BoxFit.cover,
                                    ),
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
                                ClipOval(
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                      'images/pedidos.jpg',
                                      fit: BoxFit.cover,
                                    ),
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
        ),
      ),
    );
  }
}

class BakeryItem {
  final String imageUrl;
  final String title;
  final String description;

  BakeryItem({
    required this.imageUrl,
    required this.title,
    required this.description,
    required int height,
  });
}

import 'package:flutter/material.dart';
import 'package:panaderia/pages/contact_page.dart';
import 'package:panaderia/pages/description_page.dart';
import 'package:panaderia/pages/error_page.dart';
import 'package:panaderia/pages/packages_page.dart';
import 'package:panaderia/pages/panaderia_page.dart';
import 'package:panaderia/pages/pasteleria_page.dart';
import 'package:panaderia/pages/register_page.dart';
import 'package:panaderia/pages/shoppingCart_page.dart';
import 'package:panaderia/pages/welcomeRegister_page.dart';
import 'package:panaderia/pages/welcome_page.dart';

//PAQUETES BD
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


//MODIFIQUE
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "/",
      routes: {
        "/":(context) => const WelcomeRegisterPage(),
        "/welcome":(context) => const WelcomePage(),
        "/register": (context) => const RegisterPage(), 
        "/description": (context) => const DescriptionPage(), 
        "/error": (context) => const ErrorPage(), 
        "/pasteleria": (context) => const PasteleriaPage(), 
        "/panaderia": (context) => const PanaderiaPage(), 
        "/contact": (context) => const ContactPage(),
        "/packages": (context) => const PackagesPage(),
        "/shopping": (context) => const ShoppingCartPage(),

        
      },
      onGenerateRoute: (Settings){  //ESTO NOS DIRECCIONARA A UNA PAGINA EN CONSTRUCCION, OBVIAMENTE DEBERIAMOS CREAR EL ARCHIVO "ERROR"
        return MaterialPageRoute(builder: (context) => ErrorPage());
      }
      );
  }
}
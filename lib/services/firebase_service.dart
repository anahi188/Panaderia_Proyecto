import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';



FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getPeople() async {
  List people = [];
  CollectionReference collectionReferencePeople = db.collection('people');
  QuerySnapshot queryPeople = await collectionReferencePeople.get();
  queryPeople.docs.forEach((documento) {
    people.add(documento.data());
  });
  return people;
}

//Funcion Guardar - Register
Future<void> saveUser(String name, String email, String password) async {
  String hashedPassword = sha256.convert(utf8.encode(password)).toString();
  await db.collection('people').add({
    'name': name,
    'email': email,
    'password': hashedPassword, // Guarda la contraseña encriptada
  });
}


//Autenticacion - Login
Future<Map<String, dynamic>?> authenticateUser(String nameOrEmail, String password) async {
  String hashedPassword = sha256.convert(utf8.encode(password)).toString();
  CollectionReference collectionReferencePeople = db.collection('people');
  QuerySnapshot query = await collectionReferencePeople
      .where('name', isEqualTo: nameOrEmail)
      .where('password', isEqualTo: hashedPassword) // Compara la contraseña encriptada
      .get();

  if (query.docs.isEmpty) {
    query = await collectionReferencePeople
        .where('email', isEqualTo: nameOrEmail)
        .where('password', isEqualTo: hashedPassword) // Compara la contraseña encriptada
        .get();
  }

  if (query.docs.isNotEmpty) {
    return query.docs.first.data() as Map<String, dynamic>;
  }

  return null;
}

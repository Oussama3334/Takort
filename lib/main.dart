import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart'; // Importa TapGestureRecognizer

import 'home_page.dart';

void main() {
  runApp(TakortApp());
}

class TakortApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Takort',
      theme: ThemeData(
        primaryColor:Colors.green,
        appBarTheme: AppBarTheme(
          color: Colors.green,
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false, // Quitar debug banner
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', height: 260),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Usuario',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20), // Espacio agregado entre los botones y el texto "¿No tienes cuenta?"
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Alinear los botones de manera uniforme
  children: [
    ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.green, // Botón de color verde claro
        onPrimary: Colors.white, // Texto de color blanco
      ),
      child: Text('Iniciar Sesión'),
    ),
    SizedBox(height: 10), // Espacio entre botones
    ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.green, // Botón de color verde claro
        onPrimary: Colors.white, // Texto de color blanco
      ),
      child: Text('Iniciar Sesión como Invitado'),
    ),
  ],
),

            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: '¿No tienes cuenta? ',
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Hazte una cuenta',
                    style: TextStyle(color: Colors.green),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterPage()),
                        );
                      },
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

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
        title: Text('Registro', style: TextStyle(color: Colors.green)),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.green), // Cambiado a un botón de retroceso
          onPressed: () {
            Navigator.pop(context); // Regresar a la página anterior
          },
        ),
      ),

    

    
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Nombre Completo',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Correo Electrónico',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica de registro estándar
                _showRegistrationDialog(context, 'Estándar', 29); // Mostrar diálogo de registro
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Botón de color verde claro
                onPrimary: Colors.white, // Texto de color blanco
              ),
              child: Text('Registrar (Estándar)'),
            ),
            SizedBox(height: 10), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                // Lógica de registro premium
                _showRegistrationDialog(context, 'Premium', 49); // Mostrar diálogo de registro
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Color azul para premium
                onPrimary: Colors.white, // Texto de color blanco
              ),
              child: Text('Registrar Premium'),
            ),
          ],
        ),
      ),
    );
  }

  // Función para mostrar el diálogo de registro
  void _showRegistrationDialog(BuildContext context, String type, double price) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Registro $type'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Información de Registro:'),
              SizedBox(height: 10),
              Text('Precio: $price euros/mes'),
              Text('Beneficios adicionales...'), // Agregar beneficios adicionales si es necesario
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Cerrar el diálogo
              },
              child: Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes manejar la lógica de registro
                Navigator.pop(context); // Cerrar el diálogo después de registrar
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Botón de color verde claro
                onPrimary: Colors.white, // Texto de color blanco
              ),
              child: Text('Registrar'),
            ),
          ],
        );
      },
    );
  }
}

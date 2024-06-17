import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
        title: Text('Perfil de Usuario', style: TextStyle(color: Colors.green)),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            SizedBox(height: 20),
            _buildInfo(),
            SizedBox(height: 20),
            _buildStats(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        // Imagen situada a la izquierda del nombre
        Image.asset(
          'assets/player.png',
          height: 180,
          width: 180,
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Oussama Boujaha',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Rating: ★★★★★'),
          ],
        ),
      ],
    );
  }

  Widget _buildInfo() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildInfoTile('Edad', '25 años'),
            _buildInfoTile('Peso', '75 kg'),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildInfoTile('Altura', '182 cm'),
            _buildInfoTile('Pie', 'Derecho'),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildInfoTile('Posición Primaria', 'Medio Derecho'),
            _buildInfoTile('Posición Secundaria', 'Lateral Derecho'),
          ],
        ),
      ],
    );
  }

  Widget _buildInfoTile(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildStats() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Estadísticas',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        _buildStatRow('Velocidad', 71),
        _buildStatRow('Defensa', 71),
        _buildStatRow('Físico', 64),
        _buildStatRow('Regate', 68),
        _buildStatRow('Pase', 71),
        _buildStatRow('Tiro', 68),
      ],
    );
  }

  Widget _buildStatRow(String stat, int value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(stat),
        Text(value.toString()),
      ],
    );
  }
}

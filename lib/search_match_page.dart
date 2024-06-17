import 'package:flutter/material.dart';

class SearchMatchPage extends StatefulWidget {
  @override
  _SearchMatchPageState createState() => _SearchMatchPageState();
}

class _SearchMatchPageState extends State<SearchMatchPage> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();
  String? _selectedPlayerNumber;
  String? _selectedField;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime)
      setState(() {
        _selectedTime = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
        title: Text('Búsqueda y Unión a Partidos', style: TextStyle(color: Colors.green)),
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
            TextField(
              decoration: InputDecoration(
                labelText: 'Ubicación',
              ),
            ),
            SizedBox(height: 16),
            InkWell(
              onTap: () {
                _selectDate(context);
              },
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'Fecha',
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("${_selectedDate.toLocal()}".split(' ')[0]),
                    Icon(Icons.calendar_today),
                  ],
                ),
              ),
            ),
           


 SizedBox(height: 16),
            InkWell(
              onTap: () {
                _selectTime(context);
              },
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'Hora',
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("${_selectedTime.format(context)}"),
                    Icon(Icons.access_time),
                  ],
                ),
              ),
            ),


            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _selectedPlayerNumber,
              onChanged: (String? value) {
                setState(() {
                  _selectedPlayerNumber = value;
                });
              },
              items: <String>['5 vs 5', '7 vs 7', '11 vs 11'].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Número de Jugadores',
              ),
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _selectedField,
              onChanged: (String? value) {
                setState(() {
                  _selectedField = value;
                });
              },
              items: <String>['Césped Artificial', 'Costa', 'Césped Natural', 'Salón Cubierto'].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Tipo de Campo',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aquí iría la lógica para buscar y unirse a partidos
              },
              child: Text('Buscar Partidos'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(const AppClinicaDental());

class AppClinicaDental extends StatelessWidget {
  const AppClinicaDental({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Citas de clinica dental',
      home: Citas(), // Clase con mayúscula
    );
  }
}

class Citas extends StatelessWidget {
  const Citas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Citas de Clínica dental Gioser Fisher',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 116, 211, 255), // Opacidad al 255 (sólido)
        leading: const Icon(
          Icons.health_and_safety,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.build, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.emergency, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          // 1. Cita de Revisión General
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(Icons.calendar_today, color: Colors.white, size: 20),
              ),
              title: Text('Limpieza y Revisión', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Dr. Arreola - 09:00 AM'),
              trailing: Text('Hoy', style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold)),
            ),
          ),

          // 2. Cita de Ortodoncia
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Icon(Icons.settings_suggest, color: Colors.white),
              ),
              title: Text('Ajuste de Brackets', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Dra. García - 11:30 AM'),
              trailing: Icon(Icons.timer_outlined, color: Colors.blueAccent),
            ),
          ),

          // 3. Urgencia (CORREGIDO: Colors.red.shade900 en lugar de redHeadline)
          Card(
            color: Colors.red.shade50,
            elevation: 1,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Icon(Icons.healing, color: Colors.white),
              ),
              title: Text('Extracción de Cordal', 
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red.shade900)),
              subtitle: const Text('Urgencia - 01:00 PM'),
              trailing: const Icon(Icons.priority_high, color: Colors.redAccent),
            ),
          ),

          // 4. Tratamiento Estético
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.cyan,
                child: Icon(Icons.auto_awesome, color: Colors.white),
              ),
              title: Text('Blanqueamiento LED', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Especialista: Lucas M.'),
              trailing: Icon(Icons.star, color: Colors.amber),
            ),
          ),

          // 5. Cita Pendiente
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person_search, color: Colors.white),
              ),
              title: const Text('Primera Consulta', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Paciente: Juan Pérez'),
              trailing: ElevatedButton(
                onPressed: () {}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey, 
                  foregroundColor: Colors.white, 
                  padding: const EdgeInsets.symmetric(horizontal: 10)
                ),
                child: const Text('Confirmar'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
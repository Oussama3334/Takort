import 'package:flutter/material.dart';
import 'main.dart';
import 'profile_page.dart';
import 'create_match_page.dart';
import 'search_match_page.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Color blanco para la AppBar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Centra los elementos en el AppBar
          children: [
            Image.asset('assets/logo.png', height: 130),
            SizedBox(width: 8),
            
          ],
        ),
        actions: [
         IconButton(
  icon: Icon(Icons.logout, color: Colors.green), // Icono con color verde claro
  onPressed: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  },
),

        ],
      ),
  
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jugar más fútbol con TAKORT',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Descubre partidos de fútbol cerca de ti. Si no encuentras, crea un partido de fútbol',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              '¿Estás buscando?',
              style: TextStyle(fontSize: 14),
            ),
SizedBox(height: 16),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateMatchPage()),
          );
        },
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(8),
            border: Border.all( // Agregar borde
              color: Colors.green, // Color del borde
              width: 1, // Ancho del borde
            ),
          ),
          child: Column(
            children: [
              Icon(Icons.sports_soccer, size: 48, color: Colors.green,),
              SizedBox(height: 8),
              Text(
                'Creación de Partidos',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green,),
              ),
            ],
          ),
        ),
      ),
    ),
    SizedBox(width: 16),
    Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SearchMatchPage()),
          );
        },
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(8),
            border: Border.all( // Agregar borde
              color: Colors.green, // Color del borde
              width: 1, // Ancho del borde
            ),
          ),
          child: Column(
            children: [
              Icon(Icons.sports_soccer_sharp, size: 48, color: Colors.green),
              SizedBox(height: 8),
              Text(
                'Búsqueda y Unión a Partidos',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    ),
  ],
),

            SizedBox(height: 16),
            Text(
              'Estadios de fútbol cerca de tu ubicación',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            SizedBox(height: 16),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Expanded(
      child: GestureDetector(
        onTap: () {
          _showHorariosDisponibles(context, 'Estadio de la Unión', 'Lunes: 16:00 - 20:00\nMiércoles: 16:00 - 20:00\nViernes: 16:00 - 22:00');
        },
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color.fromRGBO(245, 245, 245, 1),
            borderRadius: BorderRadius.circular(8),
            border: Border.all( // Agregar borde
              color: Colors.green, // Color del borde
              width: 1, // Ancho del borde
            ),
          ),
          child: Column(
            children: [
              Image.asset('assets/estadiumunion.png', height: 95, width: double.infinity, fit: BoxFit.cover),
              SizedBox(height: 8),
              Text(
                'Estadio de la Unión',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 18, // Tamaño de fuente agregado
                  fontWeight: FontWeight.bold, // Puedes ajustar el peso de la fuente si es necesario
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    ),
    SizedBox(width: 16),
    Expanded(
      child: GestureDetector(
        onTap: () {
          _showHorariosDisponibles(context, 'Estadio Trinidad', 'Jueves: 18:00 - 21:00\nViernes: 18:00 - 21:00\nSábado: 10:00 - 14:00');
        },
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color.fromRGBO(245, 245, 245, 1),
            borderRadius: BorderRadius.circular(8),
            border: Border.all( // Agregar borde
              color: Colors.green, // Color del borde
              width: 1, // Ancho del borde
            ),
          ),
          child: Column(
            children: [
              Image.asset('assets/estadium-rosaleda.png', height: 95, width: double.infinity, fit: BoxFit.cover),
              SizedBox(height: 8),
              Text(
                'Estadio de la Trinidad',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 18, // Tamaño de fuente agregado
                  fontWeight: FontWeight.bold, // Puedes ajustar el peso de la fuente si es necesario
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    ),
  ],
),

          ],
        ),
      ),
        
    bottomNavigationBar: Container(
  decoration: BoxDecoration(
    border: Border(
      top: BorderSide(
        color: Colors.green, // Color del borde superior (verde)
        width: 1.0, // Ancho del borde
          ),
    ),
  ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home, color: Colors.green), // Icono de inicio
                onPressed: () {
                  // Acción para el botón de inicio
                },
              ),
              IconButton(
                icon: Icon(Icons.notifications, color: Colors.green), // Icono de notificaciones
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotificationsPage()),
                  );
                },
              ),

IconButton(
              icon: Icon(Icons.chat, color: Colors.green), // Icono de conversaciones
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConversationsPage()),
                );
              },
            ),

              IconButton(
                icon: Icon(Icons.settings, color: Colors.green), // Icono de ajustes
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsPage()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.person, color: Colors.green), // Icono de perfil
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
              ),
            ],
          ),
        ),
      );
  }
}

void _showHorariosDisponibles(BuildContext context, String estadio, String horarios) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('$estadio - Horarios Disponibles'),
          content: Text(horarios),
          actions: [
            TextButton(
              child: Text('Cerrar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
        title: Text('Notificaciones', style: TextStyle(color: Colors.green)),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.green), // Cambiado a un botón de retroceso
          onPressed: () {
            Navigator.pop(context); // Regresar a la página anterior
          },
        ),
      ),


     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.notifications, size: 100, color: Colors.grey),
            SizedBox(height: 20),
            Text(
              'No hay notificaciones disponibles en este momento',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class ConversationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
        title: Text('Conversaciones', style: TextStyle(color: Colors.green)),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.green), // Cambiado a un botón de retroceso
          onPressed: () {
            Navigator.pop(context); // Regresar a la página anterior
          },
        ),
      ),



    
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat, size: 100, color: Colors.grey),
            SizedBox(height: 20),
            Text(
              'No hay conversaciones por el momento',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para crear un grupo para conversar con amigos
              },
              child: Text('Crear Grupo'),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuraciones', style: TextStyle(color: Colors.green)),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.green), // Cambiado a un botón de retroceso
          onPressed: () {
            Navigator.pop(context); // Regresar a la página anterior
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text('Notificaciones', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SwitchListTile(
            title: Text('Notificaciones Generales'),
            value: true, // Cambiado a un valor fijo para el ejemplo
            onChanged: (bool value) {
              // Acción cuando cambia el valor del switch
            },
            activeColor: Colors.green,
          ),
          SwitchListTile(
            title: Text('Notificaciones de Mensajes'),
            value: true, // Cambiado a un valor fijo para el ejemplo
            onChanged: (bool value) {
              // Acción cuando cambia el valor del switch
            },
            activeColor: Colors.green,
          ),
          SwitchListTile(
            title: Text('Notificaciones de Partidos y Jugadores'),
            value: true, // Cambiado a un valor fijo para el ejemplo
            onChanged: (bool value) {
              // Acción cuando cambia el valor del switch
            },
            activeColor: Colors.green,
          ),
          SizedBox(height: 20),
          Text('Ayuda', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ListTile(
            title: Text('Política de Privacidad'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacyPolicyPage()), // Nueva página de política de privacidad
              );
            },
          ),
          ListTile(
            title: Text('Términos y Condiciones de Uso'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TermsAndConditionsPage()), // Nueva página de términos y condiciones
              );
            },
          ),
          ListTile(
            title: Text('Reportar un Problema o Solicitar Ayuda'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReportProblemPage()), // Nueva página de reporte de problemas
              );
            },
          ),
          SizedBox(height: 20),
          Text('Cuenta', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ListTile(
            title: Text('Eliminar Cuenta'),
            trailing: Icon(Icons.delete, color: Colors.red),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Eliminar Cuenta'),
                    content: Text('¿Estás seguro de que deseas eliminar tu cuenta? Esta acción no se puede deshacer.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); // Cerrar el diálogo
                        },
                        child: Text('Cancelar'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TakortApp()), // Reemplaza TakortApp con el nombre de tu clase principal
                );
              },
                        child: Text(
                          'Eliminar',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Política de Privacidad'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Introducción:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Nos tomamos la protección de tus datos personales muy en serio y nos comprometemos a cumplir con las leyes y regulaciones vigentes en materia de protección de la privacidad, incluida la Regulación General de Protección de Datos (GDPR).\n\nEsta política de privacidad tiene como objetivo informarte sobre las condiciones de recopilación y uso de tus datos personales en el marco de la utilización de nuestra aplicación móvil TAKORT. Al utilizar nuestra aplicación, aceptas los términos de esta política de privacidad. Si no estás de acuerdo con estos términos, por favor, abstente de usar nuestra aplicación.',
            ),
            SizedBox(height: 16),
            Text(
              'Recopilación de tus datos personales:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Recopilamos los siguientes datos personales cuando te registras y utilizas nuestra aplicación:\n\n• Nombre\n• Apellido\n• Dirección de correo electrónico\n• Fecha de nacimiento\n• Número de teléfono\n• Foto de perfil (opcional)',
            ),
            SizedBox(height: 16),
            Text(
              'Uso de tus datos personales:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Usamos tus datos personales para los siguientes fines:\n\n• Permitir la creación y gestión de tu cuenta en nuestra aplicación.\n• Permitir la creación y participación en actividades.\n• Proveer un servicio de alta calidad y mejorar nuestra aplicación a través del análisis de tu uso.',
            ),
            SizedBox(height: 16),
            Text(
              'Compartir tus datos personales:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'No compartimos tus datos personales con terceros para fines comerciales sin tu consentimiento explícito.\n\nSin embargo, podemos compartir tus datos personales en los siguientes casos:\n\n• Con proveedores de servicios que nos ayudan a gestionar nuestra aplicación y prestar nuestros servicios (por ejemplo, proveedores de servicios de alojamiento o empresas de marketing). Estos proveedores están obligados a mantener la confidencialidad de tus datos y no usarlos para otros fines.',
            ),
            SizedBox(height: 16),
            Text(
              'Seguridad de tus datos personales:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Tomamos medidas de seguridad para proteger tus datos personales del acceso, uso o divulgación no autorizados. Usamos medidas técnicas y organizativas para proteger tus datos personales de la pérdida, el uso indebido, el acceso no autorizado, la divulgación, la alteración o la destrucción.',
            ),
            SizedBox(height: 16),
            Text(
              'Modificación de la política de privacidad:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Nos reservamos el derecho de modificar esta política de privacidad en cualquier momento. Publicaremos cualquier modificación en esta página y serán efectivas de inmediato. Te animamos a revisar esta política de privacidad periódicamente para estar informado sobre cómo protegemos la información que recopilamos. El uso continuado de nuestra aplicación constituye la aceptación de estas modificaciones.',
            ),
            SizedBox(height: 16),
            Text(
              'Contacto:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Si tienes alguna pregunta sobre esta política de privacidad, contáctanos en:\n\nEmail: info@takort.com\nTeléfono: +933334334',
            ),
          ],
        ),
      ),
    );
  }
}

class TermsAndConditionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Términos y Condiciones de Uso'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1. Introducción',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Estos términos y condiciones regulan el uso de la aplicación móvil TAKORT. Al utilizar nuestra aplicación, aceptas estos términos y condiciones en su totalidad. Si no estás de acuerdo con estos términos y condiciones o cualquier parte de estos términos y condiciones, no debes usar nuestra aplicación.',
            ),
            SizedBox(height: 16),
            Text(
              '2. Licencia para usar la aplicación',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Se concede permiso para descargar temporalmente una copia de la aplicación móvil TAKORT solo para su visualización transitoria personal. Esta es la concesión de una licencia, no una transferencia de título, y bajo esta licencia no puedes:\n\n(a) modificar o copiar el contenido;\n(b) utilizar el contenido para cualquier propósito comercial;\n(c) intentar descompilar o aplicar ingeniería inversa a cualquier software contenido en la aplicación móvil TAKORT;\n(d) eliminar cualquier derecho de autor u otras notaciones de propiedad de los materiales; o\n(e) transferir los materiales a otra persona o "reflejar" los materiales en cualquier otro servidor.',
            ),
            SizedBox(height: 16),
            Text(
              '3. Descargo de responsabilidad',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'El contenido de la aplicación móvil TAKORT se proporciona "tal cual". La aplicación móvil TAKORT no ofrece garantías, expresas o implícitas, y por la presente renuncia y niega todas las demás garantías, incluidas, sin limitación, las garantías implícitas o condiciones de comerciabilidad, idoneidad para un propósito particular o no infracción de la propiedad intelectual u otra violación de derechos.',
            ),
            SizedBox(height: 16),
            Text(
              '4. Limitaciones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'En ningún caso la aplicación móvil TAKORT o sus proveedores serán responsables de ningún daño (incluidos, entre otros, daños por pérdida de datos o beneficios, o debido a la interrupción del negocio) que surja del uso o la imposibilidad de usar el contenido en la aplicación móvil TAKORT, incluso si la aplicación móvil TAKORT o un representante autorizado de esta aplicación ha sido notificado verbalmente o por escrito de la posibilidad de dicho daño.',
            ),
            SizedBox(height: 16),
            Text(
              '5. Modificaciones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'La aplicación móvil TAKORT puede revisar estos términos de servicio para su aplicación en cualquier momento sin previo aviso. Al utilizar esta aplicación, aceptas estar sujeto a la versión actual de estos términos de servicio.',
            ),
            SizedBox(height: 16),
            Text(
              '6. Ley aplicable',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Estos términos y condiciones se rigen y se interpretan de acuerdo con la ley española y usted se somete irrevocablemente a la jurisdicción exclusiva de los tribunales en ese estado o ubicación.',
            ),
            SizedBox(height: 16),
            Text(
              '7. Contacto',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Si tienes alguna pregunta sobre estos términos y condiciones, puedes contactarnos en:\n\nEmail: info@takort.com\nTeléfono: +933334333',
            ),
          ],
        ),
      ),
    );
  }
}

class ReportProblemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reportar un Problema o Solicitar Ayuda'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '¿Tienes algún problema con nuestra aplicación? ¿O simplemente necesitas ayuda? ¡Estamos aquí para ayudarte! Por favor, completa el siguiente formulario y nos pondremos en contacto contigo lo antes posible.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nombre Completo',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Correo Electrónico',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Descripción del Problema o Solicitud de Ayuda',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para enviar el formulario
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}



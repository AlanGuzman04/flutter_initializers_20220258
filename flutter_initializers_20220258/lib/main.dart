import 'package:flutter/material.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi primera app",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  _InicioState createState() => _InicioState();
}
enum FrutaFavorito { Fresa, Manzana, Sandia, Naranja }


class _InicioState extends State<Inicio> {
  int selectedIndex = 0;
  bool switchValue = false;
  bool switchValue2 = false;
  bool switchValue3 = false;
  bool switchValue4 = false;
  bool checkboxValue = false;
  bool checkboxValue2 = false;
  bool checkboxValue3 = false;
  bool checkboxValue4 = false;
  FrutaFavorito frutaFavoritoSeleccionado = FrutaFavorito.Fresa;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //primer widget
        title: Text("Holasss soy yo"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Text("¿Me gustan las tortas cubanas?"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              ElevatedButton(onPressed: () {}, child: Text("SI")),
              ElevatedButton(onPressed: () {}, child: Text("NO")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Icon(Icons.add_alarm),
              Icon(Icons.add_circle_outline_sharp),
            ],
          ),
          Container(
              padding: EdgeInsets.all(20.0),
              child: const Image(
                image: NetworkImage(
                    'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2024/01/one-piece-arco-egghead-3260423.jpg'),
              )),
          Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text("¿Cual es mi anime favorito?"),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Adivina',
                    ),
                  )
                ],
              )),
          Container(
            child: Card(
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text('Alan Francisco Guzmán Lizama'),
                subtitle: Text('SOy proo'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Acción al hacer clic en la tarjeta
                },
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.all(20.0),
              child: Text("¿CUales son los colores favoritos de Alan?")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text("Azul"),
              Switch(
                value: switchValue,
                onChanged: (bool newValue) {
                  setState(() {
                    switchValue = newValue;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text("Rosita"),
              Switch(
                value: switchValue2,
                onChanged: (bool newValue2) {
                  setState(() {
                    switchValue2 = newValue2;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text("Negro"),
              Switch(
                value: switchValue3,
                onChanged: (bool newValue3) {
                  setState(() {
                    switchValue3 = newValue3;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text("Rojo"),
              Switch(
                value: switchValue4,
                onChanged: (bool newValue4) {
                  setState(() {
                    switchValue4 = newValue4;
                  });
                },
              ),
            ],
          ),
          Container(
              padding: EdgeInsets.all(20.0),
              child: Text("¿Cuantass veces como al dia?")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text("3 al dia"),
                  Checkbox(
                    value: checkboxValue,
                    onChanged: (bool? newValue) {
                      setState(() {
                        checkboxValue = newValue!;
                      });
                    },
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text("1 al dia"),
                  Checkbox(
                    value: checkboxValue2,
                    onChanged: (bool? newValue2) {
                      setState(() {
                        checkboxValue2 = newValue2!;
                      });
                    },
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text("nada al dia"),
                  Checkbox(
                    value: checkboxValue3,
                    onChanged: (bool? newValue3) {
                      setState(() {
                        checkboxValue3 = newValue3!;
                      });
                    },
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text("2 al dia"),
                  Checkbox(
                    value: checkboxValue4,
                    onChanged: (bool? newValue4) {
                      setState(() {
                        checkboxValue4 = newValue4!;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Bebidas que me gustan'),
                      content: Text('-coca, -chocomilk y -agua'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cerrar'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Tocame'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text("Adivina mi fruta favoritaa"),
          ),


          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text("Manzana"),
                  Radio(
                    value: FrutaFavorito.Manzana,
                    groupValue: frutaFavoritoSeleccionado,
                    onChanged: (FrutaFavorito? value) {
                      setState(() {
                        frutaFavoritoSeleccionado = value!;
                      });
                    },
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text("Fresa"),
                  Radio(
                    value: FrutaFavorito.Fresa,
                    groupValue: frutaFavoritoSeleccionado,
                    onChanged: (FrutaFavorito? value) {
                      setState(() {
                        frutaFavoritoSeleccionado = value!;
                      });
                    },
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text("Sandia"),
                  Radio(
                    value: FrutaFavorito.Sandia,
                    groupValue: frutaFavoritoSeleccionado,
                    onChanged: (FrutaFavorito? value) {
                      setState(() {
                        frutaFavoritoSeleccionado = value!;
                      });
                    },
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text("Naranja"),
                  Radio(
                    value: FrutaFavorito.Naranja,
                    groupValue: frutaFavoritoSeleccionado,
                    onChanged: (FrutaFavorito? value) {
                      setState(() {
                        frutaFavoritoSeleccionado = value!;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),


          
          Container(
            padding: EdgeInsets.all(20.0),
            child: Chip(
              label: Text('Etiqueta del chip'),
              avatar: Icon(Icons.label),
            ),

          ),

          Container(
            padding: EdgeInsets.all(20.0),
            child: Stepper(
              steps: [
                Step(
                  title: Text('Paso 1'),
                  content: Text('Cocinar'),
                ),
                Step(
                  title: Text('Paso 2'),
                  content: Text('Comerr'),
                ),
              ],
              currentStep: 0,
              onStepContinue: () {
                // Acción al hacer clic en "Continuar"
              },
            ),


          ),


          Container(
            padding: EdgeInsets.all(20.0),
            child: Tooltip(
              message: 'Me encontraste',
              child: Icon(Icons.info),
            ),
          ),


          Container(
            padding: EdgeInsets.all(20.0),
            child: InkWell(
              onTap: () {
                // Acción al tocar
              },
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Cosa para mostrar contenido'),
              ),
            ),

          ),

          Container(
            padding: EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network('https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2024/01/one-piece-arco-egghead-3260423.jpg'),
            ),

          ),

          
          




        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menú Principal',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configuración'),
              onTap: () {
                // Acción al hacer clic en Configuración
                Navigator.pop(context); // Cierra el Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Acerca de'),
              onTap: () {
                // Acción al hacer clic en Acerca de
                Navigator.pop(context); // Cierra el Drawer
              },
            ),
          ],
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}

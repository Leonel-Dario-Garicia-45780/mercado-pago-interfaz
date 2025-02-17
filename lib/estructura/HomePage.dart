
import 'package:ecomerce/estructura/categorias.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        foregroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Mercado libre Colombia"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/inicio');
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.purple[900]),
                child: const Text("Iniciar Sesion"),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Buscar Producto",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0,
                ),
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: ElevatedButton(
                      onPressed: () {
                        print('Click en ${categories[index]['titulo']}');
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(categories[index]['icono'], size: 50.0),
                          const SizedBox(height: 10.0),
                          Text(
                            categories[index]['titulo'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    
                  );
                  
                },
              ),
            ),
            const SizedBox(height: 40),

          ],
        ),
      ),

      bottomNavigationBar:BottomNavigationBar(
        items: [

          BottomNavigationBarItem(
          icon: Icon(Icons.home, size:30.0, color:Colors.orange[700]),
          label: "Inicio"),
          BottomNavigationBarItem(
          icon: Icon(Icons.shop, size:30.0, color:Colors.orange[700]),
          label: "Compra"),
          BottomNavigationBarItem(
          icon: Icon(Icons.exit_to_app, size:30.0, color:Colors.orange[700]),
          label: "Salir"),

        ],
      ),
    );
  }
}







import 'package:login_ui/pages2/ItemPage.dart';

import '../constants.dart';
import 'package:flutter/material.dart';
import 'shopping_cart.dart' show Carrito;

import 'lista_productos.dart';


class HomePageCarrito extends StatefulWidget {
  const HomePageCarrito({Key? key}) : super(key: key);

  @override
  State<HomePageCarrito> createState() => _HomePageCarritoState();
}

class _HomePageCarritoState extends State<HomePageCarrito> {
  List<ListaProductos> _productosModel = <ListaProductos>[];

  final List<ListaProductos> _listaCarro = <ListaProductos>[];

  @override
  void initState(){

    super.initState();
    _productos();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: myDrawer,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Productos'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8.0),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  const Icon(
                    Icons.shopping_cart,
                    size: 38,
                  ),
                  if (_listaCarro.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.orange,
                        child: Text(
                          _listaCarro.length.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12.0
                          ),
                        ),
                      ),
                    )
                ],
              ),
              onTap: (){
                if (_listaCarro.isNotEmpty){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Carrito(_listaCarro)
                    ),
                  );
                }
              },
            ),
          )
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 2, crossAxisSpacing: 10, childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 1.15) ),
        itemCount: _productosModel.length,
        itemBuilder: (context, index){
          var item = _productosModel[index];
          return SizedBox(
              width: 200,
              height: 200,
              child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: Image(
                      image: NetworkImage(
                        _productosModel[index].imageURL.toString()
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                                right: 8,
                              ),
                              child: Text(
                                _productosModel[index].nombre.toString(),
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                                right: 8
                              ),
                              child:
                              Text(_productosModel[index].precio.toString()),
                            ),
                        Container(
                          child: IconButton(
                            onPressed: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => ItemPage(contador: index,),
                                ),
                              );
                              setState(() {
                              });
                            }, icon: Text('ver'),
                          ),

                        ),

                          ],
                        ),
                      )),
                  IconButton(
                    onPressed: (){
                      setState(() {
                        if (!_listaCarro.contains(item)){
                          _listaCarro.add(item);
                        } else {
                          _listaCarro.remove(item);
                        }
                      });
                    },
                    icon: (!_listaCarro.contains(item))
                          ? const Icon(Icons.shopping_cart)
                          : const Icon(
                            Icons.shopping_cart_checkout,
                      color: Colors.orange,
                    ),
                  )
                ],
              ),
            ),
          )
          );
        },

      ),

    );
  }
  void _productos (){
    var list = <ListaProductos>[
      ListaProductos(
        nombre: 'Frijol',
        precio:  3800,
        imageURL: 'img/pic1.png',
        id: 1,
        isAdd: false
      ),
      ListaProductos(
          nombre: 'Tomate',
          precio:  1600,
          imageURL: 'img/pic2.png',
          id: 2,
          isAdd: false
      ),
      ListaProductos(
          nombre: 'Queso',
          precio:  10500,
          imageURL: 'img/pic3.png',
          id: 3,
          isAdd: false
      ),
      ListaProductos(
          nombre: 'Huevos',
          precio:  11000,
          imageURL: 'img/pic4.png',
          id: 4,
          isAdd: false
      ),
      ListaProductos(
          nombre: 'Carne de conejo',
          precio:  50000,
          imageURL: 'img/pic5.png',
          id: 5,
          isAdd: false
      ),
      ListaProductos(
          nombre: 'Cebolla',
          precio:  900,
          imageURL: 'img/pic6.png',
          id: 6,
          isAdd: false
      ),
      ListaProductos(
          nombre: 'granadilla',
          precio:  1000,
          imageURL: 'img/pic7.png',
          id: 7,
          isAdd: false
      ),
      ListaProductos(
          nombre: 'Cilantro',
          precio:  250,
          imageURL: 'img/pic8.png',
          id: 8,
          isAdd: false
      ),
      ListaProductos(
          nombre: 'yogurt',
          precio:  6000,
          imageURL: 'img/pic9.png',
          id: 9,
          isAdd: false
      ),
      ListaProductos(
          nombre: 'Arbeja',
          precio:  2300,
          imageURL: 'img/pic10.png',
          id: 10,
          isAdd: false
      ),
      ListaProductos(
          nombre: 'Leche',
          precio:  3500,
          imageURL: 'img/pic11.png',
          id: 11,
          isAdd: false
      ),
      ListaProductos(
          nombre: 'Arequipe',
          precio:  4000,
          imageURL: 'img/pic12.png',
          id: 13,
          isAdd: false
      ),
    ];
    _productosModel = list;
  }
}

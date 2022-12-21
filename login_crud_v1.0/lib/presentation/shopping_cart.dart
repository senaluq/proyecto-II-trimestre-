import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'lista_productos.dart';

class Carrito extends StatefulWidget {
  final List<ListaProductos> _cart;
  const Carrito(this._cart,  {super.key});

  @override
  State<Carrito> createState() => _CarritoState(this._cart);
}

class _CarritoState extends State<Carrito> {
  _CarritoState(this._cart);
  final user = FirebaseAuth.instance.currentUser!;

  List<ListaProductos> _cart;


  var deah = 0;
  var deah1 = 0;
  var deah2 = 0;
  var deah3 = 0;
  var deah4 = 0;
  var deah5 = 0;
  var deah6 = 0;
  var deah7 = 0;
  var deah8 = 0;
  var deah9 = 0;
  var deah10 = 0;
  var deah11 = 0;
  var deah12 = 0;
  var deah13 = 0;
  var subtotal = 0;

  var subpro = 0;
  var subpro1 = 0;
  var subpro2 = 0;
  var subpro3 = 0;
  var subpro4 = 0;
  var subpro5 = 0;
  var subpro6 = 0;
  var subpro7 = 0;
  var subpro8 = 0;
  var subpro9 = 0;
  var subpro10 = 0;
  var subpro11 = 0;
  var subpro12 = 0;

  var iva = 0;
  var total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Detalles del producto',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pop();
            setState(() {
              _cart.length;
            });
          },
          color: Colors.black,
        ),
      ),
      body: GestureDetector(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _cart.length,
                itemBuilder: (context, index){
                  return Card(
                    elevation: 5,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 9
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: Image(
                                image: NetworkImage(
                                  _cart[index].imageURL.toString()
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
                                        right: 8
                                      ),
                                      child: Center(
                                        child: Text(
                                          _cart[index].nombre.toString(),
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            if (_cart[index].id.toInt() == 1) ...[
                              Row(
                                children: <Widget>[
                                  GestureDetector(
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      child: const Icon(
                                        Icons.remove_circle_outline,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                    ),
                                    onTap: () {
                                      restar();
                                    },
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: Text(
                                      '$deah',
                                      style: const TextStyle(
                                          fontWeight:
                                          FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      child: const Icon(
                                        Icons.add_circle_outline_sharp,
                                        color: Colors.green,
                                        size: 20,
                                      ),
                                    ),
                                    onTap: () {
                                      anadir();
                                    },
                                  ),
                                ],
                              ),
                            ] else if(_cart[index].id.toInt() == 2)...[
                              Row(
                                children: <Widget>[
                                  GestureDetector(
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      child: const Icon(
                                        Icons.remove_circle_outline,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                    ),
                                    onTap: () {
                                      restar1();
                                    },
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: Text(
                                      '$deah1',
                                      style: const TextStyle(
                                          fontWeight:
                                          FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      child: const Icon(
                                        Icons.add_circle_outline_sharp,
                                        color: Colors.green,
                                        size: 20,
                                      ),
                                    ),
                                    onTap: () {
                                      anadir1();
                                    },
                                  ),
                                ],
                              ),
                            ] else if(_cart[index].id.toInt() == 3)...[
                              Row(
                                children: <Widget>[
                                  GestureDetector(
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      child: const Icon(
                                        Icons.remove_circle_outline,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                    ),
                                    onTap: () {
                                      restar2();
                                    },
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: Text(
                                      '$deah2',
                                      style: const TextStyle(
                                          fontWeight:
                                          FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      child: const Icon(
                                        Icons.add_circle_outline_sharp,
                                        color: Colors.green,
                                        size: 20,
                                      ),
                                    ),
                                    onTap: () {
                                      anadir2();
                                    },
                                  ),
                                ],
                              ),
                            ] else if(_cart[index].id.toInt() == 4)...[
                              Row(
                                children: <Widget>[
                                  GestureDetector(
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      child: const Icon(
                                        Icons.remove_circle_outline,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                    ),
                                    onTap: () {
                                      restar3();
                                    },
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: Text(
                                      '$deah3',
                                      style: const TextStyle(
                                          fontWeight:
                                          FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      child: const Icon(
                                        Icons.add_circle_outline_sharp,
                                        color: Colors.green,
                                        size: 20,
                                      ),
                                    ),
                                    onTap: () {
                                      anadir3();
                                    },
                                  ),

                                ],
                              ),
                            ] else if(_cart[index].id.toInt() == 5)...[
                              Row(
                                children: <Widget>[

                                  GestureDetector(
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      child: const Icon(
                                        Icons.remove_circle_outline,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                    ),
                                    onTap: () {
                                      restar4();
                                    },
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: Text(
                                      '$deah4',
                                      style: const TextStyle(
                                          fontWeight:
                                          FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      child: const Icon(
                                        Icons.add_circle_outline_sharp,
                                        color: Colors.green,
                                        size: 20,
                                      ),
                                    ),
                                    onTap: () {
                                      anadir4();
                                    },
                                  ),


                                ],
                              ),
                            ]
                            else if(_cart[index].id.toInt() == 6)...[
                                Row(
                                  children: <Widget>[

                                    GestureDetector(
                                      child: Container(
                                        width: 20.0,
                                        height: 20.0,
                                        child: const Icon(
                                          Icons.remove_circle_outline,
                                          color: Colors.red,
                                          size: 20,
                                        ),
                                      ),
                                      onTap: () {
                                        restar5();
                                      },
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Text(
                                        '$deah5',
                                        style: const TextStyle(
                                            fontWeight:
                                            FontWeight.bold,
                                            fontSize: 15.0),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        width: 20.0,
                                        height: 20.0,
                                        child: const Icon(
                                          Icons.add_circle_outline_sharp,
                                          color: Colors.green,
                                          size: 20,
                                        ),
                                      ),
                                      onTap: () {
                                        anadir5();
                                      },
                                    ),


                                  ],
                                ),
                              ]
                              else if(_cart[index].id.toInt() == 7)...[
                                  Row(
                                    children: <Widget>[

                                      GestureDetector(
                                        child: Container(
                                          width: 20.0,
                                          height: 20.0,
                                          child: const Icon(
                                            Icons.remove_circle_outline,
                                            color: Colors.red,
                                            size: 20,
                                          ),
                                        ),
                                        onTap: () {
                                          restar6();
                                        },
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.symmetric(
                                            horizontal: 15.0),
                                        child: Text(
                                          '$deah6',
                                          style: const TextStyle(
                                              fontWeight:
                                              FontWeight.bold,
                                              fontSize: 15.0),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          width: 20.0,
                                          height: 20.0,
                                          child: const Icon(
                                            Icons.add_circle_outline_sharp,
                                            color: Colors.green,
                                            size: 20,
                                          ),
                                        ),
                                        onTap: () {
                                          anadir6();
                                        },
                                      ),


                                    ],
                                  ),
                                ]
                                else if(_cart[index].id.toInt() == 8)...[
                                    Row(
                                      children: <Widget>[

                                        GestureDetector(
                                          child: Container(
                                            width: 20.0,
                                            height: 20.0,
                                            child: const Icon(
                                              Icons.remove_circle_outline,
                                              color: Colors.red,
                                              size: 20,
                                            ),
                                          ),
                                          onTap: () {
                                            restar7();
                                          },
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 15.0),
                                          child: Text(
                                            '$deah7',
                                            style: const TextStyle(
                                                fontWeight:
                                                FontWeight.bold,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                        GestureDetector(
                                          child: Container(
                                            width: 20.0,
                                            height: 20.0,
                                            child: const Icon(
                                              Icons.add_circle_outline_sharp,
                                              color: Colors.green,
                                              size: 20,
                                            ),
                                          ),
                                          onTap: () {
                                            anadir7();
                                          },
                                        ),


                                      ],
                                    ),
                                  ]
                                  else if(_cart[index].id.toInt() == 8)...[
                                      Row(
                                        children: <Widget>[

                                          GestureDetector(
                                            child: Container(
                                              width: 20.0,
                                              height: 20.0,
                                              child: const Icon(
                                                Icons.remove_circle_outline,
                                                color: Colors.red,
                                                size: 20,
                                              ),
                                            ),
                                            onTap: () {
                                              restar7();
                                            },
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 15.0),
                                            child: Text(
                                              '$deah7',
                                              style: const TextStyle(
                                                  fontWeight:
                                                  FontWeight.bold,
                                                  fontSize: 15.0),
                                            ),
                                          ),
                                          GestureDetector(
                                            child: Container(
                                              width: 20.0,
                                              height: 20.0,
                                              child: const Icon(
                                                Icons.add_circle_outline_sharp,
                                                color: Colors.green,
                                                size: 20,
                                              ),
                                            ),
                                            onTap: () {
                                              anadir7();
                                            },
                                          ),


                                        ],
                                      ),
                                    ]
                                    else if(_cart[index].id.toInt() == 9)...[
                                        Row(
                                          children: <Widget>[

                                            GestureDetector(
                                              child: Container(
                                                width: 20.0,
                                                height: 20.0,
                                                child: const Icon(
                                                  Icons.remove_circle_outline,
                                                  color: Colors.red,
                                                  size: 20,
                                                ),
                                              ),
                                              onTap: () {
                                                restar8();
                                              },
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 15.0),
                                              child: Text(
                                                '$deah8',
                                                style: const TextStyle(
                                                    fontWeight:
                                                    FontWeight.bold,
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                            GestureDetector(
                                              child: Container(
                                                width: 20.0,
                                                height: 20.0,
                                                child: const Icon(
                                                  Icons.add_circle_outline_sharp,
                                                  color: Colors.green,
                                                  size: 20,
                                                ),
                                              ),
                                              onTap: () {
                                                anadir8();
                                              },
                                            ),


                                          ],
                                        ),
                                      ]
                                      else if(_cart[index].id.toInt() == 10)...[
                                          Row(
                                            children: <Widget>[

                                              GestureDetector(
                                                child: Container(
                                                  width: 20.0,
                                                  height: 20.0,
                                                  child: const Icon(
                                                    Icons.remove_circle_outline,
                                                    color: Colors.red,
                                                    size: 20,
                                                  ),
                                                ),
                                                onTap: () {
                                                  restar9();
                                                },
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 15.0),
                                                child: Text(
                                                  '$deah9',
                                                  style: const TextStyle(
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontSize: 15.0),
                                                ),
                                              ),
                                              GestureDetector(
                                                child: Container(
                                                  width: 20.0,
                                                  height: 20.0,
                                                  child: const Icon(
                                                    Icons.add_circle_outline_sharp,
                                                    color: Colors.green,
                                                    size: 20,
                                                  ),
                                                ),
                                                onTap: () {
                                                  anadir9();
                                                },
                                              ),


                                            ],
                                          ),
                                        ]
                                        else if(_cart[index].id.toInt() == 11)...[
                                            Row(
                                              children: <Widget>[

                                                GestureDetector(
                                                  child: Container(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    child: const Icon(
                                                      Icons.remove_circle_outline,
                                                      color: Colors.red,
                                                      size: 20,
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    restar10();
                                                  },
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15.0),
                                                  child: Text(
                                                    '$deah10',
                                                    style: const TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 15.0),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  child: Container(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    child: const Icon(
                                                      Icons.add_circle_outline_sharp,
                                                      color: Colors.green,
                                                      size: 20,
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    anadir10();
                                                  },
                                                ),


                                              ],
                                            ),
                                          ]
                                          else if(_cart[index].id.toInt() == 12)...[
                                              Row(
                                                children: <Widget>[

                                                  GestureDetector(
                                                    child: Container(
                                                      width: 20.0,
                                                      height: 20.0,
                                                      child: const Icon(
                                                        Icons.remove_circle_outline,
                                                        color: Colors.red,
                                                        size: 20,
                                                      ),
                                                    ),
                                                    onTap: () {
                                                      restar11();
                                                    },
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15.0),
                                                    child: Text(
                                                      '$deah11',
                                                      style: const TextStyle(
                                                          fontWeight:
                                                          FontWeight.bold,
                                                          fontSize: 15.0),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    child: Container(
                                                      width: 20.0,
                                                      height: 20.0,
                                                      child: const Icon(
                                                        Icons.add_circle_outline_sharp,
                                                        color: Colors.green,
                                                        size: 20,
                                                      ),
                                                    ),
                                                    onTap: () {
                                                      anadir11();
                                                    },
                                                  ),


                                                ],
                                              ),
                                            ]
                                            else if(_cart[index].id.toInt() == 13)...[
                                                Row(
                                                  children: <Widget>[

                                                    GestureDetector(
                                                      child: Container(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child: const Icon(
                                                          Icons.remove_circle_outline,
                                                          color: Colors.red,
                                                          size: 20,
                                                        ),
                                                      ),
                                                      onTap: () {
                                                        restar12();
                                                      },
                                                    ),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.symmetric(
                                                          horizontal: 15.0),
                                                      child: Text(
                                                        '$deah12',
                                                        style: const TextStyle(
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            fontSize: 15.0),
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      child: Container(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child: const Icon(
                                                          Icons.add_circle_outline_sharp,
                                                          color: Colors.green,
                                                          size: 20,
                                                        ),
                                                      ),
                                                      onTap: () {
                                                        anadir12();
                                                      },
                                                    ),


                                                  ],
                                                ),
                                              ]else if(index == 13)...[
                              Row(
                                children: <Widget>[
                                  GestureDetector(
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      child: const Icon(
                                        Icons.remove_circle_outline,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                    ),
                                    onTap: () {
                                      restar6();
                                    },
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: Text(
                                      '$deah6',
                                      style:const TextStyle(
                                          fontWeight:
                                          FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      child: const Icon(
                                        Icons.add_circle_outline_sharp,
                                        color: Colors.green,
                                        size: 20,
                                      ),
                                    ),
                                    onTap: () {
                                      anadir5();
                                    },
                                  ),
                                  Row(
                                    children: [
                                      Text('PrecioUnit: $subtotal')
                                    ],
                                  )
                                ],
                              ),

                            ],
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              Container(
                width: 500,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[200],
                ),
                  child: Column(
                    children: [
                      Text('Subtotal $subtotal'),
                      Text('Iva $iva'),
                      Text('Total $total')
                    ],
                  )

              ),
            ],
          ),

        ),
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.green, child: Icon(Icons.whatsapp),onPressed: ()async{
        String Texto='';
        Texto='$Texto'+'nombre: '+'${user.email}'+'\n';
        String celular='+573242524707';
        String mensaje= Texto;
        String url="whatsapp://send?phone=$celular&text=$mensaje";
        "whatsapp://send?phone=$celular&text=$mensaje";
        if(await canLaunch(url)){
          await launch(url);

        }else{
          throw('No se pudo enviar mensaje por whatsapp');
        }
      }),
    );
  }


void anadir() {
    setState(() {
      deah = deah + 1;
      subtotal = subtotal + 3800;
      subpro = subpro + 3800;
      iva = (subtotal * 0.20) as int;
      total = iva + subtotal;
    });
  }

  void restar() {
    setState(() {
      if (deah != 0) {
        deah = deah - 1;
        subtotal = subtotal - 3800;
        subpro = subpro - 3800;
        iva = (subtotal * 0.20) as int;
        total = iva + subtotal;
      }
    });
  }

  void anadir1() {
    setState(() {
      deah1 = deah1 + 1;
      subtotal = subtotal + 1600;
      subpro1 = subpro1 + 1600;
      iva = (subtotal * 0.20) as int;
      total = iva + subtotal;
    });
  }

  void restar1() {
    setState(() {
      if (deah1 != 0) {
        deah1 = deah1 - 1;
        subtotal = subtotal - 1500;
        subpro1 = subpro1 - 1600;
        iva = (subtotal * 0.20) as int;
        total = iva + subtotal;
      }
    });
  }

  void anadir2() {
    setState(() {
      deah2 = deah2 + 1;
      subtotal = subtotal + 10500;
      subpro2 = subpro2 + 11750;
      iva = (subtotal * 0.20) as int;
      total = iva + subtotal;
    });
  }

  void restar2() {
    setState(() {
      if (deah2 != 0) {
        deah2 = deah2 - 1;
        subtotal = subtotal - 10500;
        subpro2 = subpro2 - 11750;
        iva = (subtotal * 0.20) as int;
        total = iva + subtotal;
      }
    });
  }

  void anadir3() {
    setState(() {
      deah3 = deah3 + 1;
      subtotal = subtotal + 11000;
      subpro3 = subpro3 + 8900;
      iva = (subtotal * 0.20) as int;
      total = iva + subtotal;
    });
  }

  void restar3() {
    setState(() {
      if (deah3 != 0) {
        deah3 = deah3 - 1;
        subtotal = subtotal - 11000;
        subpro3 = subpro3 - 8900;
        iva = (subtotal * 0.20) as int;
        total = iva + subtotal;
      }
    });
  }

  void anadir4() {
    setState(() {
      deah4 = deah4 + 1;
      subtotal = subtotal + 50000;
      subpro4 = subpro4 + 50000;
      iva = (subtotal * 0.20) as int;
      total = iva + subtotal;

    });
  }

  void restar4() {
    setState(() {
      if (deah4 != 0) {
        deah4 = deah4 - 1;
        subtotal = subtotal - 50000;
        subpro4 = subpro4 - 50000;
        iva = (subtotal * 0.20) as int;
        total = iva + subtotal;
      }

    });
  }
  void anadir5() {
    setState(() {
      deah5 = deah5 + 1;
      subtotal = subtotal + 900;
      subpro5 = subpro5 + 900;
      iva = (subtotal * 0.20) as int;
      total = iva + subtotal;

    });
  }

  void restar5() {
    setState(() {
      if (deah5 != 0) {
        deah5 = deah5 - 1;
        subtotal = subtotal - 900;
        subpro5 = subpro5 - 900;
        iva = (subtotal * 0.20) as int;
        total = iva + subtotal;
      }

    });
  }
  void anadir6() {
    setState(() {
      deah6 = deah6 + 1;
      subtotal = subtotal + 1000;
      subpro6 = subpro6 + 1000;
      iva = (subtotal * 0.20) as int;
      total = iva + subtotal;

    });
  }

  void restar6() {
    setState(() {
      if (deah6 != 0) {
        deah6 = deah6 - 1;
        subtotal = subtotal - 1000;
        subpro6 = subpro6 - 1000;
        iva = (subtotal * 0.20) as int;
        total = iva + subtotal;
      }

    });
  }
  void anadir7() {
    setState(() {
      deah7 = deah7 + 1;
      subtotal = subtotal + 250;
      subpro7 = subpro7 + 250;
      iva = (subtotal * 0.20) as int;
      total = iva + subtotal;

    });
  }

  void restar7() {
    setState(() {
      if (deah7 != 0) {
        deah7 = deah7 - 1;
        subtotal = subtotal - 250;
        subpro7 = subpro7 - 250;
        iva = (subtotal * 0.20) as int;
        total = iva + subtotal;
      }

    });
  }
  void anadir8() {
    setState(() {
      deah8 = deah8 + 1;
      subtotal = subtotal + 6000;
      subpro8 = subpro8 + 6000;
      iva = (subtotal * 0.20) as int;
      total = iva + subtotal;

    });
  }

  void restar8() {
    setState(() {
      if (deah8 != 0) {
        deah8 = deah8 - 1;
        subtotal = subtotal - 6000;
        subpro8 = subpro8 - 6000;
        iva = (subtotal * 0.20) as int;
        total = iva + subtotal;
      }

    });
  }
  void anadir9() {
    setState(() {
      deah9 = deah9 + 1;
      subtotal = subtotal + 2300;
      subpro9 = subpro9 + 2300;
      iva = (subtotal * 0.20) as int;
      total = iva + subtotal;

    });
  }

  void restar9() {
    setState(() {
      if (deah9 != 0) {
        deah9 = deah9 - 1;
        subtotal = subtotal - 2300;
        subpro9 = subpro9 - 2300;
        iva = (subtotal * 0.20) as int;
        total = iva + subtotal;
      }

    });
  }
  void anadir10() {
    setState(() {
      deah10 = deah10 + 1;
      subtotal = subtotal + 3500;
      subpro10 = subpro10 + 3500;
      iva = (subtotal * 0.20) as int;
      total = iva + subtotal;

    });
  }

  void restar10() {
    setState(() {
      if (deah10 != 0) {
        deah10 = deah10 - 1;
        subtotal = subtotal - 3500;
        subpro10 = subpro10 - 7000;
        iva = (subtotal * 0.20) as int;
        total = iva + subtotal;
      }

    });
  }
  void anadir11() {
    setState(() {
      deah11 = deah11 + 1;
      subtotal = subtotal + 4000;
      subpro11 = subpro11 + 4000;
      iva = (subtotal * 0.20) as int;
      total = iva + subtotal;

    });
  }

  void restar11() {
    setState(() {
      if (deah11 != 0) {
        deah11 = deah11 - 1;
        subtotal = subtotal - 4000;
        subpro11 = subpro11 - 4000;
        iva = (subtotal * 0.20) as int;
        total = iva + subtotal;
      }

    });
  }
  void anadir12() {
    setState(() {
      deah12 = deah12 + 1;
      subtotal = subtotal + 4000;
      subpro5 = subpro5 + 4000;
      iva = (subtotal * 0.20) as int;
      total = iva + subtotal;

    });
  }

  void restar12() {
    setState(() {
      if (deah12 != 0) {
        deah12 = deah12 - 1;
        subtotal = subtotal - 4000;
        subpro12 = subpro12 - 4000;
        iva = (subtotal * 0.20) as int;
        total = iva + subtotal;
      }

    });
  }
  void anadir13() {
    setState(() {
      deah12 = deah12 + 1;
      subtotal = subtotal + 4000;
      subpro5 = subpro5 + 4000;
      iva = (subtotal * 0.20) as int;
      total = iva + subtotal;

    });
  }

  void restar13() {
    setState(() {
      if (deah12 != 0) {
        deah12 = deah12 - 1;
        subtotal = subtotal - 4000;
        subpro12 = subpro12 - 4000;
        iva = (subtotal * 0.20) as int;
        total = iva + subtotal;
      }

    });
  }

  void anadir14() {
    setState(() {
      deah6 = deah6 + 1;
    });
  }

  void restar14() {
    setState(() {
      if (deah5 != 0) deah6 = deah6 - 1;
    });
  }

}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/presentation/lista_productos.dart';



class ItemAppBar extends StatefulWidget{
  const ItemAppBar({Key? key}) : super(key: key);

  @override
  State<ItemAppBar> createState() => _ItemAppBarState();
}
class _ItemAppBarState extends State< ItemAppBar> {
  List<ListaProductos> _productosModel = <ListaProductos>[];

  final List<ListaProductos> _listaCarro = <ListaProductos>[];

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child:  Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon (
              Icons.arrow_back,
              size: 30,
              color: Color(0xFF475269),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20),
            child: Text(
              "product",
              style: TextStyle (
                fontSize: 23,
                fontWeight:  FontWeight.bold,
                color: Color(0xFF475269),
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "cartPage");
            },
            child: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
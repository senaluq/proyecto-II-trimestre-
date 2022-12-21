import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/pages2/ItemAppBar.dart';
import 'package:login_ui/presentation/home_page_carrito.dart';



class ItemPage extends StatelessWidget {
  const ItemPage({Key? key, required this.contador}) : super(key: key);
final int contador;
  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Color(0xFFEDECF2) ,
      body:  ListView(
        children: [
          ItemAppBar(),
          Padding(padding:  EdgeInsets.all(16),
            child: Image.asset("img/pic${contador+1}.png",
              height: 300,
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding:EdgeInsets.only(top:30,bottom:20),
                      child: Column(children:
                      [if(contador==0)...{
                        Text('frijol')
                      }
                      else if(contador==1)...{
                          Text('tomate')
                        }
                        else if(contador==2)...{
                            Text('Queso')
                          },
                        if(contador==3)...{
                          Text('Huevos')
                        }
                        else if(contador==4)...{
                          Text('Carne de conejo')
                        },
                        if(contador==5)...{
                          Text('Cebolla')
                        }
                        else if(contador==6)...{
                          Text(' Granadilla')
                        },
                        if(contador==7)...{
                          Text('Cilantro')
                        }
                        else if(contador==8)...{
                          Text('Yogurt')
                        },
                        if(contador==9)...{
                          Text('Arbeja')
                        }
                        else if(contador==10)...{
                          Text('Leche')
                        },
                        if(contador==11)...{
                          Text('Arequipe')
                        }],)
                  ),
                  Padding(padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset:Offset(0, 3),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset:Offset(0, 3),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 30),
                   child: Column(children:
                     [if(contador==0)...{
                     Text('Los frijoles y las legumbres son ricas en proteína vegetal, fibra, vitaminas del grupo B,'
                         ' hierro, ácido fólico, calcio, potasio, fósforo y zinc')
                     }
                       else if(contador==1)...{
                         Text('Los tomates son bayas de color rojizo que se caracterizan '
                             'por su pulpa con múltiples semillas y por su jugo.')
                       }
                       else if(contador==2)...{
                         Text('queso es un alimento elaborado a partir de la leche cuajada de vaca,'
                             ' cabra, oveja u otros mamíferos')
                       },
                       if(contador==3)...{
                         Text('huevo contiene también minerales de gran interés para la salud. Los más importantes'
                             ' son el fósforo, el zinc, el hierro y el yodo')
                       }
                       else if(contador==4)...{
                         Text('La carne de conejo forma parte del grupo conocido como carne blanca, ya que presenta una coloración menos rojiza que la carne vacuna.'
                             ' Se trata de una carne magra, con escasa cantidad de grasa.')
                       },
                       if(contador==5)...{
                         Text('Esta hortaliza ayuda a aliviar y combatir enfermedades respiratorias y cardiovasculares,'
                             ' así como también mejora la circulación sanguínea.')
                       }
                       else if(contador==6)...{
                         Text(' La granadilla te puede ayudar a prevenir el estreñimiento, los malestares de la gastritis y la acidez. Además, si la consumes con sus semillas le brinda a tu cuerpo un alto contenido de fibra, potasio,'
                             ' calcio, fósforo, hierro, vitaminas, proteínas y carbohidratos.')
                       },
                       if(contador==7)...{
                         Text('Como toda hierba aromática, el cilantro fresco tiene muchas propiedades beneficiosas: en infusiones, puede aliviar malestares digestivos —colitis, calambres estomacales, acidez— y, al igual que la albahaca o el perejil, ayuda a la digestión.'
                             ' Un dato poco conocido: alivia también las migrañas.')
                       }
                       else if(contador==8)...{
                         Text(' El yogur es una leche fermentada que se obtiene a partir de la acción de diferentes bacterias (streptococcus termophilus y Lactobacillus bulgaricus) que transforman una parte de la lactosa en ácido láctico y se produce'
                             ' un aumento de la consistencia por coagulación de sus proteínas.')
                       },
                       if(contador==9)...{
                         Text('Planta de tallos inclinados, rastreros o trepadores, flores de color púrpura y rosa, dispuestas por parejas o solitarias en la articulación del tallo y el pecíolo de la hoja,'
                             ' y fruto en legumbre que se da como pienso al ganado.')
                       }
                       else if(contador==10)...{
                         Text('La leche contribuye a consumir la cantidad necesaria de nutrientes --como calcio, magnesio, selenio, riboflavina, vitamina B12 y ácido pantoténico--'
                             ', que se requieren para una buena salud')
                       },
                       if(contador==11)...{
                         Text('  arequipe actúa positivamente en el cerebro de las personas, colaborando con la producción de feniletilamina, la cual propicia la segregación de serotonina en el cerebro,'
                             ' así como endorfinas, lo que genera bienestar.')
                       }],)

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


}
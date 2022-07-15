import 'package:flutter/material.dart';
import 'package:imagine/widgets/text_body.dart';

import '../widgets/menu_button.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        selectedLabelStyle: TextStyle(color: Colors.grey),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Explorar",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
                color: Colors.grey,
              ),
              label: "Cerca de mí"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ),
              label: "Carrito"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.blue,
              ),
              label: "Perfil"),
        ],
        currentIndex: 0,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 800,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 200,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50)),
                          color: Colors.blue),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.logout, color: Colors.white),
                                  Text(
                                    "Cerrar sesión",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Editar",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 80),
                          child: Image(
                            image: AssetImage(
                              "assets/img/avatar.png",
                            ),
                            width: 100,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 120),
                          child: TextBody(),
                        ),
                        whiteSpace,
                        MenuButton(
                            title: "Lista de pedidos",
                            img: "assets/img/img2.png"),
                        MenuButton(
                            title: "Mis métodos de pago",
                            img: "assets/img/img1.png")
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

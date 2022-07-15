import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:imagine/widgets/menu_button.dart';

double fontTitle = 20;
double bodySize = 15;

SizedBox whiteSpace = const SizedBox(
  height: 20,
);

class TextBody extends StatelessWidget {
  const TextBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Nombre completo",
              style:
                  TextStyle(fontSize: fontTitle, fontWeight: FontWeight.bold),
            ),
            const Text("Nicolás Rojas Niño"),
            whiteSpace,
            Text(
              "Correo electrónico",
              style:
                  TextStyle(fontSize: fontTitle, fontWeight: FontWeight.bold),
            ),
            const Text("nicolas@imagineapps.co"),
            whiteSpace,
            Text(
              "Celular",
              style:
                  TextStyle(fontSize: fontTitle, fontWeight: FontWeight.bold),
            ),
            const Text("3114797257"),
            whiteSpace,
            const Text("Términos y condiciones"),
          ],
        ),
      ],
    );
  }
}

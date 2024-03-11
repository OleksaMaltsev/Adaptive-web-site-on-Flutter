import 'package:click_credit/helpers/link_builder.dart';
import 'package:flutter/material.dart';

class MainFlexibleContainer extends StatelessWidget {
  const MainFlexibleContainer({super.key, required this.widthWidget});

  final double widthWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width * 0.4,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Shadow color
            spreadRadius: 3, // Spread radius
            blurRadius: 8, // Blur radius
            offset: Offset(0, 6), // Offset in the x, y direction
          ),
        ],
      ),
      height: 400,
      width: widthWidget,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Введіть свій номер телефону',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.7,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Щоб увійти або стати клієнтом ClickCredit'),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              LinkBuilder.link();
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 15, horizontal: 14),
              ),
              minimumSize: MaterialStateProperty.all(
                const Size(350, 80),
              ),
              // maximumSize: MaterialStateProperty.all(
              //   Size(299, 80),
              // ),
              backgroundColor: MaterialStateProperty.all(
                const Color.fromRGBO(238, 94, 63, 1),
              ),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              )),
            ),
            child: const Text(
              'Продовжити',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.7,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

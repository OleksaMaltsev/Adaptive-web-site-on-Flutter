import 'package:click_credit/helpers/link_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderFlexibleContainer extends StatelessWidget {
  const HeaderFlexibleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      child: Wrap(
        runSpacing: 20,
        alignment: WrapAlignment.spaceEvenly,
        runAlignment: WrapAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              'assets/logo_uk (1).svg',
              height: 60,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              LinkBuilder.link();
            },
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                const Size(150, 60),
              ),
              backgroundColor: MaterialStateProperty.all(
                const Color.fromRGBO(238, 94, 63, 1),
              ),
            ),
            child: const Text(
              'Особистий кабінет',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
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

import 'package:click_credit/helpers/link_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubFlexibleContainer extends StatelessWidget {
  const SubFlexibleContainer({super.key, required this.widthWidget});

  final double widthWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 400,
      width: widthWidget,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset('support-photo.png'),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Потрібна допомога?',
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 1.7,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Денис Суханов',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.7,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Ваш персональний менеджер'),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Text(
                '095 656 11 33',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.7,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '067 656 11 33',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.7,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Напишіть нам:',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.7,
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  LinkBuilder.link();
                },
                child: SvgPicture.asset(
                  'messenger-logo.svg',
                  width: 35,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  LinkBuilder.link();
                },
                child: SvgPicture.asset(
                  'viber-logo.svg',
                  width: 35,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  LinkBuilder.link();
                },
                child: SvgPicture.asset(
                  'telegram-logo.svg',
                  width: 35,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

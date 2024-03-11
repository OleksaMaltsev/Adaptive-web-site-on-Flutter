import 'package:click_credit/helpers/link_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomFlexibleContainer extends StatelessWidget {
  const BottomFlexibleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 0),
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Wrap(
        spacing: 30,
        runSpacing: 20,
        alignment: WrapAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Дізнайтесь більше про нас',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {
                  LinkBuilder.link();
                },
                child: const Text(
                  'Акції',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.7,
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.grey,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  LinkBuilder.link();
                },
                child: const Text(
                  'Питання/Відповідь',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.7,
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.grey,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  LinkBuilder.link();
                },
                child: const Text(
                  'Блог',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.7,
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Служба турботи',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  color: Colors.white,
                ),
              ),
              Text(
                '+380 95 656 11 33',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.7,
                  color: Colors.grey,
                ),
              ),
              Text(
                '+380 67 656 11 33',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.7,
                  color: Colors.grey,
                ),
              ),
              Text(
                '+380 63 656 11 33',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.7,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Соціальні мережі',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  color: Colors.white,
                ),
              ),
              const Text(
                'Стань нашим другом',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.7,
                  color: Colors.grey,
                ),
              ),
              Wrap(
                children: [
                  SvgPicture.asset(
                    'TikTok_footer.svg',
                    width: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset(
                    'Telegram_footer.svg',
                    width: 20,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset(
                    'Facebook_footer.svg',
                    width: 10,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset(
                    'Instagram_footer.svg',
                    width: 20,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset(
                    'Youtube_footer.svg',
                    width: 20,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset(
                    'Twitter_footer.svg',
                    width: 20,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

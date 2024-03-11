import 'package:click_credit/widgets/bottom_flexible_container.dart';
import 'package:click_credit/widgets/header_flexible_container.dart';
import 'package:click_credit/widgets/main_flexible_container.dart';
import 'package:click_credit/widgets/sub_flexible_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderFlexibleContainer(),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                double containerWidth = constraints.maxWidth;
                //double containerHeight = constraints.maxHeight;

                // use MediaQuery for check screen
                if (containerWidth > 600) {
                  // if screen has more than 600px
                  return Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(246, 246, 246, 1),
                    ),
                    child: const Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 20,
                      runSpacing: 20,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      direction: Axis.horizontal,
                      children: [
                        MainFlexibleContainer(
                          widthWidget: 550,
                        ),
                        SubFlexibleContainer(
                          widthWidget: 320,
                        ),
                      ],
                    ),
                  );
                } else {
                  // if screen has less than 600px
                  return SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 0),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(246, 246, 246, 1),
                      ),
                      child: Wrap(
                        runSpacing: 60,
                        alignment: WrapAlignment.center,
                        children: [
                          MainFlexibleContainer(
                            widthWidget: containerWidth * 0.9,
                          ),
                          SubFlexibleContainer(
                            widthWidget: containerWidth * 0.9,
                          ),
                        ],
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          const BottomFlexibleContainer(),
        ],
      ),
    );
  }
}

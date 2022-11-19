import 'package:flutter/material.dart';
import 'package:mycatering/screen/inputlogin/InputLogin.dart';
import 'package:mycatering/screen/onboarding/models/OnboardingModel.dart';
import 'package:mycatering/utils/Constant.dart';

class OnboardingBottom extends StatefulWidget {
  const OnboardingBottom({super.key});

  @override
  State<OnboardingBottom> createState() => _OnboardingBottomState();
}

class _OnboardingBottomState extends State<OnboardingBottom> {
  int currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return onboardingbottom(context);
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primary,
      ),
    );
  }

  Widget onboardingbottom(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                    (index) => buildDot(index, context),
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 60,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                    textStyle: const TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Text(
                      currentIndex == contents.length - 1 ? "Start" : "Next"),
                  onPressed: () {
                    if (currentIndex == contents.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const Inputlogin(),
                        ),
                      );
                    }
                    _controller?.nextPage(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.bounceIn,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

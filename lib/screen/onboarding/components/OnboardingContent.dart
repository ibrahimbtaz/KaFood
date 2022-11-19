import 'package:flutter/material.dart';
import 'package:mycatering/screen/onboarding/models/OnboardingModel.dart';
import 'package:mycatering/utils/Constant.dart';

class OnboardingContent extends StatefulWidget {
  const OnboardingContent({super.key});

  @override
  State<OnboardingContent> createState() => _OnboardingContentState();
}

class _OnboardingContentState extends State<OnboardingContent> {
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
    return Expanded(
      child: PageView.builder(
          controller: _controller,
          itemCount: contents.length,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (_, i) {
            return Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: whiteColor,
                    child: Center(
                      child: Image(
                        width: 240,
                        height: 240,
                        image: AssetImage(contents[i].image),
                        // repeat: ImageRepeat.repeat,
                      ),
                    ),
                  ),
                  Text(
                    contents[i].title,
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    contents[i].discription,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 18,
                        color: primary,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mycatering/screen/onboarding/models/OnboardingModel.dart';
import 'package:mycatering/utils/Constant.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
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
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(contents[i].image),
                            opacity: 0.7,
                            fit: BoxFit.cover)),
                    child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 190),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              contents[i].title,
                              style: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: whiteColor),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              contents[i].discription,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: secondary,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          const onboarding(),
        ],
      ),
    );
  }
}

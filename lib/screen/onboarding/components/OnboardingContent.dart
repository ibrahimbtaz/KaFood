import 'package:flutter/material.dart';
import 'package:mycatering/screen/inputlogin/InputLogin.dart';
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
    return Container(
      child: Stack(children: [
        OnboardingContent(),
        OnboardingBottom(currentIndex: currentIndex, controller: _controller)
      ]),
    );
  }

  Expanded OnboardingContent() {
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
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(contents[i].image),
                    opacity: 0.7,
                    fit: BoxFit.cover,
                  ),
                  color: blackColor),
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        contents[i].title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 28,
                            color: tertiary,
                            overflow: TextOverflow.fade),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18,
                            color: quaternary,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class OnboardingBottom extends StatelessWidget {
  const OnboardingBottom({
    Key? key,
    required this.currentIndex,
    required PageController? controller,
  })  : _controller = controller,
        super(key: key);

  final int currentIndex;
  final PageController? _controller;

  @override
  Widget build(BuildContext context) {
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
                    (index) => builtDot(index),
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

  Container builtDot(int index) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? secondary : primary,
      ),
    );
  }
}

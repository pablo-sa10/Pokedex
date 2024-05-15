import 'package:flutter/material.dart';
import 'package:pokemon/model/onboarding_page_model.dart';

class OnBoarding extends StatefulWidget {

  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void _onContinueButtonPressed() {
    if (_currentPage == onboardingPages.length - 1) {
      Navigator.pushReplacementNamed(context, "/login");
    } else {
      _pageController.nextPage(
        duration: const Duration(microseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            top: 10, right: 40, left: 40, bottom: 20),
        child: Column(
          children: [
        Expanded(
        child: PageView.builder(
        controller: _pageController,
          onPageChanged: _onPageChanged,
          itemCount: onboardingPages.length,
          itemBuilder: (ctx, index) {
            final page = onboardingPages[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 250,
                ),
                Image.asset(page.image),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  page.title,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  page.description,
                  style: const TextStyle(fontSize: 18, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            );
          },
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(2, (index) {
          return AnimatedContainer(
            duration: const Duration(microseconds: 300),
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: _currentPage == index ? 12 : 8,
            height: _currentPage == index ? 12 : 8,
            decoration: BoxDecoration(
              color: _currentPage == index ? Colors.indigo : Colors.grey,
              shape: BoxShape.circle,
            ),
          );
        }),
      ),
      const SizedBox(
        height: 40,
      ),
      Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(56),
        ),
        child: TextButton(
          onPressed: () {
            _onContinueButtonPressed();
          },
          child: Text(
        _currentPage == 0 ? "Continuar" : "Vamos Começar!",
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    ),
    const SizedBox(height: 20,)
    ],
    )
    ,
    )
    ,
    );
  }
}

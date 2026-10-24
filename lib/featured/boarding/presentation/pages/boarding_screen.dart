import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/core/config/app_config.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/app_styles.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/boarding/presentation/widget/onboarding_slide.dart';
import 'package:findora/featured/boarding/presentation/widget/pagination_dots.dart';
import 'package:findora/featured/login/presentation/pages/login_page.dart';
import 'package:findora/shared/customWidgets/primary_button_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BoardingPage extends StatefulWidget {
  static String routeName = '/';

  const BoardingPage({super.key});

  @override
  State<BoardingPage> createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  List<Map<String, String>> get _slides {
    final flavorFolder = AppFlavor.isDev ? 'dev' : 'prod';
    return [
      {
        'title': 'Report in seconds',
        'image': 'assets/images/$flavorFolder/onboarding-1.png',
        'description':
            'Add photos and a location. Nearby people are notified right away.',
      },
      {
        'title': 'Find what matters',
        'image': 'assets/images/$flavorFolder/onboarding-2.png',
        'description':
            'Browse lost items nearby or post what you found to help others.',
      },
      {
        'title': 'Chat securely',
        'image': 'assets/images/$flavorFolder/onboarding-3.png',
        'description':
            'Message finders safely within the app. Your contact info stays private.',
      },
    ];
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_currentPage < _slides.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      context.goNamed(LoginPage.routeName);
    }
  }

  void _skip() {
    context.goNamed(LoginPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final tr = context.t;

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: Column(
          children: [
            // Skip button
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: mobileHozPadding, vertical: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: _skip,
                  child: Text(
                    tr.commonSkip,
                    style: AppTextStyles.sT14(color: colors.text2),
                  ),
                ),
              ),
            ),
            // PageView
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: _slides.length,
                itemBuilder: (context, index) {
                  return OnboardingSlide(
                    title: _slides[index]['title']!,
                    illustration: _slides[index]['image']!,
                    description: _slides[index]['description']!,
                  );
                },
              ),
            ),
            // Pagination dots and Next button
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: mobileHozPadding, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PaginationDots(
                    currentPage: _currentPage,
                    totalPages: _slides.length,
                  ),
                  PrimaryButtonWidget(
                    title: _currentPage == _slides.length - 1
                        ? tr.authLogIn
                        : tr.commonNext,
                    width: 100,
                    onTap: _nextPage,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

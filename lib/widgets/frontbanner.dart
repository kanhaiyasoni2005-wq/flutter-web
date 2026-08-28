
import 'package:flutter/material.dart';
import 'package:portfolio_web/consonant/appcoulour.dart';
import 'package:portfolio_web/consonant/textstyle.dart';

class FrontUi extends StatelessWidget {
  const FrontUi({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 520;

        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, I'm",
                style: AppTextStyle.hero,
              ),

              const SizedBox(height: 8),

              Text(
                "Flutter Developer 👍",
                softWrap: true,
                style: AppTextStyle.h1.copyWith(
                  color: AppColors.primary,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                "I build beautiful and modern applications in Flutter.",
                softWrap: true,
                style: AppTextStyle.title,
              ),

              const SizedBox(height: 20),

              // Responsive Buttons
              isMobile
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primaryDark,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              "Explore My Apps",
                              style: AppTextStyle.button.copyWith(
                                color: AppColors.background,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 12),

                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              "Browse Course",
                              style: AppTextStyle.button,
                            ),
                          ),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primaryDark,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              "Explore My Apps",
                              style: AppTextStyle.button.copyWith(
                                color: AppColors.background,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 20),

                        SizedBox(
                          width: 200,
                          height: 50,
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              "Browse Course",
                              style: AppTextStyle.button,
                            ),
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        );
      },
    );
  }
}


import 'package:flutter/material.dart';
import 'package:fruit_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:fruit_hub/generated/assets.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children:  const [
        PageViewItem(
          isVisible: true,
          image: Assets.imagesFruitBasket,
          backgroundImage: Assets.imagesPageViewBackground1,
          title1: 'مرحبًا بك في ',
          title2: 'Fruit',
          title3: 'HUB',
          subtitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
        ),
        PageViewItem(
          isVisible:  false,
            image: Assets.imagesPineapple,
            backgroundImage: Assets.imagesPageViewBackground2,
            title1: 'ابحث وتسوق',
            title2: '',
            title3: '',
            subtitle:
                "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية"),
      ],
    );
  }
}

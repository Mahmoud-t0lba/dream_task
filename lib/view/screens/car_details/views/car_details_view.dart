part of 'car_details_imports.dart';

class CarDetailsView extends StatelessWidget {
  const CarDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(bottom: 20),
          children: [
            const CarPageHeader(),
            const CarDataCardRow(),
            const PriceStateRow(),
            const MakfolaTo(),
            7.h,
            const CarPageDataColumn(),
            7.h,
            const LoremText(),
            15.h,
            allCaresCard,
            15.h,
            const HomeGridView(
              itemCount: 2,
              height: 220,
              physics: NeverScrollableScrollPhysics(),
            ),
            20.h,
            const CarPageIcons(),
          ],
        ),
      ),
    );
  }
}

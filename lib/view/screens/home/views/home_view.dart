part of 'home_imports.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        physics: const BouncingScrollPhysics(),
        children: [
          const StoryItemList(),
          const HomeAdBanner(img: AppImages.image6),
          const HomeTextField(),
          const CountryFilterList(),
          15.h,
          const HomeGridView(),
          const HomeAdBanner(img: AppImages.image5),
        ],
      ),
    );
  }
}

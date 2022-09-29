import '../../../utils/export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.kWhiteColor,
      ),
      body: const ResponsiveLayout(
        kMobileView: MobileView(),
        kTabletView: TabletView(),
        kDesktopView: DesktopView(),
      ),
    );
  }
}

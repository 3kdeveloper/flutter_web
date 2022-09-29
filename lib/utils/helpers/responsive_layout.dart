import '../export.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget kMobileView;
  final Widget kTabletView;
  final Widget kDesktopView;

  const ResponsiveLayout({
    required this.kMobileView,
    required this.kTabletView,
    required this.kDesktopView,
    key,
  }) : super(key: key);
  static bool isMobile(BuildContext context) {
    return AppSizes.screenWidth < AppSizes.kTabletScreenSize;
  }

  static bool isTablet(BuildContext context) {
    return AppSizes.screenWidth >= AppSizes.kTabletScreenSize &&
        AppSizes.screenWidth < AppSizes.kDesktopScreenSize;
  }

  static bool isDesktop(BuildContext context) {
    return AppSizes.screenWidth >= AppSizes.kDesktopScreenSize;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        double width = constrains.maxWidth;
        if (width >= AppSizes.kDesktopScreenSize) {
          return kDesktopView;
        } else if (width >= AppSizes.kTabletScreenSize &&
            width < AppSizes.kDesktopScreenSize) {
          return kTabletView;
        } else {
          return kMobileView;
        }
      },
    );
  }
}

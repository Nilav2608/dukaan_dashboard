import '../models/side_menu_model.dart';

class SideMenuData {
  final List<SideMenuModel> sideMenuData = [
    SideMenuModel(
        iconPath: 'assets/icons/home.svg', name: "Home", ),
    SideMenuModel(
        iconPath: 'assets/icons/orders.svg', name: "Orders",),
    SideMenuModel(
        iconPath: 'assets/icons/products.svg',
        name: "Products",),
    SideMenuModel(
        iconPath: 'assets/icons/delivery.svg',
        name: "Delivery",),
    SideMenuModel(
        iconPath: 'assets/icons/marketing.svg',
        name: "Marketing",),
    SideMenuModel(
        iconPath: 'assets/icons/analytics.svg',
        name: "Analytics",),
    SideMenuModel(
        iconPath: 'assets/icons/payouts.svg',
        name: "Payouts",),
    SideMenuModel(
        iconPath: 'assets/icons/discounts.svg',
        name: "Discounts",),
    SideMenuModel(
        iconPath: 'assets/icons/audience.svg',
        name: "Audience",),
    SideMenuModel(
        iconPath: 'assets/icons/appearance.svg',
        name: "Appearance",),
    SideMenuModel(
        iconPath: 'assets/icons/plugins.svg',
        name: "Plugins",),
  ];
}

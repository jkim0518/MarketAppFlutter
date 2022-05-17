class ListCategoryMenu {
  String icon;
  String title;

  ListCategoryMenu({required this.icon, required this.title});
}

// 샘플 데이터
List listCategoryMenuList = [
  ListCategoryMenu(
    icon: "assets/icons/carrot.svg",
    title: "Vegetables",
  ),
  ListCategoryMenu(
    icon: "assets/icons/apple.svg",
    title: "Fruits•Nuts•Rice",
  ),
  ListCategoryMenu(
    icon: "assets/icons/fish.svg",
    title: "Seafood•Dried fish",
  ),
  ListCategoryMenu(
    icon: "assets/icons/egg.svg",
    title: "Meat•Eggs",
  ),
  ListCategoryMenu(
    icon: "assets/icons/cook.svg",
    title: "Soup•Side dishes•Main dishes",
  ),
  ListCategoryMenu(
    icon: "assets/icons/salad.svg",
    title: "Salad",
  ),
  ListCategoryMenu(
    icon: "assets/icons/noddles-in-box.svg",
    title: "Spices•Seasoning•Oils",
  ),
  ListCategoryMenu(
    icon: "assets/icons/glass-of-water.svg",
    title: "Water•Beverages",
  ),
  ListCategoryMenu(
    icon: "assets/icons/pizza.svg",
    title: "Snacks•Chips",
  )
];
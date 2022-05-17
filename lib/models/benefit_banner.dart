class BenefitBanner {
  String? title;
  String? benefit;
  String? image;

  BenefitBanner({this.title, this.benefit, this.image});
}

// 샘플 데이터
List benefitBannerList = [
  BenefitBanner(
    title: "Market Chosen\nFresh Vegetable Food",
    benefit: "This week's fresh is up to 15% discount",
    image: "assets/images/img_3.png",
  ),
  BenefitBanner(
    title: "The recipes for\nchildren's snack!",
    benefit: "Discount up to 20%",
    image: "assets/images/img_2.png",
  ),
  BenefitBanner(
    title: "Delicious meal\nfor weekends!",
    benefit: "Discount up to 20%",
    image: "assets/images/img_1.png",
  ),
  BenefitBanner(
    title: "Fresh pork",
    benefit: "Discount up to 25%",
    image: "assets/images/img_4.png",
  ),
  BenefitBanner(
    title: "Healthy vegan food",
    benefit: "Discount up to 10%",
    image: "assets/images/img_3.png",
  ),
];
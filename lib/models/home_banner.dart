class HomeBanner {
  final String bannerImage;
  final String eventTitle;
  final String eventContent;

  HomeBanner(
      {required this.eventTitle,
      required this.eventContent,
      required this.bannerImage});
}

// 샘플 데이터
List<HomeBanner> homeBannerList = [
  HomeBanner(
    bannerImage: "assets/images/kurly_banner_2.jpg",
    eventTitle: "Join now",
    eventContent: "You can order best food\nat reasonable price!",
  ),
  HomeBanner(
    bannerImage: "assets/images/kurly_banner_0.jpg",
    eventTitle: "Invite your friends",
    eventContent: "Redeem your coupon!",
  ),
  HomeBanner(
    bannerImage: "assets/images/kurly_banner_1.jpg",
    eventTitle: "For those who are busy in the morning",
    eventContent: "Everyday breakfast",
  ),
  HomeBanner(
    bannerImage: "assets/images/kurly_banner_3.jpg",
    eventTitle: "If you are a vegetarian",
    eventContent: "Fresh vegetable food!",
  ),
  HomeBanner(
    bannerImage: "assets/images/kurly_banner_4.jpg",
    eventTitle: "Do you love bread?",
    eventContent: "Get good deals on our bread",
  ),
  HomeBanner(
    bannerImage: "assets/images/kurly_banner_5.jpg",
    eventTitle: "Are you a meat lover?",
    eventContent: "Here is our delicious BBQ",
  ),
];
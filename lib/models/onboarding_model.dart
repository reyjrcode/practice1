import 'package:jegoshit/constant/svg_images.dart';

class OnboardingModel{

  final String? headTitle,Description,image;

  OnboardingModel({this.headTitle, this.Description, this.image});

}
final listonboarding =<OnboardingModel>[
  OnboardingModel(
    headTitle: "PICK FOR WISHLIST",
    Description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod libero quis tortor malesuada lacinia.",
    image: onboard1
  ),
  OnboardingModel(
    headTitle: "PAY",
    Description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod libero quis tortor malesuada lacinia.",
    image: onboard2
  ),
  OnboardingModel(
    headTitle: "DELIVER",
    Description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod libero quis tortor malesuada lacinia.",
    image: onboard3
  ),
];
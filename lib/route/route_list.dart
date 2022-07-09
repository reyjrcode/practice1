import 'package:get/get.dart';
import 'package:jegoshit/Views/authintication/signin.dart';
import 'package:jegoshit/Views/authintication/signup.dart';
import 'package:jegoshit/Views/onboarding/onboarding_view.dart';
import 'package:jegoshit/route/route_name.dart';

class RouteList{
  static List<GetPage> list = <GetPage>[
    GetPage(
      transition: Transition.upToDown,
      transitionDuration: 250.milliseconds,
      name: signin, 
      page: ()=>const SigninView()),
       GetPage(
      transition: Transition.upToDown,
      transitionDuration: 250.milliseconds,
      name: signup, 
      page: ()=> const SignupView()),
      //onboarding
        GetPage(
      transition: Transition.upToDown,
      transitionDuration: 250.milliseconds,
      name: onboard, 
      page: ()=> const OnboardingView())
  ];
}
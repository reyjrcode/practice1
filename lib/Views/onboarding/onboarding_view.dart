import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:jegoshit/constant/colors.dart';
import 'package:jegoshit/controllers/onboard_controller.dart';
import 'package:jegoshit/models/onboarding_model.dart';
import 'package:jegoshit/widgets/onboard_card/bottom_card.dart';
import 'package:jegoshit/widgets/onboard_card/card.dart';
import 'package:jegoshit/widgets/onboard_card/top_card.dart';


class OnboardingView extends StatelessWidget {
  
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(OnboardController());
    return Obx(
      ()=> WillPopScope(
        onWillPop: ()async=>false,
        child: Scaffold(
          appBar: TopcardOnboard(
            skip: (){},
            getStarted: (){},
            isLastpage: controller.selectedPageNumber.value==
            listonboarding.indexOf(listonboarding.last)
            ?true
            :false,
          ),
          backgroundColor: colorWhite,
          body:SafeArea(
            
            child:  PageView.builder(
              physics:const BouncingScrollPhysics(),
              controller: controller.pageController,
          itemCount: listonboarding.length,
          onPageChanged: controller.selectedPageNumber,
          itemBuilder:(context,index)=>
          OnboardCard(
            headTitle:listonboarding[index].headTitle,
            image:listonboarding[index].image,
            description: listonboarding[index].Description,          )
          ),
          ),
          bottomNavigationBar: BottomOnBoardingCard(
            selectedIndex: controller.selectedPageNumber.value,
          ),
        ),

      ),
    );

  }
}
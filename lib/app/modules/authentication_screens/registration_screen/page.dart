import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/core/theme/app_colors.dart';
import 'package:save_it/app/core/theme/app_images_urls.dart';
import 'package:save_it/app/core/theme/app_int.dart';
import 'package:save_it/app/core/theme/app_text_style.dart';
import 'package:save_it/app/modules/authentication_screens/registration_screen/controller.dart';

class RegistrationScreen extends GetView<RegistrationScreenController> {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () => controller.backToWelcomeScreen(),
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.black,
            ),
          )),
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Container(
        color: AppColors.bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            _buildImage(),
            _buildRegistrationForm(),
          ],
        ),
      ),
    );
  }

  Expanded _buildImage() {
    return Expanded(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 60.0,
            vertical: 40,
          ),
          child: Image.asset(
            AppImage.logoImage,
          ),
        ),
      ),
    );
  }

  Container _buildRegistrationForm() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 36.0,
        horizontal: 16,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 28,
        horizontal: 20,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: AppColors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: AnimatedTextKit(
              animatedTexts: <TypewriterAnimatedText>[
                TypewriterAnimatedText(
                  'Register'.tr,
                  textStyle: AppTextStyle.titleStyle,
                  speed: const Duration(milliseconds: 250),
                ),
              ],
              repeatForever: true,
              pause: const Duration(seconds: 5),
            ),
          ),
          const SizedBox(height: 26),
          Text(
            'email'.tr.toUpperCase(),
            style: AppTextStyle.textTitleInput,
          ),
          const SizedBox(height: 10),
          TextField(
            controller: controller.emailInput,
            decoration: InputDecoration(
              hintText: 'inputYourEmail'.tr,
            ),
          ),
          const SizedBox(height: 26),
          Text(
            'password'.tr.toUpperCase(),
            style: AppTextStyle.textTitleInput,
          ),
          const SizedBox(height: 10),
          Obx(
            () => TextField(
              controller: controller.passwordInput,
              decoration: InputDecoration(
                hintText: 'inputYourPassword'.tr,
                suffixIcon: IconButton(
                  icon: Icon(
                    controller.hidePassword.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {},
                ),
              ),
              obscureText: controller.hidePassword.value,
            ),
          ),
          const SizedBox(height: 26),
          Text(
            'confirmPassword'.tr.toUpperCase(),
            style: AppTextStyle.textTitleInput,
          ),
          const SizedBox(height: 10),
          Obx(
            () => TextField(
              controller: controller.passwordInput,
              decoration: InputDecoration(
                hintText: 'confirmPassword'.tr,
                suffixIcon: IconButton(
                  icon: Icon(
                    controller.hidePassword.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {},
                ),
              ),
              obscureText: controller.hidePassword.value,
            ),
          ),
          const SizedBox(height: AppInt.defaultPadding),
          SizedBox(
            height: 28,
            child: Row(
              children: <Widget>[
                Transform.scale(
                  scale: 1.5,
                  child: Obx(
                    () => Checkbox(
                      value: controller.isCheckedTermAndConditions.value,
                      onChanged: (bool? data) {
                        controller.isCheckedTermAndConditions.value = data!;
                      },
                    ),
                  ),
                ),
                Text('agreeTermAndPrivacy'.tr)
              ],
            ),
          ),
          const SizedBox(height: 26),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                controller.handleRegisterButton();
              },
              child: Text('Register'.tr),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

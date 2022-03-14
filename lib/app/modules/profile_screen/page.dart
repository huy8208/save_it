import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:save_it/app/core/theme/app_colors.dart';
import 'package:save_it/app/core/theme/app_images_urls.dart';
import 'package:save_it/app/core/theme/app_int.dart';
import 'package:save_it/app/core/theme/app_text_style.dart';
import 'package:save_it/app/modules/profile_screen/controller.dart';

class ProfileScreen extends GetView<ProfileScreenController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Profile',
          style: AppTextStyle.size20BlackBold,
        ),
        backgroundColor: AppColors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: AppInt.defaultPadding),
            child: IconButton(
              icon: Icon(
                Icons.logout_outlined,
                size: 30,
                color: AppColors.dark.withOpacity(0.5),
              ),
              onPressed: () {
                controller.handleSignOutAction();
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildHeader(),
            const SizedBox(height: AppInt.defaultPadding),
            _buildScores(),
            const SizedBox(height: AppInt.defaultPadding),
            _buildProfileMenu(),
            const SizedBox(height: AppInt.defaultPadding),
            _buildVersion(),
          ],
        ),
      ),
    );
  }

  Text _buildVersion() {
    return const Text(
      'Version 1.01',
      style: AppTextStyle.size12,
    );
  }

  Container _buildProfileMenu() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 4,
      ),
      margin: const EdgeInsets.symmetric(horizontal: AppInt.defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppColors.dark.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          _buildMenuItem(
            Icons.lock,
            'changePassword',
            '/sample_screen',
          ),
          _buildMenuItem(
            Icons.archive_rounded,
            'package',
            '/sample_screen',
          ),
          _buildMenuItem(
            Icons.payment,
            'payment',
            '/sample_screen',
          ),
          _buildMenuItem(
            Icons.shopping_cart_rounded,
            'myOrder',
            '/sample_screen',
          ),
          _buildMenuItem(
            Icons.image,
            'childrenArtGallery',
            '/sample_screen',
            true,
          ),
        ],
      ),
    );
  }

  InkWell _buildMenuItem(
    IconData icons,
    String label,
    String route, [
    bool isLast = false,
  ]) {
    return InkWell(
      onTap: () {
        controller.handleClickMenuAction(route);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 18,
        ),
        decoration: BoxDecoration(
          border: !isLast
              ? Border(
                  bottom: BorderSide(color: AppColors.dark.withOpacity(0.1)),
                )
              : null,
        ),
        child: Row(
          children: <Widget>[
            Icon(
              icons,
              size: 18,
            ),
            const SizedBox(width: 8),
            Text(label.tr),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildScores() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppInt.defaultPadding,
      ),
      child: Row(
        children: <Widget>[
          _buildContainerPoint(
            'FICO score',
            controller.dummyData.ficoScore,
            AppColors.lightOrange,
          ),
          const SizedBox(width: 14),
          _buildContainerPoint(
            'referentPoint',
            controller.dummyData.ficoScore,
            AppColors.blue,
          ),
        ],
      ),
    );
  }

  Stack _buildHeader() {
    return Stack(
      children: <Widget>[
        Container(
          height: 250,
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 60),
          decoration: const BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 30,
                left: AppInt.defaultPadding,
                right: AppInt.defaultPadding,
                child: Row(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                controller.dummyData.imageUrl,
                              ),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 1,
                          bottom: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: AppColors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.add_circle,
                              size: 24,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          controller.dummyData.name,
                          style: AppTextStyle.nameProfile,
                        ),
                        Text(
                          controller.dummyData.email,
                          style: AppTextStyle.emailProfile,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'ID: ${controller.dummyData.id}',
                              style: AppTextStyle.idProfile,
                            ),
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: () {
                                controller.handleClickCopyFICOscoreAction();
                              },
                              child: const Icon(
                                Icons.copy_sharp,
                                size: 16,
                                color: AppColors.white,
                              ),
                            ),
                            const SizedBox(width: AppInt.defaultPadding),
                            Text(
                              '(Invite Code)',
                              style: AppTextStyle.size14White.copyWith(
                                color: AppColors.white.withOpacity(0.5),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: -100,
                top: -100,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.lightOrange,
                  ),
                ),
              ),
              Positioned(
                left: -70,
                bottom: -70,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.darkOrange,
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          top: 140,
          left: AppInt.defaultPadding,
          right: AppInt.defaultPadding,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: AppColors.white.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 6,
                ),
                BoxShadow(
                  color: AppColors.dark.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 6,
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'referAndGetPoint'.tr,
                        style: AppTextStyle.size16Bold,
                      ),
                      const Text('Discription'),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.inviteButton,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 24,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'inviteAFriend'.tr,
                              style: AppTextStyle.size12.copyWith(
                                color: AppColors.primaryColor,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.arrow_forward_sharp,
                              size: 14,
                              color: AppColors.primaryColor,
                            )
                          ],
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Image.asset(AppImage.wateringMoney),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Expanded _buildContainerPoint(String label, double ficoScore, Color colors) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              label.tr,
              style: AppTextStyle.size16WhiteBold,
            ),
            Row(
              children: <Widget>[
                const Icon(Icons.attach_money_outlined),
                const SizedBox(width: 8),
                Text(
                  ficoScore.toString(),
                  style: AppTextStyle.size14White,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

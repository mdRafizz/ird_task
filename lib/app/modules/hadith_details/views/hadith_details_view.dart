import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ird_task/app/modules/hadith_details/widgets/more_options.dart';
import 'package:ird_task/app/widgets/reusable_text.dart';
import 'package:ird_task/core/extensions/hex_color.dart';

import '../controllers/hadith_details_controller.dart';

class HadithDetailsView extends GetView<HadithDetailsController> {
  const HadithDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor.fromHex('#1AA483'),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 64.h,
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 13.5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: SizedBox(
                      height: 24.h,
                      width: 24.w,
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/images/back.svg',
                          width: 7.5.w,
                          height: 15.h,
                          fit: BoxFit.scaleDown,
                          colorFilter: ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReusableText(
                        controller.book.title.toString(),
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),
                      ),
                      // Gap(5.h),
                      ReusableText(
                        controller.chapter.title,
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 14.h,
                  ),
                  decoration: BoxDecoration(
                    color: HexColor.fromHex('#F4F4F4'),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                  ),
                  child: Obx(() {
                    if (controller.isLoading.value) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    final hadiths = controller.hadiths;

                    if (hadiths.isEmpty) {
                      return const Center(
                        child: Text("⚠️ কোনো হাদিস পাওয়া যায়নি"),
                      );
                    }

                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: hadiths.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (_, i) {
                        final (hadith, section) = hadiths[i];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 336.w,
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 10.h,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: section.number ?? '',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        color: HexColor.fromHex('#1AA483'),
                                        height: 22.h / 14.sp,
                                        fontSize: 14.sp,
                                      ),
                                      children: [
                                        TextSpan(text: ' '),
                                        TextSpan(
                                          text: section.title.replaceAll(
                                            section.number ?? '',
                                            '',
                                          ),
                                          style: TextStyle(
                                            // fontWeight: FontWeight.w600,
                                            color: HexColor.fromHex('#5D646F'),
                                            // fontSize: 14.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (section.preface != '') ...[
                                    Gap(15.h),
                                    Container(
                                      height: 1.h,
                                      color: HexColor.fromHex('#EFEFEF'),
                                      width: 316.w,
                                    ),
                                    Gap(10.h),
                                    Text(
                                      section.preface ?? '',
                                      style: GoogleFonts.inter(
                                        color: HexColor.fromHex(
                                          '#353535',
                                          alpha: .8,
                                        ),
                                        height: 18.h / 12.sp,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                            Gap(14.h),
                            Container(
                              width: 336.w,
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 10.h,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.r),
                                ),
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 38.h,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 34.64.h,
                                          width: 34.64.w,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                'assets/images/polygon.svg',
                                                height: 34.64.h,
                                                width: 34.64.w,
                                                fit: BoxFit.scaleDown,
                                                colorFilter: ColorFilter.mode(
                                                  HexColor.fromHex(
                                                    hadith.gradeColor ??
                                                        '#1AA483',
                                                  ),
                                                  BlendMode.srcIn,
                                                ),
                                              ),
                                              Text(
                                                controller.book.abvrCode ?? '',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Gap(10.w),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                text: 'Hadith No: ',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13.sp,
                                                  height: 20.h / 13.sp,
                                                  color: HexColor.fromHex(
                                                    '#5D646F',
                                                  ),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: formatNumber(
                                                      hadith.hadithId ?? 1,
                                                    ),
                                                    style: GoogleFonts.poppins(
                                                      color: HexColor.fromHex(
                                                        '#1AA483',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              controller.book.title ?? '',
                                              style: GoogleFonts.inter(
                                                fontSize: 12.sp,
                                                height: 18.h / 12.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        Container(
                                          height: 23.h,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 10.w,
                                            vertical: 4.h,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(13.r),
                                            ),
                                            color: HexColor.fromHex(
                                              hadith.gradeColor ?? '#1AA483',
                                            ),
                                          ),
                                          child: Text(
                                            hadith.grade ?? '',
                                            style: GoogleFonts.inter(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Gap(10.w),
                                        GestureDetector(
                                          onTap: (){
                                            Get.bottomSheet(MoreOptions());
                                          },
                                          child: SizedBox(
                                            height: 24.h,
                                            width: 24.w,
                                            child: Center(
                                              child: SvgPicture.asset(
                                                'assets/images/threeDot.svg',
                                                height: 13.5.h,
                                                width: 1.5.w,
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Gap(33.h),
                                  Text(
                                    hadith.ar ?? '',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'me_quran',
                                      fontSize: 20.sp,
                                      height: 55.h / 20.sp,
                                      color: HexColor.fromHex('#353535'),
                                    ),
                                    // style: GoogleFonts.me,
                                  ),
                                  Gap(20.h),
                                  Text(
                                    hadith.narrator ?? '',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      height: 20.h / 14.sp,
                                      color: HexColor.fromHex('#1AA483'),
                                    ),
                                  ),
                                  Gap(10.h),
                                  Text(
                                    splitHadithAndReference(
                                          hadith.bn ?? '',
                                        )['text'] ??
                                        '',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      height: 20.h / 14.sp,
                                    ),
                                  ),
                                  Gap(20.h),
                                  Text(
                                    splitHadithAndReference(
                                          hadith.bn ?? '',
                                        )['reference'] ??
                                        "",
                                    style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      height: 18.h / 12.sp,
                                      color: HexColor.fromHex(
                                        '#353535',
                                        alpha: .5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Gap(27.h),
                          ],
                        );
                      },
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String formatNumber(int number) {
    if (number >= 1 && number <= 9) {
      return '0$number';
    } else {
      return number.toString();
    }
  }

  Map<String, String> splitHadithAndReference(String hadith) {
    // RegExp দিয়ে শেষের রেফারেন্স আলাদা করা
    final referenceRegex = RegExp(r'(\([^)]+\)\s*(\(.*?\))?)$');
    final match = referenceRegex.firstMatch(hadith);

    if (match != null) {
      final reference = match.group(0) ?? '';
      final hadithText = hadith.replaceAll(reference, '').trim();
      return {'text': hadithText, 'reference': reference.trim()};
    } else {
      return {'text': hadith, 'reference': ''};
    }
  }
}

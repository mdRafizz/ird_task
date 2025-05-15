import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ird_task/app/widgets/reusable_text.dart';
import 'package:ird_task/core/extensions/hex_color.dart';

class MoreOptions extends StatelessWidget {
  const MoreOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final options = <String, String>{
      'Go To Main Hadith': 'assets/images/plane.svg',
      'Add to Collection': 'assets/images/bookmark.svg',
      'Bangla Copy': 'assets/images/copy.svg',
      'English Copy': 'assets/images/copy.svg',
      'Arabic Copy': 'assets/images/copy.svg',
      'Add Hifz': 'assets/images/add.svg',
      'Add Note': 'assets/images/add.svg',
      'Share': 'assets/images/share.svg',
      'Report': 'assets/images/exclamation.svg',
    };

    final optionList = options.entries.toList();


    return Container(
      height: 442.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 24.h,
            width: 320.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReusableText(
                  'More Option',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                    height: 18.h / 15.sp,
                    color: HexColor.fromHex('#35414D'),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/images/cross.svg',
                      height: 12.h,
                      width: 12.w,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(20.h),
          ...List.generate(optionList.length, (i) {
            final entry = optionList[i];
            final iconPath = entry.value;
            final text = entry.key;

            return Container(
              margin: EdgeInsets.only(bottom: i == optionList.length - 1 ? 0 : 24.h),
              child: Row(
                children: [
                  SvgPicture.asset(
                    iconPath,
                    height: 15.h,
                    width: 15.w,
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(width: 15.w),
                  ReusableText(
                    text,
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      height: 18.h / 14.sp,
                      color: HexColor.fromHex('#5D646F'),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}

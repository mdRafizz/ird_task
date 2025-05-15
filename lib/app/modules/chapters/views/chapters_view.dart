import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ird_task/app/widgets/reusable_text.dart';
import 'package:ird_task/core/extensions/english_to_bangla_number.dart';

import '../../../../core/extensions/hex_color.dart';
import '../../../data/services/database_service.dart';
import '../../../routes/app_pages.dart';
import '../controllers/chapters_controller.dart';

class ChaptersView extends GetView<ChaptersController> {
  const ChaptersView({super.key});

  @override
  Widget build(BuildContext context) {
    final dbService = Get.find<DatabaseService>().db;

    return Scaffold(
      backgroundColor: HexColor.fromHex('#F4F4F4'),
      appBar: AppBar(
        backgroundColor: HexColor.fromHex('#1AA483'),
        leading: IconButton(
          onPressed: Get.back,
          icon: SvgPicture.asset(
            'assets/images/back.svg',
            width: 7.5.w,
            height: 15.h,
            fit: BoxFit.scaleDown,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReusableText(
              controller.book.title ?? '',
              size: 18,
              weight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'bn',
            ),
            Gap(5.h),
            ReusableText(
              '${controller.book.numberOfHadis.toString().toBanglaNumber()} টি হাদিস',
              color: Colors.white,
              size: 14,
              fontFamily: 'bn',
            ),
          ],
        ),
      ),
      body: FutureBuilder(
        future: dbService.getChaptersByBookId(Get.arguments.id),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final chapters = snapshot.data ?? [];
          if (chapters.isEmpty) {
            return const Center(child: Text("No chapters found"));
          }

          return ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
            itemCount: chapters.length,
            itemBuilder: (_, i) {
              final chapter = chapters[i];
              return GestureDetector(
                onTap: () {
                  Get.toNamed(
                    Routes.HADITH_DETAILS,
                    arguments: {
                      'book': controller.book,
                      'chapter': chapter,
                    },
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 15.h),
                  padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 20.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 38.h,
                        width: 38.w,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/polygon.svg',
                              height: 38.h,
                              width: 38.w,
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                HexColor.fromHex('#1AA483'),
                                BlendMode.srcIn,
                              ),
                            ),
                            Text(
                              chapter.chapterId.toString(),
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(15.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chapter.title ?? '',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'bn',
                              ),
                            ),
                            Gap(5.h),
                            ReusableText(
                              'হাদিস রেঞ্জ: ${chapter.hadisRange ?? ''}',
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontFamily: 'bn',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

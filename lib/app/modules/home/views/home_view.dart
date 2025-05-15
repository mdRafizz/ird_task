import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ird_task/app/routes/app_pages.dart';
import 'package:ird_task/app/widgets/reusable_text.dart';

import '../../../../core/extensions/english_to_bangla_number.dart';
import '../../../../core/extensions/hex_color.dart';
import '../../../data/providers/app_database.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor.fromHex('#F4F4F4'),
      appBar: AppBar(
        backgroundColor: HexColor.fromHex('#1AA483'),
        title: Text(
          'আল হাদিস',
          style: TextStyle(
            fontFamily: 'bn',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(20.h),
            FutureBuilder<List<Book>>(
              future: controller.dbService.getAllBooks(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  final books = snapshot.data!;
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: books.length,
                    itemBuilder: (_, i) {
                      final book = books[i];
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            Routes.CHAPTERS,
                            arguments: book,
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 15.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 18.w,
                            vertical: 20.h,
                          ),
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
                                        HexColor.fromHex(
                                          book.colorCode ?? '#1AA483',
                                        ),
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    Text(
                                      book.abvrCode ?? '',
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
                              ReusableText(
                                book.title ?? '',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                  fontFamily: 'bn',
                                ),
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  ReusableText(
                                    book.numberOfHadis
                                        .toString()
                                        .toBanglaNumber(),
                                    weight: FontWeight.bold,
                                    color: Colors.black,
                                    size: 14.sp,
                                    fontFamily: 'bn',
                                  ),
                                  Gap(5.h),
                                  ReusableText(
                                    'হাদিস',
                                    weight: FontWeight.normal,
                                    color: Colors.black,
                                    size: 14.sp,
                                    fontFamily: 'bn',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/data/services/database_service.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Register the DatabaseService
  await Get.putAsync(() => DatabaseService().init());

  runApp(IRDTask());
}

class IRDTask extends StatelessWidget {
  const IRDTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 805),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "IRD Task",
          scrollBehavior: CupertinoScrollBehavior(),
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
        );
      },
    );
  }
}

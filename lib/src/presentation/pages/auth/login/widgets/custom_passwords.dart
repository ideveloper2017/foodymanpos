import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../theme/theme.dart';

class CustomPasswords extends StatelessWidget {
  final VoidCallback onTap;
  final String type;

  const CustomPasswords({Key? key, required this.onTap, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: '${AppHelpers.getTranslation(
                    type == TrKeys.seller
                        ? TrKeys.sellerLogin
                        : type == TrKeys.cooker
                            ? TrKeys.cookerLogin
                            : TrKeys.waiterLogin,
                  )}:',
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      letterSpacing: -0.3, color: AppColors.black),
                  children: [
                    TextSpan(
                      text:
                          ' ${type == TrKeys.seller ? AppConstants.demoSellerLogin : type == TrKeys.cooker ? AppConstants.demoCookerLogin : AppConstants.demoWaiterLogin}',
                      style: GoogleFonts.inter(
                          letterSpacing: -0.3,
                          fontSize: 14.sp,
                          fontStyle: FontStyle.italic,
                          color: AppColors.black),
                    )
                  ],
                ),
              ),
              6.verticalSpace,
              RichText(
                text: TextSpan(
                  text: '${AppHelpers.getTranslation(TrKeys.password)}:',
                  style: GoogleFonts.inter(
                      letterSpacing: -0.3, color: AppColors.black,
                  fontSize: 14.sp
                  ),
                  children: [
                    TextSpan(
                      text:
                          ' ${type == TrKeys.seller ? AppConstants.demoSellerPassword : type == TrKeys.cooker ? AppConstants.demoCookerPassword : AppConstants.demoWaiterPassword}',
                      style: GoogleFonts.inter(
                          letterSpacing: -0.3,
                          fontSize: 14.sp,
                          fontStyle: FontStyle.italic,
                          color: AppColors.black),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: onTap,
          child: Text(
            "Copy",
            style: GoogleFonts.inter(fontSize: 14.sp),
          ),
        ),
      ],
    );
  }
}

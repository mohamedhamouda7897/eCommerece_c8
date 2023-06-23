import 'package:ecommerce_c8_friday/core/utils/app_assets.dart';
import 'package:ecommerce_c8_friday/features/sign_up/presentation/manager/cubit.dart';
import 'package:ecommerce_c8_friday/features/sign_up/presentation/manager/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../config/routes/app_route.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/components.dart';
import '../../data/data_sources/remote_dto.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(RemoteDataSource()),
      child: BlocConsumer<SignUpCubit, SignUpStates>(
        listener: (context, state) {
          if (state is SignUpErrorState) {
            print("heere");
            print(state.failures.toString());
          } else if (state is SignUpSuccessState) {
            Navigator.pop(context);
            Navigator.pushReplacementNamed(context, Routes.login);
          } else if (state is SignUpLoadingState) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: Colors.transparent,
                title: Center(
                    child: CircularProgressIndicator(
                  color: AppColors.primary,
                )),
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.primary,
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 91.h,
                      ),
                      Image.asset(
                        AppImages.logo,
                        height: 71.h,
                        width: 237.w,
                      ),
                      SizedBox(
                        height: 47.h,
                      ),
                      defaultFormField(
                          controller: SignUpCubit.get(context).nameController,
                          label: "Full name",
                          validate: (value) {
                            return null;
                          }),
                      SizedBox(
                        height: 32.h,
                      ),
                      defaultFormField(
                          controller: SignUpCubit.get(context).phoneController,
                          label: "Phone Number",
                          validate: (value) {
                            return null;
                          }),
                      SizedBox(
                        height: 32.h,
                      ),
                      defaultFormField(
                          controller: SignUpCubit.get(context).emailController,
                          label: "Email",
                          validate: (value) {
                            bool emailValid = RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value!);
                            if (value == null || value.isEmpty || !emailValid) {
                              return "Please Enter valid Email Address";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 32.h,
                      ),
                      defaultFormField(
                          controller:
                              SignUpCubit.get(context).passwordController,
                          label: "Password",
                          validate: (value) {
                            return null;
                          },
                          isPassword: true),
                      SizedBox(
                        height: 56.h,
                      ),
                      SizedBox(
                        height: 64.h,
                        child: ElevatedButton(
                          onPressed: () {
                            SignUpCubit.get(context).signUp();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: Text(
                            "Create Account",
                            style: GoogleFonts.poppins(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primary),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "I Have an account?",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.sp,
                                color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.login);
                            },
                            child: Text("Login",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp,
                                    color: Colors.white)),
                          )
                        ],
                      )
                    ]),
              ),
            ),
          );
        },
      ),
    );
  }
}

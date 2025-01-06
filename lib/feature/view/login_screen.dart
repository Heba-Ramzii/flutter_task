import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/utils/constants.dart';
import 'package:untitled2/feature/model/user_model.dart';
import 'package:untitled2/feature/view/product_group_screen.dart';
import 'package:untitled2/feature/view/widget/login_form.dart';
import '../../core/utils/colors_manager.dart';
import '../../core/utils/style_manager.dart';
import '../../core/utils/toaster.dart';
import '../../generated/assets.dart';
import '../viewmodels/login/login_cubit.dart';


class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController companyController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            if (state.data['isSuccess'] == true) {
              navigateTo(context, const ProductGroupScreen());
            } else {
              Toaster.showError(context: context, text: state.data['message']);
            }
          } else if (state is LoginFailure) {
            String errorMessage = "ادخل الكود الصحيح" ?? state.error ;
            Toaster.showError(context: context, text: errorMessage);
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset(
                    Assets.imagesLogin,
                    //height: 200,
                  ),
                  Text(
                    "Login",
                    style: StyleManager.textStyleDark24.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: defaultPadding),
                  LogInForm(
                    formKey: _formKey,
                    usernameController: usernameController,
                    passwordController: passwordController,
                    companyController: companyController,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        final user = UserModel(
                          partnerCode: companyController.text,
                          //"uKDjRl/y5vg=",
                          userName: usernameController.text,
                          password: passwordController.text,
                          langId: 1,
                        );
                        context.read<LoginCubit>().login(user);
                      }
            
                    } ,
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor:  ColorsManager.secondaryColor,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 48),
                      shape: const StadiumBorder(),
                    ),
                    child: const Text("Login"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

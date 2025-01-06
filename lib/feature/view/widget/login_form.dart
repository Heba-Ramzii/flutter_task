import 'package:flutter/material.dart';
import '../../../core/utils/colors_manager.dart';
import '../../../core/utils/constants.dart';

class LogInForm extends StatefulWidget {
  LogInForm({
    super.key,
    required this.formKey,
    required this.usernameController,
    required this.passwordController,
    required this.companyController,

  });

  final GlobalKey<FormState> formKey;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController companyController;
  bool passwordVisible = true;

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {

  @override
  Widget build(BuildContext context, ) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: widget.usernameController,
            validator: nameValidator.call,
            decoration: const InputDecoration(
              prefixIcon: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 16),
                child: Icon(
                  Icons.person,
                  color: ColorsManager.greyColor,
                  size: 24,
                ),
              ),
              hintText: "Enter username",
              hintStyle: TextStyle(
                fontWeight: FontWeight.normal,
                color: ColorsManager.greyColor
              ),
              filled: true,
              fillColor: ColorsManager.lightSecondaryColor,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5, vertical: defaultPadding),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            ),
            keyboardType: TextInputType.name,
            onSaved: (name) {
              // Save it
            },
          ),
          const SizedBox(height: defaultPadding,),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            controller: widget.passwordController,
            validator: passwordValidator.call,
            obscureText: widget.passwordVisible,
            decoration: InputDecoration(
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(vertical: defaultPadding),
                child: Icon(
                  Icons.lock_rounded,
                  color: ColorsManager.greyColor,
                  size: 24,
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                    widget.passwordVisible
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined),
                color: ColorsManager.greyColor,
                onPressed: () {
                  setState(
                        () {
                      widget.passwordVisible = ! widget.passwordVisible;
                    },
                  );
                },
              ) ,
              hintText: "Enter password",
              hintStyle: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: ColorsManager.greyColor
              ),
              filled: true,
              fillColor: ColorsManager.lightSecondaryColor,
              contentPadding: const EdgeInsets.symmetric(
                  horizontal:defaultPadding * 1.5, vertical: defaultPadding ),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            ),
            onSaved: (v) {
              // Save it
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              keyboardType: TextInputType.text,
              controller: widget.companyController,
              validator: nameValidator.call,
              decoration: InputDecoration(
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Icon(
                    Icons.qr_code_rounded,
                    color: ColorsManager.greyColor,
                    size: 24,
                  ),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                      widget.passwordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined),
                  color: ColorsManager.greyColor,
                  onPressed: () {
                    setState(
                          () {
                        widget.passwordVisible = ! widget.passwordVisible;
                      },
                    );
                  },
                ) ,
                hintText: "Enter code",
                hintStyle: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: ColorsManager.greyColor
                ),
                filled: true,
                fillColor: ColorsManager.lightSecondaryColor,
                contentPadding: const EdgeInsets.symmetric(
                    horizontal:defaultPadding * 1.5, vertical: defaultPadding ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
              onSaved: (v) {
                // Save it
              },
            ),
          ),
        ],
      ),
    );
  }
}

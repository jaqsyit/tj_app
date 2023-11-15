import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tj_app/constants/styles.dart';
import 'package:tj_app/features/login/login_cubit.dart';
import 'package:tj_app/widgets/footer.dart';
import 'package:tj_app/widgets/header.dart';
import 'package:tj_app/widgets/top_navigation.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final maskFormatter = MaskTextInputFormatter(
    mask: '+7 (###) ### ## ##',
    filter: {"#": RegExp(r'[0-9]')},
  );

  final passwordFocus = FocusNode();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // loginController.text = 'm.aqyn';
    // passwordController.text = '123123';
    return BlocProvider(
      create: (_) => LoginCubit(context: context),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          backgroundColor: AppColors.primary,
          title: const Header(),
        ),
        body: SafeArea(
          child: BlocBuilder<LoginCubit, bool>(
            builder: (context, state) {
              final loginCubit = BlocProvider.of<LoginCubit>(context);

              return LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constraints.maxHeight,
                      ),
                      child: IntrinsicHeight(
                        child: Column(
                          children: [
                            SizedBox(height: 80, child: TopNav()),
                            const Spacer(),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(height: 40),
                                  const Text(
                                    'Жүйеге кіру',
                                    style: AppTextStyles.s32w600cb,
                                  ),
                                  const SizedBox(height: 40),
                                  const Text(
                                    'Жеке кабинетке кіру үшін төмендегі форманы толтырыңыз!',
                                    style: AppTextStyles.s18w400cb,
                                  ),
                                  const SizedBox(height: 40),
                                  SizedBox(
                                    width: 330,
                                    child: Form(
                                      key: _formKey,
                                      autovalidateMode: state
                                          ? AutovalidateMode.always
                                          : AutovalidateMode.disabled,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextFormField(
                                            keyboardType: TextInputType.phone,
                                            controller: loginController,
                                            inputFormatters: [maskFormatter],
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: '+7 (777) 777 77 77',
                                            ),
                                            maxLines: 1,
                                            onEditingComplete: () {
                                              FocusScope.of(context)
                                                  .requestFocus(passwordFocus);
                                            },
                                            validator: (text) {
                                              if (text != null) {
                                                if (text.isEmpty) {
                                                  return 'Телефон номеріңізді еңгізіңіз';
                                                } else if (text.length < 12) {
                                                  return 'Телефон номеріңіз толық емес';
                                                }
                                              }
                                              return null;
                                            },
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          TextFormField(
                                            controller: passwordController,
                                            obscureText: true,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: 'Құпиясөз',
                                            ),
                                            maxLines: 1,
                                            focusNode: passwordFocus,
                                            validator: (text) {
                                              if (text != null) {
                                                if (text.isEmpty) {
                                                  return 'Құпиясөз енгізіңіз';
                                                } else if (text.length < 6) {
                                                  return 'Кемінде 6 символ';
                                                }
                                              }
                                              return null;
                                            },
                                          ),
                                          TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                              'Құпиясөзді ұмыттыңыз ба?',
                                              style: AppTextStyles.s14w400,
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          SizedBox(
                                            height: 40,
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                            Color>(
                                                        AppColors.primary),
                                              ),
                                              child: const Text(
                                                'Кіру',
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              onPressed: () async {
                                                if (_formKey.currentState !=
                                                    null) {
                                                  if (_formKey.currentState!
                                                      .validate()) {
                                                    await loginCubit.login(
                                                        login: loginController
                                                            .value.text,
                                                        password:
                                                            passwordController
                                                                .value.text);
                                                  } else {
                                                    loginCubit
                                                        .enableAutoValidate();
                                                  }
                                                }
                                              },
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          Row(
                                            children: [
                                              const Text(
                                                  'Жаңа пайдаланушысыз ба?'),
                                              const Spacer(),
                                              TextButton(
                                                onPressed: () {},
                                                child: const Text('Тіркелу'),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 40),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(child: Container()),
                            const Footer(),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

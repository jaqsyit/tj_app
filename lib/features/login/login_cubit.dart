import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:tj_app/constants/urls.dart';
import 'package:tj_app/services/json_decoder.dart';
import 'package:tj_app/services/network_helper.dart';
import 'package:tj_app/widgets/loading_dialog.dart';

class LoginCubit extends Cubit<bool> {
  final BuildContext context;
  LoginCubit({required this.context}) : super(false);

  Future<void> login({required String login, required String password}) async {
    LoadingDialog.show(context);
    final response = await NetworkHelper().post(
        url: LOGIN_URL,
        withToken: false,
        body: {'email': login, 'password': password}).whenComplete(() {
      LoadingDialog.hide(context);
    });

    if (response is Response) {
      final decodedResponse = JsonDecoder().responseToMap(response);

      // final LoginData loginData = LoginData.fromJson(decodedResponse);
      // if (decodedResponse.containsKey('token')) {
      //   StorageManager storage = StorageManager();
      //   await storage.setUserStatus('kontingent');
      //   await storage.setToken(loginData.token).whenComplete(
      //         () => Navigator.pushAndRemoveUntil(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => const MainBar(),
      //           ),
      //           (route) => false,
      //         ),
      //       );
      // }
    } else if (response is String) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Қате'),
          content: Text(response),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }


  void enableAutoValidate() {
    if (!state) {
      emit(true);
    }
  }
}
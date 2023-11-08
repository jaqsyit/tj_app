// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ala/constants/urls.dart';
// import 'package:ala/features/info/info_state.dart';
// import 'package:ala/models/info_data.dart';
// import 'package:ala/services/json_decoder.dart';
// import 'package:ala/services/network_helper.dart';


// class InfoCubit extends Cubit<InfoState> {
//   final BuildContext context;
//   InfoCubit({required this.context}) : super(InfoLoading());

//   Future<void> getInfo() async {
//     if(state is! InfoLoading) {
//       emit(InfoLoading());
//     }

//     final response = await NetworkHelper().get(url: INFO_URL);

//     if(response is Response) {
//       final decodedResponse = JsonDecoder().responseToMap(response);

//       // print(decodedResponse);
//       final  InfoData dataDecoded =  InfoData.fromJson(decodedResponse);

//       emit(InfoLoaded(data: dataDecoded));
//     } else if (response is String){
//       emit(InfoError(errMsg: response));
//     } else {
//       emit(InfoError(errMsg: 'Unknown error!'));
//     }
//   }
// }
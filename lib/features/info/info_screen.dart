// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ala/constants/styles.dart';
// import 'package:ala/features/info/info_cubit.dart';
// import 'package:ala/features/info/info_state.dart';
// import 'package:ala/generated/l10n.dart';
// import 'package:ala/models/info_data.dart';
// import 'package:ala/services/share_content.dart';
// import 'package:ala/widgets/error_column.dart';
// import 'package:ala/widgets/loading_widget.dart';
// import 'package:ala/widgets/build_inforow.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher_string.dart';

// class InfoScreen extends StatelessWidget {
//   const InfoScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => InfoCubit(context: context)..getInfo(),
//       child: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text(
//             S.of(context).info,
//             style: AppTextStyles.s20w500cb,
//           ),
//           backgroundColor: Colors.white,
//           iconTheme: const IconThemeData(color: Colors.black),
//         ),
//         body: SafeArea(
//           child: BlocBuilder<InfoCubit, InfoState>(
//             builder: (context, state) {
//               final infoCubit = BlocProvider.of<InfoCubit>(context);
//               if (state is InfoLoading) {
//                 return const LoadingWidget();
//               } else if (state is InfoLoaded) {
//                 return Column(
//                   children: [
//                     Expanded(
//                       child: Container(
//                           decoration: const BoxDecoration(
//                             gradient: AppStyles.gradientBackground,
//                           ),
//                           child: _buildInfoUI(state.data, context)),
//                     ),
//                   ],
//                 );
//               } else if (state is InfoError) {
//                 return ErrorColumn(
//                   errMsg: state.errMsg,
//                   onRetry: () async {
//                     await infoCubit.getInfo();
//                   },
//                 );
//               } else {
//                 return const ErrorColumn();
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildInfoUI(InfoData infoData, BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         padding: const EdgeInsets.all(10),
//         margin: const EdgeInsets.all(30),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 if (infoData.mektepName != '')
//                   buildInfoRow('${S.of(context).fullNameSchool}:', infoData.mektepName),
//                 if (infoData.mektepAddress != '')
//                   buildInfoRow('${S.of(context).addressSchool}:', infoData.mektepAddress),
//                 if (infoData.directorFio != '')
//                   buildInfoRow('${S.of(context).director}:', infoData.directorFio),
//                 const SizedBox(height: 20),
//                 Text(S.of(context).contacts, style: AppTextStyles.s14w400cb),
//                 const SizedBox(height: 20),
//                 if (infoData.web != '')
//                   InkWell(
//                     onTap: () async {
//                       final url = infoData.web;
//                       if (!await launchUrl(url as Uri)) {
//                         throw Exception('Could not launch $url');
//                       }
//                     },
//                     child: Text(
//                       infoData.web,
//                       style: const TextStyle(
//                         decoration: TextDecoration
//                             .underline, // Стиль подчеркивания ссылки
//                         color: Colors.blue, // Цвет ссылки
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 const SizedBox(height: 20),
//                 if (infoData.phone != '')
//                   InkWell(
//                     onTap: () async{
//                       await launchUrlString('tel:${infoData.phone}');
//                     },
//                     child: Text(
//                       infoData.phone,
//                       style: const TextStyle(
//                         decoration: TextDecoration
//                             .underline, // Стиль подчеркивания ссылки
//                         color: Colors.blue, // Цвет ссылки
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 if (infoData.mektepAddress != '')
//                   buildInfoRow('', infoData.mektepAddress),
//               ],
//             ),
//             Row(
//               children: [
//                 const Spacer(),
//                 SizedBox(
//                   width: 150,
//                   child: ElevatedButton.icon(
//                     onPressed: () {
//                       Share.share(prepareShareContent(infoData));
//                     },
//                     icon: const Icon(Icons.ios_share_rounded),
//                     label: Text(S.of(context).share),
//                   ),
//                 ),
//                 const Spacer(),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

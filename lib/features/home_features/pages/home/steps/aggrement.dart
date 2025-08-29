import 'package:auto_size_text/auto_size_text.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/pdf_screen.dart';

class AggrementWidget extends ConsumerStatefulWidget {
  const AggrementWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AggrementWidgetState();
}

class _AggrementWidgetState extends ConsumerState<AggrementWidget> {
  List<Map<String, String>> pickedFiles = [];

  void pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null && result.files.single.path != null) {
      String fileName = result.files.single.name;
      String date =
          "${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year}";

      setState(() {
        pickedFiles.insert(0, {'name': fileName, 'date': date});
      });

      print("Picked: $fileName");
    } else {
      print("User canceled file picking.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            24.verticalSpace,

            /// List of Picked Files (Latest on top)
            ...pickedFiles.map((file) => CommonAggrementCard(
                  title: file['name']!,
                  Subtitle: file['date']!,
                )),

            24.verticalSpace,

            /// Upload UI
            Center(
              child: InkWell(
                onTap: pickFile,
                child: Container(
                  width: 300.w,
                  height: 165.h,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/rectanglephoto.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        children: [
                          28.verticalSpace,
                          Center(
                            child: Image.asset(
                              'assets/images/photos.png',
                              height: 48.h,
                              width: 48.w,
                            ),
                          ),
                          8.verticalSpace,
                          Text(
                            'Upload Document',
                            style: TextStyle(
                              color: const Color(0xFF164C63),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          8.verticalSpace,
                          Text(
                            'pdf',
                            style: TextStyle(
                              color: const Color(0xFF494D60),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: BottomAppBar(
          color: Colors.white,
          child: PrimaryButton(
            isLoading: ref.watch(propertyNotifierProvider).isLoading,
            title: 'Next',
            onClick: () {
              
            },
          ),
        ),
      ),
    );
  }
}

// class AggrementWidget extends ConsumerStatefulWidget {
//   const AggrementWidget({super.key});
//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() =>
//       _AggrementWidgetState();
// }

// class _AggrementWidgetState extends ConsumerState<AggrementWidget> {

//   void pickFile() async {
//   FilePickerResult? result = await FilePicker.platform.pickFiles();

//   if (result != null) {
//     String? filePath = result.files.single.path;
//     print("Picked file path: $filePath");
//   } else {
//     print("User canceled file picking.");
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         padding: EdgeInsets.symmetric(horizontal: 24),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             16.verticalSpace,
//             InkWell(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const PDFViewerScreen(
//                       pdfAssetPath: 'assets/pdfs/file.pdf',
//                     ),
//                   ),
//                 );
//               },
//               child: CommonAggrementCard(
//                   title: 'Management Agreement', Subtitle: '01/15/24'),
//             ),
//             IconButton(onPressed: (){
//               pickFile();
//             }, icon: Icon(Icons.edit_document))
//             // 8.verticalSpace,
//             //   CommonAggrementCard(
//             // title: 'Residential Tenancy Agreement', Subtitle: '05/07/24'),
//             // 8.verticalSpace,
//             //    CommonAggrementCard(
//             // title: 'Exclusive Sales Agency', Subtitle: '01/15/24'),
//           ],
//         ),
//       ),
//       bottomNavigationBar: Container(
//         padding: EdgeInsets.only(top: 10),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.1),
//               blurRadius: 10,
//               spreadRadius: 2,
//               offset: Offset(0, -3),
//             ),
//           ],
//         ),
//         child: BottomAppBar(
//           color: Colors.white,
//           child: PrimaryButton(
//             isLoading: ref.watch(propertyNotifierProvider).isLoading,
//             title: 'Next',
//             onClick: () {},
//           ),
//         ),
//       ),
//     );
//   }
// }

class CommonAggrementCard extends StatefulWidget {
  final String title;
  final String Subtitle;
  const CommonAggrementCard(
      {super.key, required this.title, required this.Subtitle});

  @override
  State<CommonAggrementCard> createState() => _CommonAggrementCardState();
}

class _CommonAggrementCardState extends State<CommonAggrementCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      // width: 343,
      // height: 73.h,
      decoration: ShapeDecoration(
        color: const Color(0xFFEBF3F5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/contract.png',
            height: 32.h,
            width: 32.w,
          ),
          7.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  widget.title,
                  style: TextStyle(
                    color: const Color(0xFF1A1B28),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                4.verticalSpace,
                Text(
                  widget.Subtitle,
                  style: TextStyle(
                    color: const Color(0xFF494D60),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          5.horizontalSpace,
          Padding(
            padding: EdgeInsets.only(right: 10.sp),
            child: Align(
              alignment: Alignment.bottomRight,
              child: PopupMenuButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xFFE2E2E2),
                    )),
                itemBuilder: (context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                      // value: 'Edit',
                      child: SizedBox(
                    width: 126,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PDFViewerScreen(
                                pdfAssetPath: 'assets/pdfs/file.pdf',
                              ),
                            ));
                      },
                      child: Text(
                        'View ',
                        style: TextStyle(
                          color: const Color(0xFF164C63),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )),
                  PopupMenuItem<String>(
                      // value: 'Edit',
                      child: Text(
                    'Delete',
                    style: TextStyle(
                      color: const Color(0xFF164C63),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                ],
                child: Image.asset(
                  'assets/images/more-circle.png',
                  height: 24.h,
                  width: 24.w,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

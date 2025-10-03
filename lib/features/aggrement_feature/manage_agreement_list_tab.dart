import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/utils/appsnackbar.dart';
import 'package:foreal_property/features/aggrement_feature/agreement.dart';
import 'package:foreal_property/features/aggrement_feature/all_manage_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_agreement_doc_list.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_management_agreement.dart';
import 'package:go_router/go_router.dart';

class ManageAgreementListTab extends ConsumerStatefulWidget {
  const ManageAgreementListTab({super.key});

  @override
  ConsumerState<ManageAgreementListTab> createState() =>
      _ManageAgreementListTabState();
}

class _ManageAgreementListTabState
    extends ConsumerState<ManageAgreementListTab> {
  @override
  void initState() {
    super.initState();
    ref.listenManual(deleteAgreementProvider, (_, next) {
      next.whenOrNull(
        data: (data) {
          if (data != null && data.isNotEmpty)
            return Utils.showSnackBar(context, data ?? "");
        },
        error: (err, st) => Utils.showSnackBar(context, err.toString()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFFEBF3F5),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Customappbar(title: 'Manage Agreement'),
        ),
        body: TabBarView(
          children: [
            AllManageAgreement(),
            AllManageAgreement(
              isCompleted: false,
            ),
            AllManageAgreement(
              isCompleted: true,
            )
          ],
        ),
      ),
    );
  }
}

class Customappbar extends ConsumerStatefulWidget {
  final String title;
  const Customappbar({super.key, required this.title});

  @override
  ConsumerState<Customappbar> createState() => _CustomappbarState();
}

class _CustomappbarState extends ConsumerState<Customappbar> {
  bool isSelectd = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: InkWell(
            onTap: () {
              // context.navPush(const AgreementView());
              context.pushNamed('agreement');
            },
            child: Image.asset(
              'assets/images/addicon.png',
              height: 34.h,
              width: 34.w,
            ),
          ),
        ),
      ],
      title: Text(
        widget.title,
        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
      ),
      bottom: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: const Color(0xFF164C63),
        unselectedLabelColor: const Color(0xFF494D60),
        indicatorColor: const Color(0xFF75CBCD),
        dividerColor: const Color(0xFFE2E2E2),
        labelStyle: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
        unselectedLabelStyle:
            TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
        tabs: const [
          Tab(
            child: Text('All'),
          ),
          Tab(
            child: Text('Pending'),
          ),
          Tab(
            child: Text('Completed'),
          ),
        ],
        onTap: (val) {
          final agreementDoc = ref.read(getAgreementDocListProvider.notifier);
          switch (val) {
            case 0:
              agreementDoc.getDocType();
              break;
            case 1:
              agreementDoc.getDocType(isCompleted: false);
              break;
            case 2:
              agreementDoc.getDocType(isCompleted: true);
              break;
          }
        },
      ),
    );
  }
}

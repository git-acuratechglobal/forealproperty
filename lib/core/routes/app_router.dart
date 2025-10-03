import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/features/inspection_feature/pages/plan_inspection/plan_inspection.dart';
import 'package:go_router/go_router.dart';
import '../../features/aggrement_feature/agreement.dart';
import '../../features/aggrement_feature/manage_agreement_list_tab.dart';
import '../../features/aggrement_feature/manage_agreement_tab.dart';
import '../../features/aggrement_feature/management_agreement/manage_agreement.dart';
import '../../features/aggrement_feature/management_agreement/manage_agreement2.dart';
import '../../features/aggrement_feature/management_agreement/manage_agreement3.dart';
import '../../features/aggrement_feature/management_agreement/manage_agreement4.dart';
import '../../features/aggrement_feature/management_agreement/manage_agreement5.dart';
import '../../features/aggrement_feature/management_agreement/manage_agreement6.dart';
import '../../features/aggrement_feature/sales_agency_agreement/sales_agreement1.dart';
import '../../features/aggrement_feature/sales_agency_agreement/sales_agreement2.dart';
import '../../features/aggrement_feature/sales_agency_agreement/sales_agreement3.dart';
import '../../features/aggrement_feature/sales_agency_agreement/sales_agreement4.dart';
import '../../features/aggrement_feature/sales_agency_agreement/sales_agreement5.dart';
import '../../features/aggrement_feature/sales_agency_agreement/sales_agreement6.dart';
import '../../features/aggrement_feature/tenancy_agreement/tenancy_agreement1.dart';
import '../../features/aggrement_feature/tenancy_agreement/tenancy_agreement2.dart';
import '../../features/aggrement_feature/tenancy_agreement/tenancy_agreement3.dart';
import '../../features/aggrement_feature/tenancy_agreement/tenancy_agreement4.dart';
import '../../features/auth_feature/pages/login_page/login_screen.dart';
import '../../features/home_features/pages/home/bottomnavbar.dart';
import '../../features/inspection_feature/inspection.dart';
import '../../features/inspection_feature/pages/add_inspection/add_inspection.dart';
import '../../features/inspection_feature/pages/property_inspection_details/inspection_details_tab.dart';
import '../../onboarding/welcome_screeen1.dart';
import '../../splash_screen/splash_screen1.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) => const SplashScreen1(),
      ),
      GoRoute(
        path: '/welcome',
        name: 'welcome',
        builder: (context, state) => const WelcomeScreen1(),
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
          path: '/home',
          name: 'home',
          builder: (context, state) => const HomeScreen(),
          routes: [
            GoRoute(
                path: 'management-agreement',
                name: 'management-agreement',
                builder: (context, state) => const ManageAgreementListTab(),
                routes: [
                  GoRoute(
                    path: 'agreement',
                    name: 'agreement',
                    builder: (context, state) => const AgreementView(),
                    routes: [
                      GoRoute(
                        path: 'manage-agreement-2',
                        name: 'manage-agreement-2',
                        builder: (context, state) =>
                            const ManangeAgreementView(),
                      ),
                      GoRoute(
                        path: 'manage-agreement-1',
                        name: 'manage-agreement-1',
                        builder: (context, state) => const ManangeAgreement(),
                      ),
                      GoRoute(
                        path: 'manage-agreement-3',
                        name: 'manage-agreement-3',
                        builder: (context, state) => const ManangeAgreement3(),
                      ),
                      GoRoute(
                        path: 'manage-agreement-4',
                        name: 'manage-agreement-4',
                        builder: (context, state) => const ManangeAgreement4(),
                      ),
                      GoRoute(
                        path: 'manage-agreement-5',
                        name: 'manage-agreement-5',
                        builder: (context, state) => const ManageAgreement5(),
                      ),
                      GoRoute(
                        path: 'manage-agreement-6',
                        name: 'manage-agreement-6',
                        builder: (context, state) => const ManageAgreement6(),
                      ),
                      GoRoute(
                        path: 'tenancy-agreement-1',
                        name: 'tenancy-agreement-1',
                        builder: (context, state) => const TenancyAgreement1(),
                      ),
                      GoRoute(
                        path: 'tenancy-agreement-2',
                        name: 'tenancy-agreement-2',
                        builder: (context, state) => const TenancyAgreement2(),
                      ),
                      GoRoute(
                        path: 'tenancy-agreement-3',
                        name: 'tenancy-agreement-3',
                        builder: (context, state) => const TenancyAgreement3(),
                      ),
                      GoRoute(
                        path: 'tenancy-agreement-4',
                        name: 'tenancy-agreement-4',
                        builder: (context, state) => const TenancyAgreement4(),
                      ),
                      GoRoute(
                        path: 'sales-agreement-1',
                        name: 'sales-agreement-1',
                        builder: (context, state) => const SalesAgreement1(),
                      ),
                      GoRoute(
                        path: 'sales-agreement-2',
                        name: 'sales-agreement-2',
                        builder: (context, state) => const SalesAgreement2(),
                      ),
                      GoRoute(
                        path: 'sales-agreement-3',
                        name: 'sales-agreement-3',
                        builder: (context, state) => const SalesAgreement3(),
                      ),
                      GoRoute(
                        path: 'sales-agreement-4',
                        name: 'sales-agreement-4',
                        builder: (context, state) => const SalesAgreement4(),
                      ),
                      GoRoute(
                        path: 'sales-agreement-5',
                        name: 'sales-agreement-5',
                        builder: (context, state) => const SalesAgreement5(),
                      ),
                      GoRoute(
                        path: 'sales-agreement-6',
                        name: 'sales-agreement-6',
                        builder: (context, state) => const SalesAgreement6(),
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'manage-agreement-tab/:propertyId/:agreementType',
                    name: 'manage-agreement-tab',
                    builder: (context, state) {
                      final propertyId =
                          state.pathParameters['propertyId'] ?? '';
                      final agreementType = int.tryParse(
                              state.pathParameters['agreementType'] ?? '1') ??
                          1;
                      return ManageAgreementTab(
                        propertyId: propertyId,
                        agreementType: agreementType,
                      );
                    },
                  ),
                ]),
            GoRoute(
                path: 'inspection',
                name: 'inspection',
                builder: (context, state) => const InspectionScreen(),
                routes: [
                  GoRoute(
                    path: 'add-inspection',
                    name: 'add-inspection',
                    builder: (context, state) => const AddInspection(),
                  ),
                  GoRoute(
                    path: 'plan-inspection',
                    name: 'plan-inspection',
                    builder: (context, state) => const PlanInspection(),
                  ),
                  GoRoute(
                      path:
                          'inspection-details/:inspectionId/:inspectionUniqueId',
                      name: 'inspection-details',
                      builder: (context, state) {
                        final inspectionId = int.tryParse(
                            state.pathParameters['inspectionId'] ?? '0');
                        final inspectionUniqueId =
                            state.pathParameters['inspectionUniqueId'] ?? '';
                        return InspectionDetailsTab(
                          inspectionId: inspectionId ?? 0,
                          inspectionUniqueId: inspectionUniqueId,
                        );
                      })
                ])
          ]),
    ],
  );
});

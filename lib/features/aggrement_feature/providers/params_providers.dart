import 'package:flutter/material.dart';
import 'package:foreal_property/core/services/agreement_service/agreement_service.dart';
import 'package:foreal_property/features/aggrement_feature/model/sales_agreement_model.dart';
import 'package:foreal_property/features/aggrement_feature/params/update_tenancy_agreement_params.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../model/management_agreement_model.dart';
import '../model/tenancy_agreement_model.dart';
import '../params/update_management_agreement_params.dart';
import '../params/update_sales_agreement_params.dart';
part 'params_providers.g.dart';

class OwnerControllers {
  final fName = TextEditingController();
  final lName = TextEditingController();
  final phone = TextEditingController();
  final email = TextEditingController();
}

@Riverpod(keepAlive: true)
class UpdateManagementAgreementParam extends _$UpdateManagementAgreementParam {
  final fNameController = TextEditingController();
  final lNameController = TextEditingController();
  final phoneController = TextEditingController();
  final contactEmailController = TextEditingController();
  final addressController = TextEditingController();
  final abnController = TextEditingController();
  final addressController2 = TextEditingController();
  final rentController = TextEditingController();
  final bondController = TextEditingController();
  bool propertyFurnished = false;
  bool propertyUnfurnished = false;
  List<OwnerControllers?> ownersControllers = [];

  void dispose() {
    fNameController.text = '';
    lNameController.text = '';
    phoneController.text = '';
    contactEmailController.text = '';
    addressController.text = '';
    abnController.text = '';
    addressController2.text = '';
    rentController.text = '';
    bondController.text = '';
    ownersControllers.clear();
  }

  @override
  UpdateManagementAgreementParams build() {
    return UpdateManagementAgreementParams.empty();
  }

  void addNewOwner() {
    state = state.copyWith(ContactlistModel: [
      ...state.ContactlistModel ?? [],
      const ContactlistModel2()
    ]);
    ownersControllers.add(OwnerControllers());
  }

  void removeOwner(int index) {
    final updated = [...state.ContactlistModel!]..removeAt(index);
    state = state.copyWith(ContactlistModel: updated);
    ownersControllers.removeAt(index);
  }

  void updateOwner(int index, ContactlistModel2? owner) {
    final updated = [...state.ContactlistModel!];
    updated[index] = owner!;
    state = state.copyWith(ContactlistModel: updated);
  }

  void updateOwnerFName(int index, String name) {
    final list = [...?state.ContactlistModel];
    list[index] = list[index].copyWith(fName: name);
    state = state.copyWith(ContactlistModel: list);
  }

  void updateOwnerLName(int index, String name) {
    final ownerList = [...?state.ContactlistModel];
    ownerList[index] = ownerList[index].copyWith(lName: name);
    state = state.copyWith(ContactlistModel: ownerList);
  }

  void updateOwnerPhone(int index, String phone) {
    final ownerList = [...?state.ContactlistModel];
    ownerList[index] =
        ownerList[index].copyWith(phone: phone, mobileNumber: phone);
    state = state.copyWith(ContactlistModel: ownerList);
  }

  void updateOwnerEmail(int index, String email) {
    final ownerList = [...?state.ContactlistModel];
    ownerList[index] = ownerList[index].copyWith(contactEmail: email);
    state = state.copyWith(ContactlistModel: ownerList);
  }

  void updateParam(
      UpdateManagementAgreementParams Function(
              UpdateManagementAgreementParams p)
          updateParam) {
    state = updateParam(state);
  }

  void updatePropertyFurnised(bool value) {
    propertyFurnished = value;
    state = state.copyWith(PropertyFurnished: value);
  }

  void updatePropertyUnfurnished(bool value) {
    propertyUnfurnished = value;
    state = state.copyWith(PropertyUnfurnished: value);
  }

  void updateFName(String name) {
    state = state.copyWith(
        PrimarycontactModel: state.PrimarycontactModel?.copyWith(
      fName: name,
    ));
  }

  void updateLName(String name) {
    state = state.copyWith(
        PrimarycontactModel: state.PrimarycontactModel?.copyWith(
            lName: name,
            getFullName: state.PrimarycontactModel?.lName ?? "" + name));
  }

  void updatePhone(String phone) {
    state = state.copyWith(
        PrimarycontactModel: state.PrimarycontactModel?.copyWith(
            mobileNumber: phone, phone: phone));
  }

  void updateEmail(String email) {
    state = state.copyWith(
        PrimarycontactModel:
            state.PrimarycontactModel?.copyWith(contactEmail: email));
  }

  void updateAddress(String address) {
    state = state.copyWith(
        PrimarycontactModel: state.PrimarycontactModel?.copyWith(
            address: address, getFullAddress: " "));
  }

  void updateABN(String abn) {
    state = state.copyWith(
        PrimarycontactModel: state.PrimarycontactModel?.copyWith(abn: abn));
  }

  void updateRent(String rent) {
    state = state.copyWith(Rent: int.parse(rent));
  }

  void updateBond(String bond) {
    state = state.copyWith(BondAmount: int.parse(bond));
  }

  void updateFromApi(ManagementAgreementModel data) {
    state = state.copyWith(
        AgreementId: data.id,
        ContactlistModel: data.contactlistModel
            ?.map((contct) => ContactlistModel2(
                  fName: contct.fName,
                  lName: contct.lName,
                  mobileNumber: contct.mobileNumber,
                  contactEmail: contct.contactEmail,
                  address: contct.address,
                  abn: contct.abn,
                ))
            .toList());
    fNameController.text = data.primarycontactModel?.fName ?? "";
    lNameController.text = data.primarycontactModel?.lName ?? "";
    phoneController.text = data.primarycontactModel?.mobileNumber ?? "";
    contactEmailController.text = data.primarycontactModel?.contactEmail ?? "";
    addressController.text = data.primarycontactModel?.getFullAddress ?? "";
    abnController.text = data.primarycontactModel?.abn ?? "";
    addressController2.text = data.propertyAddress ?? "";
    rentController.text = data.rent != null ? data.rent.toString() : "";
    bondController.text =
        data.bondAmount != null ? data.bondAmount.toString() : "";
    propertyFurnished = data.propertyFurnished ?? false;
    propertyUnfurnished = data.propertyUnfurnished ?? false;
    final contactOwnerList = data.contactlistModel ?? [];
    for (final owner in contactOwnerList) {
      final ctrl = OwnerControllers();
      ctrl.fName.text = owner.fName ?? "";
      ctrl.lName.text = owner.lName ?? "";
      ctrl.phone.text = owner.mobileNumber ?? "";
      ctrl.email.text = owner.contactEmail ?? "";
      ownersControllers.add(ctrl);
    }
    state = state.copyWith(
        PropertyFurnished: propertyFurnished,
        PropertyUnfurnished: propertyUnfurnished);
  }

  void printData() {
    print(state);
  }
}

@Riverpod(keepAlive: true)
class ManagementAgreementPeriodDetailsParam
    extends _$ManagementAgreementPeriodDetailsParam {
  @override
  ManagementAgreementPeriodDetailsParams build() {
    return const ManagementAgreementPeriodDetailsParams();
  }

  void updateParam(
      ManagementAgreementPeriodDetailsParams Function(
              ManagementAgreementPeriodDetailsParams p)
          updateParam) {
    state = updateParam(state);
  }

  void updateDataFromApi(ManagementAgreementModel data) {
    state = state.copyWith(
      AgreementId: data.id,
      AgreementDate: data.agreementDate,
      LeasePremisesAtMarketRent: data.leasePremisesAtMarketRent,
      ReviewRentBfrRLease: data.reviewRentBfrRLease,
      ReferToPrincipalForReLease: data.referToPrincipalForReLease,
    );
  }
}

@Riverpod(keepAlive: true)
class ManagementAgreementFeeChargesParam
    extends _$ManagementAgreementFeeChargesParam {
  @override
  ManagementAgreementFeeChargesParams build() {
    return const ManagementAgreementFeeChargesParams();
  }

  void updateParam(
      ManagementAgreementFeeChargesParams Function(
              ManagementAgreementFeeChargesParams p)
          updateParam) {
    state = updateParam(state);
  }

  void updateDataFromApi(ManagementAgreementModel data) {
    state = state.copyWith(
      AgreementId: data.id,
      InitialWeekRent: data.initialWeekRent,
      PrprtyLeasdPrdDuringAgrmnt: data.prprtyLeasdPrdDuringAgrmnt,
      PrprtyLeasdPrdWithinMonth: data.prprtyLeasdPrdWithinMonth,
      ManagementFee: data.managementFee,
      MarketingFee: data.marketingFee,
      AdministrationFee: data.administrationFee,
      ManagementFeeGST: data.managementFeeGst,
    );
  }
}

@Riverpod(keepAlive: true)
class ManagementAgreementTribunalParam
    extends _$ManagementAgreementTribunalParam {
  @override
  ManagementAgremntTribunalParams build() {
    return const ManagementAgremntTribunalParams();
  }

  void updateParam(
      ManagementAgremntTribunalParams Function(
              ManagementAgremntTribunalParams p)
          updateParam) {
    state = updateParam(state);
  }

  void updateDataFromApi(ManagementAgreementModel data) {
    state = state.copyWith(
        AgreementId: data.id,
        OfficeExpenses: data.officeExpenses,
        Redirect: data.redirect,
        STRATA: data.strata,
        Water: data.water,
        CouncilRates: data.councilRates,
        Insurance: data.insurance,
        PAccountName: data.pAccountName,
        PBSB: data.pbsb,
        PAccountNo: data.pAccountNo,
        ApplicationFeesForUtilites: data.applicationFeesForUtilites);
  }
}

@Riverpod(keepAlive: true)
class ManagementAgreementPromotionParam
    extends _$ManagementAgreementPromotionParam {
  @override
  ManagementAgremntPromotionParams build() {
    return const ManagementAgremntPromotionParams();
  }

  void updateParam(
      ManagementAgremntPromotionParams Function(
              ManagementAgremntPromotionParams p)
          updateParam) {
    state = updateParam(state);
  }

  void updateDataFromApi(ManagementAgreementModel data) {
    state = state.copyWith(
      AgreementId: data.id,
      isListedOnREA: data.isListedOnRea ?? false,
      isListedOnDomain: data.isListedOnDomain ?? false,
      SocialMedia: data.socialMedia ?? false,
      Signboard: data.signboard ?? false,
      ThirdPartyName: data.thirdPartyName ?? '',
      AmountOfRebateDiscount: data?.amountOfRebateDiscount.toString() ?? '',
      ObtainReferenceFromTenant: data.obtainReferenceFromTenant ?? false,
      EnterIntoSignTenacyAgrmnt: data.enterIntoSignTenacyAgrmnt ?? false,
      UndertakeInspection: data.undertakeInspection ?? false,
      EffectRepairMaintainProprty: data.effectRepairMaintainProprty ?? false,
      PayDisbursemnt: data.payDisbursemnt ?? false,
      CollectReceiveRent: data.collectReceiveRent ?? false,
      ServeNoticeForBreachTenancy: data.serveNoticeForBreachTenancy ?? false,
      UndrtakeStpsToRecvrMony: data.undrtakeStpsToRecvrMony ?? false,
      RepresentPrincipalCourt: data.representPrincipalCourt ?? false,
      PayAccountsForAmount: data.payAccountsForAmount ?? false,
      AdvertisePropertyLetting: data.advertisePropertyLetting ?? false,
      ReviewRentEndTenancy: data.reviewRentEndTenancy ?? false,
    );
  }
}

@Riverpod(keepAlive: true)
class ManagementAgreementRepairDetailsParam
    extends _$ManagementAgreementRepairDetailsParam {
  @override
  ManagementAgremntRepairDetailsParams build() {
    return const ManagementAgremntRepairDetailsParams();
  }

  void updateParam(
      ManagementAgremntRepairDetailsParams Function(
              ManagementAgremntRepairDetailsParams p)
          updateParam) {
    state = updateParam(state);
  }

  void updateDataFromApi(ManagementAgreementModel data) {
    state = state.copyWith(
      AgreementId: data.id,
      TradesmanPayment: data?.tradesmanPayment.toString() ?? '',
      SupplyUrgentRepairToTenant: data.supplyUrgentRepairToTenant ?? false,
      LooseFillAsbestosInstallation:
          data.looseFillAsbestosInstallation ?? false,
      SwimmingPoolRegistered: data.swimmingPoolRegistered ?? false,
      SmokeAlarm: data.smokeAlarm ?? false,
      HealthIssues: data.healthIssues ?? false,
      Flooding: data.flooding ?? false,
      Bushfire: data.bushfire ?? false,
      SeriousViolentCrime: data.seriousViolentCrime ?? false,
      ParkingRestriction: data.parkingRestriction ?? false,
      ShareDriveway: data.shareDriveway ?? false,
      AffectdFlooding: data.affectdFlooding ?? false,
      AffectdBushfire: data.affectdBushfire ?? false,
      AffectdSeriousViolent: data.affectdSeriousViolent ?? false,
      IsContractForSalePremises: data.isContractForSalePremises ?? false,
      IsProposelToSell: data.isProposelToSell ?? false,
      HasMortgageeCommenced: data.hasMortgageeCommenced ?? false,
      isMortgageeTakgActnPossssion: data.isMortgageeTakgActnPossssion ?? false,
      WaterEfficiencyByNSW: data.waterEfficiencyByNsw ?? false,
      PrincipalWarrantsSmokeAlarm: data.principalWarrantsSmokeAlarm ?? false,
      AgencyId: data.agencyId ?? 0,
    );
  }
}

class TenantControllers {
  final searchController = TextEditingController();
  final fName = TextEditingController();
  final lName = TextEditingController();
  final phone = TextEditingController();
  final email = TextEditingController();
}

@Riverpod(keepAlive: true)
class UpdateTenantInAgreement extends _$UpdateTenantInAgreement {
  List<TenantControllers?> tenantControllers = [
    TenantControllers(),
  ];
  void dispose() {
    tenantControllers.clear();
    tenantControllers.add(TenantControllers());
  }

  @override
  TenantUpdateParams build() {
    return const TenantUpdateParams();
  }

  void updateParam(
      TenantUpdateParams Function(TenantUpdateParams p) updateParam) {
    state = updateParam(state);
  }

  void addNewTenant() {
    state = state
        .copyWith(TenantList: [...state.TenantList ?? [], const TenantList2()]);
    tenantControllers.add(TenantControllers());
  }

  void updateDetails(String contactId, int index) async {
    final contactData = await ref
        .watch(agreementServiceProvider)
        .getTenantContactDetails(contactId);
    final updatedList = <TenantList2>[...(state.TenantList ?? [])];

    updatedList[index] = updatedList[index].copyWith(
        contactId: contactData.contactId,
        tenantFname: contactData.firstName,
        tenantLname: contactData.lastName,
        tenantEmail: contactData.email,
        tenantMobile: contactData.mobileNumber,
        contactUniqueId: contactData.contactUniqueId);

    state = state.copyWith(TenantList: updatedList);
    if (index < tenantControllers.length) {
      final controller = tenantControllers[index];
      controller?.fName.text = contactData.firstName ?? '';
      controller?.lName.text = contactData.lastName ?? '';
      controller?.phone.text = contactData.mobileNumber ?? '';
      controller?.email.text = contactData.email ?? '';
    }
  }

  void removeTenant(int index) {
    final updated = [...state.TenantList!]..removeAt(index);
    state = state.copyWith(TenantList: updated);
    tenantControllers.removeAt(index);
  }

  void updateTenantName(String name, int index) {
    final updated = [...state.TenantList!];
    updated[index] = updated[index].copyWith(tenantFname: name);
    state = state.copyWith(TenantList: updated);
  }

  void updateTenantLName(String name, int index) {
    final updated = [...state.TenantList!];
    updated[index] = updated[index].copyWith(tenantLname: name);
    state = state.copyWith(TenantList: updated);
  }

  void updateTenantPhone(String phone, int index) {
    final updated = [...state.TenantList!];
    updated[index] = updated[index].copyWith(tenantMobile: phone);
    state = state.copyWith(TenantList: updated);
  }

  void updateTenantEmail(String email, int index) {
    final updated = [...state.TenantList!];
    updated[index] = updated[index].copyWith(tenantEmail: email);
    state = state.copyWith(TenantList: updated);
  }

  void updateFromApi(TenantAgreementModel data) {
    state = state.copyWith(
        AgreementId: data.agreeementId,
        AgencyId: data.agencyId,
        AgentId: data.agentId,
        PropertyId: data.propertyId,
        TenantFolioId: data.tenantFolioId,
        TenantList: data.tenants
                ?.map((e) => TenantList2(
                    tenantFname: e.tenantFname,
                    tenantLname: e.tenantLname,
                    tenantMobile: e.tenantMobile,
                    tenantEmail: e.tenantEmail,
                    contactUniqueId: e.contactUId))
                .toList() ??
            [const TenantList2()]);
    final tenantsList = data.tenants ?? [];
    tenantControllers.clear();
    if (tenantsList.isNotEmpty) {
      for (final owner in tenantsList) {
        final ctrl = TenantControllers();
        ctrl.fName.text = owner.tenantFname ?? "";
        ctrl.lName.text = owner.tenantLname ?? "";
        ctrl.phone.text = owner.tenantMobile ?? "";
        ctrl.email.text = owner.tenantEmail ?? "";
        tenantControllers.add(ctrl);
      }
    } else {
      tenantControllers.add(TenantControllers());
    }
  }
}

@Riverpod(keepAlive: true)
class UpdateLandlordTenantDetailsParam
    extends _$UpdateLandlordTenantDetailsParam {
  @override
  UpdateLandlordTenantDetailsParams build() {
    return const UpdateLandlordTenantDetailsParams();
  }

  void updateParam(
      UpdateLandlordTenantDetailsParams Function(
              UpdateLandlordTenantDetailsParams p)
          updateParam) {
    state = updateParam(state);
  }

  void updateFromApi(TenantAgreementModel data) {
    state = state.copyWith(
      AgreementId: data.agreeementId,
      LandlordAgentName: data.landlordAgentName,
      LandlordBusinessAddress: data.landlordBusinessAddress,
      LandlordAgentPostcode: data.landlordAgentPostcode,
      LandlordAgentSuburb: data.landlordAgentSuburb,
      LandlordAgentState: data.landlordAgentState,
      LandlordAgentContact: data.landlordAgentContact,
      TenantAgentName: data.tenantAgentName,
      TenantBusinessAddress: data.tenantBusinessAddress,
      TenantAgentPostcode: data.tenantAgentPostcode,
      TenantAgentSuburb: data.tenantAgentSuburb,
      TenantAgentState: data.tenantAgentState,
      TenantAgentContact: data.tenantAgentContact,
      PropertySuburb: data.propertySuburb,
      PropertyPostCode: data.propertyPostCode,
      PropertyState: data.propertyState,
      PropertyAddress: data.propertyAddress,
      OtherSpace: data.otherSpace,
      TermsAgreement: data.termsAgreement,
      TermsAgreementNote: data.termsAgreementNote,
      AgreementStart: data.formateAgreementStart,
      AgreementEnd: data.formateAgreementEnd,
    );
  }
}

@Riverpod(keepAlive: true)
class UpdateRentBondParam extends _$UpdateRentBondParam {
  @override
  UpdateRentBondParams build() {
    return const UpdateRentBondParams();
  }

  void updateParam(
      UpdateRentBondParams Function(UpdateRentBondParams p) updateParam) {
    state = updateParam(state);
  }

  void updateFromApi(TenantAgreementModel data) {
    state = state.copyWith(
      AgreementId: data.agreeementId,
      RentAmount: data.rentAmount,
      Period: data.period,
      LeaseCommencement: data.fromatedLease,
      BSB: data.bsb,
      AccountNo: data.accountNo,
      AccountName: data.accountName,
      PaymentReference: data.paymentReference,
      PaymentTo: data.paymentTo,
      PaymentAt: data.paymentAt,
      PaymentFollows: data.paymentFollows,
      BondAmount: data.bondAmount,
      BondAmountProvidedTo: data.bondAmountProvidedTo,
    );
  }
}

@Riverpod(keepAlive: true)
class UpdateTenantAgreementInfoParam extends _$UpdateTenantAgreementInfoParam {
  @override
  UpdateTenantAgreementInfoParams build() {
    return const UpdateTenantAgreementInfoParams();
  }

  void updateParam(
      UpdateTenantAgreementInfoParams Function(
              UpdateTenantAgreementInfoParams p)
          update) {
    state = update(state);
  }

  void updateFromApi(TenantAgreementModel data) {
    state = state.copyWith(
      AgreementId: data.agreeementId,
      AgencyId: data.agencyId,
      MaximumTenant: data.maximumTenant,
      ElectricalRepair: data.electricalRepair,
      ElectricalRepairContact: data.electricalRepairContact,
      PlumbingRepair: data.plumbingRepair,
      PlumbingRepairContact: data.plumbingRepairContact,
      OtherRepair: data.otherRepair,
      OtherRepairContact: data.otherRepairContact,
      PayWaterBillSeperately: data.payWaterBillSeperately,
      IsElectricitySupplied: data.isElectricitySupplied,
      IsGasSupplied: data.isGasSupplied,
      SmokeAlarmType: data.smokeAlarmType.toString(),
      SmokeAlarmBatteryReplacable: data.smokeAlarmBatteryReplacable,
      BatteryType: data.batteryType,
      BackupBatteryReplacable: data.backupBatteryReplacable,
      TypeOfBackupBattery: data.typeOfBackupBattery,
      StrataRsponsibleForReplacement: data.strataRsponsibleForReplacement,
      StrataByLawsApplicable: data.strataByLawsApplicable,
      DoesLandlordConsentElectronic: data.doesLandlordConsentElectronic,
      LandlordElctrcConsentEmail: data.landlordElctrcConsentEmail,
      DoesTenantConsentElectronic: data.doesTenantConsentElectronic,
      PetDetails: data.petDetails,
      AdditionalComments: data.additionalComments,
    );
  }
}

class PropertyOwnerControllers {
  final fName = TextEditingController();
  final lName = TextEditingController();
  final phone = TextEditingController();
  final email = TextEditingController();
}

@Riverpod(keepAlive: true)
class UpdateSalesAgreementParam extends _$UpdateSalesAgreementParam {
  final fNameController = TextEditingController();
  final lNameController = TextEditingController();
  final phoneController = TextEditingController();
  final contactEmailController = TextEditingController();
  final addressController = TextEditingController();
  final abnController = TextEditingController();
  bool registeredForGst = false;
  List<PropertyOwnerControllers?> propertyOwnerControllers = [];

  void dispose() {
    fNameController.text = '';
    lNameController.text = '';
    phoneController.text = '';
    contactEmailController.text = '';
    addressController.text = '';
    abnController.text = '';
    propertyOwnerControllers.clear();
  }

  @override
  UpdateSalesAgreementParams build() {
    return const UpdateSalesAgreementParams();
  }

  void addNewOwner() {
    state = state.copyWith(ContactlistModel: [
      ...state.ContactlistModel ?? [],
      const ContactlistModel2()
    ]);
    propertyOwnerControllers.add(PropertyOwnerControllers());
  }

  void updateOwnerFName(int index, String name) {
    final list = [...?state.ContactlistModel];
    list[index] = list[index].copyWith(fName: name);
    state = state.copyWith(ContactlistModel: list);
  }

  void updateOwnerLName(int index, String name) {
    final ownerList = [...?state.ContactlistModel];
    ownerList[index] = ownerList[index].copyWith(lName: name);
    state = state.copyWith(ContactlistModel: ownerList);
  }

  void updateOwnerPhone(int index, String phone) {
    final ownerList = [...?state.ContactlistModel];
    ownerList[index] =
        ownerList[index].copyWith(phone: phone, mobileNumber: phone);
    state = state.copyWith(ContactlistModel: ownerList);
  }

  void updateOwnerEmail(int index, String email) {
    final ownerList = [...?state.ContactlistModel];
    ownerList[index] = ownerList[index].copyWith(contactEmail: email);
    state = state.copyWith(ContactlistModel: ownerList);
  }

  void removeOwner(int index) {
    final updated = [...state.ContactlistModel!]..removeAt(index);
    state = state.copyWith(ContactlistModel: updated);
    propertyOwnerControllers.removeAt(index);
  }

  void updateFName(String? name) {
    state = state.copyWith(
        PrimarycontactModel: state.PrimarycontactModel?.copyWith(
      fName: name,
    ));
  }

  void updateLName(String? name) {
    state = state.copyWith(
        PrimarycontactModel: state.PrimarycontactModel?.copyWith(
            lName: name,
            getFullName:
                state.PrimarycontactModel?.fName ?? "" + "${name ?? ""}"));
  }

  void updatePhone(String? phone) {
    state = state.copyWith(
        PrimarycontactModel: state.PrimarycontactModel?.copyWith(
            mobileNumber: phone, phone: phone));
  }

  void updateEmail(String? email) {
    state = state.copyWith(
        PrimarycontactModel:
            state.PrimarycontactModel?.copyWith(contactEmail: email));
  }

  void updateAddress(String? address) {
    state = state.copyWith(
        PrimarycontactModel: state.PrimarycontactModel?.copyWith(
            address: address, getFullAddress: address));
  }

  void updateABN(String? abn) {
    state = state.copyWith(
        PrimarycontactModel: state.PrimarycontactModel?.copyWith(abn: abn));
  }

  void updateFromApi(SalesAgreementModel data) {
    state = state.copyWith(
        AgreementId: data.id,
        ContactlistModel: data.contactlistModel
            ?.map((e) => ContactlistModel2(
                fName: e.fName,
                lName: e.lName,
                mobileNumber: e.mobileNumber,
                contactEmail: e.contactEmail,
                address: e.address,
                abn: e.abn,
                phone: e.phone))
            .toList(),
        PrimarycontactModel: PrimarycontactModel2(
          fName: data.primarycontactModel?.fName,
          lName: data.primarycontactModel?.lName,
          mobileNumber: data.primarycontactModel?.mobileNumber,
          contactEmail: data.primarycontactModel?.contactEmail,
          address: data.primarycontactModel?.address,
          abn: data.primarycontactModel?.abn,
          acn: data.primarycontactModel?.acn,
          postcode: data.primarycontactModel?.postcode,
          regions: data.primarycontactModel?.regions,
          contactType: data.primarycontactModel?.contactType,
          contactUniqueId: data.primarycontactModel?.contactUniqueId,
          landlineNumber: data.primarycontactModel?.landlineNumber,
          landlineNumber1: data.primarycontactModel?.landlineNumber1,
          companyName: data.primarycontactModel?.companyName,
          isUserVerified: data.primarycontactModel?.isUserVerified ?? false,
          isProofSubmited: data.primarycontactModel?.isProofSubmited ?? false,
          getFullAddress: data.primarycontactModel?.getFullAddress,
          getFullName: data.primarycontactModel?.getFullName,
          ownerId: data.primarycontactModel?.ownerId,
          contactUId: data.primarycontactModel?.contactUId,
          isPrimary: data.primarycontactModel?.isPrimary ?? true,
          contactName: data.primarycontactModel?.contactName,
          name: data.primarycontactModel?.name,
          firstName: data.primarycontactModel?.firstName,
          lastName: data.primarycontactModel?.lastName,
          phone: data.primarycontactModel?.phone,
          fromDate: data.primarycontactModel?.fromDate,
          toDate: data.primarycontactModel?.toDate,
          title: data.primarycontactModel?.title,
          isVerificationLinkSend:
              data.primarycontactModel?.isVerificationLinkSend ?? false,
          typeIAM: data.primarycontactModel?.typeIam,
          verificationProofs: data.primarycontactModel?.verificationProofs,
        ));
    fNameController.text = data.primarycontactModel?.fName ?? "";
    lNameController.text = data.primarycontactModel?.lName ?? "";
    phoneController.text = data.primarycontactModel?.mobileNumber ?? "";
    contactEmailController.text = data.primarycontactModel?.contactEmail ?? "";
    addressController.text = data.primarycontactModel?.getFullAddress ?? "";
    abnController.text = data.primarycontactModel?.abn ?? "";
    registeredForGst = data.primarycontactModel?.isUserVerified ?? false;
    final contactOwnerList = data.contactlistModel ?? [];
    for (final owner in contactOwnerList) {
      final ctrl = PropertyOwnerControllers();
      ctrl.fName.text = owner.fName ?? "";
      ctrl.lName.text = owner.lName ?? "";
      ctrl.phone.text = owner.mobileNumber ?? "";
      ctrl.email.text = owner.contactEmail ?? "";
      propertyOwnerControllers.add(ctrl);
    }
  }
}

@Riverpod(keepAlive: true)
class UpdateSolicitorParam extends _$UpdateSolicitorParam {
  final companyNameCtrl = TextEditingController();
  final principleCtrl = TextEditingController();
  final addressCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();
  final faxCtrl = TextEditingController();
  final emailCtrl = TextEditingController();

  @override
  UpdateSolicitorDetailsParams build() {
    return const UpdateSolicitorDetailsParams();
  }

  void updateParam(
      UpdateSolicitorDetailsParams Function(UpdateSolicitorDetailsParams p)
          update) {
    state = update(state);
  }

  void updateFromApi(SalesAgreementModel data) {
    state = state.copyWith(
      AgreementId: data.id,
      SolicitorFirmName: data.solicitorFirmName,
      SolicitorPrincipalName: data.solicitorPrincipalName,
      SolicitorAddress: data.solicitorAddress,
      SolicitorEmail: data.solicitorEmail,
      SolicitorPhone: data.solicitorPhone,
      SolicitorFax: data.solicitorFax,
      PrimaryUserID: data.primaryUserId,
    );
    companyNameCtrl.text = data.solicitorFirmName ?? "";
    principleCtrl.text = data.solicitorPrincipalName ?? "";
    addressCtrl.text = data.solicitorAddress ?? "";
    phoneCtrl.text = data.solicitorPhone ?? "";
    faxCtrl.text = data.solicitorFax ?? "";
    emailCtrl.text = data.solicitorEmail ?? "";
  }
}

@Riverpod(keepAlive: true)
class UpdatePeriodDetailsParam extends _$UpdatePeriodDetailsParam {
  final fromController = TextEditingController();
  final toController = TextEditingController();
  final priceController = TextEditingController();
  void dissPose() {
    fromController.text = '';
    toController.text = '';
  }

  @override
  UpdatePeriodDetailsParams build() {
    return const UpdatePeriodDetailsParams();
  }

  void updateParam(
      UpdatePeriodDetailsParams Function(UpdatePeriodDetailsParams p) update) {
    state = update(state);
  }

  String _formatNumber(num value) {
    if (value % 1 == 0) {
      return value.toInt().toString();
    } else {
      return value.toStringAsFixed(2);
    }
  }

  void updateFromTo(String? val) {
    if (val == null || val.isEmpty) {
      fromController.text = "";
      toController.text = "";
    } else {
      final numVal = double.tryParse(val);
      if (numVal != null) {
        fromController.text = _formatNumber(numVal);
        toController.text = _formatNumber(numVal * 1.1);
      }
    }
  }

  void updateTo(String? val) {
    if (val == null || val.isEmpty) {
      toController.text = "";
    } else {
      final numVal = double.tryParse(val);
      if (numVal != null) {
        toController.text = _formatNumber(numVal * 1.1);
      }
    }
  }

  void updateFromApi(SalesAgreementModel data) {
    state = state.copyWith(
      AgreementId: data.id,
      AgreementStartDate: data.agreementStartDate != null
          ? data.agreementStartDate
          : DateTime.now(),
      AgreementEndDate: data.agreementEndDate != null
          ? data.agreementEndDate
          : DateTime.now().add(const Duration(days: 90)),
      PropOccupation: data.propOccupation,
      FixFitIncluded: data.fixFitIncluded,
      FixFitExcluded: data.fixFitExcluded,
      EasementConvenantDefects: data.easementConvenantDefects,
      TermsAndConditionsOfSale: data.termsAndConditionsOfSale,
      SellingFixedPrice: data.sellingFixedPrice,
      LicenceeRecomendMethodOfSale: data.licenceeRecomendMethodOfSale,
      SplInstructionAboutMarketing: data.splInstructionAboutMarketing,
      SellingPriceFrom: data.sellingPriceFrom,
      SellingPriceTo: data.sellingPriceTo,
    );
    fromController.text =
        data.sellingPriceFrom != null ? data.sellingPriceFrom.toString() : "";
    toController.text =
        data.sellingPriceTo != null ? data.sellingPriceTo.toString() : "";
    priceController.text =
        data.sellingPriceFrom != null ? data.sellingFixedPrice.toString() : '';
  }
}

@Riverpod(keepAlive: true)
class UpdateRemunerationDetailsParam extends _$UpdateRemunerationDetailsParam {
  final flatFeeCntrl = TextEditingController();
  final estmatSaleCntrl = TextEditingController();
  final gstCntrl = TextEditingController();
  final accountName = TextEditingController();
  final bsbCntrl = TextEditingController();
  final accountNoCntrl = TextEditingController();

  void dissPose() {
    flatFeeCntrl.text = '';
    accountName.text = '';
    estmatSaleCntrl.text = '';
    gstCntrl.text = '';
    bsbCntrl.text = '';
    accountNoCntrl.text = '';
  }

  @override
  UpdateRemunerationDetailsParams build() {
    return const UpdateRemunerationDetailsParams();
  }

  void updateParam(
      UpdateRemunerationDetailsParams Function(
              UpdateRemunerationDetailsParams p)
          update) {
    state = update(state);
  }

  String _formatNumber(num value) {
    if (value % 1 == 0) {
      return value.toInt().toString();
    } else {
      return value.toStringAsFixed(2);
    }
  }

  void updateFlatFee(String val, int propertyPrice) {
    final percentage = double.tryParse(val);
    if (percentage != null) {
      final result = (propertyPrice * (percentage / 100));
      estmatSaleCntrl.text = _formatNumber(result);
      gstCntrl.text = _formatNumber(result);
    } else {
      estmatSaleCntrl.clear();
      gstCntrl.clear();
    }
  }

  void updateFromApi(SalesAgreementModel data) {
    state = state.copyWith(
        AgreementId: data.id,
        SalePriceFlatFee: data.salePriceFlatFee,
        LicenceeEstimateSalePrice: data.licenceeEstimateSalePrice?.toInt(),
        GSTInclusiveRenumeration: data.gstInclusiveRenumeration?.toInt(),
        IsEFT: data.isEft,
        PAccountName: data.pAccountName,
        PBSB: data.pbsb,
        PAccountNo: data.pAccountNo,
        gst: data.gst);

    flatFeeCntrl.text =
        data.salePriceFlatFee != null ? data.salePriceFlatFee.toString() : '';
    estmatSaleCntrl.text = data.licenceeEstimateSalePrice != null
        ? data.licenceeEstimateSalePrice.toString()
        : '';
    gstCntrl.text = data.gstInclusiveRenumeration != null
        ? data.gstInclusiveRenumeration.toString()
        : '';
    accountName.text = data.pAccountName ?? "";
    bsbCntrl.text = data.pbsb ?? '';
    accountNoCntrl.text =
        data.pAccountNo != null ? data.pAccountNo.toString() : '';
  }
}

@Riverpod(keepAlive: true)
class ExpensesChargeDetailsParam extends _$ExpensesChargeDetailsParam {
  final expenseANDChargesService1 = TextEditingController();
  final expenseANDChargesEstimate1 = TextEditingController();
  final expenseANDChargesdue1 = TextEditingController();
  final expenseANDChargesService2 = TextEditingController();
  final expenseANDChargesEstimate2 = TextEditingController();
  final expenseANDChargesdue2 = TextEditingController();
  final otherServicesService1 = TextEditingController();
  final otherServicesGST1 = TextEditingController();
  final otherServicesdue1 = TextEditingController();
  final otherServicesService2 = TextEditingController();
  final otherServicesGST2 = TextEditingController();
  final otherServicesdue2 = TextEditingController();
  final gst2Cntrl = TextEditingController();

  @override
  UpdateExpensesChargeDetailsParams build() {
    return const UpdateExpensesChargeDetailsParams();
  }

  void updateParam(
      UpdateExpensesChargeDetailsParams Function(
              UpdateExpensesChargeDetailsParams p)
          update) {
    state = update(state);
  }

  void updateAmount(String val) {
    final amount = double.tryParse(val);
    if (amount != null) {
      gst2Cntrl.text = (amount * 0.10).toString();
    }
  }

  void updateFromApi(SalesAgreementModel data) {
    state = state.copyWith(
      AgreementId: data.id,
      ExpenseANDChargesService1: data.expenseAndChargesService1,
      ExpenseANDChargesEstimate1: data.expenseAndChargesEstimate1,
      ExpenseANDChargesdue1: data.expenseAndChargesdue1,
      ExpenseANDChargesService2: data.expenseAndChargesService2,
      ExpenseANDChargesEstimate2: data.expenseAndChargesEstimate2,
      ExpenseANDChargesdue2: data.expenseAndChargesdue2,
      OtherServicesService1: data.otherServicesService1,
      OtherServicesGST1: data.otherServicesGst1,
      OtherServicesdue1: data.otherServicesdue1,
      OtherServicesService2: data.otherServicesService2,
      OtherServicesGST2: data.otherServicesGst2,
      OtherServicesdue2: data.otherServicesdue2,
      ExpenseANDChargesEstimateGST1:
          data.expenseAndChargesEstimateGst1.toString(),
      ExpenseANDChargesEstimateGST2:
          data.expenseAndChargesEstimateGst2.toString(),
    );
    gst2Cntrl.text = data.expenseAndChargesEstimateGst2?.toString() ?? '';
    expenseANDChargesService1.text = data.expenseAndChargesService1 ?? "";
    expenseANDChargesEstimate1.text =
        data?.expenseAndChargesEstimate1.toString() ?? "";
    expenseANDChargesdue1.text = data.expenseAndChargesdue1 ?? "";
    expenseANDChargesService2.text = data.expenseAndChargesService2 ?? "";
    expenseANDChargesEstimate2.text =
        data.expenseAndChargesEstimate2.toString() ?? "";
    expenseANDChargesdue2.text = data.expenseAndChargesdue2 ?? "";
    otherServicesService1.text = data.otherServicesService1.toString();
    otherServicesGST1.text = data.otherServicesGst1.toString() ?? "";
    otherServicesdue1.text = data.otherServicesdue1 ?? "";
    otherServicesService2.text = data.otherServicesService2 ?? "";
    otherServicesGST2.text = data.otherServicesGst2.toString() ?? "";
    otherServicesdue2.text = data.otherServicesdue2 ?? "";
  }
}

@Riverpod(keepAlive: true)
class UpdateSalesPromotionDetailsParam
    extends _$UpdateSalesPromotionDetailsParam {
  final inspection = TextEditingController();
  final disclosureSourceRebate1 = TextEditingController();
  final disclosureEstimateRebate1 = TextEditingController();
  final disclosureSourceRebate2 = TextEditingController();
  final disclosureEstimateRebate2 = TextEditingController();
  bool propertyPhotos = true;
  bool floorPlans = true;
  bool socialMediaCampaign = true;
  bool signboardOutsideProperty = true;
  bool isListedOnREA = true;
  bool isListedOnDomain = true;
  int withoutRisk = 1;
  int withDefects = 1;
  int waiverOfCoolinOffPeriod = 1;
  int wasAgreementProvidedPrincipal = 1;

  @override
  UpdateSalesPromotionDetailsParams build() {
    return const UpdateSalesPromotionDetailsParams();
  }

  void updateParam(
      UpdateSalesPromotionDetailsParams Function(
              UpdateSalesPromotionDetailsParams p)
          update) {
    state = update(state);
  }

  void updateFromApi(SalesAgreementModel data) {
    state = state.copyWith(
      AgreementId: data.id,
      AgencyId: data.agencyId,
      PropertyPhotos: data.propertyPhotos,
      FloorPlans: data.floorPlans,
      SocialMediaCampaign: data.socialMediaCampaign,
      SignboardOutsideProperty: data.signboardOutsideProperty,
      IsListedOnREA: data.isListedOnRea,
      IsListedOnDomain: data.isListedOnDomain,
      Inspection: data.inspection,
      WithoutRisk: data.withoutRisk,
      WithDefects: data.withDefects,
      DisclosureSourceRebate1: data.disclosureSourceRebate1,
      DisclosureEstimateRebate1: data.disclosureEstimateRebate1,
      DisclosureSourceRebate2: data.disclosureSourceRebate2,
      DisclosureEstimateRebate2: data.disclosureEstimateRebate2,
      WaiverOfCoolinOffPeriod: data.waiverOfCoolinOffPeriod,
      WasAgreementProvidedPrincipal: data.wasAgreementProvidedPrincipal,
      DateProvided: data.dateProvided,
    );
    inspection.text = data.inspection.toString();
    disclosureSourceRebate1.text = data.disclosureSourceRebate1.toString();
    disclosureEstimateRebate1.text = data.disclosureEstimateRebate1.toString();
    disclosureSourceRebate2.text = data.disclosureSourceRebate2.toString();
    disclosureEstimateRebate2.text = data.disclosureEstimateRebate2.toString();
    propertyPhotos = data.propertyPhotos ?? false;
    floorPlans = data.floorPlans ?? false;
    socialMediaCampaign = data.socialMediaCampaign ?? false;
    signboardOutsideProperty = data.signboardOutsideProperty ?? false;
    isListedOnREA = data.isListedOnRea ?? false;
    isListedOnDomain = data.isListedOnDomain ?? false;
    withoutRisk = data.withoutRisk ?? 1;
    withDefects = data.withDefects ?? 1;
    waiverOfCoolinOffPeriod = data.waiverOfCoolinOffPeriod ?? 1;
    wasAgreementProvidedPrincipal = data.wasAgreementProvidedPrincipal ?? 1;
  }
}

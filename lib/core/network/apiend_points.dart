class ApiEndPoints {
  static const String baseUrl = "https://forealproperty.com.au:8002/api/";

  static const String login = "Account/Login";

  static const String register = "Account/Register";

  static const String changePassword = "Account/changepassword";

  static const String getPropertyDetails = "property/getpropertyforuser";

  static const String getPropertyDetailsById = "property/getpropertybyid";

  static const String saleAndLeaseUrl = "property/getGenericpropertylist";

  static const String address = "property/addpropertyAddress";

  static const String contact = "contact/addupdatecontact";

  static const String getPropertyListing = "property/getPropertyListingList";

  static const String searchPropertyForInspection =
      'property/searchenlistPropertyForSelect2';

  static const String addImage = "property/addpropertyImages";

  static const String addPropertyAttributes = "property/addpropertyAttributes";

  static const String addPropertyListing = "property/addpropertyListing";

  static const String getPropertyList = "property/getpropertylist";

  static const String getContactList = "contact/getcontactlist";

  static const String addUpadteOpenHomesProperty =
      "property/addupdateopenhomeproperty";

  static String getContactDetail(String id) =>
      "contact/getcontactbyid?contactUniqueId=$id";

  static const String getOpenHomeList = "property/getopenhomepropertylist";

  static const String getOpenHomeDetail = "property/getopenhomedetailAndusers";

  static const String addOpenHomeRegistration =
      "property/addopenhomeregistration";

  static String searchPropertyListingForSelect2 =
      "property/searchPropertyListingForSelect2";

  static String deleteOpenHome(String openHomeUniqueId) =>
      "property/deleteopenhome?openHomeUniqueId=$openHomeUniqueId";

  static String addTenant = "property/addupdateTenant";

  static String addMultipleOwners = "property/addmultipleowners";

  static String getInspectionPageList = "inspection/getinspectionspagedlist";

  static String getPropertyForInspection='property/getpropertiesforinspection';

  static String addInspection = "inspection/addinspection";

  static String addMultipleInspection = "inspection/addmultipleinspections";

  static String updateInspection = "inspection/submittemplatedetails";

  static String getEntryInspectionDetails =
      "inspection/geteditinspectiontemplate";

  static String getInspectionOverview = "inspection/getinspectionbyuniqueid";

  static String getTemplate = "inspection/getaddedittemplatedetails";

  static String addTemplate = "inspection/submitupdatedtemplatedetails";

  static String deleteTemplate = "inspection/removetemplatefrominspection";

  static String getSubTemplate = "inspection/getaddupdatedacilitiestotemplate";

 static String removeSubTemplate = "inspection/removetemplatefacilityfrominspection";

 static String addNewSubTemplate = "inspection/addnewfacilitytotemplate";


  static String shareInspection = "inspection/finaliseinspection";

  static String updateOverviewInspection =
      "inspection/updateoverviewinspection";

  static const String getActiveAgent = 'agency/agent/getActiveAgentDDL';

  static const String getInspectionActivity = "module/getactivitylogformodule";

  static const String addUpdateCompliance =
      "inspection/addupdateinspectioncompliance";

  static const String updateAgreementPropertyDetails =
      'agency/AgreementTemplate/updatemangmntAgrmntPropertyDetails';

  static const String updateAgreementPeriodDetails =
      'agency/AgreementTemplate/updatemangmntagrmntperioddetails';

  static const String updateAgreementChargeDetails =
      'agency/AgreementTemplate/updatemangmntagrmntfeeschargedetails';

  static const String updateAgreementTeribunalinsurance =
      'agency/AgreementTemplate/updatemangmntagrmnttribunalinsurancedetails';

  static const String updateAgreementPromotionalDetails =
      'agency/AgreementTemplate/updatemangmntagrmntpromotiondetails';

  static const String updateAgreementRepairDetails =
      'agency/AgreementTemplate/updatemangmntagrmntrepairsdetails';

  static const String generatePdfReport =
      'agency/AgreementTemplate/generatePdfReport';

  static const String generateTenantPdfReport =
      'agency/AgreementTemplate/generateTenantAgreementPdfReport';

  static const String generateSalesPdfReport =
      'agency/AgreementTemplate/generatesalesagreementPdfReport';

  static const String updateAgreementTenants =
      'agency/AgreementTemplate/updateTenantsInAgreement';

  static const String updateSalesAgreementPromotionalDetails =
      'agency/AgreementTemplate/updatesalesagrmntpromotiondetails';

  static const String getPropertyForAgreement =
      'property/SearchPropertyForSelect2';

  static const String getManagementAgreementByPropertyId =
      'agency/AgreementTemplate/getmanagementagreementbypropertyId';

  static const String createManagementAgreement =
      'agency/AgreementTemplate/createManagementAgreement';

  static const String createTenantAgreement =
      'agency/AgreementTemplate/createTenantAgreement';

  static const String serachContact='property/SearchContactsByAgentForSelect2';

  static const String getTenantContactDetails='contact/getcontactbyid';

  static const String createSalesAgreement =
      'agency/AgreementTemplate/createSaleAgreement';

  static const String getTenancyAgreementByPropertyId =
      'agency/AgreementTemplate/gettenantleaseagreementbypropertyId';

  static const String updateLandlordTenantAgreementDetails =
      'agency/AgreementTemplate/updateLandlordTenantAgreementDetails';

  static const String updateRentBondTenantAgreementDetails =
      'agency/AgreementTemplate/updateRentBondTenantAgreementDetails';

  static const String updateInfoOfTenantAgreement =
      'agency/AgreementTemplate/updateInformationAgreementDetails';

  static const String getSalesAgreementByPropId =
      'agency/AgreementTemplate/getsalesagreementbypropertyId';

  static const String saleAgreementUpdateForm1 =
      'agency/AgreementTemplate/updatesalesAgrmntPropertyDetails';

  static const String saleAgreementUpdateForm2 =
      'agency/AgreementTemplate/updatesalesAgrmntsolicitorDetails';

  static const String saleAgreementUpdateForm3 =
      'agency/AgreementTemplate/updatesalesagrmntperioddetails';

  static const String saleAgreementUpdateForm4 =
      'agency/AgreementTemplate/updatesalesagrmntremunerationdetails';

  static const String saleAgreementUpdateForm5 =
      'agency/AgreementTemplate/updatesalesagrmntexpenseschargedetails';

  static const String saleAgreementUpdateForm6 =
      'agency/AgreementTemplate/updatesalesagrmntpromotiondetails';

  static const String getAgreementDocumentList =
      'agency/AgreementTemplate/getAgreemetnDocumentList';

  static const String deleteAgreement='agency/AgreementTemplate/deleteagreement';

}

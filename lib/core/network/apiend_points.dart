class ApiEndPoints{
  static const String baseUrl="https://forealproperty.com.au:8002/api/";

  static const String login = "Account/Login";
  
  static const String register = "Account/Register";

  static const String changePassword = "Account/changepassword";

  static const String getPropertyDetails = "property/getpropertyforuser";

  static const String getPropertyDetailsById = "property/getpropertybyid";

  static const String saleAndLeaseUrl = "property/getGenericpropertylist";

  static const String address = "property/addpropertyAddress";

  static const String contact = "contact/addupdatecontact";

  static const String getPropertyListing = "property/getPropertyListingList";

  static const String searchPropertyForInspection='property/searchenlistPropertyForSelect2';

  static const String addImage = "property/addpropertyImages";

  static const String addPropertyAttributes = "property/addpropertyAttributes";

  static const String addPropertyListing = "property/addpropertyListing";

  static const String getPropertyList = "property/getpropertylist";

    static const String getContactList = "contact/getcontactlist"; 

    static const String addUpadteOpenHomesProperty = "property/addupdateopenhomeproperty";

    static  String getContactDetail(String id) => "contact/getcontactbyid?contactUniqueId=$id";

    static String getOpenHomeList = "property/getopenhomepropertylist";

    static String getOpenHomeDetail = "property/getopenhomedetailAndusers";

    static String addOpenHomeRegistration = "property/addopenhomeregistration";

    static String searchPropertyListingForSelect2 = "property/searchPropertyListingForSelect2";

    static String deleteOpenHome(String openHomeUniqueId) => "property/deleteopenhome?openHomeUniqueId=$openHomeUniqueId";

    static String addTenant = "property/addupdateTenant";

    static String addMultipleOwners = "property/addmultipleowners";

    static String getInspectionPageList="inspection/getinspectionspagedlist";

  static String addInspection="inspection/addinspection";

  static String updateInspection="inspection/submittemplatedetails";

  static String getEntryInspectionDetails="inspection/geteditinspectiontemplate";

  static String getTemplate="inspection/getaddedittemplatedetails";

  static String addTemplate="inspection/submitupdatedtemplatedetails";

  static String deleteTemplate="inspection/removetemplatefrominspection";

  static String shareInspection="inspection/finaliseinspection";

}


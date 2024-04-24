const Urls = {
  MDMS: `/egov-mdms-service/v1/_search`,
  WorkFlow: `/egov-workflow-v2/egov-wf/businessservice/_search`,
  WorkFlowProcessSearch: `/egov-workflow-v2/egov-wf/process/_search`,
  localization: `/localization/messages/v1/_search`,
  location: {
    localities: `/egov-location/location/v11/boundarys/_search?hierarchyTypeCode=ADMIN&boundaryType=Locality`,
    wards: `/egov-location/location/v11/boundarys/_search?hierarchyTypeCode=ADMIN&boundaryType=Ward`,
    revenue_localities: `/egov-location/location/v11/boundarys/_search?hierarchyTypeCode=REVENUE&boundaryType=Locality`,
  },

  pgr_search: `/pgr-services/v2/request/_search`,
  pgr_update: `/pgr-services/v2/request/_update`,
  filter_data: `https://run.mocky.io/v3/597a50a0-90e5-4a45-b82e-8a2186b760bd`,
  FileStore: "/filestore/v1/files",

  FileFetch: "/filestore/v1/files/url",
  PGR_Create: `/pgr-services/v2/request/_create`,
  pgr_count: `/pgr-services/v2/request/_count`,

  OTP_Send: "/mukta-user-otp/v1/_send",
  Authenticate: "/user/oauth/token",
  RegisterUser: "/user/citizen/_create",
  ChangePassword: "/user/password/nologin/_update",
  ChangePassword1: "/user/password/_update",
  UserProfileUpdate: "/user/profile/_update",
  EmployeeSearch: "/mukta-egov-hrms/employees/_search",

  InboxSearch: "/works-inbox-service/v2/_search",

  UserSearch: "/user/_search",
  UserLogout: "/user/_logout",

  Shortener: "/egov-url-shortening/shortener",

  works: {
    create: "/loi-service/v1/_create",
    estimateSearch: "/mukta-estimate/v1/_search",
    loiSearch: "/loi-service/v1/_search",
    createEstimate: "/mukta-estimate/v1/_create",
    approvedEstimateSearch: "/mukta-estimate/v1/_search",
    searchEstimate: "/mukta-estimate/v1/_search",
    updateLOI: "/loi-service/v1/_update",
    updateEstimate: "/mukta-estimate/v1/_update",
    download_pdf: "/egov-pdf/download/WORKSESTIMATE/estimatepdf",
    createProject: "/project/v1/_create",
    searchProject: "/project/v1/_search",
    wmsSearchProject: "/wms/project/_search",
    updateProject: "/project/v1/_update",
  },

  contracts: {
    createWO: "/mukta-contract/v1/_create",
    search: "/mukta-contract/v1/_search",
    update: "/mukta-contract/v1/_update",
  },

  fsm: {
    search: "/fsm/v1/_search",
    create: "/fsm/v1/_create",
    update: "/fsm/v1/_update",
    vendorSearch: "/vendor/v1/_search",
    vehicleSearch: "/vehicle/v1/_search",
    audit: "/fsm/v1/_audit",
    vehicleTripSearch: "/vehicle/trip/v1/_search",
    billingSlabSearch: "/fsm-calculator/v1/billingSlab/_search",
    vehilceUpdate: "/vehicle/trip/v1/_update",
    createVendor: "/vendor/v1/_create",
    updateVendor: "/vendor/v1/_update",
    createVehicle: "/vehicle/v1/_create",
    updateVehicle: "/vehicle/v1/_update",
    driverSearch: "/vendor/driver/v1/_search",
    createDriver: "/vendor/driver/v1/_create",
    updateDriver: "/vendor/driver/v1/_update",
    vehicleTripCreate: "/vehicle/trip/v1/_create",
  },

  payment: {
    fetch_bill: "/billing-service/bill/v2/_fetchbill",
    demandSearch: "/billing-service/demand/_search",
    create_reciept: "/collection-services/payments/_create",
    print_reciept: "/collection-services/payments",
    generate_pdf: "/pdf-service/v1/_create",
    create_citizen_reciept: "/pg-service/transaction/v1/_create",
    update_citizen_reciept: "/pg-service/transaction/v1/_update",
    search_bill: "/billing-service/bill/v2/_search",
    reciept_search: "/collection-services/payments/:buisnessService/_search",
    obps_Reciept_Search: "/collection-services/payments/_search",
    billAmendmentSearch: "/billing-service/amendment/_search",
    getBulkPdfRecordsDetails: "/pdf-service/v1/_getBulkPdfRecordsDetails",
    createPayment: "/expense/payment/v1/_create",
    ifms_funds_search : "/ifms-adapter/funds/v1/_search"
  },
expense:{
  createPayment: "/expense/payment/v1/_create",
  searchPayment: "/mukta-ifix-adapter/v1/pi/_search",
  updatePayment: "/expense/payment/v1/_update",
  regenerate : '/egov-pdf/bill/_generate',
  searchPaymentWMS:"/wms/mukta-pi/_search",
  updatePI:"/mukta-ifix-adapter/v1/disburse/_create",
  searchPA:"/expense/payment/v1/_search"

},
  pt: {
    fectch_property: "/property-services/property/_search",
    fetch_payment_details: "/billing-service/bill/v2/_fetchbill",
    create: "/property-services/property/_create",
    search: "/property-services/property/_search",
    update: "/property-services/property/_update",
    pt_calculation_estimate: "/pt-calculator-v2/propertytax/v2/_estimate",
    assessment_create: "/property-services/assessment/_create",
    assessment_search: "/property-services/assessment/_search",
    payment_search: "/collection-services/payments/PT/_search",
    pt_calculate_mutation: "/pt-calculator-v2/propertytax/mutation/_calculate",
  },

  dss: {
    dashboardConfig: "/dashboard-analytics/dashboard/getDashboardConfig",
    getCharts: "/dashboard-analytics/dashboard/getChartV2",
  },

  mcollect: {
    search: "/echallan-services/eChallan/v1/_search",
    create: "/echallan-services/eChallan/v1/_create?",
    fetch_bill: "/billing-service/bill/v2/_fetchbill?",
    search_bill: "/egov-searcher/bill-genie/mcollectbills/_get",
    search_bill_pt: "/egov-searcher/bill-genie/billswithaddranduser/_get",
    update: "/echallan-services/eChallan/v1/_update",
    download_pdf: "/egov-pdf/download/UC/mcollect-challan",
    receipt_download: "/egov-pdf/download/PAYMENT/consolidatedreceipt",
    bill_download: "/egov-pdf/download/BILL/consolidatedbill",
    count: "/echallan-services/eChallan/v1/_count",
  },
  hrms: {
    search: "/mukta-egov-hrms/employees/_search",
    count: "/mukta-egov-hrms/employees/_count",
    create: "/mukta-egov-hrms/employees/_create",
    update: "/mukta-egov-hrms/employees/_update",
  },
  tl: {
    create: "/tl-services/v1/_create",
    search: "/tl-services/v1/_search",
    fetch_payment_details: "/billing-service/bill/v2/_fetchbill",
    download_pdf: "/egov-pdf/download/TL/",
    update: "/tl-services/v1/_update",
    billingslab: "/tl-calculator/billingslab/_search",
  },
  receipts: {
    receipt_download: "/egov-pdf/download/PAYMENT/consolidatedreceipt",
    payments: "/collection-services/payments",
    count: "/mukta-egov-hrms/employees/_count",
  },
  obps: {
    scrutinyDetails: "/edcr/rest/dcr/scrutinydetails",
    comparisionReport: "/edcr/rest/dcr/occomparison",
    create: "/bpa-services/v1/bpa/_create",
    nocSearch: "/noc-services/v1/noc/_search",
    updateNOC: "/noc-services/v1/noc/_update",
    update: "/bpa-services/v1/bpa/_update",
    bpaSearch: "/bpa-services/v1/bpa/_search",
    bpaRegSearch: "/tl-services/v1/BPAREG/_search",
    bpaRegCreate: "/tl-services/v1/BPAREG/_create",
    bpaRegGetBill: "/tl-calculator/v1/BPAREG/_getbill",
    bpaRegUpdate: "/tl-services/v1/BPAREG/_update",
    receipt_download: "/egov-pdf/download/PAYMENT/consolidatedreceipt",
    edcrreportdownload: "/bpa-services/v1/bpa/_permitorderedcr",
    getSearchDetails: "/inbox/v1/dss/_search",
  },

  edcr: {
    create: "/edcr/rest/dcr/scrutinize",
  },

  events: {
    search: "/egov-user-event/v1/events/_search",
    update: "/egov-user-event/v1/events/lat/_update",
    updateEvent: "/egov-user-event/v1/events/_update",
    updateEventCDG: "/egov-user-event/v1/events/lat/_update",
    count: "/egov-user-event/v1/events/notifications/_count",
    create: "/egov-user-event/v1/events/_create",
  },

  ws: {
    water_create: "/ws-services/wc/_create",
    sewarage_create: "/sw-services/swc/_create",
    water_search: "/ws-services/wc/_search",
    sewarage_search: "/sw-services/swc/_search",
    water_update: "/ws-services/wc/_update",
    sewarage_update: "/sw-services/swc/_update",
    ws_calculation_estimate: "/ws-calculator/waterCalculator/_estimate",
    sw_calculation_estimate: "/sw-calculator/sewerageCalculator/_estimate",
    ws_connection_search: "/ws-calculator/meterConnection/_search",
    sw_payment_search: "/collection-services/payments/SW/_search",
    ws_payment_search: "/collection-services/payments/WS/_search",
    billAmendmentCreate: "/billing-service/amendment/_create",
    billAmendmentUpdate: "/billing-service/amendment/_update",
    ws_meter_conncetion_create: "/ws-calculator/meterConnection/_create",
    sw_meter_conncetion_create: "/sw-calculator/meterConnection/_create",
    wns_group_bill: "/egov-pdf/download/WNS/wnsgroupbill",
    cancel_group_bill: "/pdf-service/v1/_cancelProcess",
    wns_generate_pdf: "/egov-pdf/download/WNS/wnsbill",
    water_applyAdhocTax: "/ws-calculator/waterCalculator/_applyAdhocTax",
    sewerage_applyAdhocTax: "/sw-calculator/sewerageCalculator/_applyAdhocTax",
    getSearchDetails: "/inbox/v1/dss/_search",
  },

  engagement: {
    document: {
      search: "/egov-document-uploader/egov-du/document/_search",
      create: "/egov-document-uploader/egov-du/document/_create",
      delete: "/egov-document-uploader/egov-du/document/_delete",
      update: "/egov-document-uploader/egov-du/document/_update",
    },
    surveys: {
      create: "/egov-survey-services/egov-ss/survey/_create",
      update: "/egov-survey-services/egov-ss/survey/_update",
      search: "/egov-survey-services/egov-ss/survey/_search",
      delete: "/egov-survey-services/egov-ss/survey/_delete",
      submitResponse: "/egov-survey-services/egov-ss/survey/response/_submit",
      showResults: "/egov-survey-services/egov-ss/survey/response/_results",
    },
  },

  attendencemgmt: {
    mustorRoll: {
      estimate: "/muster-roll/v1/_estimate",
      create: "/muster-roll/v1/_create",
      update: "/muster-roll/v1/_update",
      search: "/muster-roll/v1/_search",
    },
  },

  wageseeker: {
    create: "/mukta-individual/v1/_create",
    search: "/mukta-individual/v1/_search",
    wmssearch: "/wms/mukta-individual/_search",
    update: "/mukta-individual/v1/_update",
    delete: "/mukta-individual/v1/_delete",
  },

  noc: {
    nocSearch: "/noc-services/v1/noc/_search",
  },
  reports: {
    reportSearch: "/report/",
  },
  bills: {
    cancelBill: "/billing-service/bill/v2/_cancelbill",
    createBill: "/expensebilling/demand/v1/_create",
    searchBill: "/mukta-expense/bill/v1/_search",
    createPurchaseBill: "/mukta-expense-calculator/purchase/v1/_createbill",
    updatePurchaseBill:"/mukta-expense-calculator/purchase/v1/_updatebill"
  },

  organisation: {
    search: "/org-services/organisation/v1/_search",
    create: "/org-services/organisation/v1/_create",
    update: "/org-services/organisation/v1/_update",
  },

  bankaccount: {
    create: "/bankaccount-service/bankaccount/v1/_create",
    search: "/bankaccount-service/bankaccount/v1/_search",
    update: "/bankaccount-service/bankaccount/v1/_update",
  },

  access_control: "/access/v1/actions/mdms/_get",
  billgenie: "/egov-searcher",

  bill: {
    search: "/mukta-expense/bill/v1/_search",
    searchCalculator: "/mukta-expense-calculator/v1/_search",
  },

  calculator: {
    expenseBill: "/mukta-expense-calculator/v1/_estimate",
  },

  measurement : {
    search : "/measurement-service/v1/_search",
    update : "/measurement-service/v1/_update"
  }
};

export default Urls;

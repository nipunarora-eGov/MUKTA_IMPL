import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:works_shg_app/models/employee/mb/mb_inbox_response.dart';

part 'mb_detail_response.freezed.dart';
part 'mb_detail_response.g.dart';

@freezed
class MBDetailResponse with _$MBDetailResponse {
  const factory MBDetailResponse({
    @JsonKey(name: 'contract') Contract? contract,
    @JsonKey(name: 'estimate') Estimate? estimate,
    @JsonKey(name: 'period') Period? period,
    @JsonKey(name: 'allMeasurements') List<Measurement>? allMeasurements,
    @JsonKey(name: 'measurement') Measurement? measurement,
    @JsonKey(name: 'musterRolls') List<MusterRoll>? musterRolls
  }) = _MBDetailResponse;

  factory MBDetailResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MBDetailResponseFromJson(json);
}

/// estimate
///
///


@freezed
class MusterRoll with _$MusterRoll {
  const factory MusterRoll({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'tenantId') String? tenantId,
    @JsonKey(name: 'musterRollNumber')String? musterRollNumber,
    @JsonKey(name: 'registerId')String? registerId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'musterRollStatus') String? musterRollStatus,
    @JsonKey(name: 'startDate')int? startDate,
    @JsonKey(name: 'endDate') int? endDate,
    @JsonKey(name: 'referenceId')String? referenceId,
    @JsonKey(name: 'serviceCode')String? serviceCode,
    @JsonKey(name: 'auditDetails') AuditDetails? auditDetails,
    @JsonKey(name: 'additionalDetails') MusterRollAdditionalDetails? additional

  }) = _MusterRoll;

  factory MusterRoll.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MusterRollFromJson(json);
}


@freezed
class MusterRollAdditionalDetails with _$MusterRollAdditionalDetails {
  const factory MusterRollAdditionalDetails({
    @JsonKey(name: 'ward') String? ward,
    @JsonKey(name: 'orgId') String? orgId,
    @JsonKey(name: 'amount')double? amount,
    @JsonKey(name: 'orgName')String? orgName,
    @JsonKey(name: 'locality') String? locality,
    @JsonKey(name: 'projectId') String? projectId,
    @JsonKey(name: 'contractId')String? contractId,
    @JsonKey(name: 'projectDesc') String? projectDesc,
    @JsonKey(name: 'projectName')String? projectName,
    @JsonKey(name: 'projectType')String? projectType,
    @JsonKey(name: 'executingAuthority') String? executingAuthority,
    @JsonKey(name: 'attendanceRegisterNo')String? attendanceRegisterNo,
    @JsonKey(name: 'attendanceRegisterName')String? attendanceRegisterName,
    

  }) = _MusterRollAdditionalDetails;

  factory MusterRollAdditionalDetails.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MusterRollAdditionalDetailsFromJson(json);
}



@freezed
class Measurement with _$Measurement {
  const factory Measurement({
    @JsonKey(name: 'id')
        String? id,
    @JsonKey(name: 'tenantId')
        String? tenantId,
    @JsonKey(name: 'measurementNumber')
        String? measurementNumber,
    @JsonKey(name: 'physicalRefNumber')
        String? physicalRefNumber,
    @JsonKey(name: 'referenceId')
        String? referenceId,
    @JsonKey(name: 'entryDate')
        int? entryDate,
    @JsonKey(name: 'isActive')
        bool? isActive,
    @JsonKey(name: 'wfStatus')
        String? wfStatus,
    @JsonKey(name: 'workflow')
        String? workflow,
    @JsonKey(name: 'auditDetails')
        AuditDetails? auditDetails,
    @JsonKey(name: 'additionalDetails')
        MeasurementAdditionalDetail? additionalDetail,

    @JsonKey(name: 'measures')
    List<Measure>? measures,

  }) = _Measurement;

  factory Measurement.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MeasurementFromJson(json);
}

@freezed
class MeasurementAdditionalDetail with _$MeasurementAdditionalDetail {
  const factory MeasurementAdditionalDetail({
    @JsonKey(name: 'endDate') int? endDate,
    @JsonKey(name: 'sorAmount') double? sorAmount,
    @JsonKey(name: 'startDate') int? startDate,
    @JsonKey(name: 'totalAmount') double? totalAmount,
    @JsonKey(name: 'nonSorAmount') double? nonSorAmount,
    @JsonKey(name: 'musterRollNumber') String? musterRollNumber,
  }) = _MeasurementAdditionalDetail;

  factory MeasurementAdditionalDetail.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MeasurementAdditionalDetailFromJson(json);
}

@freezed
class Period with _$Period {
  const factory Period({
    @JsonKey(name: 'startDate') int? startDate,
    @JsonKey(name: 'endDate') int? endDate,
  }) = _Period;

  factory Period.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PeriodFromJson(json);
}

@freezed
class Estimate with _$Estimate {
  const factory Estimate({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'tenantId') String? tenantId,
    @JsonKey(name: 'estimateNumber') String? estimateNumber,
    @JsonKey(name: 'revisionNumber') String? revisionNumber,
    @JsonKey(name: 'businessService') String? businessService,
    @JsonKey(name: 'oldUuid') String? oldUuid,
    @JsonKey(name: 'projectId') String? projectId,
    @JsonKey(name: 'versionNumber') int? versionNumber,
    @JsonKey(name: 'proposalDate') int? proposalDate,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'wfStatus') String? wfStatus,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'referenceNumber') String? referenceNumber,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'executingDepartment') String? executingDepartment,
    @JsonKey(name: 'address') EstimateAddress? address,
    @JsonKey(name: 'estimateDetails') List<EstimateDetail>? estimateDetails,
    @JsonKey(name: 'auditDetails') AuditDetails? auditDetails,
  }) = _Estimate;

  factory Estimate.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EstimateFromJson(json);
}

@freezed
class EstimateDetail with _$EstimateDetail {
  const factory EstimateDetail(
          {@JsonKey(name: 'id') String? id,
          @JsonKey(name: 'previousLineItemId') String? previousLineItemId,
          @JsonKey(name: 'sorId') String? sorId,
          @JsonKey(name: 'category') String? category,
          @JsonKey(name: 'name') String? name,
          @JsonKey(name: 'description') String? description,
          @JsonKey(name: 'unitRate') double? unitRate,
          @JsonKey(name: 'noOfunit') int? noOfunit,
          @JsonKey(name: 'uom') String? uom,
          @JsonKey(name: 'uomValue') double? uomValue,
          @JsonKey(name: 'length') int? length,
          @JsonKey(name: 'width') int? width,
          @JsonKey(name: 'height') int? height,
          @JsonKey(name: 'quantity') int? quantity,
          @JsonKey(name: 'isDeduction') bool? isDeduction,
          @JsonKey(name: 'isActive') bool? isActive,
          @JsonKey(name: 'amountDetail') List<AmoutDetail>? amountDetails}) =
      _EstimateDetail;

  factory EstimateDetail.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EstimateDetailFromJson(json);
}

@freezed
class AmoutDetail with _$AmoutDetail {
  const factory AmoutDetail({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'amount') double? amount,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'isActive') bool? isActive,
  }) = _AmoutDetail;

  factory AmoutDetail.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AmoutDetailFromJson(json);
}

@freezed
class EstimateAddress with _$EstimateAddress {
  const factory EstimateAddress({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'tenantId') String? tenantId,
    @JsonKey(name: 'doorNo') String? doorNo,
    @JsonKey(name: 'latitude') double? latitude,
    @JsonKey(name: 'longitude') double? longitude,
    @JsonKey(name: 'locationAccuracy') double? locationAccuracy,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'addressNumber') String? addressNumber,
    @JsonKey(name: 'addressLine1') String? addressLine1,
    @JsonKey(name: 'addressLine2') String? addressLine2,
    @JsonKey(name: 'landmark') String? landmark,
    @JsonKey(name: 'city') String? city,
  }) = _EstimateAddress;

  factory EstimateAddress.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EstimateAddressFromJson(json);
}

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BCMPricingCalculator
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AddReservedInstanceAction = Shapes::StructureShape.new(name: 'AddReservedInstanceAction')
    AddSavingsPlanAction = Shapes::StructureShape.new(name: 'AddSavingsPlanAction')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    BatchCreateBillScenarioCommitmentModificationEntries = Shapes::ListShape.new(name: 'BatchCreateBillScenarioCommitmentModificationEntries')
    BatchCreateBillScenarioCommitmentModificationEntry = Shapes::StructureShape.new(name: 'BatchCreateBillScenarioCommitmentModificationEntry')
    BatchCreateBillScenarioCommitmentModificationError = Shapes::StructureShape.new(name: 'BatchCreateBillScenarioCommitmentModificationError')
    BatchCreateBillScenarioCommitmentModificationErrorCode = Shapes::StringShape.new(name: 'BatchCreateBillScenarioCommitmentModificationErrorCode')
    BatchCreateBillScenarioCommitmentModificationErrors = Shapes::ListShape.new(name: 'BatchCreateBillScenarioCommitmentModificationErrors')
    BatchCreateBillScenarioCommitmentModificationItem = Shapes::StructureShape.new(name: 'BatchCreateBillScenarioCommitmentModificationItem')
    BatchCreateBillScenarioCommitmentModificationItems = Shapes::ListShape.new(name: 'BatchCreateBillScenarioCommitmentModificationItems')
    BatchCreateBillScenarioCommitmentModificationRequest = Shapes::StructureShape.new(name: 'BatchCreateBillScenarioCommitmentModificationRequest')
    BatchCreateBillScenarioCommitmentModificationResponse = Shapes::StructureShape.new(name: 'BatchCreateBillScenarioCommitmentModificationResponse')
    BatchCreateBillScenarioUsageModificationEntries = Shapes::ListShape.new(name: 'BatchCreateBillScenarioUsageModificationEntries')
    BatchCreateBillScenarioUsageModificationEntry = Shapes::StructureShape.new(name: 'BatchCreateBillScenarioUsageModificationEntry')
    BatchCreateBillScenarioUsageModificationError = Shapes::StructureShape.new(name: 'BatchCreateBillScenarioUsageModificationError')
    BatchCreateBillScenarioUsageModificationErrorCode = Shapes::StringShape.new(name: 'BatchCreateBillScenarioUsageModificationErrorCode')
    BatchCreateBillScenarioUsageModificationErrors = Shapes::ListShape.new(name: 'BatchCreateBillScenarioUsageModificationErrors')
    BatchCreateBillScenarioUsageModificationItem = Shapes::StructureShape.new(name: 'BatchCreateBillScenarioUsageModificationItem')
    BatchCreateBillScenarioUsageModificationItems = Shapes::ListShape.new(name: 'BatchCreateBillScenarioUsageModificationItems')
    BatchCreateBillScenarioUsageModificationRequest = Shapes::StructureShape.new(name: 'BatchCreateBillScenarioUsageModificationRequest')
    BatchCreateBillScenarioUsageModificationResponse = Shapes::StructureShape.new(name: 'BatchCreateBillScenarioUsageModificationResponse')
    BatchCreateWorkloadEstimateUsageCode = Shapes::StringShape.new(name: 'BatchCreateWorkloadEstimateUsageCode')
    BatchCreateWorkloadEstimateUsageEntries = Shapes::ListShape.new(name: 'BatchCreateWorkloadEstimateUsageEntries')
    BatchCreateWorkloadEstimateUsageEntry = Shapes::StructureShape.new(name: 'BatchCreateWorkloadEstimateUsageEntry')
    BatchCreateWorkloadEstimateUsageError = Shapes::StructureShape.new(name: 'BatchCreateWorkloadEstimateUsageError')
    BatchCreateWorkloadEstimateUsageErrors = Shapes::ListShape.new(name: 'BatchCreateWorkloadEstimateUsageErrors')
    BatchCreateWorkloadEstimateUsageItem = Shapes::StructureShape.new(name: 'BatchCreateWorkloadEstimateUsageItem')
    BatchCreateWorkloadEstimateUsageItems = Shapes::ListShape.new(name: 'BatchCreateWorkloadEstimateUsageItems')
    BatchCreateWorkloadEstimateUsageRequest = Shapes::StructureShape.new(name: 'BatchCreateWorkloadEstimateUsageRequest')
    BatchCreateWorkloadEstimateUsageResponse = Shapes::StructureShape.new(name: 'BatchCreateWorkloadEstimateUsageResponse')
    BatchDeleteBillScenarioCommitmentModificationEntries = Shapes::ListShape.new(name: 'BatchDeleteBillScenarioCommitmentModificationEntries')
    BatchDeleteBillScenarioCommitmentModificationError = Shapes::StructureShape.new(name: 'BatchDeleteBillScenarioCommitmentModificationError')
    BatchDeleteBillScenarioCommitmentModificationErrorCode = Shapes::StringShape.new(name: 'BatchDeleteBillScenarioCommitmentModificationErrorCode')
    BatchDeleteBillScenarioCommitmentModificationErrors = Shapes::ListShape.new(name: 'BatchDeleteBillScenarioCommitmentModificationErrors')
    BatchDeleteBillScenarioCommitmentModificationRequest = Shapes::StructureShape.new(name: 'BatchDeleteBillScenarioCommitmentModificationRequest')
    BatchDeleteBillScenarioCommitmentModificationResponse = Shapes::StructureShape.new(name: 'BatchDeleteBillScenarioCommitmentModificationResponse')
    BatchDeleteBillScenarioUsageModificationEntries = Shapes::ListShape.new(name: 'BatchDeleteBillScenarioUsageModificationEntries')
    BatchDeleteBillScenarioUsageModificationError = Shapes::StructureShape.new(name: 'BatchDeleteBillScenarioUsageModificationError')
    BatchDeleteBillScenarioUsageModificationErrorCode = Shapes::StringShape.new(name: 'BatchDeleteBillScenarioUsageModificationErrorCode')
    BatchDeleteBillScenarioUsageModificationErrors = Shapes::ListShape.new(name: 'BatchDeleteBillScenarioUsageModificationErrors')
    BatchDeleteBillScenarioUsageModificationRequest = Shapes::StructureShape.new(name: 'BatchDeleteBillScenarioUsageModificationRequest')
    BatchDeleteBillScenarioUsageModificationResponse = Shapes::StructureShape.new(name: 'BatchDeleteBillScenarioUsageModificationResponse')
    BatchDeleteWorkloadEstimateUsageEntries = Shapes::ListShape.new(name: 'BatchDeleteWorkloadEstimateUsageEntries')
    BatchDeleteWorkloadEstimateUsageError = Shapes::StructureShape.new(name: 'BatchDeleteWorkloadEstimateUsageError')
    BatchDeleteWorkloadEstimateUsageErrors = Shapes::ListShape.new(name: 'BatchDeleteWorkloadEstimateUsageErrors')
    BatchDeleteWorkloadEstimateUsageRequest = Shapes::StructureShape.new(name: 'BatchDeleteWorkloadEstimateUsageRequest')
    BatchDeleteWorkloadEstimateUsageResponse = Shapes::StructureShape.new(name: 'BatchDeleteWorkloadEstimateUsageResponse')
    BatchUpdateBillScenarioCommitmentModificationEntries = Shapes::ListShape.new(name: 'BatchUpdateBillScenarioCommitmentModificationEntries')
    BatchUpdateBillScenarioCommitmentModificationEntry = Shapes::StructureShape.new(name: 'BatchUpdateBillScenarioCommitmentModificationEntry')
    BatchUpdateBillScenarioCommitmentModificationError = Shapes::StructureShape.new(name: 'BatchUpdateBillScenarioCommitmentModificationError')
    BatchUpdateBillScenarioCommitmentModificationErrorCode = Shapes::StringShape.new(name: 'BatchUpdateBillScenarioCommitmentModificationErrorCode')
    BatchUpdateBillScenarioCommitmentModificationErrors = Shapes::ListShape.new(name: 'BatchUpdateBillScenarioCommitmentModificationErrors')
    BatchUpdateBillScenarioCommitmentModificationRequest = Shapes::StructureShape.new(name: 'BatchUpdateBillScenarioCommitmentModificationRequest')
    BatchUpdateBillScenarioCommitmentModificationResponse = Shapes::StructureShape.new(name: 'BatchUpdateBillScenarioCommitmentModificationResponse')
    BatchUpdateBillScenarioUsageModificationEntries = Shapes::ListShape.new(name: 'BatchUpdateBillScenarioUsageModificationEntries')
    BatchUpdateBillScenarioUsageModificationEntry = Shapes::StructureShape.new(name: 'BatchUpdateBillScenarioUsageModificationEntry')
    BatchUpdateBillScenarioUsageModificationError = Shapes::StructureShape.new(name: 'BatchUpdateBillScenarioUsageModificationError')
    BatchUpdateBillScenarioUsageModificationErrorCode = Shapes::StringShape.new(name: 'BatchUpdateBillScenarioUsageModificationErrorCode')
    BatchUpdateBillScenarioUsageModificationErrors = Shapes::ListShape.new(name: 'BatchUpdateBillScenarioUsageModificationErrors')
    BatchUpdateBillScenarioUsageModificationRequest = Shapes::StructureShape.new(name: 'BatchUpdateBillScenarioUsageModificationRequest')
    BatchUpdateBillScenarioUsageModificationResponse = Shapes::StructureShape.new(name: 'BatchUpdateBillScenarioUsageModificationResponse')
    BatchUpdateWorkloadEstimateUsageEntries = Shapes::ListShape.new(name: 'BatchUpdateWorkloadEstimateUsageEntries')
    BatchUpdateWorkloadEstimateUsageEntry = Shapes::StructureShape.new(name: 'BatchUpdateWorkloadEstimateUsageEntry')
    BatchUpdateWorkloadEstimateUsageError = Shapes::StructureShape.new(name: 'BatchUpdateWorkloadEstimateUsageError')
    BatchUpdateWorkloadEstimateUsageErrors = Shapes::ListShape.new(name: 'BatchUpdateWorkloadEstimateUsageErrors')
    BatchUpdateWorkloadEstimateUsageRequest = Shapes::StructureShape.new(name: 'BatchUpdateWorkloadEstimateUsageRequest')
    BatchUpdateWorkloadEstimateUsageResponse = Shapes::StructureShape.new(name: 'BatchUpdateWorkloadEstimateUsageResponse')
    BillEstimateCommitmentSummaries = Shapes::ListShape.new(name: 'BillEstimateCommitmentSummaries')
    BillEstimateCommitmentSummary = Shapes::StructureShape.new(name: 'BillEstimateCommitmentSummary')
    BillEstimateCostSummary = Shapes::StructureShape.new(name: 'BillEstimateCostSummary')
    BillEstimateInputCommitmentModificationSummaries = Shapes::ListShape.new(name: 'BillEstimateInputCommitmentModificationSummaries')
    BillEstimateInputCommitmentModificationSummary = Shapes::StructureShape.new(name: 'BillEstimateInputCommitmentModificationSummary')
    BillEstimateInputUsageModificationSummaries = Shapes::ListShape.new(name: 'BillEstimateInputUsageModificationSummaries')
    BillEstimateInputUsageModificationSummary = Shapes::StructureShape.new(name: 'BillEstimateInputUsageModificationSummary')
    BillEstimateLineItemSummaries = Shapes::ListShape.new(name: 'BillEstimateLineItemSummaries')
    BillEstimateLineItemSummary = Shapes::StructureShape.new(name: 'BillEstimateLineItemSummary')
    BillEstimateName = Shapes::StringShape.new(name: 'BillEstimateName')
    BillEstimateStatus = Shapes::StringShape.new(name: 'BillEstimateStatus')
    BillEstimateSummaries = Shapes::ListShape.new(name: 'BillEstimateSummaries')
    BillEstimateSummary = Shapes::StructureShape.new(name: 'BillEstimateSummary')
    BillInterval = Shapes::StructureShape.new(name: 'BillInterval')
    BillScenarioCommitmentModificationAction = Shapes::UnionShape.new(name: 'BillScenarioCommitmentModificationAction')
    BillScenarioCommitmentModificationItem = Shapes::StructureShape.new(name: 'BillScenarioCommitmentModificationItem')
    BillScenarioCommitmentModificationItems = Shapes::ListShape.new(name: 'BillScenarioCommitmentModificationItems')
    BillScenarioName = Shapes::StringShape.new(name: 'BillScenarioName')
    BillScenarioStatus = Shapes::StringShape.new(name: 'BillScenarioStatus')
    BillScenarioSummaries = Shapes::ListShape.new(name: 'BillScenarioSummaries')
    BillScenarioSummary = Shapes::StructureShape.new(name: 'BillScenarioSummary')
    BillScenarioUsageModificationItem = Shapes::StructureShape.new(name: 'BillScenarioUsageModificationItem')
    BillScenarioUsageModificationItems = Shapes::ListShape.new(name: 'BillScenarioUsageModificationItems')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CostAmount = Shapes::StructureShape.new(name: 'CostAmount')
    CostDifference = Shapes::StructureShape.new(name: 'CostDifference')
    CreateBillEstimateRequest = Shapes::StructureShape.new(name: 'CreateBillEstimateRequest')
    CreateBillEstimateResponse = Shapes::StructureShape.new(name: 'CreateBillEstimateResponse')
    CreateBillScenarioRequest = Shapes::StructureShape.new(name: 'CreateBillScenarioRequest')
    CreateBillScenarioResponse = Shapes::StructureShape.new(name: 'CreateBillScenarioResponse')
    CreateWorkloadEstimateRequest = Shapes::StructureShape.new(name: 'CreateWorkloadEstimateRequest')
    CreateWorkloadEstimateResponse = Shapes::StructureShape.new(name: 'CreateWorkloadEstimateResponse')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    DataUnavailableException = Shapes::StructureShape.new(name: 'DataUnavailableException')
    DeleteBillEstimateRequest = Shapes::StructureShape.new(name: 'DeleteBillEstimateRequest')
    DeleteBillEstimateResponse = Shapes::StructureShape.new(name: 'DeleteBillEstimateResponse')
    DeleteBillScenarioRequest = Shapes::StructureShape.new(name: 'DeleteBillScenarioRequest')
    DeleteBillScenarioResponse = Shapes::StructureShape.new(name: 'DeleteBillScenarioResponse')
    DeleteWorkloadEstimateRequest = Shapes::StructureShape.new(name: 'DeleteWorkloadEstimateRequest')
    DeleteWorkloadEstimateResponse = Shapes::StructureShape.new(name: 'DeleteWorkloadEstimateResponse')
    Double = Shapes::FloatShape.new(name: 'Double')
    Expression = Shapes::StructureShape.new(name: 'Expression')
    ExpressionFilter = Shapes::StructureShape.new(name: 'ExpressionFilter')
    ExpressionList = Shapes::ListShape.new(name: 'ExpressionList')
    FilterTimestamp = Shapes::StructureShape.new(name: 'FilterTimestamp')
    GetBillEstimateRequest = Shapes::StructureShape.new(name: 'GetBillEstimateRequest')
    GetBillEstimateResponse = Shapes::StructureShape.new(name: 'GetBillEstimateResponse')
    GetBillScenarioRequest = Shapes::StructureShape.new(name: 'GetBillScenarioRequest')
    GetBillScenarioResponse = Shapes::StructureShape.new(name: 'GetBillScenarioResponse')
    GetPreferencesRequest = Shapes::StructureShape.new(name: 'GetPreferencesRequest')
    GetPreferencesResponse = Shapes::StructureShape.new(name: 'GetPreferencesResponse')
    GetWorkloadEstimateRequest = Shapes::StructureShape.new(name: 'GetWorkloadEstimateRequest')
    GetWorkloadEstimateResponse = Shapes::StructureShape.new(name: 'GetWorkloadEstimateResponse')
    HistoricalUsageEntity = Shapes::StructureShape.new(name: 'HistoricalUsageEntity')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Key = Shapes::StringShape.new(name: 'Key')
    ListBillEstimateCommitmentsRequest = Shapes::StructureShape.new(name: 'ListBillEstimateCommitmentsRequest')
    ListBillEstimateCommitmentsResponse = Shapes::StructureShape.new(name: 'ListBillEstimateCommitmentsResponse')
    ListBillEstimateInputCommitmentModificationsRequest = Shapes::StructureShape.new(name: 'ListBillEstimateInputCommitmentModificationsRequest')
    ListBillEstimateInputCommitmentModificationsResponse = Shapes::StructureShape.new(name: 'ListBillEstimateInputCommitmentModificationsResponse')
    ListBillEstimateInputUsageModificationsRequest = Shapes::StructureShape.new(name: 'ListBillEstimateInputUsageModificationsRequest')
    ListBillEstimateInputUsageModificationsResponse = Shapes::StructureShape.new(name: 'ListBillEstimateInputUsageModificationsResponse')
    ListBillEstimateLineItemsFilter = Shapes::StructureShape.new(name: 'ListBillEstimateLineItemsFilter')
    ListBillEstimateLineItemsFilterName = Shapes::StringShape.new(name: 'ListBillEstimateLineItemsFilterName')
    ListBillEstimateLineItemsFilterValues = Shapes::ListShape.new(name: 'ListBillEstimateLineItemsFilterValues')
    ListBillEstimateLineItemsFilters = Shapes::ListShape.new(name: 'ListBillEstimateLineItemsFilters')
    ListBillEstimateLineItemsRequest = Shapes::StructureShape.new(name: 'ListBillEstimateLineItemsRequest')
    ListBillEstimateLineItemsResponse = Shapes::StructureShape.new(name: 'ListBillEstimateLineItemsResponse')
    ListBillEstimatesFilter = Shapes::StructureShape.new(name: 'ListBillEstimatesFilter')
    ListBillEstimatesFilterName = Shapes::StringShape.new(name: 'ListBillEstimatesFilterName')
    ListBillEstimatesFilterValues = Shapes::ListShape.new(name: 'ListBillEstimatesFilterValues')
    ListBillEstimatesFilters = Shapes::ListShape.new(name: 'ListBillEstimatesFilters')
    ListBillEstimatesRequest = Shapes::StructureShape.new(name: 'ListBillEstimatesRequest')
    ListBillEstimatesResponse = Shapes::StructureShape.new(name: 'ListBillEstimatesResponse')
    ListBillScenarioCommitmentModificationsRequest = Shapes::StructureShape.new(name: 'ListBillScenarioCommitmentModificationsRequest')
    ListBillScenarioCommitmentModificationsResponse = Shapes::StructureShape.new(name: 'ListBillScenarioCommitmentModificationsResponse')
    ListBillScenarioUsageModificationsRequest = Shapes::StructureShape.new(name: 'ListBillScenarioUsageModificationsRequest')
    ListBillScenarioUsageModificationsResponse = Shapes::StructureShape.new(name: 'ListBillScenarioUsageModificationsResponse')
    ListBillScenariosFilter = Shapes::StructureShape.new(name: 'ListBillScenariosFilter')
    ListBillScenariosFilterName = Shapes::StringShape.new(name: 'ListBillScenariosFilterName')
    ListBillScenariosFilterValues = Shapes::ListShape.new(name: 'ListBillScenariosFilterValues')
    ListBillScenariosFilters = Shapes::ListShape.new(name: 'ListBillScenariosFilters')
    ListBillScenariosRequest = Shapes::StructureShape.new(name: 'ListBillScenariosRequest')
    ListBillScenariosResponse = Shapes::StructureShape.new(name: 'ListBillScenariosResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListUsageFilter = Shapes::StructureShape.new(name: 'ListUsageFilter')
    ListUsageFilterName = Shapes::StringShape.new(name: 'ListUsageFilterName')
    ListUsageFilterValues = Shapes::ListShape.new(name: 'ListUsageFilterValues')
    ListUsageFilters = Shapes::ListShape.new(name: 'ListUsageFilters')
    ListWorkloadEstimateUsageRequest = Shapes::StructureShape.new(name: 'ListWorkloadEstimateUsageRequest')
    ListWorkloadEstimateUsageResponse = Shapes::StructureShape.new(name: 'ListWorkloadEstimateUsageResponse')
    ListWorkloadEstimatesFilter = Shapes::StructureShape.new(name: 'ListWorkloadEstimatesFilter')
    ListWorkloadEstimatesFilterName = Shapes::StringShape.new(name: 'ListWorkloadEstimatesFilterName')
    ListWorkloadEstimatesFilterValues = Shapes::ListShape.new(name: 'ListWorkloadEstimatesFilterValues')
    ListWorkloadEstimatesFilters = Shapes::ListShape.new(name: 'ListWorkloadEstimatesFilters')
    ListWorkloadEstimatesRequest = Shapes::StructureShape.new(name: 'ListWorkloadEstimatesRequest')
    ListWorkloadEstimatesResponse = Shapes::StructureShape.new(name: 'ListWorkloadEstimatesResponse')
    MatchOption = Shapes::StringShape.new(name: 'MatchOption')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NegateReservedInstanceAction = Shapes::StructureShape.new(name: 'NegateReservedInstanceAction')
    NegateSavingsPlanAction = Shapes::StructureShape.new(name: 'NegateSavingsPlanAction')
    NextPageToken = Shapes::StringShape.new(name: 'NextPageToken')
    Operation = Shapes::StringShape.new(name: 'Operation')
    PurchaseAgreementType = Shapes::StringShape.new(name: 'PurchaseAgreementType')
    RateType = Shapes::StringShape.new(name: 'RateType')
    RateTypes = Shapes::ListShape.new(name: 'RateTypes')
    ReservedInstanceInstanceCount = Shapes::IntegerShape.new(name: 'ReservedInstanceInstanceCount')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTagKey = Shapes::StringShape.new(name: 'ResourceTagKey')
    ResourceTagKeys = Shapes::ListShape.new(name: 'ResourceTagKeys')
    ResourceTagValue = Shapes::StringShape.new(name: 'ResourceTagValue')
    SavingsPlanArns = Shapes::ListShape.new(name: 'SavingsPlanArns')
    SavingsPlanCommitment = Shapes::FloatShape.new(name: 'SavingsPlanCommitment')
    ServiceCode = Shapes::StringShape.new(name: 'ServiceCode')
    ServiceCostDifferenceMap = Shapes::MapShape.new(name: 'ServiceCostDifferenceMap')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    Tags = Shapes::MapShape.new(name: 'Tags')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateBillEstimateRequest = Shapes::StructureShape.new(name: 'UpdateBillEstimateRequest')
    UpdateBillEstimateResponse = Shapes::StructureShape.new(name: 'UpdateBillEstimateResponse')
    UpdateBillScenarioRequest = Shapes::StructureShape.new(name: 'UpdateBillScenarioRequest')
    UpdateBillScenarioResponse = Shapes::StructureShape.new(name: 'UpdateBillScenarioResponse')
    UpdatePreferencesRequest = Shapes::StructureShape.new(name: 'UpdatePreferencesRequest')
    UpdatePreferencesResponse = Shapes::StructureShape.new(name: 'UpdatePreferencesResponse')
    UpdateWorkloadEstimateRequest = Shapes::StructureShape.new(name: 'UpdateWorkloadEstimateRequest')
    UpdateWorkloadEstimateResponse = Shapes::StructureShape.new(name: 'UpdateWorkloadEstimateResponse')
    UsageAmount = Shapes::StructureShape.new(name: 'UsageAmount')
    UsageAmounts = Shapes::ListShape.new(name: 'UsageAmounts')
    UsageGroup = Shapes::StringShape.new(name: 'UsageGroup')
    UsageQuantities = Shapes::ListShape.new(name: 'UsageQuantities')
    UsageQuantity = Shapes::StructureShape.new(name: 'UsageQuantity')
    UsageQuantityResult = Shapes::StructureShape.new(name: 'UsageQuantityResult')
    UsageType = Shapes::StringShape.new(name: 'UsageType')
    Uuid = Shapes::StringShape.new(name: 'Uuid')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    WorkloadEstimateCostStatus = Shapes::StringShape.new(name: 'WorkloadEstimateCostStatus')
    WorkloadEstimateName = Shapes::StringShape.new(name: 'WorkloadEstimateName')
    WorkloadEstimateRateType = Shapes::StringShape.new(name: 'WorkloadEstimateRateType')
    WorkloadEstimateStatus = Shapes::StringShape.new(name: 'WorkloadEstimateStatus')
    WorkloadEstimateSummaries = Shapes::ListShape.new(name: 'WorkloadEstimateSummaries')
    WorkloadEstimateSummary = Shapes::StructureShape.new(name: 'WorkloadEstimateSummary')
    WorkloadEstimateUpdateUsageErrorCode = Shapes::StringShape.new(name: 'WorkloadEstimateUpdateUsageErrorCode')
    WorkloadEstimateUsageItem = Shapes::StructureShape.new(name: 'WorkloadEstimateUsageItem')
    WorkloadEstimateUsageItems = Shapes::ListShape.new(name: 'WorkloadEstimateUsageItems')
    WorkloadEstimateUsageQuantity = Shapes::StructureShape.new(name: 'WorkloadEstimateUsageQuantity')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddReservedInstanceAction.add_member(:reserved_instances_offering_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "reservedInstancesOfferingId"))
    AddReservedInstanceAction.add_member(:instance_count, Shapes::ShapeRef.new(shape: ReservedInstanceInstanceCount, location_name: "instanceCount"))
    AddReservedInstanceAction.struct_class = Types::AddReservedInstanceAction

    AddSavingsPlanAction.add_member(:savings_plan_offering_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "savingsPlanOfferingId"))
    AddSavingsPlanAction.add_member(:commitment, Shapes::ShapeRef.new(shape: SavingsPlanCommitment, location_name: "commitment"))
    AddSavingsPlanAction.struct_class = Types::AddSavingsPlanAction

    BatchCreateBillScenarioCommitmentModificationEntries.member = Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationEntry)

    BatchCreateBillScenarioCommitmentModificationEntry.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "key"))
    BatchCreateBillScenarioCommitmentModificationEntry.add_member(:group, Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchCreateBillScenarioCommitmentModificationEntry.add_member(:usage_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "usageAccountId"))
    BatchCreateBillScenarioCommitmentModificationEntry.add_member(:commitment_action, Shapes::ShapeRef.new(shape: BillScenarioCommitmentModificationAction, required: true, location_name: "commitmentAction"))
    BatchCreateBillScenarioCommitmentModificationEntry.struct_class = Types::BatchCreateBillScenarioCommitmentModificationEntry

    BatchCreateBillScenarioCommitmentModificationError.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    BatchCreateBillScenarioCommitmentModificationError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    BatchCreateBillScenarioCommitmentModificationError.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationErrorCode, location_name: "errorCode"))
    BatchCreateBillScenarioCommitmentModificationError.struct_class = Types::BatchCreateBillScenarioCommitmentModificationError

    BatchCreateBillScenarioCommitmentModificationErrors.member = Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationError)

    BatchCreateBillScenarioCommitmentModificationItem.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    BatchCreateBillScenarioCommitmentModificationItem.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchCreateBillScenarioCommitmentModificationItem.add_member(:group, Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchCreateBillScenarioCommitmentModificationItem.add_member(:usage_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BatchCreateBillScenarioCommitmentModificationItem.add_member(:commitment_action, Shapes::ShapeRef.new(shape: BillScenarioCommitmentModificationAction, location_name: "commitmentAction"))
    BatchCreateBillScenarioCommitmentModificationItem.struct_class = Types::BatchCreateBillScenarioCommitmentModificationItem

    BatchCreateBillScenarioCommitmentModificationItems.member = Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationItem)

    BatchCreateBillScenarioCommitmentModificationRequest.add_member(:bill_scenario_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "billScenarioId"))
    BatchCreateBillScenarioCommitmentModificationRequest.add_member(:commitment_modifications, Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationEntries, required: true, location_name: "commitmentModifications"))
    BatchCreateBillScenarioCommitmentModificationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    BatchCreateBillScenarioCommitmentModificationRequest.struct_class = Types::BatchCreateBillScenarioCommitmentModificationRequest

    BatchCreateBillScenarioCommitmentModificationResponse.add_member(:items, Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationItems, location_name: "items"))
    BatchCreateBillScenarioCommitmentModificationResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationErrors, location_name: "errors"))
    BatchCreateBillScenarioCommitmentModificationResponse.struct_class = Types::BatchCreateBillScenarioCommitmentModificationResponse

    BatchCreateBillScenarioUsageModificationEntries.member = Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationEntry)

    BatchCreateBillScenarioUsageModificationEntry.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "serviceCode"))
    BatchCreateBillScenarioUsageModificationEntry.add_member(:usage_type, Shapes::ShapeRef.new(shape: UsageType, required: true, location_name: "usageType"))
    BatchCreateBillScenarioUsageModificationEntry.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, required: true, location_name: "operation"))
    BatchCreateBillScenarioUsageModificationEntry.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "availabilityZone"))
    BatchCreateBillScenarioUsageModificationEntry.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "key"))
    BatchCreateBillScenarioUsageModificationEntry.add_member(:group, Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchCreateBillScenarioUsageModificationEntry.add_member(:usage_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "usageAccountId"))
    BatchCreateBillScenarioUsageModificationEntry.add_member(:amounts, Shapes::ShapeRef.new(shape: UsageAmounts, location_name: "amounts"))
    BatchCreateBillScenarioUsageModificationEntry.add_member(:historical_usage, Shapes::ShapeRef.new(shape: HistoricalUsageEntity, location_name: "historicalUsage"))
    BatchCreateBillScenarioUsageModificationEntry.struct_class = Types::BatchCreateBillScenarioUsageModificationEntry

    BatchCreateBillScenarioUsageModificationError.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    BatchCreateBillScenarioUsageModificationError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    BatchCreateBillScenarioUsageModificationError.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationErrorCode, location_name: "errorCode"))
    BatchCreateBillScenarioUsageModificationError.struct_class = Types::BatchCreateBillScenarioUsageModificationError

    BatchCreateBillScenarioUsageModificationErrors.member = Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationError)

    BatchCreateBillScenarioUsageModificationItem.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "serviceCode"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:usage_type, Shapes::ShapeRef.new(shape: UsageType, required: true, location_name: "usageType"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, required: true, location_name: "operation"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:location, Shapes::ShapeRef.new(shape: String, location_name: "location"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "availabilityZone"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:group, Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:usage_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:quantities, Shapes::ShapeRef.new(shape: UsageQuantities, location_name: "quantities"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:historical_usage, Shapes::ShapeRef.new(shape: HistoricalUsageEntity, location_name: "historicalUsage"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    BatchCreateBillScenarioUsageModificationItem.struct_class = Types::BatchCreateBillScenarioUsageModificationItem

    BatchCreateBillScenarioUsageModificationItems.member = Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationItem)

    BatchCreateBillScenarioUsageModificationRequest.add_member(:bill_scenario_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "billScenarioId"))
    BatchCreateBillScenarioUsageModificationRequest.add_member(:usage_modifications, Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationEntries, required: true, location_name: "usageModifications"))
    BatchCreateBillScenarioUsageModificationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    BatchCreateBillScenarioUsageModificationRequest.struct_class = Types::BatchCreateBillScenarioUsageModificationRequest

    BatchCreateBillScenarioUsageModificationResponse.add_member(:items, Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationItems, location_name: "items"))
    BatchCreateBillScenarioUsageModificationResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationErrors, location_name: "errors"))
    BatchCreateBillScenarioUsageModificationResponse.struct_class = Types::BatchCreateBillScenarioUsageModificationResponse

    BatchCreateWorkloadEstimateUsageEntries.member = Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageEntry)

    BatchCreateWorkloadEstimateUsageEntry.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "serviceCode"))
    BatchCreateWorkloadEstimateUsageEntry.add_member(:usage_type, Shapes::ShapeRef.new(shape: UsageType, required: true, location_name: "usageType"))
    BatchCreateWorkloadEstimateUsageEntry.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, required: true, location_name: "operation"))
    BatchCreateWorkloadEstimateUsageEntry.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "key"))
    BatchCreateWorkloadEstimateUsageEntry.add_member(:group, Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchCreateWorkloadEstimateUsageEntry.add_member(:usage_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "usageAccountId"))
    BatchCreateWorkloadEstimateUsageEntry.add_member(:amount, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "amount"))
    BatchCreateWorkloadEstimateUsageEntry.add_member(:historical_usage, Shapes::ShapeRef.new(shape: HistoricalUsageEntity, location_name: "historicalUsage"))
    BatchCreateWorkloadEstimateUsageEntry.struct_class = Types::BatchCreateWorkloadEstimateUsageEntry

    BatchCreateWorkloadEstimateUsageError.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    BatchCreateWorkloadEstimateUsageError.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageCode, location_name: "errorCode"))
    BatchCreateWorkloadEstimateUsageError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    BatchCreateWorkloadEstimateUsageError.struct_class = Types::BatchCreateWorkloadEstimateUsageError

    BatchCreateWorkloadEstimateUsageErrors.member = Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageError)

    BatchCreateWorkloadEstimateUsageItem.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "serviceCode"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:usage_type, Shapes::ShapeRef.new(shape: UsageType, required: true, location_name: "usageType"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, required: true, location_name: "operation"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:location, Shapes::ShapeRef.new(shape: String, location_name: "location"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:usage_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:group, Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:quantity, Shapes::ShapeRef.new(shape: WorkloadEstimateUsageQuantity, location_name: "quantity"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:cost, Shapes::ShapeRef.new(shape: Double, location_name: "cost"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:currency, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currency"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:status, Shapes::ShapeRef.new(shape: WorkloadEstimateCostStatus, location_name: "status"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:historical_usage, Shapes::ShapeRef.new(shape: HistoricalUsageEntity, location_name: "historicalUsage"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    BatchCreateWorkloadEstimateUsageItem.struct_class = Types::BatchCreateWorkloadEstimateUsageItem

    BatchCreateWorkloadEstimateUsageItems.member = Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageItem)

    BatchCreateWorkloadEstimateUsageRequest.add_member(:workload_estimate_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "workloadEstimateId"))
    BatchCreateWorkloadEstimateUsageRequest.add_member(:usage, Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageEntries, required: true, location_name: "usage"))
    BatchCreateWorkloadEstimateUsageRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    BatchCreateWorkloadEstimateUsageRequest.struct_class = Types::BatchCreateWorkloadEstimateUsageRequest

    BatchCreateWorkloadEstimateUsageResponse.add_member(:items, Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageItems, location_name: "items"))
    BatchCreateWorkloadEstimateUsageResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageErrors, location_name: "errors"))
    BatchCreateWorkloadEstimateUsageResponse.struct_class = Types::BatchCreateWorkloadEstimateUsageResponse

    BatchDeleteBillScenarioCommitmentModificationEntries.member = Shapes::ShapeRef.new(shape: ResourceId)

    BatchDeleteBillScenarioCommitmentModificationError.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchDeleteBillScenarioCommitmentModificationError.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioCommitmentModificationErrorCode, location_name: "errorCode"))
    BatchDeleteBillScenarioCommitmentModificationError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    BatchDeleteBillScenarioCommitmentModificationError.struct_class = Types::BatchDeleteBillScenarioCommitmentModificationError

    BatchDeleteBillScenarioCommitmentModificationErrors.member = Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioCommitmentModificationError)

    BatchDeleteBillScenarioCommitmentModificationRequest.add_member(:bill_scenario_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "billScenarioId"))
    BatchDeleteBillScenarioCommitmentModificationRequest.add_member(:ids, Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioCommitmentModificationEntries, required: true, location_name: "ids"))
    BatchDeleteBillScenarioCommitmentModificationRequest.struct_class = Types::BatchDeleteBillScenarioCommitmentModificationRequest

    BatchDeleteBillScenarioCommitmentModificationResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioCommitmentModificationErrors, location_name: "errors"))
    BatchDeleteBillScenarioCommitmentModificationResponse.struct_class = Types::BatchDeleteBillScenarioCommitmentModificationResponse

    BatchDeleteBillScenarioUsageModificationEntries.member = Shapes::ShapeRef.new(shape: ResourceId)

    BatchDeleteBillScenarioUsageModificationError.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchDeleteBillScenarioUsageModificationError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    BatchDeleteBillScenarioUsageModificationError.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioUsageModificationErrorCode, location_name: "errorCode"))
    BatchDeleteBillScenarioUsageModificationError.struct_class = Types::BatchDeleteBillScenarioUsageModificationError

    BatchDeleteBillScenarioUsageModificationErrors.member = Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioUsageModificationError)

    BatchDeleteBillScenarioUsageModificationRequest.add_member(:bill_scenario_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "billScenarioId"))
    BatchDeleteBillScenarioUsageModificationRequest.add_member(:ids, Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioUsageModificationEntries, required: true, location_name: "ids"))
    BatchDeleteBillScenarioUsageModificationRequest.struct_class = Types::BatchDeleteBillScenarioUsageModificationRequest

    BatchDeleteBillScenarioUsageModificationResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioUsageModificationErrors, location_name: "errors"))
    BatchDeleteBillScenarioUsageModificationResponse.struct_class = Types::BatchDeleteBillScenarioUsageModificationResponse

    BatchDeleteWorkloadEstimateUsageEntries.member = Shapes::ShapeRef.new(shape: ResourceId)

    BatchDeleteWorkloadEstimateUsageError.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchDeleteWorkloadEstimateUsageError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    BatchDeleteWorkloadEstimateUsageError.add_member(:error_code, Shapes::ShapeRef.new(shape: WorkloadEstimateUpdateUsageErrorCode, location_name: "errorCode"))
    BatchDeleteWorkloadEstimateUsageError.struct_class = Types::BatchDeleteWorkloadEstimateUsageError

    BatchDeleteWorkloadEstimateUsageErrors.member = Shapes::ShapeRef.new(shape: BatchDeleteWorkloadEstimateUsageError)

    BatchDeleteWorkloadEstimateUsageRequest.add_member(:workload_estimate_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "workloadEstimateId"))
    BatchDeleteWorkloadEstimateUsageRequest.add_member(:ids, Shapes::ShapeRef.new(shape: BatchDeleteWorkloadEstimateUsageEntries, required: true, location_name: "ids"))
    BatchDeleteWorkloadEstimateUsageRequest.struct_class = Types::BatchDeleteWorkloadEstimateUsageRequest

    BatchDeleteWorkloadEstimateUsageResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchDeleteWorkloadEstimateUsageErrors, location_name: "errors"))
    BatchDeleteWorkloadEstimateUsageResponse.struct_class = Types::BatchDeleteWorkloadEstimateUsageResponse

    BatchUpdateBillScenarioCommitmentModificationEntries.member = Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioCommitmentModificationEntry)

    BatchUpdateBillScenarioCommitmentModificationEntry.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    BatchUpdateBillScenarioCommitmentModificationEntry.add_member(:group, Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchUpdateBillScenarioCommitmentModificationEntry.struct_class = Types::BatchUpdateBillScenarioCommitmentModificationEntry

    BatchUpdateBillScenarioCommitmentModificationError.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchUpdateBillScenarioCommitmentModificationError.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioCommitmentModificationErrorCode, location_name: "errorCode"))
    BatchUpdateBillScenarioCommitmentModificationError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    BatchUpdateBillScenarioCommitmentModificationError.struct_class = Types::BatchUpdateBillScenarioCommitmentModificationError

    BatchUpdateBillScenarioCommitmentModificationErrors.member = Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioCommitmentModificationError)

    BatchUpdateBillScenarioCommitmentModificationRequest.add_member(:bill_scenario_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "billScenarioId"))
    BatchUpdateBillScenarioCommitmentModificationRequest.add_member(:commitment_modifications, Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioCommitmentModificationEntries, required: true, location_name: "commitmentModifications"))
    BatchUpdateBillScenarioCommitmentModificationRequest.struct_class = Types::BatchUpdateBillScenarioCommitmentModificationRequest

    BatchUpdateBillScenarioCommitmentModificationResponse.add_member(:items, Shapes::ShapeRef.new(shape: BillScenarioCommitmentModificationItems, location_name: "items"))
    BatchUpdateBillScenarioCommitmentModificationResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioCommitmentModificationErrors, location_name: "errors"))
    BatchUpdateBillScenarioCommitmentModificationResponse.struct_class = Types::BatchUpdateBillScenarioCommitmentModificationResponse

    BatchUpdateBillScenarioUsageModificationEntries.member = Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioUsageModificationEntry)

    BatchUpdateBillScenarioUsageModificationEntry.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    BatchUpdateBillScenarioUsageModificationEntry.add_member(:group, Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchUpdateBillScenarioUsageModificationEntry.add_member(:amounts, Shapes::ShapeRef.new(shape: UsageAmounts, location_name: "amounts"))
    BatchUpdateBillScenarioUsageModificationEntry.struct_class = Types::BatchUpdateBillScenarioUsageModificationEntry

    BatchUpdateBillScenarioUsageModificationError.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchUpdateBillScenarioUsageModificationError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    BatchUpdateBillScenarioUsageModificationError.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioUsageModificationErrorCode, location_name: "errorCode"))
    BatchUpdateBillScenarioUsageModificationError.struct_class = Types::BatchUpdateBillScenarioUsageModificationError

    BatchUpdateBillScenarioUsageModificationErrors.member = Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioUsageModificationError)

    BatchUpdateBillScenarioUsageModificationRequest.add_member(:bill_scenario_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "billScenarioId"))
    BatchUpdateBillScenarioUsageModificationRequest.add_member(:usage_modifications, Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioUsageModificationEntries, required: true, location_name: "usageModifications"))
    BatchUpdateBillScenarioUsageModificationRequest.struct_class = Types::BatchUpdateBillScenarioUsageModificationRequest

    BatchUpdateBillScenarioUsageModificationResponse.add_member(:items, Shapes::ShapeRef.new(shape: BillScenarioUsageModificationItems, location_name: "items"))
    BatchUpdateBillScenarioUsageModificationResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioUsageModificationErrors, location_name: "errors"))
    BatchUpdateBillScenarioUsageModificationResponse.struct_class = Types::BatchUpdateBillScenarioUsageModificationResponse

    BatchUpdateWorkloadEstimateUsageEntries.member = Shapes::ShapeRef.new(shape: BatchUpdateWorkloadEstimateUsageEntry)

    BatchUpdateWorkloadEstimateUsageEntry.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    BatchUpdateWorkloadEstimateUsageEntry.add_member(:group, Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchUpdateWorkloadEstimateUsageEntry.add_member(:amount, Shapes::ShapeRef.new(shape: Double, location_name: "amount"))
    BatchUpdateWorkloadEstimateUsageEntry.struct_class = Types::BatchUpdateWorkloadEstimateUsageEntry

    BatchUpdateWorkloadEstimateUsageError.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchUpdateWorkloadEstimateUsageError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    BatchUpdateWorkloadEstimateUsageError.add_member(:error_code, Shapes::ShapeRef.new(shape: WorkloadEstimateUpdateUsageErrorCode, location_name: "errorCode"))
    BatchUpdateWorkloadEstimateUsageError.struct_class = Types::BatchUpdateWorkloadEstimateUsageError

    BatchUpdateWorkloadEstimateUsageErrors.member = Shapes::ShapeRef.new(shape: BatchUpdateWorkloadEstimateUsageError)

    BatchUpdateWorkloadEstimateUsageRequest.add_member(:workload_estimate_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "workloadEstimateId"))
    BatchUpdateWorkloadEstimateUsageRequest.add_member(:usage, Shapes::ShapeRef.new(shape: BatchUpdateWorkloadEstimateUsageEntries, required: true, location_name: "usage"))
    BatchUpdateWorkloadEstimateUsageRequest.struct_class = Types::BatchUpdateWorkloadEstimateUsageRequest

    BatchUpdateWorkloadEstimateUsageResponse.add_member(:items, Shapes::ShapeRef.new(shape: WorkloadEstimateUsageItems, location_name: "items"))
    BatchUpdateWorkloadEstimateUsageResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchUpdateWorkloadEstimateUsageErrors, location_name: "errors"))
    BatchUpdateWorkloadEstimateUsageResponse.struct_class = Types::BatchUpdateWorkloadEstimateUsageResponse

    BillEstimateCommitmentSummaries.member = Shapes::ShapeRef.new(shape: BillEstimateCommitmentSummary)

    BillEstimateCommitmentSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BillEstimateCommitmentSummary.add_member(:purchase_agreement_type, Shapes::ShapeRef.new(shape: PurchaseAgreementType, location_name: "purchaseAgreementType"))
    BillEstimateCommitmentSummary.add_member(:offering_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "offeringId"))
    BillEstimateCommitmentSummary.add_member(:usage_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BillEstimateCommitmentSummary.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    BillEstimateCommitmentSummary.add_member(:term_length, Shapes::ShapeRef.new(shape: String, location_name: "termLength"))
    BillEstimateCommitmentSummary.add_member(:payment_option, Shapes::ShapeRef.new(shape: String, location_name: "paymentOption"))
    BillEstimateCommitmentSummary.add_member(:upfront_payment, Shapes::ShapeRef.new(shape: CostAmount, location_name: "upfrontPayment"))
    BillEstimateCommitmentSummary.add_member(:monthly_payment, Shapes::ShapeRef.new(shape: CostAmount, location_name: "monthlyPayment"))
    BillEstimateCommitmentSummary.struct_class = Types::BillEstimateCommitmentSummary

    BillEstimateCostSummary.add_member(:total_cost_difference, Shapes::ShapeRef.new(shape: CostDifference, location_name: "totalCostDifference"))
    BillEstimateCostSummary.add_member(:service_cost_differences, Shapes::ShapeRef.new(shape: ServiceCostDifferenceMap, location_name: "serviceCostDifferences"))
    BillEstimateCostSummary.struct_class = Types::BillEstimateCostSummary

    BillEstimateInputCommitmentModificationSummaries.member = Shapes::ShapeRef.new(shape: BillEstimateInputCommitmentModificationSummary)

    BillEstimateInputCommitmentModificationSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BillEstimateInputCommitmentModificationSummary.add_member(:group, Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BillEstimateInputCommitmentModificationSummary.add_member(:usage_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BillEstimateInputCommitmentModificationSummary.add_member(:commitment_action, Shapes::ShapeRef.new(shape: BillScenarioCommitmentModificationAction, location_name: "commitmentAction"))
    BillEstimateInputCommitmentModificationSummary.struct_class = Types::BillEstimateInputCommitmentModificationSummary

    BillEstimateInputUsageModificationSummaries.member = Shapes::ShapeRef.new(shape: BillEstimateInputUsageModificationSummary)

    BillEstimateInputUsageModificationSummary.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "serviceCode"))
    BillEstimateInputUsageModificationSummary.add_member(:usage_type, Shapes::ShapeRef.new(shape: UsageType, required: true, location_name: "usageType"))
    BillEstimateInputUsageModificationSummary.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, required: true, location_name: "operation"))
    BillEstimateInputUsageModificationSummary.add_member(:location, Shapes::ShapeRef.new(shape: String, location_name: "location"))
    BillEstimateInputUsageModificationSummary.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "availabilityZone"))
    BillEstimateInputUsageModificationSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BillEstimateInputUsageModificationSummary.add_member(:group, Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BillEstimateInputUsageModificationSummary.add_member(:usage_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BillEstimateInputUsageModificationSummary.add_member(:quantities, Shapes::ShapeRef.new(shape: UsageQuantities, location_name: "quantities"))
    BillEstimateInputUsageModificationSummary.add_member(:historical_usage, Shapes::ShapeRef.new(shape: HistoricalUsageEntity, location_name: "historicalUsage"))
    BillEstimateInputUsageModificationSummary.struct_class = Types::BillEstimateInputUsageModificationSummary

    BillEstimateLineItemSummaries.member = Shapes::ShapeRef.new(shape: BillEstimateLineItemSummary)

    BillEstimateLineItemSummary.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "serviceCode"))
    BillEstimateLineItemSummary.add_member(:usage_type, Shapes::ShapeRef.new(shape: UsageType, required: true, location_name: "usageType"))
    BillEstimateLineItemSummary.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, required: true, location_name: "operation"))
    BillEstimateLineItemSummary.add_member(:location, Shapes::ShapeRef.new(shape: String, location_name: "location"))
    BillEstimateLineItemSummary.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "availabilityZone"))
    BillEstimateLineItemSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BillEstimateLineItemSummary.add_member(:line_item_id, Shapes::ShapeRef.new(shape: String, location_name: "lineItemId"))
    BillEstimateLineItemSummary.add_member(:line_item_type, Shapes::ShapeRef.new(shape: String, location_name: "lineItemType"))
    BillEstimateLineItemSummary.add_member(:payer_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "payerAccountId"))
    BillEstimateLineItemSummary.add_member(:usage_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BillEstimateLineItemSummary.add_member(:estimated_usage_quantity, Shapes::ShapeRef.new(shape: UsageQuantityResult, location_name: "estimatedUsageQuantity"))
    BillEstimateLineItemSummary.add_member(:estimated_cost, Shapes::ShapeRef.new(shape: CostAmount, location_name: "estimatedCost"))
    BillEstimateLineItemSummary.add_member(:historical_usage_quantity, Shapes::ShapeRef.new(shape: UsageQuantityResult, location_name: "historicalUsageQuantity"))
    BillEstimateLineItemSummary.add_member(:historical_cost, Shapes::ShapeRef.new(shape: CostAmount, location_name: "historicalCost"))
    BillEstimateLineItemSummary.add_member(:savings_plan_arns, Shapes::ShapeRef.new(shape: SavingsPlanArns, location_name: "savingsPlanArns"))
    BillEstimateLineItemSummary.struct_class = Types::BillEstimateLineItemSummary

    BillEstimateSummaries.member = Shapes::ShapeRef.new(shape: BillEstimateSummary)

    BillEstimateSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    BillEstimateSummary.add_member(:name, Shapes::ShapeRef.new(shape: BillEstimateName, location_name: "name"))
    BillEstimateSummary.add_member(:status, Shapes::ShapeRef.new(shape: BillEstimateStatus, location_name: "status"))
    BillEstimateSummary.add_member(:bill_interval, Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval"))
    BillEstimateSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    BillEstimateSummary.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    BillEstimateSummary.struct_class = Types::BillEstimateSummary

    BillInterval.add_member(:start, Shapes::ShapeRef.new(shape: Timestamp, location_name: "start"))
    BillInterval.add_member(:end, Shapes::ShapeRef.new(shape: Timestamp, location_name: "end"))
    BillInterval.struct_class = Types::BillInterval

    BillScenarioCommitmentModificationAction.add_member(:add_reserved_instance_action, Shapes::ShapeRef.new(shape: AddReservedInstanceAction, location_name: "addReservedInstanceAction"))
    BillScenarioCommitmentModificationAction.add_member(:add_savings_plan_action, Shapes::ShapeRef.new(shape: AddSavingsPlanAction, location_name: "addSavingsPlanAction"))
    BillScenarioCommitmentModificationAction.add_member(:negate_reserved_instance_action, Shapes::ShapeRef.new(shape: NegateReservedInstanceAction, location_name: "negateReservedInstanceAction"))
    BillScenarioCommitmentModificationAction.add_member(:negate_savings_plan_action, Shapes::ShapeRef.new(shape: NegateSavingsPlanAction, location_name: "negateSavingsPlanAction"))
    BillScenarioCommitmentModificationAction.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    BillScenarioCommitmentModificationAction.add_member_subclass(:add_reserved_instance_action, Types::BillScenarioCommitmentModificationAction::AddReservedInstanceAction)
    BillScenarioCommitmentModificationAction.add_member_subclass(:add_savings_plan_action, Types::BillScenarioCommitmentModificationAction::AddSavingsPlanAction)
    BillScenarioCommitmentModificationAction.add_member_subclass(:negate_reserved_instance_action, Types::BillScenarioCommitmentModificationAction::NegateReservedInstanceAction)
    BillScenarioCommitmentModificationAction.add_member_subclass(:negate_savings_plan_action, Types::BillScenarioCommitmentModificationAction::NegateSavingsPlanAction)
    BillScenarioCommitmentModificationAction.add_member_subclass(:unknown, Types::BillScenarioCommitmentModificationAction::Unknown)
    BillScenarioCommitmentModificationAction.struct_class = Types::BillScenarioCommitmentModificationAction

    BillScenarioCommitmentModificationItem.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BillScenarioCommitmentModificationItem.add_member(:usage_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BillScenarioCommitmentModificationItem.add_member(:group, Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BillScenarioCommitmentModificationItem.add_member(:commitment_action, Shapes::ShapeRef.new(shape: BillScenarioCommitmentModificationAction, location_name: "commitmentAction"))
    BillScenarioCommitmentModificationItem.struct_class = Types::BillScenarioCommitmentModificationItem

    BillScenarioCommitmentModificationItems.member = Shapes::ShapeRef.new(shape: BillScenarioCommitmentModificationItem)

    BillScenarioSummaries.member = Shapes::ShapeRef.new(shape: BillScenarioSummary)

    BillScenarioSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    BillScenarioSummary.add_member(:name, Shapes::ShapeRef.new(shape: BillScenarioName, location_name: "name"))
    BillScenarioSummary.add_member(:bill_interval, Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval"))
    BillScenarioSummary.add_member(:status, Shapes::ShapeRef.new(shape: BillScenarioStatus, location_name: "status"))
    BillScenarioSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    BillScenarioSummary.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    BillScenarioSummary.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    BillScenarioSummary.struct_class = Types::BillScenarioSummary

    BillScenarioUsageModificationItem.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "serviceCode"))
    BillScenarioUsageModificationItem.add_member(:usage_type, Shapes::ShapeRef.new(shape: UsageType, required: true, location_name: "usageType"))
    BillScenarioUsageModificationItem.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, required: true, location_name: "operation"))
    BillScenarioUsageModificationItem.add_member(:location, Shapes::ShapeRef.new(shape: String, location_name: "location"))
    BillScenarioUsageModificationItem.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "availabilityZone"))
    BillScenarioUsageModificationItem.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BillScenarioUsageModificationItem.add_member(:group, Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BillScenarioUsageModificationItem.add_member(:usage_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BillScenarioUsageModificationItem.add_member(:quantities, Shapes::ShapeRef.new(shape: UsageQuantities, location_name: "quantities"))
    BillScenarioUsageModificationItem.add_member(:historical_usage, Shapes::ShapeRef.new(shape: HistoricalUsageEntity, location_name: "historicalUsage"))
    BillScenarioUsageModificationItem.struct_class = Types::BillScenarioUsageModificationItem

    BillScenarioUsageModificationItems.member = Shapes::ShapeRef.new(shape: BillScenarioUsageModificationItem)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CostAmount.add_member(:amount, Shapes::ShapeRef.new(shape: Double, location_name: "amount"))
    CostAmount.add_member(:currency, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currency"))
    CostAmount.struct_class = Types::CostAmount

    CostDifference.add_member(:historical_cost, Shapes::ShapeRef.new(shape: CostAmount, location_name: "historicalCost"))
    CostDifference.add_member(:estimated_cost, Shapes::ShapeRef.new(shape: CostAmount, location_name: "estimatedCost"))
    CostDifference.struct_class = Types::CostDifference

    CreateBillEstimateRequest.add_member(:bill_scenario_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "billScenarioId"))
    CreateBillEstimateRequest.add_member(:name, Shapes::ShapeRef.new(shape: BillEstimateName, required: true, location_name: "name"))
    CreateBillEstimateRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateBillEstimateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateBillEstimateRequest.struct_class = Types::CreateBillEstimateRequest

    CreateBillEstimateResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    CreateBillEstimateResponse.add_member(:name, Shapes::ShapeRef.new(shape: BillEstimateName, location_name: "name"))
    CreateBillEstimateResponse.add_member(:status, Shapes::ShapeRef.new(shape: BillEstimateStatus, location_name: "status"))
    CreateBillEstimateResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    CreateBillEstimateResponse.add_member(:bill_interval, Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval"))
    CreateBillEstimateResponse.add_member(:cost_summary, Shapes::ShapeRef.new(shape: BillEstimateCostSummary, location_name: "costSummary"))
    CreateBillEstimateResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    CreateBillEstimateResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    CreateBillEstimateResponse.struct_class = Types::CreateBillEstimateResponse

    CreateBillScenarioRequest.add_member(:name, Shapes::ShapeRef.new(shape: BillScenarioName, required: true, location_name: "name"))
    CreateBillScenarioRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateBillScenarioRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateBillScenarioRequest.struct_class = Types::CreateBillScenarioRequest

    CreateBillScenarioResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    CreateBillScenarioResponse.add_member(:name, Shapes::ShapeRef.new(shape: BillScenarioName, location_name: "name"))
    CreateBillScenarioResponse.add_member(:bill_interval, Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval"))
    CreateBillScenarioResponse.add_member(:status, Shapes::ShapeRef.new(shape: BillScenarioStatus, location_name: "status"))
    CreateBillScenarioResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    CreateBillScenarioResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    CreateBillScenarioResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    CreateBillScenarioResponse.struct_class = Types::CreateBillScenarioResponse

    CreateWorkloadEstimateRequest.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadEstimateName, required: true, location_name: "name"))
    CreateWorkloadEstimateRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateWorkloadEstimateRequest.add_member(:rate_type, Shapes::ShapeRef.new(shape: WorkloadEstimateRateType, location_name: "rateType"))
    CreateWorkloadEstimateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateWorkloadEstimateRequest.struct_class = Types::CreateWorkloadEstimateRequest

    CreateWorkloadEstimateResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    CreateWorkloadEstimateResponse.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadEstimateName, location_name: "name"))
    CreateWorkloadEstimateResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    CreateWorkloadEstimateResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    CreateWorkloadEstimateResponse.add_member(:rate_type, Shapes::ShapeRef.new(shape: WorkloadEstimateRateType, location_name: "rateType"))
    CreateWorkloadEstimateResponse.add_member(:rate_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "rateTimestamp"))
    CreateWorkloadEstimateResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkloadEstimateStatus, location_name: "status"))
    CreateWorkloadEstimateResponse.add_member(:total_cost, Shapes::ShapeRef.new(shape: Double, location_name: "totalCost"))
    CreateWorkloadEstimateResponse.add_member(:cost_currency, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "costCurrency"))
    CreateWorkloadEstimateResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    CreateWorkloadEstimateResponse.struct_class = Types::CreateWorkloadEstimateResponse

    DataUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    DataUnavailableException.struct_class = Types::DataUnavailableException

    DeleteBillEstimateRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "identifier"))
    DeleteBillEstimateRequest.struct_class = Types::DeleteBillEstimateRequest

    DeleteBillEstimateResponse.struct_class = Types::DeleteBillEstimateResponse

    DeleteBillScenarioRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "identifier"))
    DeleteBillScenarioRequest.struct_class = Types::DeleteBillScenarioRequest

    DeleteBillScenarioResponse.struct_class = Types::DeleteBillScenarioResponse

    DeleteWorkloadEstimateRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "identifier"))
    DeleteWorkloadEstimateRequest.struct_class = Types::DeleteWorkloadEstimateRequest

    DeleteWorkloadEstimateResponse.struct_class = Types::DeleteWorkloadEstimateResponse

    Expression.add_member(:and, Shapes::ShapeRef.new(shape: ExpressionList, location_name: "and"))
    Expression.add_member(:or, Shapes::ShapeRef.new(shape: ExpressionList, location_name: "or"))
    Expression.add_member(:not, Shapes::ShapeRef.new(shape: Expression, location_name: "not"))
    Expression.add_member(:cost_categories, Shapes::ShapeRef.new(shape: ExpressionFilter, location_name: "costCategories"))
    Expression.add_member(:dimensions, Shapes::ShapeRef.new(shape: ExpressionFilter, location_name: "dimensions"))
    Expression.add_member(:tags, Shapes::ShapeRef.new(shape: ExpressionFilter, location_name: "tags"))
    Expression.struct_class = Types::Expression

    ExpressionFilter.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "key"))
    ExpressionFilter.add_member(:match_options, Shapes::ShapeRef.new(shape: StringList, location_name: "matchOptions"))
    ExpressionFilter.add_member(:values, Shapes::ShapeRef.new(shape: StringList, location_name: "values"))
    ExpressionFilter.struct_class = Types::ExpressionFilter

    ExpressionList.member = Shapes::ShapeRef.new(shape: Expression)

    FilterTimestamp.add_member(:after_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "afterTimestamp"))
    FilterTimestamp.add_member(:before_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "beforeTimestamp"))
    FilterTimestamp.struct_class = Types::FilterTimestamp

    GetBillEstimateRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "identifier"))
    GetBillEstimateRequest.struct_class = Types::GetBillEstimateRequest

    GetBillEstimateResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GetBillEstimateResponse.add_member(:name, Shapes::ShapeRef.new(shape: BillEstimateName, location_name: "name"))
    GetBillEstimateResponse.add_member(:status, Shapes::ShapeRef.new(shape: BillEstimateStatus, location_name: "status"))
    GetBillEstimateResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    GetBillEstimateResponse.add_member(:bill_interval, Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval"))
    GetBillEstimateResponse.add_member(:cost_summary, Shapes::ShapeRef.new(shape: BillEstimateCostSummary, location_name: "costSummary"))
    GetBillEstimateResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetBillEstimateResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    GetBillEstimateResponse.struct_class = Types::GetBillEstimateResponse

    GetBillScenarioRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "identifier"))
    GetBillScenarioRequest.struct_class = Types::GetBillScenarioRequest

    GetBillScenarioResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GetBillScenarioResponse.add_member(:name, Shapes::ShapeRef.new(shape: BillScenarioName, location_name: "name"))
    GetBillScenarioResponse.add_member(:bill_interval, Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval"))
    GetBillScenarioResponse.add_member(:status, Shapes::ShapeRef.new(shape: BillScenarioStatus, location_name: "status"))
    GetBillScenarioResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetBillScenarioResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    GetBillScenarioResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    GetBillScenarioResponse.struct_class = Types::GetBillScenarioResponse

    GetPreferencesRequest.struct_class = Types::GetPreferencesRequest

    GetPreferencesResponse.add_member(:management_account_rate_type_selections, Shapes::ShapeRef.new(shape: RateTypes, location_name: "managementAccountRateTypeSelections"))
    GetPreferencesResponse.add_member(:member_account_rate_type_selections, Shapes::ShapeRef.new(shape: RateTypes, location_name: "memberAccountRateTypeSelections"))
    GetPreferencesResponse.struct_class = Types::GetPreferencesResponse

    GetWorkloadEstimateRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "identifier"))
    GetWorkloadEstimateRequest.struct_class = Types::GetWorkloadEstimateRequest

    GetWorkloadEstimateResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GetWorkloadEstimateResponse.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadEstimateName, location_name: "name"))
    GetWorkloadEstimateResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetWorkloadEstimateResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    GetWorkloadEstimateResponse.add_member(:rate_type, Shapes::ShapeRef.new(shape: WorkloadEstimateRateType, location_name: "rateType"))
    GetWorkloadEstimateResponse.add_member(:rate_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "rateTimestamp"))
    GetWorkloadEstimateResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkloadEstimateStatus, location_name: "status"))
    GetWorkloadEstimateResponse.add_member(:total_cost, Shapes::ShapeRef.new(shape: Double, location_name: "totalCost"))
    GetWorkloadEstimateResponse.add_member(:cost_currency, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "costCurrency"))
    GetWorkloadEstimateResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    GetWorkloadEstimateResponse.struct_class = Types::GetWorkloadEstimateResponse

    HistoricalUsageEntity.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "serviceCode"))
    HistoricalUsageEntity.add_member(:usage_type, Shapes::ShapeRef.new(shape: UsageType, required: true, location_name: "usageType"))
    HistoricalUsageEntity.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, required: true, location_name: "operation"))
    HistoricalUsageEntity.add_member(:location, Shapes::ShapeRef.new(shape: String, location_name: "location"))
    HistoricalUsageEntity.add_member(:usage_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "usageAccountId"))
    HistoricalUsageEntity.add_member(:bill_interval, Shapes::ShapeRef.new(shape: BillInterval, required: true, location_name: "billInterval"))
    HistoricalUsageEntity.add_member(:filter_expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "filterExpression"))
    HistoricalUsageEntity.struct_class = Types::HistoricalUsageEntity

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    InternalServerException.struct_class = Types::InternalServerException

    ListBillEstimateCommitmentsRequest.add_member(:bill_estimate_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "billEstimateId"))
    ListBillEstimateCommitmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimateCommitmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillEstimateCommitmentsRequest.struct_class = Types::ListBillEstimateCommitmentsRequest

    ListBillEstimateCommitmentsResponse.add_member(:items, Shapes::ShapeRef.new(shape: BillEstimateCommitmentSummaries, location_name: "items"))
    ListBillEstimateCommitmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimateCommitmentsResponse.struct_class = Types::ListBillEstimateCommitmentsResponse

    ListBillEstimateInputCommitmentModificationsRequest.add_member(:bill_estimate_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "billEstimateId"))
    ListBillEstimateInputCommitmentModificationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimateInputCommitmentModificationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillEstimateInputCommitmentModificationsRequest.struct_class = Types::ListBillEstimateInputCommitmentModificationsRequest

    ListBillEstimateInputCommitmentModificationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: BillEstimateInputCommitmentModificationSummaries, location_name: "items"))
    ListBillEstimateInputCommitmentModificationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimateInputCommitmentModificationsResponse.struct_class = Types::ListBillEstimateInputCommitmentModificationsResponse

    ListBillEstimateInputUsageModificationsRequest.add_member(:bill_estimate_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "billEstimateId"))
    ListBillEstimateInputUsageModificationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListUsageFilters, location_name: "filters"))
    ListBillEstimateInputUsageModificationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimateInputUsageModificationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillEstimateInputUsageModificationsRequest.struct_class = Types::ListBillEstimateInputUsageModificationsRequest

    ListBillEstimateInputUsageModificationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: BillEstimateInputUsageModificationSummaries, location_name: "items"))
    ListBillEstimateInputUsageModificationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimateInputUsageModificationsResponse.struct_class = Types::ListBillEstimateInputUsageModificationsResponse

    ListBillEstimateLineItemsFilter.add_member(:name, Shapes::ShapeRef.new(shape: ListBillEstimateLineItemsFilterName, required: true, location_name: "name"))
    ListBillEstimateLineItemsFilter.add_member(:values, Shapes::ShapeRef.new(shape: ListBillEstimateLineItemsFilterValues, required: true, location_name: "values"))
    ListBillEstimateLineItemsFilter.add_member(:match_option, Shapes::ShapeRef.new(shape: MatchOption, location_name: "matchOption"))
    ListBillEstimateLineItemsFilter.struct_class = Types::ListBillEstimateLineItemsFilter

    ListBillEstimateLineItemsFilterValues.member = Shapes::ShapeRef.new(shape: String)

    ListBillEstimateLineItemsFilters.member = Shapes::ShapeRef.new(shape: ListBillEstimateLineItemsFilter)

    ListBillEstimateLineItemsRequest.add_member(:bill_estimate_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "billEstimateId"))
    ListBillEstimateLineItemsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListBillEstimateLineItemsFilters, location_name: "filters"))
    ListBillEstimateLineItemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimateLineItemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillEstimateLineItemsRequest.struct_class = Types::ListBillEstimateLineItemsRequest

    ListBillEstimateLineItemsResponse.add_member(:items, Shapes::ShapeRef.new(shape: BillEstimateLineItemSummaries, location_name: "items"))
    ListBillEstimateLineItemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimateLineItemsResponse.struct_class = Types::ListBillEstimateLineItemsResponse

    ListBillEstimatesFilter.add_member(:name, Shapes::ShapeRef.new(shape: ListBillEstimatesFilterName, required: true, location_name: "name"))
    ListBillEstimatesFilter.add_member(:values, Shapes::ShapeRef.new(shape: ListBillEstimatesFilterValues, required: true, location_name: "values"))
    ListBillEstimatesFilter.add_member(:match_option, Shapes::ShapeRef.new(shape: MatchOption, location_name: "matchOption"))
    ListBillEstimatesFilter.struct_class = Types::ListBillEstimatesFilter

    ListBillEstimatesFilterValues.member = Shapes::ShapeRef.new(shape: String)

    ListBillEstimatesFilters.member = Shapes::ShapeRef.new(shape: ListBillEstimatesFilter)

    ListBillEstimatesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListBillEstimatesFilters, location_name: "filters"))
    ListBillEstimatesRequest.add_member(:created_at_filter, Shapes::ShapeRef.new(shape: FilterTimestamp, location_name: "createdAtFilter"))
    ListBillEstimatesRequest.add_member(:expires_at_filter, Shapes::ShapeRef.new(shape: FilterTimestamp, location_name: "expiresAtFilter"))
    ListBillEstimatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillEstimatesRequest.struct_class = Types::ListBillEstimatesRequest

    ListBillEstimatesResponse.add_member(:items, Shapes::ShapeRef.new(shape: BillEstimateSummaries, location_name: "items"))
    ListBillEstimatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimatesResponse.struct_class = Types::ListBillEstimatesResponse

    ListBillScenarioCommitmentModificationsRequest.add_member(:bill_scenario_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "billScenarioId"))
    ListBillScenarioCommitmentModificationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillScenarioCommitmentModificationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillScenarioCommitmentModificationsRequest.struct_class = Types::ListBillScenarioCommitmentModificationsRequest

    ListBillScenarioCommitmentModificationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: BillScenarioCommitmentModificationItems, location_name: "items"))
    ListBillScenarioCommitmentModificationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillScenarioCommitmentModificationsResponse.struct_class = Types::ListBillScenarioCommitmentModificationsResponse

    ListBillScenarioUsageModificationsRequest.add_member(:bill_scenario_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "billScenarioId"))
    ListBillScenarioUsageModificationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListUsageFilters, location_name: "filters"))
    ListBillScenarioUsageModificationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillScenarioUsageModificationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillScenarioUsageModificationsRequest.struct_class = Types::ListBillScenarioUsageModificationsRequest

    ListBillScenarioUsageModificationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: BillScenarioUsageModificationItems, location_name: "items"))
    ListBillScenarioUsageModificationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillScenarioUsageModificationsResponse.struct_class = Types::ListBillScenarioUsageModificationsResponse

    ListBillScenariosFilter.add_member(:name, Shapes::ShapeRef.new(shape: ListBillScenariosFilterName, required: true, location_name: "name"))
    ListBillScenariosFilter.add_member(:values, Shapes::ShapeRef.new(shape: ListBillScenariosFilterValues, required: true, location_name: "values"))
    ListBillScenariosFilter.add_member(:match_option, Shapes::ShapeRef.new(shape: MatchOption, location_name: "matchOption"))
    ListBillScenariosFilter.struct_class = Types::ListBillScenariosFilter

    ListBillScenariosFilterValues.member = Shapes::ShapeRef.new(shape: String)

    ListBillScenariosFilters.member = Shapes::ShapeRef.new(shape: ListBillScenariosFilter)

    ListBillScenariosRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListBillScenariosFilters, location_name: "filters"))
    ListBillScenariosRequest.add_member(:created_at_filter, Shapes::ShapeRef.new(shape: FilterTimestamp, location_name: "createdAtFilter"))
    ListBillScenariosRequest.add_member(:expires_at_filter, Shapes::ShapeRef.new(shape: FilterTimestamp, location_name: "expiresAtFilter"))
    ListBillScenariosRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillScenariosRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillScenariosRequest.struct_class = Types::ListBillScenariosRequest

    ListBillScenariosResponse.add_member(:items, Shapes::ShapeRef.new(shape: BillScenarioSummaries, location_name: "items"))
    ListBillScenariosResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillScenariosResponse.struct_class = Types::ListBillScenariosResponse

    ListTagsForResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListUsageFilter.add_member(:name, Shapes::ShapeRef.new(shape: ListUsageFilterName, required: true, location_name: "name"))
    ListUsageFilter.add_member(:values, Shapes::ShapeRef.new(shape: ListUsageFilterValues, required: true, location_name: "values"))
    ListUsageFilter.add_member(:match_option, Shapes::ShapeRef.new(shape: MatchOption, location_name: "matchOption"))
    ListUsageFilter.struct_class = Types::ListUsageFilter

    ListUsageFilterValues.member = Shapes::ShapeRef.new(shape: String)

    ListUsageFilters.member = Shapes::ShapeRef.new(shape: ListUsageFilter)

    ListWorkloadEstimateUsageRequest.add_member(:workload_estimate_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "workloadEstimateId"))
    ListWorkloadEstimateUsageRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListUsageFilters, location_name: "filters"))
    ListWorkloadEstimateUsageRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListWorkloadEstimateUsageRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListWorkloadEstimateUsageRequest.struct_class = Types::ListWorkloadEstimateUsageRequest

    ListWorkloadEstimateUsageResponse.add_member(:items, Shapes::ShapeRef.new(shape: WorkloadEstimateUsageItems, location_name: "items"))
    ListWorkloadEstimateUsageResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListWorkloadEstimateUsageResponse.struct_class = Types::ListWorkloadEstimateUsageResponse

    ListWorkloadEstimatesFilter.add_member(:name, Shapes::ShapeRef.new(shape: ListWorkloadEstimatesFilterName, required: true, location_name: "name"))
    ListWorkloadEstimatesFilter.add_member(:values, Shapes::ShapeRef.new(shape: ListWorkloadEstimatesFilterValues, required: true, location_name: "values"))
    ListWorkloadEstimatesFilter.add_member(:match_option, Shapes::ShapeRef.new(shape: MatchOption, location_name: "matchOption"))
    ListWorkloadEstimatesFilter.struct_class = Types::ListWorkloadEstimatesFilter

    ListWorkloadEstimatesFilterValues.member = Shapes::ShapeRef.new(shape: String)

    ListWorkloadEstimatesFilters.member = Shapes::ShapeRef.new(shape: ListWorkloadEstimatesFilter)

    ListWorkloadEstimatesRequest.add_member(:created_at_filter, Shapes::ShapeRef.new(shape: FilterTimestamp, location_name: "createdAtFilter"))
    ListWorkloadEstimatesRequest.add_member(:expires_at_filter, Shapes::ShapeRef.new(shape: FilterTimestamp, location_name: "expiresAtFilter"))
    ListWorkloadEstimatesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListWorkloadEstimatesFilters, location_name: "filters"))
    ListWorkloadEstimatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListWorkloadEstimatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListWorkloadEstimatesRequest.struct_class = Types::ListWorkloadEstimatesRequest

    ListWorkloadEstimatesResponse.add_member(:items, Shapes::ShapeRef.new(shape: WorkloadEstimateSummaries, location_name: "items"))
    ListWorkloadEstimatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListWorkloadEstimatesResponse.struct_class = Types::ListWorkloadEstimatesResponse

    NegateReservedInstanceAction.add_member(:reserved_instances_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "reservedInstancesId"))
    NegateReservedInstanceAction.struct_class = Types::NegateReservedInstanceAction

    NegateSavingsPlanAction.add_member(:savings_plan_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "savingsPlanId"))
    NegateSavingsPlanAction.struct_class = Types::NegateSavingsPlanAction

    RateTypes.member = Shapes::ShapeRef.new(shape: RateType)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTagKeys.member = Shapes::ShapeRef.new(shape: ResourceTagKey)

    SavingsPlanArns.member = Shapes::ShapeRef.new(shape: String)

    ServiceCostDifferenceMap.key = Shapes::ShapeRef.new(shape: String)
    ServiceCostDifferenceMap.value = Shapes::ShapeRef.new(shape: CostDifference)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StringList.member = Shapes::ShapeRef.new(shape: String)

    TagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: ResourceTagKey)
    Tags.value = Shapes::ShapeRef.new(shape: ResourceTagValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: ResourceTagKeys, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateBillEstimateRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "identifier"))
    UpdateBillEstimateRequest.add_member(:name, Shapes::ShapeRef.new(shape: BillEstimateName, location_name: "name"))
    UpdateBillEstimateRequest.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    UpdateBillEstimateRequest.struct_class = Types::UpdateBillEstimateRequest

    UpdateBillEstimateResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    UpdateBillEstimateResponse.add_member(:name, Shapes::ShapeRef.new(shape: BillEstimateName, location_name: "name"))
    UpdateBillEstimateResponse.add_member(:status, Shapes::ShapeRef.new(shape: BillEstimateStatus, location_name: "status"))
    UpdateBillEstimateResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    UpdateBillEstimateResponse.add_member(:bill_interval, Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval"))
    UpdateBillEstimateResponse.add_member(:cost_summary, Shapes::ShapeRef.new(shape: BillEstimateCostSummary, location_name: "costSummary"))
    UpdateBillEstimateResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    UpdateBillEstimateResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    UpdateBillEstimateResponse.struct_class = Types::UpdateBillEstimateResponse

    UpdateBillScenarioRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "identifier"))
    UpdateBillScenarioRequest.add_member(:name, Shapes::ShapeRef.new(shape: BillScenarioName, location_name: "name"))
    UpdateBillScenarioRequest.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    UpdateBillScenarioRequest.struct_class = Types::UpdateBillScenarioRequest

    UpdateBillScenarioResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    UpdateBillScenarioResponse.add_member(:name, Shapes::ShapeRef.new(shape: BillScenarioName, location_name: "name"))
    UpdateBillScenarioResponse.add_member(:bill_interval, Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval"))
    UpdateBillScenarioResponse.add_member(:status, Shapes::ShapeRef.new(shape: BillScenarioStatus, location_name: "status"))
    UpdateBillScenarioResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    UpdateBillScenarioResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    UpdateBillScenarioResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    UpdateBillScenarioResponse.struct_class = Types::UpdateBillScenarioResponse

    UpdatePreferencesRequest.add_member(:management_account_rate_type_selections, Shapes::ShapeRef.new(shape: RateTypes, location_name: "managementAccountRateTypeSelections"))
    UpdatePreferencesRequest.add_member(:member_account_rate_type_selections, Shapes::ShapeRef.new(shape: RateTypes, location_name: "memberAccountRateTypeSelections"))
    UpdatePreferencesRequest.struct_class = Types::UpdatePreferencesRequest

    UpdatePreferencesResponse.add_member(:management_account_rate_type_selections, Shapes::ShapeRef.new(shape: RateTypes, location_name: "managementAccountRateTypeSelections"))
    UpdatePreferencesResponse.add_member(:member_account_rate_type_selections, Shapes::ShapeRef.new(shape: RateTypes, location_name: "memberAccountRateTypeSelections"))
    UpdatePreferencesResponse.struct_class = Types::UpdatePreferencesResponse

    UpdateWorkloadEstimateRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "identifier"))
    UpdateWorkloadEstimateRequest.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadEstimateName, location_name: "name"))
    UpdateWorkloadEstimateRequest.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    UpdateWorkloadEstimateRequest.struct_class = Types::UpdateWorkloadEstimateRequest

    UpdateWorkloadEstimateResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    UpdateWorkloadEstimateResponse.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadEstimateName, location_name: "name"))
    UpdateWorkloadEstimateResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    UpdateWorkloadEstimateResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    UpdateWorkloadEstimateResponse.add_member(:rate_type, Shapes::ShapeRef.new(shape: WorkloadEstimateRateType, location_name: "rateType"))
    UpdateWorkloadEstimateResponse.add_member(:rate_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "rateTimestamp"))
    UpdateWorkloadEstimateResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkloadEstimateStatus, location_name: "status"))
    UpdateWorkloadEstimateResponse.add_member(:total_cost, Shapes::ShapeRef.new(shape: Double, location_name: "totalCost"))
    UpdateWorkloadEstimateResponse.add_member(:cost_currency, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "costCurrency"))
    UpdateWorkloadEstimateResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    UpdateWorkloadEstimateResponse.struct_class = Types::UpdateWorkloadEstimateResponse

    UsageAmount.add_member(:start_hour, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startHour"))
    UsageAmount.add_member(:amount, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "amount"))
    UsageAmount.struct_class = Types::UsageAmount

    UsageAmounts.member = Shapes::ShapeRef.new(shape: UsageAmount)

    UsageQuantities.member = Shapes::ShapeRef.new(shape: UsageQuantity)

    UsageQuantity.add_member(:start_hour, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startHour"))
    UsageQuantity.add_member(:unit, Shapes::ShapeRef.new(shape: String, location_name: "unit"))
    UsageQuantity.add_member(:amount, Shapes::ShapeRef.new(shape: Double, location_name: "amount"))
    UsageQuantity.struct_class = Types::UsageQuantity

    UsageQuantityResult.add_member(:amount, Shapes::ShapeRef.new(shape: Double, location_name: "amount"))
    UsageQuantityResult.add_member(:unit, Shapes::ShapeRef.new(shape: String, location_name: "unit"))
    UsageQuantityResult.struct_class = Types::UsageQuantityResult

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    WorkloadEstimateSummaries.member = Shapes::ShapeRef.new(shape: WorkloadEstimateSummary)

    WorkloadEstimateSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    WorkloadEstimateSummary.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadEstimateName, location_name: "name"))
    WorkloadEstimateSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    WorkloadEstimateSummary.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    WorkloadEstimateSummary.add_member(:rate_type, Shapes::ShapeRef.new(shape: WorkloadEstimateRateType, location_name: "rateType"))
    WorkloadEstimateSummary.add_member(:rate_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "rateTimestamp"))
    WorkloadEstimateSummary.add_member(:status, Shapes::ShapeRef.new(shape: WorkloadEstimateStatus, location_name: "status"))
    WorkloadEstimateSummary.add_member(:total_cost, Shapes::ShapeRef.new(shape: Double, location_name: "totalCost"))
    WorkloadEstimateSummary.add_member(:cost_currency, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "costCurrency"))
    WorkloadEstimateSummary.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    WorkloadEstimateSummary.struct_class = Types::WorkloadEstimateSummary

    WorkloadEstimateUsageItem.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "serviceCode"))
    WorkloadEstimateUsageItem.add_member(:usage_type, Shapes::ShapeRef.new(shape: UsageType, required: true, location_name: "usageType"))
    WorkloadEstimateUsageItem.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, required: true, location_name: "operation"))
    WorkloadEstimateUsageItem.add_member(:location, Shapes::ShapeRef.new(shape: String, location_name: "location"))
    WorkloadEstimateUsageItem.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    WorkloadEstimateUsageItem.add_member(:usage_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    WorkloadEstimateUsageItem.add_member(:group, Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    WorkloadEstimateUsageItem.add_member(:quantity, Shapes::ShapeRef.new(shape: WorkloadEstimateUsageQuantity, location_name: "quantity"))
    WorkloadEstimateUsageItem.add_member(:cost, Shapes::ShapeRef.new(shape: Double, location_name: "cost"))
    WorkloadEstimateUsageItem.add_member(:currency, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currency"))
    WorkloadEstimateUsageItem.add_member(:status, Shapes::ShapeRef.new(shape: WorkloadEstimateCostStatus, location_name: "status"))
    WorkloadEstimateUsageItem.add_member(:historical_usage, Shapes::ShapeRef.new(shape: HistoricalUsageEntity, location_name: "historicalUsage"))
    WorkloadEstimateUsageItem.struct_class = Types::WorkloadEstimateUsageItem

    WorkloadEstimateUsageItems.member = Shapes::ShapeRef.new(shape: WorkloadEstimateUsageItem)

    WorkloadEstimateUsageQuantity.add_member(:unit, Shapes::ShapeRef.new(shape: String, location_name: "unit"))
    WorkloadEstimateUsageQuantity.add_member(:amount, Shapes::ShapeRef.new(shape: Double, location_name: "amount"))
    WorkloadEstimateUsageQuantity.struct_class = Types::WorkloadEstimateUsageQuantity


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-06-19"

      api.metadata = {
        "apiVersion" => "2024-06-19",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "bcm-pricing-calculator",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "AWS Billing and Cost Management Pricing Calculator",
        "serviceId" => "BCM Pricing Calculator",
        "signatureVersion" => "v4",
        "signingName" => "bcm-pricing-calculator",
        "targetPrefix" => "AWSBCMPricingCalculator",
        "uid" => "bcm-pricing-calculator-2024-06-19",
      }

      api.add_operation(:batch_create_bill_scenario_commitment_modification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateBillScenarioCommitmentModification"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_create_bill_scenario_usage_modification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateBillScenarioUsageModification"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_create_workload_estimate_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateWorkloadEstimateUsage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_delete_bill_scenario_commitment_modification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteBillScenarioCommitmentModification"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioCommitmentModificationRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioCommitmentModificationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_delete_bill_scenario_usage_modification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteBillScenarioUsageModification"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioUsageModificationRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioUsageModificationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_delete_workload_estimate_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteWorkloadEstimateUsage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteWorkloadEstimateUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteWorkloadEstimateUsageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_update_bill_scenario_commitment_modification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateBillScenarioCommitmentModification"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioCommitmentModificationRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioCommitmentModificationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_update_bill_scenario_usage_modification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateBillScenarioUsageModification"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioUsageModificationRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioUsageModificationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_update_workload_estimate_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateWorkloadEstimateUsage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateWorkloadEstimateUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateWorkloadEstimateUsageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_bill_estimate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBillEstimate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBillEstimateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBillEstimateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_bill_scenario, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBillScenario"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBillScenarioRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBillScenarioResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_workload_estimate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkloadEstimate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkloadEstimateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkloadEstimateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_bill_estimate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBillEstimate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBillEstimateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBillEstimateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_bill_scenario, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBillScenario"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBillScenarioRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBillScenarioResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_workload_estimate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkloadEstimate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkloadEstimateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkloadEstimateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_bill_estimate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBillEstimate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBillEstimateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBillEstimateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_bill_scenario, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBillScenario"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBillScenarioRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBillScenarioResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPreferences"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPreferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_workload_estimate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkloadEstimate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetWorkloadEstimateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkloadEstimateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_bill_estimate_commitments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBillEstimateCommitments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBillEstimateCommitmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBillEstimateCommitmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bill_estimate_input_commitment_modifications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBillEstimateInputCommitmentModifications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBillEstimateInputCommitmentModificationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBillEstimateInputCommitmentModificationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bill_estimate_input_usage_modifications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBillEstimateInputUsageModifications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBillEstimateInputUsageModificationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBillEstimateInputUsageModificationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bill_estimate_line_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBillEstimateLineItems"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBillEstimateLineItemsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBillEstimateLineItemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bill_estimates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBillEstimates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBillEstimatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBillEstimatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bill_scenario_commitment_modifications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBillScenarioCommitmentModifications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBillScenarioCommitmentModificationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBillScenarioCommitmentModificationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bill_scenario_usage_modifications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBillScenarioUsageModifications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBillScenarioUsageModificationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBillScenarioUsageModificationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bill_scenarios, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBillScenarios"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBillScenariosRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBillScenariosResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_workload_estimate_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkloadEstimateUsage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkloadEstimateUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkloadEstimateUsageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workload_estimates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkloadEstimates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkloadEstimatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkloadEstimatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_bill_estimate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBillEstimate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBillEstimateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBillEstimateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_bill_scenario, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBillScenario"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBillScenarioRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBillScenarioResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePreferences"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePreferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_workload_estimate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkloadEstimate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkloadEstimateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkloadEstimateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end

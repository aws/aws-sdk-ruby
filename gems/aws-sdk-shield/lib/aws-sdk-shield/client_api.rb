# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Shield
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedForDependencyException = Shapes::StructureShape.new(name: 'AccessDeniedForDependencyException')
    AssociateDRTLogBucketRequest = Shapes::StructureShape.new(name: 'AssociateDRTLogBucketRequest')
    AssociateDRTLogBucketResponse = Shapes::StructureShape.new(name: 'AssociateDRTLogBucketResponse')
    AssociateDRTRoleRequest = Shapes::StructureShape.new(name: 'AssociateDRTRoleRequest')
    AssociateDRTRoleResponse = Shapes::StructureShape.new(name: 'AssociateDRTRoleResponse')
    AttackDetail = Shapes::StructureShape.new(name: 'AttackDetail')
    AttackId = Shapes::StringShape.new(name: 'AttackId')
    AttackLayer = Shapes::StringShape.new(name: 'AttackLayer')
    AttackProperties = Shapes::ListShape.new(name: 'AttackProperties')
    AttackProperty = Shapes::StructureShape.new(name: 'AttackProperty')
    AttackPropertyIdentifier = Shapes::StringShape.new(name: 'AttackPropertyIdentifier')
    AttackSummaries = Shapes::ListShape.new(name: 'AttackSummaries')
    AttackSummary = Shapes::StructureShape.new(name: 'AttackSummary')
    AttackTimestamp = Shapes::TimestampShape.new(name: 'AttackTimestamp')
    AttackVectorDescription = Shapes::StructureShape.new(name: 'AttackVectorDescription')
    AttackVectorDescriptionList = Shapes::ListShape.new(name: 'AttackVectorDescriptionList')
    AutoRenew = Shapes::StringShape.new(name: 'AutoRenew')
    Contributor = Shapes::StructureShape.new(name: 'Contributor')
    CreateProtectionRequest = Shapes::StructureShape.new(name: 'CreateProtectionRequest')
    CreateProtectionResponse = Shapes::StructureShape.new(name: 'CreateProtectionResponse')
    CreateSubscriptionRequest = Shapes::StructureShape.new(name: 'CreateSubscriptionRequest')
    CreateSubscriptionResponse = Shapes::StructureShape.new(name: 'CreateSubscriptionResponse')
    DeleteProtectionRequest = Shapes::StructureShape.new(name: 'DeleteProtectionRequest')
    DeleteProtectionResponse = Shapes::StructureShape.new(name: 'DeleteProtectionResponse')
    DeleteSubscriptionRequest = Shapes::StructureShape.new(name: 'DeleteSubscriptionRequest')
    DeleteSubscriptionResponse = Shapes::StructureShape.new(name: 'DeleteSubscriptionResponse')
    DescribeAttackRequest = Shapes::StructureShape.new(name: 'DescribeAttackRequest')
    DescribeAttackResponse = Shapes::StructureShape.new(name: 'DescribeAttackResponse')
    DescribeDRTAccessRequest = Shapes::StructureShape.new(name: 'DescribeDRTAccessRequest')
    DescribeDRTAccessResponse = Shapes::StructureShape.new(name: 'DescribeDRTAccessResponse')
    DescribeEmergencyContactSettingsRequest = Shapes::StructureShape.new(name: 'DescribeEmergencyContactSettingsRequest')
    DescribeEmergencyContactSettingsResponse = Shapes::StructureShape.new(name: 'DescribeEmergencyContactSettingsResponse')
    DescribeProtectionRequest = Shapes::StructureShape.new(name: 'DescribeProtectionRequest')
    DescribeProtectionResponse = Shapes::StructureShape.new(name: 'DescribeProtectionResponse')
    DescribeSubscriptionRequest = Shapes::StructureShape.new(name: 'DescribeSubscriptionRequest')
    DescribeSubscriptionResponse = Shapes::StructureShape.new(name: 'DescribeSubscriptionResponse')
    DisassociateDRTLogBucketRequest = Shapes::StructureShape.new(name: 'DisassociateDRTLogBucketRequest')
    DisassociateDRTLogBucketResponse = Shapes::StructureShape.new(name: 'DisassociateDRTLogBucketResponse')
    DisassociateDRTRoleRequest = Shapes::StructureShape.new(name: 'DisassociateDRTRoleRequest')
    DisassociateDRTRoleResponse = Shapes::StructureShape.new(name: 'DisassociateDRTRoleResponse')
    Double = Shapes::FloatShape.new(name: 'Double')
    DurationInSeconds = Shapes::IntegerShape.new(name: 'DurationInSeconds')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EmergencyContact = Shapes::StructureShape.new(name: 'EmergencyContact')
    EmergencyContactList = Shapes::ListShape.new(name: 'EmergencyContactList')
    GetSubscriptionStateRequest = Shapes::StructureShape.new(name: 'GetSubscriptionStateRequest')
    GetSubscriptionStateResponse = Shapes::StructureShape.new(name: 'GetSubscriptionStateResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalErrorException = Shapes::StructureShape.new(name: 'InternalErrorException')
    InvalidOperationException = Shapes::StructureShape.new(name: 'InvalidOperationException')
    InvalidPaginationTokenException = Shapes::StructureShape.new(name: 'InvalidPaginationTokenException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidResourceException = Shapes::StructureShape.new(name: 'InvalidResourceException')
    Limit = Shapes::StructureShape.new(name: 'Limit')
    LimitNumber = Shapes::IntegerShape.new(name: 'LimitNumber')
    LimitType = Shapes::StringShape.new(name: 'LimitType')
    Limits = Shapes::ListShape.new(name: 'Limits')
    LimitsExceededException = Shapes::StructureShape.new(name: 'LimitsExceededException')
    ListAttacksRequest = Shapes::StructureShape.new(name: 'ListAttacksRequest')
    ListAttacksResponse = Shapes::StructureShape.new(name: 'ListAttacksResponse')
    ListProtectionsRequest = Shapes::StructureShape.new(name: 'ListProtectionsRequest')
    ListProtectionsResponse = Shapes::StructureShape.new(name: 'ListProtectionsResponse')
    LockedSubscriptionException = Shapes::StructureShape.new(name: 'LockedSubscriptionException')
    LogBucket = Shapes::StringShape.new(name: 'LogBucket')
    LogBucketList = Shapes::ListShape.new(name: 'LogBucketList')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Mitigation = Shapes::StructureShape.new(name: 'Mitigation')
    MitigationList = Shapes::ListShape.new(name: 'MitigationList')
    NoAssociatedRoleException = Shapes::StructureShape.new(name: 'NoAssociatedRoleException')
    OptimisticLockException = Shapes::StructureShape.new(name: 'OptimisticLockException')
    Protection = Shapes::StructureShape.new(name: 'Protection')
    ProtectionId = Shapes::StringShape.new(name: 'ProtectionId')
    ProtectionName = Shapes::StringShape.new(name: 'ProtectionName')
    Protections = Shapes::ListShape.new(name: 'Protections')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceArnFilterList = Shapes::ListShape.new(name: 'ResourceArnFilterList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    String = Shapes::StringShape.new(name: 'String')
    SubResourceSummary = Shapes::StructureShape.new(name: 'SubResourceSummary')
    SubResourceSummaryList = Shapes::ListShape.new(name: 'SubResourceSummaryList')
    SubResourceType = Shapes::StringShape.new(name: 'SubResourceType')
    Subscription = Shapes::StructureShape.new(name: 'Subscription')
    SubscriptionState = Shapes::StringShape.new(name: 'SubscriptionState')
    SummarizedAttackVector = Shapes::StructureShape.new(name: 'SummarizedAttackVector')
    SummarizedAttackVectorList = Shapes::ListShape.new(name: 'SummarizedAttackVectorList')
    SummarizedCounter = Shapes::StructureShape.new(name: 'SummarizedCounter')
    SummarizedCounterList = Shapes::ListShape.new(name: 'SummarizedCounterList')
    TimeRange = Shapes::StructureShape.new(name: 'TimeRange')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Token = Shapes::StringShape.new(name: 'Token')
    TopContributors = Shapes::ListShape.new(name: 'TopContributors')
    Unit = Shapes::StringShape.new(name: 'Unit')
    UpdateEmergencyContactSettingsRequest = Shapes::StructureShape.new(name: 'UpdateEmergencyContactSettingsRequest')
    UpdateEmergencyContactSettingsResponse = Shapes::StructureShape.new(name: 'UpdateEmergencyContactSettingsResponse')
    UpdateSubscriptionRequest = Shapes::StructureShape.new(name: 'UpdateSubscriptionRequest')
    UpdateSubscriptionResponse = Shapes::StructureShape.new(name: 'UpdateSubscriptionResponse')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    AssociateDRTLogBucketRequest.add_member(:log_bucket, Shapes::ShapeRef.new(shape: LogBucket, required: true, location_name: "LogBucket"))
    AssociateDRTLogBucketRequest.struct_class = Types::AssociateDRTLogBucketRequest

    AssociateDRTLogBucketResponse.struct_class = Types::AssociateDRTLogBucketResponse

    AssociateDRTRoleRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    AssociateDRTRoleRequest.struct_class = Types::AssociateDRTRoleRequest

    AssociateDRTRoleResponse.struct_class = Types::AssociateDRTRoleResponse

    AttackDetail.add_member(:attack_id, Shapes::ShapeRef.new(shape: AttackId, location_name: "AttackId"))
    AttackDetail.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    AttackDetail.add_member(:sub_resources, Shapes::ShapeRef.new(shape: SubResourceSummaryList, location_name: "SubResources"))
    AttackDetail.add_member(:start_time, Shapes::ShapeRef.new(shape: AttackTimestamp, location_name: "StartTime"))
    AttackDetail.add_member(:end_time, Shapes::ShapeRef.new(shape: AttackTimestamp, location_name: "EndTime"))
    AttackDetail.add_member(:attack_counters, Shapes::ShapeRef.new(shape: SummarizedCounterList, location_name: "AttackCounters"))
    AttackDetail.add_member(:attack_properties, Shapes::ShapeRef.new(shape: AttackProperties, location_name: "AttackProperties"))
    AttackDetail.add_member(:mitigations, Shapes::ShapeRef.new(shape: MitigationList, location_name: "Mitigations"))
    AttackDetail.struct_class = Types::AttackDetail

    AttackProperties.member = Shapes::ShapeRef.new(shape: AttackProperty)

    AttackProperty.add_member(:attack_layer, Shapes::ShapeRef.new(shape: AttackLayer, location_name: "AttackLayer"))
    AttackProperty.add_member(:attack_property_identifier, Shapes::ShapeRef.new(shape: AttackPropertyIdentifier, location_name: "AttackPropertyIdentifier"))
    AttackProperty.add_member(:top_contributors, Shapes::ShapeRef.new(shape: TopContributors, location_name: "TopContributors"))
    AttackProperty.add_member(:unit, Shapes::ShapeRef.new(shape: Unit, location_name: "Unit"))
    AttackProperty.add_member(:total, Shapes::ShapeRef.new(shape: Long, location_name: "Total"))
    AttackProperty.struct_class = Types::AttackProperty

    AttackSummaries.member = Shapes::ShapeRef.new(shape: AttackSummary)

    AttackSummary.add_member(:attack_id, Shapes::ShapeRef.new(shape: String, location_name: "AttackId"))
    AttackSummary.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    AttackSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: AttackTimestamp, location_name: "StartTime"))
    AttackSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: AttackTimestamp, location_name: "EndTime"))
    AttackSummary.add_member(:attack_vectors, Shapes::ShapeRef.new(shape: AttackVectorDescriptionList, location_name: "AttackVectors"))
    AttackSummary.struct_class = Types::AttackSummary

    AttackVectorDescription.add_member(:vector_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VectorType"))
    AttackVectorDescription.struct_class = Types::AttackVectorDescription

    AttackVectorDescriptionList.member = Shapes::ShapeRef.new(shape: AttackVectorDescription)

    Contributor.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Contributor.add_member(:value, Shapes::ShapeRef.new(shape: Long, location_name: "Value"))
    Contributor.struct_class = Types::Contributor

    CreateProtectionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProtectionName, required: true, location_name: "Name"))
    CreateProtectionRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    CreateProtectionRequest.struct_class = Types::CreateProtectionRequest

    CreateProtectionResponse.add_member(:protection_id, Shapes::ShapeRef.new(shape: ProtectionId, location_name: "ProtectionId"))
    CreateProtectionResponse.struct_class = Types::CreateProtectionResponse

    CreateSubscriptionRequest.struct_class = Types::CreateSubscriptionRequest

    CreateSubscriptionResponse.struct_class = Types::CreateSubscriptionResponse

    DeleteProtectionRequest.add_member(:protection_id, Shapes::ShapeRef.new(shape: ProtectionId, required: true, location_name: "ProtectionId"))
    DeleteProtectionRequest.struct_class = Types::DeleteProtectionRequest

    DeleteProtectionResponse.struct_class = Types::DeleteProtectionResponse

    DeleteSubscriptionRequest.struct_class = Types::DeleteSubscriptionRequest

    DeleteSubscriptionResponse.struct_class = Types::DeleteSubscriptionResponse

    DescribeAttackRequest.add_member(:attack_id, Shapes::ShapeRef.new(shape: AttackId, required: true, location_name: "AttackId"))
    DescribeAttackRequest.struct_class = Types::DescribeAttackRequest

    DescribeAttackResponse.add_member(:attack, Shapes::ShapeRef.new(shape: AttackDetail, location_name: "Attack"))
    DescribeAttackResponse.struct_class = Types::DescribeAttackResponse

    DescribeDRTAccessRequest.struct_class = Types::DescribeDRTAccessRequest

    DescribeDRTAccessResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeDRTAccessResponse.add_member(:log_bucket_list, Shapes::ShapeRef.new(shape: LogBucketList, location_name: "LogBucketList"))
    DescribeDRTAccessResponse.struct_class = Types::DescribeDRTAccessResponse

    DescribeEmergencyContactSettingsRequest.struct_class = Types::DescribeEmergencyContactSettingsRequest

    DescribeEmergencyContactSettingsResponse.add_member(:emergency_contact_list, Shapes::ShapeRef.new(shape: EmergencyContactList, location_name: "EmergencyContactList"))
    DescribeEmergencyContactSettingsResponse.struct_class = Types::DescribeEmergencyContactSettingsResponse

    DescribeProtectionRequest.add_member(:protection_id, Shapes::ShapeRef.new(shape: ProtectionId, required: true, location_name: "ProtectionId"))
    DescribeProtectionRequest.struct_class = Types::DescribeProtectionRequest

    DescribeProtectionResponse.add_member(:protection, Shapes::ShapeRef.new(shape: Protection, location_name: "Protection"))
    DescribeProtectionResponse.struct_class = Types::DescribeProtectionResponse

    DescribeSubscriptionRequest.struct_class = Types::DescribeSubscriptionRequest

    DescribeSubscriptionResponse.add_member(:subscription, Shapes::ShapeRef.new(shape: Subscription, location_name: "Subscription"))
    DescribeSubscriptionResponse.struct_class = Types::DescribeSubscriptionResponse

    DisassociateDRTLogBucketRequest.add_member(:log_bucket, Shapes::ShapeRef.new(shape: LogBucket, required: true, location_name: "LogBucket"))
    DisassociateDRTLogBucketRequest.struct_class = Types::DisassociateDRTLogBucketRequest

    DisassociateDRTLogBucketResponse.struct_class = Types::DisassociateDRTLogBucketResponse

    DisassociateDRTRoleRequest.struct_class = Types::DisassociateDRTRoleRequest

    DisassociateDRTRoleResponse.struct_class = Types::DisassociateDRTRoleResponse

    EmergencyContact.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "EmailAddress"))
    EmergencyContact.struct_class = Types::EmergencyContact

    EmergencyContactList.member = Shapes::ShapeRef.new(shape: EmergencyContact)

    GetSubscriptionStateRequest.struct_class = Types::GetSubscriptionStateRequest

    GetSubscriptionStateResponse.add_member(:subscription_state, Shapes::ShapeRef.new(shape: SubscriptionState, required: true, location_name: "SubscriptionState"))
    GetSubscriptionStateResponse.struct_class = Types::GetSubscriptionStateResponse

    Limit.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    Limit.add_member(:max, Shapes::ShapeRef.new(shape: Long, location_name: "Max"))
    Limit.struct_class = Types::Limit

    Limits.member = Shapes::ShapeRef.new(shape: Limit)

    ListAttacksRequest.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnFilterList, location_name: "ResourceArns"))
    ListAttacksRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeRange, location_name: "StartTime"))
    ListAttacksRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: TimeRange, location_name: "EndTime"))
    ListAttacksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAttacksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAttacksRequest.struct_class = Types::ListAttacksRequest

    ListAttacksResponse.add_member(:attack_summaries, Shapes::ShapeRef.new(shape: AttackSummaries, location_name: "AttackSummaries"))
    ListAttacksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAttacksResponse.struct_class = Types::ListAttacksResponse

    ListProtectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListProtectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListProtectionsRequest.struct_class = Types::ListProtectionsRequest

    ListProtectionsResponse.add_member(:protections, Shapes::ShapeRef.new(shape: Protections, location_name: "Protections"))
    ListProtectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListProtectionsResponse.struct_class = Types::ListProtectionsResponse

    LogBucketList.member = Shapes::ShapeRef.new(shape: LogBucket)

    Mitigation.add_member(:mitigation_name, Shapes::ShapeRef.new(shape: String, location_name: "MitigationName"))
    Mitigation.struct_class = Types::Mitigation

    MitigationList.member = Shapes::ShapeRef.new(shape: Mitigation)

    Protection.add_member(:id, Shapes::ShapeRef.new(shape: ProtectionId, location_name: "Id"))
    Protection.add_member(:name, Shapes::ShapeRef.new(shape: ProtectionName, location_name: "Name"))
    Protection.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    Protection.struct_class = Types::Protection

    Protections.member = Shapes::ShapeRef.new(shape: Protection)

    ResourceArnFilterList.member = Shapes::ShapeRef.new(shape: ResourceArn)

    SubResourceSummary.add_member(:type, Shapes::ShapeRef.new(shape: SubResourceType, location_name: "Type"))
    SubResourceSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    SubResourceSummary.add_member(:attack_vectors, Shapes::ShapeRef.new(shape: SummarizedAttackVectorList, location_name: "AttackVectors"))
    SubResourceSummary.add_member(:counters, Shapes::ShapeRef.new(shape: SummarizedCounterList, location_name: "Counters"))
    SubResourceSummary.struct_class = Types::SubResourceSummary

    SubResourceSummaryList.member = Shapes::ShapeRef.new(shape: SubResourceSummary)

    Subscription.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    Subscription.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    Subscription.add_member(:time_commitment_in_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "TimeCommitmentInSeconds"))
    Subscription.add_member(:auto_renew, Shapes::ShapeRef.new(shape: AutoRenew, location_name: "AutoRenew"))
    Subscription.add_member(:limits, Shapes::ShapeRef.new(shape: Limits, location_name: "Limits"))
    Subscription.struct_class = Types::Subscription

    SummarizedAttackVector.add_member(:vector_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VectorType"))
    SummarizedAttackVector.add_member(:vector_counters, Shapes::ShapeRef.new(shape: SummarizedCounterList, location_name: "VectorCounters"))
    SummarizedAttackVector.struct_class = Types::SummarizedAttackVector

    SummarizedAttackVectorList.member = Shapes::ShapeRef.new(shape: SummarizedAttackVector)

    SummarizedCounter.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    SummarizedCounter.add_member(:max, Shapes::ShapeRef.new(shape: Double, location_name: "Max"))
    SummarizedCounter.add_member(:average, Shapes::ShapeRef.new(shape: Double, location_name: "Average"))
    SummarizedCounter.add_member(:sum, Shapes::ShapeRef.new(shape: Double, location_name: "Sum"))
    SummarizedCounter.add_member(:n, Shapes::ShapeRef.new(shape: Integer, location_name: "N"))
    SummarizedCounter.add_member(:unit, Shapes::ShapeRef.new(shape: String, location_name: "Unit"))
    SummarizedCounter.struct_class = Types::SummarizedCounter

    SummarizedCounterList.member = Shapes::ShapeRef.new(shape: SummarizedCounter)

    TimeRange.add_member(:from_inclusive, Shapes::ShapeRef.new(shape: AttackTimestamp, location_name: "FromInclusive"))
    TimeRange.add_member(:to_exclusive, Shapes::ShapeRef.new(shape: AttackTimestamp, location_name: "ToExclusive"))
    TimeRange.struct_class = Types::TimeRange

    TopContributors.member = Shapes::ShapeRef.new(shape: Contributor)

    UpdateEmergencyContactSettingsRequest.add_member(:emergency_contact_list, Shapes::ShapeRef.new(shape: EmergencyContactList, location_name: "EmergencyContactList"))
    UpdateEmergencyContactSettingsRequest.struct_class = Types::UpdateEmergencyContactSettingsRequest

    UpdateEmergencyContactSettingsResponse.struct_class = Types::UpdateEmergencyContactSettingsResponse

    UpdateSubscriptionRequest.add_member(:auto_renew, Shapes::ShapeRef.new(shape: AutoRenew, location_name: "AutoRenew"))
    UpdateSubscriptionRequest.struct_class = Types::UpdateSubscriptionRequest

    UpdateSubscriptionResponse.struct_class = Types::UpdateSubscriptionResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-06-02"

      api.metadata = {
        "apiVersion" => "2016-06-02",
        "endpointPrefix" => "shield",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "AWS Shield",
        "serviceFullName" => "AWS Shield",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSShield_20160616",
        "uid" => "shield-2016-06-02",
      }

      api.add_operation(:associate_drt_log_bucket, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateDRTLogBucket"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateDRTLogBucketRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateDRTLogBucketResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: NoAssociatedRoleException)
        o.errors << Shapes::ShapeRef.new(shape: LimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedForDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:associate_drt_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateDRTRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateDRTRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateDRTRoleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedForDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProtection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProtectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProtectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
      end)

      api.add_operation(:delete_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProtection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProtectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProtectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
      end)

      api.add_operation(:delete_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LockedSubscriptionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_attack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAttack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAttackRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAttackResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:describe_drt_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDRTAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDRTAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDRTAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_emergency_contact_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEmergencyContactSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEmergencyContactSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEmergencyContactSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProtection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProtectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProtectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_drt_log_bucket, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateDRTLogBucket"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateDRTLogBucketRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateDRTLogBucketResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: NoAssociatedRoleException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedForDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_drt_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateDRTRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateDRTRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateDRTRoleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_subscription_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSubscriptionState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSubscriptionStateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSubscriptionStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:list_attacks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttacks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAttacksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttacksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:list_protections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProtections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProtectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProtectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
      end)

      api.add_operation(:update_emergency_contact_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEmergencyContactSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEmergencyContactSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEmergencyContactSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LockedSubscriptionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
      end)
    end

  end
end

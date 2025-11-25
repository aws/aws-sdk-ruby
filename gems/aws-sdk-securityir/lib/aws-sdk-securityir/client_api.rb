# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SecurityIR
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSAccountId = Shapes::StringShape.new(name: 'AWSAccountId')
    AWSAccountIds = Shapes::ListShape.new(name: 'AWSAccountIds')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActionType = Shapes::StringShape.new(name: 'ActionType')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AttachmentId = Shapes::StringShape.new(name: 'AttachmentId')
    AwsRegion = Shapes::StringShape.new(name: 'AwsRegion')
    AwsService = Shapes::StringShape.new(name: 'AwsService')
    BatchGetMemberAccountDetailsRequest = Shapes::StructureShape.new(name: 'BatchGetMemberAccountDetailsRequest')
    BatchGetMemberAccountDetailsResponse = Shapes::StructureShape.new(name: 'BatchGetMemberAccountDetailsResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelMembershipRequest = Shapes::StructureShape.new(name: 'CancelMembershipRequest')
    CancelMembershipResponse = Shapes::StructureShape.new(name: 'CancelMembershipResponse')
    CaseArn = Shapes::StringShape.new(name: 'CaseArn')
    CaseAttachmentAttributes = Shapes::StructureShape.new(name: 'CaseAttachmentAttributes')
    CaseAttachmentStatus = Shapes::StringShape.new(name: 'CaseAttachmentStatus')
    CaseAttachmentsList = Shapes::ListShape.new(name: 'CaseAttachmentsList')
    CaseDescription = Shapes::StringShape.new(name: 'CaseDescription')
    CaseEditAction = Shapes::StringShape.new(name: 'CaseEditAction')
    CaseEditItem = Shapes::StructureShape.new(name: 'CaseEditItem')
    CaseEditItems = Shapes::ListShape.new(name: 'CaseEditItems')
    CaseEditMessage = Shapes::StringShape.new(name: 'CaseEditMessage')
    CaseId = Shapes::StringShape.new(name: 'CaseId')
    CaseMetadata = Shapes::ListShape.new(name: 'CaseMetadata')
    CaseMetadataEntry = Shapes::StructureShape.new(name: 'CaseMetadataEntry')
    CaseMetadataEntryKeyString = Shapes::StringShape.new(name: 'CaseMetadataEntryKeyString')
    CaseMetadataEntryValueString = Shapes::StringShape.new(name: 'CaseMetadataEntryValueString')
    CaseStatus = Shapes::StringShape.new(name: 'CaseStatus')
    CaseTitle = Shapes::StringShape.new(name: 'CaseTitle')
    CloseCaseRequest = Shapes::StructureShape.new(name: 'CloseCaseRequest')
    CloseCaseResponse = Shapes::StructureShape.new(name: 'CloseCaseResponse')
    ClosureCode = Shapes::StringShape.new(name: 'ClosureCode')
    CommentBody = Shapes::StringShape.new(name: 'CommentBody')
    CommentId = Shapes::StringShape.new(name: 'CommentId')
    CommunicationPreferences = Shapes::ListShape.new(name: 'CommunicationPreferences')
    CommunicationType = Shapes::StringShape.new(name: 'CommunicationType')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentLength = Shapes::IntegerShape.new(name: 'ContentLength')
    CreateCaseCommentRequest = Shapes::StructureShape.new(name: 'CreateCaseCommentRequest')
    CreateCaseCommentRequestClientTokenString = Shapes::StringShape.new(name: 'CreateCaseCommentRequestClientTokenString')
    CreateCaseCommentResponse = Shapes::StructureShape.new(name: 'CreateCaseCommentResponse')
    CreateCaseRequest = Shapes::StructureShape.new(name: 'CreateCaseRequest')
    CreateCaseRequestClientTokenString = Shapes::StringShape.new(name: 'CreateCaseRequestClientTokenString')
    CreateCaseResponse = Shapes::StructureShape.new(name: 'CreateCaseResponse')
    CreateMembershipRequest = Shapes::StructureShape.new(name: 'CreateMembershipRequest')
    CreateMembershipRequestClientTokenString = Shapes::StringShape.new(name: 'CreateMembershipRequestClientTokenString')
    CreateMembershipResponse = Shapes::StructureShape.new(name: 'CreateMembershipResponse')
    CustomerType = Shapes::StringShape.new(name: 'CustomerType')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EngagementType = Shapes::StringShape.new(name: 'EngagementType')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
    FeedbackComment = Shapes::StringShape.new(name: 'FeedbackComment')
    FileName = Shapes::StringShape.new(name: 'FileName')
    GetCaseAttachmentDownloadUrlRequest = Shapes::StructureShape.new(name: 'GetCaseAttachmentDownloadUrlRequest')
    GetCaseAttachmentDownloadUrlResponse = Shapes::StructureShape.new(name: 'GetCaseAttachmentDownloadUrlResponse')
    GetCaseAttachmentUploadUrlRequest = Shapes::StructureShape.new(name: 'GetCaseAttachmentUploadUrlRequest')
    GetCaseAttachmentUploadUrlRequestClientTokenString = Shapes::StringShape.new(name: 'GetCaseAttachmentUploadUrlRequestClientTokenString')
    GetCaseAttachmentUploadUrlResponse = Shapes::StructureShape.new(name: 'GetCaseAttachmentUploadUrlResponse')
    GetCaseRequest = Shapes::StructureShape.new(name: 'GetCaseRequest')
    GetCaseResponse = Shapes::StructureShape.new(name: 'GetCaseResponse')
    GetMembershipAccountDetailError = Shapes::StructureShape.new(name: 'GetMembershipAccountDetailError')
    GetMembershipAccountDetailErrors = Shapes::ListShape.new(name: 'GetMembershipAccountDetailErrors')
    GetMembershipAccountDetailItem = Shapes::StructureShape.new(name: 'GetMembershipAccountDetailItem')
    GetMembershipAccountDetailItems = Shapes::ListShape.new(name: 'GetMembershipAccountDetailItems')
    GetMembershipRequest = Shapes::StructureShape.new(name: 'GetMembershipRequest')
    GetMembershipResponse = Shapes::StructureShape.new(name: 'GetMembershipResponse')
    IPAddress = Shapes::StringShape.new(name: 'IPAddress')
    ImpactedAccounts = Shapes::ListShape.new(name: 'ImpactedAccounts')
    ImpactedAwsRegion = Shapes::StructureShape.new(name: 'ImpactedAwsRegion')
    ImpactedAwsRegionList = Shapes::ListShape.new(name: 'ImpactedAwsRegionList')
    ImpactedServicesList = Shapes::ListShape.new(name: 'ImpactedServicesList')
    IncidentResponder = Shapes::StructureShape.new(name: 'IncidentResponder')
    IncidentResponderName = Shapes::StringShape.new(name: 'IncidentResponderName')
    IncidentResponseTeam = Shapes::ListShape.new(name: 'IncidentResponseTeam')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidTokenException = Shapes::StructureShape.new(name: 'InvalidTokenException')
    InvestigationAction = Shapes::StructureShape.new(name: 'InvestigationAction')
    InvestigationActionList = Shapes::ListShape.new(name: 'InvestigationActionList')
    InvestigationContent = Shapes::StringShape.new(name: 'InvestigationContent')
    InvestigationFeedback = Shapes::StructureShape.new(name: 'InvestigationFeedback')
    InvestigationId = Shapes::StringShape.new(name: 'InvestigationId')
    InvestigationTitle = Shapes::StringShape.new(name: 'InvestigationTitle')
    JobTitle = Shapes::StringShape.new(name: 'JobTitle')
    ListCaseEditsRequest = Shapes::StructureShape.new(name: 'ListCaseEditsRequest')
    ListCaseEditsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListCaseEditsRequestMaxResultsInteger')
    ListCaseEditsRequestNextTokenString = Shapes::StringShape.new(name: 'ListCaseEditsRequestNextTokenString')
    ListCaseEditsResponse = Shapes::StructureShape.new(name: 'ListCaseEditsResponse')
    ListCasesItem = Shapes::StructureShape.new(name: 'ListCasesItem')
    ListCasesItems = Shapes::ListShape.new(name: 'ListCasesItems')
    ListCasesRequest = Shapes::StructureShape.new(name: 'ListCasesRequest')
    ListCasesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListCasesRequestMaxResultsInteger')
    ListCasesRequestNextTokenString = Shapes::StringShape.new(name: 'ListCasesRequestNextTokenString')
    ListCasesResponse = Shapes::StructureShape.new(name: 'ListCasesResponse')
    ListCommentsItem = Shapes::StructureShape.new(name: 'ListCommentsItem')
    ListCommentsItems = Shapes::ListShape.new(name: 'ListCommentsItems')
    ListCommentsRequest = Shapes::StructureShape.new(name: 'ListCommentsRequest')
    ListCommentsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListCommentsRequestMaxResultsInteger')
    ListCommentsRequestNextTokenString = Shapes::StringShape.new(name: 'ListCommentsRequestNextTokenString')
    ListCommentsResponse = Shapes::StructureShape.new(name: 'ListCommentsResponse')
    ListInvestigationsRequest = Shapes::StructureShape.new(name: 'ListInvestigationsRequest')
    ListInvestigationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListInvestigationsRequestMaxResultsInteger')
    ListInvestigationsRequestNextTokenString = Shapes::StringShape.new(name: 'ListInvestigationsRequestNextTokenString')
    ListInvestigationsResponse = Shapes::StructureShape.new(name: 'ListInvestigationsResponse')
    ListMembershipItem = Shapes::StructureShape.new(name: 'ListMembershipItem')
    ListMembershipItems = Shapes::ListShape.new(name: 'ListMembershipItems')
    ListMembershipsRequest = Shapes::StructureShape.new(name: 'ListMembershipsRequest')
    ListMembershipsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMembershipsRequestMaxResultsInteger')
    ListMembershipsRequestNextTokenString = Shapes::StringShape.new(name: 'ListMembershipsRequestNextTokenString')
    ListMembershipsResponse = Shapes::StructureShape.new(name: 'ListMembershipsResponse')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MembershipAccountRelationshipStatus = Shapes::StringShape.new(name: 'MembershipAccountRelationshipStatus')
    MembershipAccountRelationshipType = Shapes::StringShape.new(name: 'MembershipAccountRelationshipType')
    MembershipAccountsConfigurations = Shapes::StructureShape.new(name: 'MembershipAccountsConfigurations')
    MembershipAccountsConfigurationsUpdate = Shapes::StructureShape.new(name: 'MembershipAccountsConfigurationsUpdate')
    MembershipAccountsConfigurationsUpdateOrganizationalUnitsToAddList = Shapes::ListShape.new(name: 'MembershipAccountsConfigurationsUpdateOrganizationalUnitsToAddList')
    MembershipAccountsConfigurationsUpdateOrganizationalUnitsToRemoveList = Shapes::ListShape.new(name: 'MembershipAccountsConfigurationsUpdateOrganizationalUnitsToRemoveList')
    MembershipArn = Shapes::StringShape.new(name: 'MembershipArn')
    MembershipId = Shapes::StringShape.new(name: 'MembershipId')
    MembershipName = Shapes::StringShape.new(name: 'MembershipName')
    MembershipStatus = Shapes::StringShape.new(name: 'MembershipStatus')
    OptInFeature = Shapes::StructureShape.new(name: 'OptInFeature')
    OptInFeatureName = Shapes::StringShape.new(name: 'OptInFeatureName')
    OptInFeatures = Shapes::ListShape.new(name: 'OptInFeatures')
    OrganizationalUnitId = Shapes::StringShape.new(name: 'OrganizationalUnitId')
    OrganizationalUnits = Shapes::ListShape.new(name: 'OrganizationalUnits')
    PendingAction = Shapes::StringShape.new(name: 'PendingAction')
    PersonName = Shapes::StringShape.new(name: 'PersonName')
    PrincipalId = Shapes::StringShape.new(name: 'PrincipalId')
    ResolverType = Shapes::StringShape.new(name: 'ResolverType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResultId = Shapes::StringShape.new(name: 'ResultId')
    SecurityIncidentResponseNotActiveException = Shapes::StructureShape.new(name: 'SecurityIncidentResponseNotActiveException')
    SelfManagedCaseStatus = Shapes::StringShape.new(name: 'SelfManagedCaseStatus')
    SendFeedbackRequest = Shapes::StructureShape.new(name: 'SendFeedbackRequest')
    SendFeedbackResponse = Shapes::StructureShape.new(name: 'SendFeedbackResponse')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThreatActorIp = Shapes::StructureShape.new(name: 'ThreatActorIp')
    ThreatActorIpList = Shapes::ListShape.new(name: 'ThreatActorIpList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateCaseCommentRequest = Shapes::StructureShape.new(name: 'UpdateCaseCommentRequest')
    UpdateCaseCommentResponse = Shapes::StructureShape.new(name: 'UpdateCaseCommentResponse')
    UpdateCaseRequest = Shapes::StructureShape.new(name: 'UpdateCaseRequest')
    UpdateCaseResponse = Shapes::StructureShape.new(name: 'UpdateCaseResponse')
    UpdateCaseStatusRequest = Shapes::StructureShape.new(name: 'UpdateCaseStatusRequest')
    UpdateCaseStatusResponse = Shapes::StructureShape.new(name: 'UpdateCaseStatusResponse')
    UpdateMembershipRequest = Shapes::StructureShape.new(name: 'UpdateMembershipRequest')
    UpdateMembershipResponse = Shapes::StructureShape.new(name: 'UpdateMembershipResponse')
    UpdateResolverTypeRequest = Shapes::StructureShape.new(name: 'UpdateResolverTypeRequest')
    UpdateResolverTypeResponse = Shapes::StructureShape.new(name: 'UpdateResolverTypeResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    UsefulnessRating = Shapes::StringShape.new(name: 'UsefulnessRating')
    UserAgent = Shapes::StringShape.new(name: 'UserAgent')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    Watcher = Shapes::StructureShape.new(name: 'Watcher')
    Watchers = Shapes::ListShape.new(name: 'Watchers')

    AWSAccountIds.member = Shapes::ShapeRef.new(shape: AWSAccountId)

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BatchGetMemberAccountDetailsRequest.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipId, required: true, location: "uri", location_name: "membershipId"))
    BatchGetMemberAccountDetailsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AWSAccountIds, required: true, location_name: "accountIds"))
    BatchGetMemberAccountDetailsRequest.struct_class = Types::BatchGetMemberAccountDetailsRequest

    BatchGetMemberAccountDetailsResponse.add_member(:items, Shapes::ShapeRef.new(shape: GetMembershipAccountDetailItems, location_name: "items"))
    BatchGetMemberAccountDetailsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: GetMembershipAccountDetailErrors, location_name: "errors"))
    BatchGetMemberAccountDetailsResponse.struct_class = Types::BatchGetMemberAccountDetailsResponse

    CancelMembershipRequest.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipId, required: true, location: "uri", location_name: "membershipId"))
    CancelMembershipRequest.struct_class = Types::CancelMembershipRequest

    CancelMembershipResponse.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipId, required: true, location_name: "membershipId"))
    CancelMembershipResponse.struct_class = Types::CancelMembershipResponse

    CaseAttachmentAttributes.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, required: true, location_name: "attachmentId"))
    CaseAttachmentAttributes.add_member(:file_name, Shapes::ShapeRef.new(shape: FileName, required: true, location_name: "fileName"))
    CaseAttachmentAttributes.add_member(:attachment_status, Shapes::ShapeRef.new(shape: CaseAttachmentStatus, required: true, location_name: "attachmentStatus"))
    CaseAttachmentAttributes.add_member(:creator, Shapes::ShapeRef.new(shape: PrincipalId, required: true, location_name: "creator"))
    CaseAttachmentAttributes.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdDate"))
    CaseAttachmentAttributes.struct_class = Types::CaseAttachmentAttributes

    CaseAttachmentsList.member = Shapes::ShapeRef.new(shape: CaseAttachmentAttributes)

    CaseEditItem.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "eventTimestamp"))
    CaseEditItem.add_member(:principal, Shapes::ShapeRef.new(shape: String, location_name: "principal"))
    CaseEditItem.add_member(:action, Shapes::ShapeRef.new(shape: CaseEditAction, location_name: "action"))
    CaseEditItem.add_member(:message, Shapes::ShapeRef.new(shape: CaseEditMessage, location_name: "message"))
    CaseEditItem.struct_class = Types::CaseEditItem

    CaseEditItems.member = Shapes::ShapeRef.new(shape: CaseEditItem)

    CaseMetadata.member = Shapes::ShapeRef.new(shape: CaseMetadataEntry)

    CaseMetadataEntry.add_member(:key, Shapes::ShapeRef.new(shape: CaseMetadataEntryKeyString, required: true, location_name: "key"))
    CaseMetadataEntry.add_member(:value, Shapes::ShapeRef.new(shape: CaseMetadataEntryValueString, required: true, location_name: "value"))
    CaseMetadataEntry.struct_class = Types::CaseMetadataEntry

    CloseCaseRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    CloseCaseRequest.struct_class = Types::CloseCaseRequest

    CloseCaseResponse.add_member(:case_status, Shapes::ShapeRef.new(shape: CaseStatus, location_name: "caseStatus"))
    CloseCaseResponse.add_member(:closed_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "closedDate"))
    CloseCaseResponse.struct_class = Types::CloseCaseResponse

    CommunicationPreferences.member = Shapes::ShapeRef.new(shape: CommunicationType)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateCaseCommentRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    CreateCaseCommentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateCaseCommentRequestClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateCaseCommentRequest.add_member(:body, Shapes::ShapeRef.new(shape: CommentBody, required: true, location_name: "body"))
    CreateCaseCommentRequest.struct_class = Types::CreateCaseCommentRequest

    CreateCaseCommentResponse.add_member(:comment_id, Shapes::ShapeRef.new(shape: CommentId, required: true, location_name: "commentId"))
    CreateCaseCommentResponse.struct_class = Types::CreateCaseCommentResponse

    CreateCaseRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateCaseRequestClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateCaseRequest.add_member(:resolver_type, Shapes::ShapeRef.new(shape: ResolverType, required: true, location_name: "resolverType"))
    CreateCaseRequest.add_member(:title, Shapes::ShapeRef.new(shape: CaseTitle, required: true, location_name: "title"))
    CreateCaseRequest.add_member(:description, Shapes::ShapeRef.new(shape: CaseDescription, required: true, location_name: "description"))
    CreateCaseRequest.add_member(:engagement_type, Shapes::ShapeRef.new(shape: EngagementType, required: true, location_name: "engagementType"))
    CreateCaseRequest.add_member(:reported_incident_start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "reportedIncidentStartDate"))
    CreateCaseRequest.add_member(:impacted_accounts, Shapes::ShapeRef.new(shape: ImpactedAccounts, required: true, location_name: "impactedAccounts"))
    CreateCaseRequest.add_member(:watchers, Shapes::ShapeRef.new(shape: Watchers, required: true, location_name: "watchers"))
    CreateCaseRequest.add_member(:threat_actor_ip_addresses, Shapes::ShapeRef.new(shape: ThreatActorIpList, location_name: "threatActorIpAddresses"))
    CreateCaseRequest.add_member(:impacted_services, Shapes::ShapeRef.new(shape: ImpactedServicesList, location_name: "impactedServices"))
    CreateCaseRequest.add_member(:impacted_aws_regions, Shapes::ShapeRef.new(shape: ImpactedAwsRegionList, location_name: "impactedAwsRegions"))
    CreateCaseRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCaseRequest.struct_class = Types::CreateCaseRequest

    CreateCaseResponse.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location_name: "caseId"))
    CreateCaseResponse.struct_class = Types::CreateCaseResponse

    CreateMembershipRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateMembershipRequestClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateMembershipRequest.add_member(:membership_name, Shapes::ShapeRef.new(shape: MembershipName, required: true, location_name: "membershipName"))
    CreateMembershipRequest.add_member(:incident_response_team, Shapes::ShapeRef.new(shape: IncidentResponseTeam, required: true, location_name: "incidentResponseTeam"))
    CreateMembershipRequest.add_member(:opt_in_features, Shapes::ShapeRef.new(shape: OptInFeatures, location_name: "optInFeatures"))
    CreateMembershipRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateMembershipRequest.add_member(:cover_entire_organization, Shapes::ShapeRef.new(shape: Boolean, location_name: "coverEntireOrganization"))
    CreateMembershipRequest.struct_class = Types::CreateMembershipRequest

    CreateMembershipResponse.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipId, required: true, location_name: "membershipId"))
    CreateMembershipResponse.struct_class = Types::CreateMembershipResponse

    GetCaseAttachmentDownloadUrlRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    GetCaseAttachmentDownloadUrlRequest.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, required: true, location: "uri", location_name: "attachmentId"))
    GetCaseAttachmentDownloadUrlRequest.struct_class = Types::GetCaseAttachmentDownloadUrlRequest

    GetCaseAttachmentDownloadUrlResponse.add_member(:attachment_presigned_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "attachmentPresignedUrl"))
    GetCaseAttachmentDownloadUrlResponse.struct_class = Types::GetCaseAttachmentDownloadUrlResponse

    GetCaseAttachmentUploadUrlRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    GetCaseAttachmentUploadUrlRequest.add_member(:file_name, Shapes::ShapeRef.new(shape: FileName, required: true, location_name: "fileName"))
    GetCaseAttachmentUploadUrlRequest.add_member(:content_length, Shapes::ShapeRef.new(shape: ContentLength, required: true, location_name: "contentLength"))
    GetCaseAttachmentUploadUrlRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: GetCaseAttachmentUploadUrlRequestClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    GetCaseAttachmentUploadUrlRequest.struct_class = Types::GetCaseAttachmentUploadUrlRequest

    GetCaseAttachmentUploadUrlResponse.add_member(:attachment_presigned_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "attachmentPresignedUrl"))
    GetCaseAttachmentUploadUrlResponse.struct_class = Types::GetCaseAttachmentUploadUrlResponse

    GetCaseRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    GetCaseRequest.struct_class = Types::GetCaseRequest

    GetCaseResponse.add_member(:title, Shapes::ShapeRef.new(shape: CaseTitle, location_name: "title"))
    GetCaseResponse.add_member(:case_arn, Shapes::ShapeRef.new(shape: CaseArn, location_name: "caseArn"))
    GetCaseResponse.add_member(:description, Shapes::ShapeRef.new(shape: CaseDescription, location_name: "description"))
    GetCaseResponse.add_member(:case_status, Shapes::ShapeRef.new(shape: CaseStatus, location_name: "caseStatus"))
    GetCaseResponse.add_member(:engagement_type, Shapes::ShapeRef.new(shape: EngagementType, location_name: "engagementType"))
    GetCaseResponse.add_member(:reported_incident_start_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "reportedIncidentStartDate"))
    GetCaseResponse.add_member(:actual_incident_start_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "actualIncidentStartDate"))
    GetCaseResponse.add_member(:impacted_aws_regions, Shapes::ShapeRef.new(shape: ImpactedAwsRegionList, location_name: "impactedAwsRegions"))
    GetCaseResponse.add_member(:threat_actor_ip_addresses, Shapes::ShapeRef.new(shape: ThreatActorIpList, location_name: "threatActorIpAddresses"))
    GetCaseResponse.add_member(:pending_action, Shapes::ShapeRef.new(shape: PendingAction, location_name: "pendingAction"))
    GetCaseResponse.add_member(:impacted_accounts, Shapes::ShapeRef.new(shape: ImpactedAccounts, location_name: "impactedAccounts"))
    GetCaseResponse.add_member(:watchers, Shapes::ShapeRef.new(shape: Watchers, location_name: "watchers"))
    GetCaseResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    GetCaseResponse.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    GetCaseResponse.add_member(:closure_code, Shapes::ShapeRef.new(shape: ClosureCode, location_name: "closureCode"))
    GetCaseResponse.add_member(:resolver_type, Shapes::ShapeRef.new(shape: ResolverType, location_name: "resolverType"))
    GetCaseResponse.add_member(:impacted_services, Shapes::ShapeRef.new(shape: ImpactedServicesList, location_name: "impactedServices"))
    GetCaseResponse.add_member(:case_attachments, Shapes::ShapeRef.new(shape: CaseAttachmentsList, location_name: "caseAttachments"))
    GetCaseResponse.add_member(:closed_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "closedDate"))
    GetCaseResponse.add_member(:case_metadata, Shapes::ShapeRef.new(shape: CaseMetadata, location_name: "caseMetadata"))
    GetCaseResponse.struct_class = Types::GetCaseResponse

    GetMembershipAccountDetailError.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSAccountId, required: true, location_name: "accountId"))
    GetMembershipAccountDetailError.add_member(:error, Shapes::ShapeRef.new(shape: String, required: true, location_name: "error"))
    GetMembershipAccountDetailError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    GetMembershipAccountDetailError.struct_class = Types::GetMembershipAccountDetailError

    GetMembershipAccountDetailErrors.member = Shapes::ShapeRef.new(shape: GetMembershipAccountDetailError)

    GetMembershipAccountDetailItem.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "accountId"))
    GetMembershipAccountDetailItem.add_member(:relationship_status, Shapes::ShapeRef.new(shape: MembershipAccountRelationshipStatus, location_name: "relationshipStatus"))
    GetMembershipAccountDetailItem.add_member(:relationship_type, Shapes::ShapeRef.new(shape: MembershipAccountRelationshipType, location_name: "relationshipType"))
    GetMembershipAccountDetailItem.struct_class = Types::GetMembershipAccountDetailItem

    GetMembershipAccountDetailItems.member = Shapes::ShapeRef.new(shape: GetMembershipAccountDetailItem)

    GetMembershipRequest.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipId, required: true, location: "uri", location_name: "membershipId"))
    GetMembershipRequest.struct_class = Types::GetMembershipRequest

    GetMembershipResponse.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipId, required: true, location_name: "membershipId"))
    GetMembershipResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "accountId"))
    GetMembershipResponse.add_member(:region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "region"))
    GetMembershipResponse.add_member(:membership_name, Shapes::ShapeRef.new(shape: MembershipName, location_name: "membershipName"))
    GetMembershipResponse.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, location_name: "membershipArn"))
    GetMembershipResponse.add_member(:membership_status, Shapes::ShapeRef.new(shape: MembershipStatus, location_name: "membershipStatus"))
    GetMembershipResponse.add_member(:membership_activation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "membershipActivationTimestamp"))
    GetMembershipResponse.add_member(:membership_deactivation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "membershipDeactivationTimestamp"))
    GetMembershipResponse.add_member(:customer_type, Shapes::ShapeRef.new(shape: CustomerType, location_name: "customerType"))
    GetMembershipResponse.add_member(:number_of_accounts_covered, Shapes::ShapeRef.new(shape: Long, location_name: "numberOfAccountsCovered"))
    GetMembershipResponse.add_member(:incident_response_team, Shapes::ShapeRef.new(shape: IncidentResponseTeam, location_name: "incidentResponseTeam"))
    GetMembershipResponse.add_member(:opt_in_features, Shapes::ShapeRef.new(shape: OptInFeatures, location_name: "optInFeatures"))
    GetMembershipResponse.add_member(:membership_accounts_configurations, Shapes::ShapeRef.new(shape: MembershipAccountsConfigurations, location_name: "membershipAccountsConfigurations"))
    GetMembershipResponse.struct_class = Types::GetMembershipResponse

    ImpactedAccounts.member = Shapes::ShapeRef.new(shape: AWSAccountId)

    ImpactedAwsRegion.add_member(:region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "region"))
    ImpactedAwsRegion.struct_class = Types::ImpactedAwsRegion

    ImpactedAwsRegionList.member = Shapes::ShapeRef.new(shape: ImpactedAwsRegion)

    ImpactedServicesList.member = Shapes::ShapeRef.new(shape: AwsService)

    IncidentResponder.add_member(:name, Shapes::ShapeRef.new(shape: IncidentResponderName, required: true, location_name: "name"))
    IncidentResponder.add_member(:job_title, Shapes::ShapeRef.new(shape: JobTitle, required: true, location_name: "jobTitle"))
    IncidentResponder.add_member(:email, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "email"))
    IncidentResponder.add_member(:communication_preferences, Shapes::ShapeRef.new(shape: CommunicationPreferences, location_name: "communicationPreferences"))
    IncidentResponder.struct_class = Types::IncidentResponder

    IncidentResponseTeam.member = Shapes::ShapeRef.new(shape: IncidentResponder)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidTokenException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidTokenException.struct_class = Types::InvalidTokenException

    InvestigationAction.add_member(:investigation_id, Shapes::ShapeRef.new(shape: InvestigationId, required: true, location_name: "investigationId"))
    InvestigationAction.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionType, required: true, location_name: "actionType"))
    InvestigationAction.add_member(:title, Shapes::ShapeRef.new(shape: InvestigationTitle, required: true, location_name: "title"))
    InvestigationAction.add_member(:content, Shapes::ShapeRef.new(shape: InvestigationContent, required: true, location_name: "content"))
    InvestigationAction.add_member(:status, Shapes::ShapeRef.new(shape: ExecutionStatus, required: true, location_name: "status"))
    InvestigationAction.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdated"))
    InvestigationAction.add_member(:feedback, Shapes::ShapeRef.new(shape: InvestigationFeedback, location_name: "feedback"))
    InvestigationAction.struct_class = Types::InvestigationAction

    InvestigationActionList.member = Shapes::ShapeRef.new(shape: InvestigationAction)

    InvestigationFeedback.add_member(:usefulness, Shapes::ShapeRef.new(shape: UsefulnessRating, location_name: "usefulness"))
    InvestigationFeedback.add_member(:comment, Shapes::ShapeRef.new(shape: FeedbackComment, location_name: "comment"))
    InvestigationFeedback.add_member(:submitted_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "submittedAt"))
    InvestigationFeedback.struct_class = Types::InvestigationFeedback

    ListCaseEditsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListCaseEditsRequestNextTokenString, location_name: "nextToken"))
    ListCaseEditsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCaseEditsRequestMaxResultsInteger, location_name: "maxResults"))
    ListCaseEditsRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    ListCaseEditsRequest.struct_class = Types::ListCaseEditsRequest

    ListCaseEditsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListCaseEditsResponse.add_member(:items, Shapes::ShapeRef.new(shape: CaseEditItems, location_name: "items"))
    ListCaseEditsResponse.add_member(:total, Shapes::ShapeRef.new(shape: Integer, location_name: "total"))
    ListCaseEditsResponse.struct_class = Types::ListCaseEditsResponse

    ListCasesItem.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location_name: "caseId"))
    ListCasesItem.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    ListCasesItem.add_member(:title, Shapes::ShapeRef.new(shape: CaseTitle, location_name: "title"))
    ListCasesItem.add_member(:case_arn, Shapes::ShapeRef.new(shape: CaseArn, location_name: "caseArn"))
    ListCasesItem.add_member(:engagement_type, Shapes::ShapeRef.new(shape: EngagementType, location_name: "engagementType"))
    ListCasesItem.add_member(:case_status, Shapes::ShapeRef.new(shape: CaseStatus, location_name: "caseStatus"))
    ListCasesItem.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    ListCasesItem.add_member(:closed_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "closedDate"))
    ListCasesItem.add_member(:resolver_type, Shapes::ShapeRef.new(shape: ResolverType, location_name: "resolverType"))
    ListCasesItem.add_member(:pending_action, Shapes::ShapeRef.new(shape: PendingAction, location_name: "pendingAction"))
    ListCasesItem.struct_class = Types::ListCasesItem

    ListCasesItems.member = Shapes::ShapeRef.new(shape: ListCasesItem)

    ListCasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListCasesRequestNextTokenString, location_name: "nextToken"))
    ListCasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCasesRequestMaxResultsInteger, location_name: "maxResults"))
    ListCasesRequest.struct_class = Types::ListCasesRequest

    ListCasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListCasesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ListCasesItems, location_name: "items"))
    ListCasesResponse.add_member(:total, Shapes::ShapeRef.new(shape: Long, location_name: "total"))
    ListCasesResponse.struct_class = Types::ListCasesResponse

    ListCommentsItem.add_member(:comment_id, Shapes::ShapeRef.new(shape: CommentId, required: true, location_name: "commentId"))
    ListCommentsItem.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate"))
    ListCommentsItem.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDate"))
    ListCommentsItem.add_member(:creator, Shapes::ShapeRef.new(shape: PrincipalId, location_name: "creator"))
    ListCommentsItem.add_member(:last_updated_by, Shapes::ShapeRef.new(shape: PrincipalId, location_name: "lastUpdatedBy"))
    ListCommentsItem.add_member(:body, Shapes::ShapeRef.new(shape: CommentBody, location_name: "body"))
    ListCommentsItem.struct_class = Types::ListCommentsItem

    ListCommentsItems.member = Shapes::ShapeRef.new(shape: ListCommentsItem)

    ListCommentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListCommentsRequestNextTokenString, location_name: "nextToken"))
    ListCommentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCommentsRequestMaxResultsInteger, location_name: "maxResults"))
    ListCommentsRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    ListCommentsRequest.struct_class = Types::ListCommentsRequest

    ListCommentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListCommentsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ListCommentsItems, location_name: "items"))
    ListCommentsResponse.add_member(:total, Shapes::ShapeRef.new(shape: Integer, location_name: "total"))
    ListCommentsResponse.struct_class = Types::ListCommentsResponse

    ListInvestigationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListInvestigationsRequestNextTokenString, location: "querystring", location_name: "nextToken"))
    ListInvestigationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListInvestigationsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListInvestigationsRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    ListInvestigationsRequest.struct_class = Types::ListInvestigationsRequest

    ListInvestigationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListInvestigationsResponse.add_member(:investigation_actions, Shapes::ShapeRef.new(shape: InvestigationActionList, required: true, location_name: "investigationActions"))
    ListInvestigationsResponse.struct_class = Types::ListInvestigationsResponse

    ListMembershipItem.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipId, required: true, location_name: "membershipId"))
    ListMembershipItem.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "accountId"))
    ListMembershipItem.add_member(:region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "region"))
    ListMembershipItem.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, location_name: "membershipArn"))
    ListMembershipItem.add_member(:membership_status, Shapes::ShapeRef.new(shape: MembershipStatus, location_name: "membershipStatus"))
    ListMembershipItem.struct_class = Types::ListMembershipItem

    ListMembershipItems.member = Shapes::ShapeRef.new(shape: ListMembershipItem)

    ListMembershipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListMembershipsRequestNextTokenString, location_name: "nextToken"))
    ListMembershipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMembershipsRequestMaxResultsInteger, location_name: "maxResults"))
    ListMembershipsRequest.struct_class = Types::ListMembershipsRequest

    ListMembershipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMembershipsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ListMembershipItems, location_name: "items"))
    ListMembershipsResponse.struct_class = Types::ListMembershipsResponse

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    MembershipAccountsConfigurations.add_member(:cover_entire_organization, Shapes::ShapeRef.new(shape: Boolean, location_name: "coverEntireOrganization"))
    MembershipAccountsConfigurations.add_member(:organizational_units, Shapes::ShapeRef.new(shape: OrganizationalUnits, location_name: "organizationalUnits"))
    MembershipAccountsConfigurations.struct_class = Types::MembershipAccountsConfigurations

    MembershipAccountsConfigurationsUpdate.add_member(:cover_entire_organization, Shapes::ShapeRef.new(shape: Boolean, location_name: "coverEntireOrganization"))
    MembershipAccountsConfigurationsUpdate.add_member(:organizational_units_to_add, Shapes::ShapeRef.new(shape: MembershipAccountsConfigurationsUpdateOrganizationalUnitsToAddList, location_name: "organizationalUnitsToAdd"))
    MembershipAccountsConfigurationsUpdate.add_member(:organizational_units_to_remove, Shapes::ShapeRef.new(shape: MembershipAccountsConfigurationsUpdateOrganizationalUnitsToRemoveList, location_name: "organizationalUnitsToRemove"))
    MembershipAccountsConfigurationsUpdate.struct_class = Types::MembershipAccountsConfigurationsUpdate

    MembershipAccountsConfigurationsUpdateOrganizationalUnitsToAddList.member = Shapes::ShapeRef.new(shape: OrganizationalUnitId)

    MembershipAccountsConfigurationsUpdateOrganizationalUnitsToRemoveList.member = Shapes::ShapeRef.new(shape: OrganizationalUnitId)

    OptInFeature.add_member(:feature_name, Shapes::ShapeRef.new(shape: OptInFeatureName, required: true, location_name: "featureName"))
    OptInFeature.add_member(:is_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isEnabled"))
    OptInFeature.struct_class = Types::OptInFeature

    OptInFeatures.member = Shapes::ShapeRef.new(shape: OptInFeature)

    OrganizationalUnits.member = Shapes::ShapeRef.new(shape: OrganizationalUnitId)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SecurityIncidentResponseNotActiveException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    SecurityIncidentResponseNotActiveException.struct_class = Types::SecurityIncidentResponseNotActiveException

    SendFeedbackRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    SendFeedbackRequest.add_member(:result_id, Shapes::ShapeRef.new(shape: ResultId, required: true, location: "uri", location_name: "resultId"))
    SendFeedbackRequest.add_member(:usefulness, Shapes::ShapeRef.new(shape: UsefulnessRating, required: true, location_name: "usefulness"))
    SendFeedbackRequest.add_member(:comment, Shapes::ShapeRef.new(shape: FeedbackComment, location_name: "comment"))
    SendFeedbackRequest.struct_class = Types::SendFeedbackRequest

    SendFeedbackResponse.struct_class = Types::SendFeedbackResponse

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    ThreatActorIp.add_member(:ip_address, Shapes::ShapeRef.new(shape: IPAddress, required: true, location_name: "ipAddress"))
    ThreatActorIp.add_member(:user_agent, Shapes::ShapeRef.new(shape: UserAgent, location_name: "userAgent"))
    ThreatActorIp.struct_class = Types::ThreatActorIp

    ThreatActorIpList.member = Shapes::ShapeRef.new(shape: ThreatActorIp)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateCaseCommentRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    UpdateCaseCommentRequest.add_member(:comment_id, Shapes::ShapeRef.new(shape: CommentId, required: true, location: "uri", location_name: "commentId"))
    UpdateCaseCommentRequest.add_member(:body, Shapes::ShapeRef.new(shape: CommentBody, required: true, location_name: "body"))
    UpdateCaseCommentRequest.struct_class = Types::UpdateCaseCommentRequest

    UpdateCaseCommentResponse.add_member(:comment_id, Shapes::ShapeRef.new(shape: CommentId, required: true, location_name: "commentId"))
    UpdateCaseCommentResponse.add_member(:body, Shapes::ShapeRef.new(shape: CommentBody, location_name: "body"))
    UpdateCaseCommentResponse.struct_class = Types::UpdateCaseCommentResponse

    UpdateCaseRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    UpdateCaseRequest.add_member(:title, Shapes::ShapeRef.new(shape: CaseTitle, location_name: "title"))
    UpdateCaseRequest.add_member(:description, Shapes::ShapeRef.new(shape: CaseDescription, location_name: "description"))
    UpdateCaseRequest.add_member(:reported_incident_start_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "reportedIncidentStartDate"))
    UpdateCaseRequest.add_member(:actual_incident_start_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "actualIncidentStartDate"))
    UpdateCaseRequest.add_member(:engagement_type, Shapes::ShapeRef.new(shape: EngagementType, location_name: "engagementType"))
    UpdateCaseRequest.add_member(:watchers_to_add, Shapes::ShapeRef.new(shape: Watchers, location_name: "watchersToAdd"))
    UpdateCaseRequest.add_member(:watchers_to_delete, Shapes::ShapeRef.new(shape: Watchers, location_name: "watchersToDelete"))
    UpdateCaseRequest.add_member(:threat_actor_ip_addresses_to_add, Shapes::ShapeRef.new(shape: ThreatActorIpList, location_name: "threatActorIpAddressesToAdd"))
    UpdateCaseRequest.add_member(:threat_actor_ip_addresses_to_delete, Shapes::ShapeRef.new(shape: ThreatActorIpList, location_name: "threatActorIpAddressesToDelete"))
    UpdateCaseRequest.add_member(:impacted_services_to_add, Shapes::ShapeRef.new(shape: ImpactedServicesList, location_name: "impactedServicesToAdd"))
    UpdateCaseRequest.add_member(:impacted_services_to_delete, Shapes::ShapeRef.new(shape: ImpactedServicesList, location_name: "impactedServicesToDelete"))
    UpdateCaseRequest.add_member(:impacted_aws_regions_to_add, Shapes::ShapeRef.new(shape: ImpactedAwsRegionList, location_name: "impactedAwsRegionsToAdd"))
    UpdateCaseRequest.add_member(:impacted_aws_regions_to_delete, Shapes::ShapeRef.new(shape: ImpactedAwsRegionList, location_name: "impactedAwsRegionsToDelete"))
    UpdateCaseRequest.add_member(:impacted_accounts_to_add, Shapes::ShapeRef.new(shape: ImpactedAccounts, location_name: "impactedAccountsToAdd"))
    UpdateCaseRequest.add_member(:impacted_accounts_to_delete, Shapes::ShapeRef.new(shape: ImpactedAccounts, location_name: "impactedAccountsToDelete"))
    UpdateCaseRequest.add_member(:case_metadata, Shapes::ShapeRef.new(shape: CaseMetadata, location_name: "caseMetadata"))
    UpdateCaseRequest.struct_class = Types::UpdateCaseRequest

    UpdateCaseResponse.struct_class = Types::UpdateCaseResponse

    UpdateCaseStatusRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    UpdateCaseStatusRequest.add_member(:case_status, Shapes::ShapeRef.new(shape: SelfManagedCaseStatus, required: true, location_name: "caseStatus"))
    UpdateCaseStatusRequest.struct_class = Types::UpdateCaseStatusRequest

    UpdateCaseStatusResponse.add_member(:case_status, Shapes::ShapeRef.new(shape: SelfManagedCaseStatus, location_name: "caseStatus"))
    UpdateCaseStatusResponse.struct_class = Types::UpdateCaseStatusResponse

    UpdateMembershipRequest.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipId, required: true, location: "uri", location_name: "membershipId"))
    UpdateMembershipRequest.add_member(:membership_name, Shapes::ShapeRef.new(shape: MembershipName, location_name: "membershipName"))
    UpdateMembershipRequest.add_member(:incident_response_team, Shapes::ShapeRef.new(shape: IncidentResponseTeam, location_name: "incidentResponseTeam"))
    UpdateMembershipRequest.add_member(:opt_in_features, Shapes::ShapeRef.new(shape: OptInFeatures, location_name: "optInFeatures"))
    UpdateMembershipRequest.add_member(:membership_accounts_configurations_update, Shapes::ShapeRef.new(shape: MembershipAccountsConfigurationsUpdate, location_name: "membershipAccountsConfigurationsUpdate"))
    UpdateMembershipRequest.add_member(:undo_membership_cancellation, Shapes::ShapeRef.new(shape: Boolean, location_name: "undoMembershipCancellation"))
    UpdateMembershipRequest.struct_class = Types::UpdateMembershipRequest

    UpdateMembershipResponse.struct_class = Types::UpdateMembershipResponse

    UpdateResolverTypeRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    UpdateResolverTypeRequest.add_member(:resolver_type, Shapes::ShapeRef.new(shape: ResolverType, required: true, location_name: "resolverType"))
    UpdateResolverTypeRequest.struct_class = Types::UpdateResolverTypeRequest

    UpdateResolverTypeResponse.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location_name: "caseId"))
    UpdateResolverTypeResponse.add_member(:case_status, Shapes::ShapeRef.new(shape: CaseStatus, location_name: "caseStatus"))
    UpdateResolverTypeResponse.add_member(:resolver_type, Shapes::ShapeRef.new(shape: ResolverType, location_name: "resolverType"))
    UpdateResolverTypeResponse.struct_class = Types::UpdateResolverTypeResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    Watcher.add_member(:email, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "email"))
    Watcher.add_member(:name, Shapes::ShapeRef.new(shape: PersonName, location_name: "name"))
    Watcher.add_member(:job_title, Shapes::ShapeRef.new(shape: JobTitle, location_name: "jobTitle"))
    Watcher.struct_class = Types::Watcher

    Watchers.member = Shapes::ShapeRef.new(shape: Watcher)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "security-ir",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Security Incident Response",
        "serviceId" => "Security IR",
        "signatureVersion" => "v4",
        "signingName" => "security-ir",
        "uid" => "security-ir-2018-05-10",
      }

      api.add_operation(:batch_get_member_account_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetMemberAccountDetails"
        o.http_method = "POST"
        o.http_request_uri = "/v1/membership/{membershipId}/batch-member-details"
        o.input = Shapes::ShapeRef.new(shape: BatchGetMemberAccountDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetMemberAccountDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:cancel_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelMembership"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/membership/{membershipId}"
        o.input = Shapes::ShapeRef.new(shape: CancelMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:close_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CloseCase"
        o.http_method = "POST"
        o.http_request_uri = "/v1/cases/{caseId}/close-case"
        o.input = Shapes::ShapeRef.new(shape: CloseCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: CloseCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:create_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCase"
        o.http_method = "POST"
        o.http_request_uri = "/v1/create-case"
        o.input = Shapes::ShapeRef.new(shape: CreateCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:create_case_comment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCaseComment"
        o.http_method = "POST"
        o.http_request_uri = "/v1/cases/{caseId}/create-comment"
        o.input = Shapes::ShapeRef.new(shape: CreateCaseCommentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCaseCommentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:create_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMembership"
        o.http_method = "POST"
        o.http_request_uri = "/v1/membership"
        o.input = Shapes::ShapeRef.new(shape: CreateMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:get_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCase"
        o.http_method = "GET"
        o.http_request_uri = "/v1/cases/{caseId}/get-case"
        o.input = Shapes::ShapeRef.new(shape: GetCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:get_case_attachment_download_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCaseAttachmentDownloadUrl"
        o.http_method = "GET"
        o.http_request_uri = "/v1/cases/{caseId}/get-presigned-url/{attachmentId}"
        o.input = Shapes::ShapeRef.new(shape: GetCaseAttachmentDownloadUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCaseAttachmentDownloadUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:get_case_attachment_upload_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCaseAttachmentUploadUrl"
        o.http_method = "POST"
        o.http_request_uri = "/v1/cases/{caseId}/get-presigned-url"
        o.input = Shapes::ShapeRef.new(shape: GetCaseAttachmentUploadUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCaseAttachmentUploadUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:get_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMembership"
        o.http_method = "GET"
        o.http_request_uri = "/v1/membership/{membershipId}"
        o.input = Shapes::ShapeRef.new(shape: GetMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:list_case_edits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCaseEdits"
        o.http_method = "POST"
        o.http_request_uri = "/v1/cases/{caseId}/list-case-edits"
        o.input = Shapes::ShapeRef.new(shape: ListCaseEditsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCaseEditsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_cases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCases"
        o.http_method = "POST"
        o.http_request_uri = "/v1/list-cases"
        o.input = Shapes::ShapeRef.new(shape: ListCasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_comments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComments"
        o.http_method = "POST"
        o.http_request_uri = "/v1/cases/{caseId}/list-comments"
        o.input = Shapes::ShapeRef.new(shape: ListCommentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCommentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_investigations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInvestigations"
        o.http_method = "GET"
        o.http_request_uri = "/v1/cases/{caseId}/list-investigations"
        o.input = Shapes::ShapeRef.new(shape: ListInvestigationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInvestigationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_memberships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMemberships"
        o.http_method = "POST"
        o.http_request_uri = "/v1/memberships"
        o.input = Shapes::ShapeRef.new(shape: ListMembershipsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMembershipsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:send_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendFeedback"
        o.http_method = "POST"
        o.http_request_uri = "/v1/cases/{caseId}/feedback/{resultId}/send-feedback"
        o.input = Shapes::ShapeRef.new(shape: SendFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: SendFeedbackResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:update_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCase"
        o.http_method = "POST"
        o.http_request_uri = "/v1/cases/{caseId}/update-case"
        o.input = Shapes::ShapeRef.new(shape: UpdateCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:update_case_comment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCaseComment"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/cases/{caseId}/update-case-comment/{commentId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCaseCommentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCaseCommentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:update_case_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCaseStatus"
        o.http_method = "POST"
        o.http_request_uri = "/v1/cases/{caseId}/update-case-status"
        o.input = Shapes::ShapeRef.new(shape: UpdateCaseStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCaseStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:update_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMembership"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/membership/{membershipId}/update-membership"
        o.input = Shapes::ShapeRef.new(shape: UpdateMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:update_resolver_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResolverType"
        o.http_method = "POST"
        o.http_request_uri = "/v1/cases/{caseId}/update-resolver-type"
        o.input = Shapes::ShapeRef.new(shape: UpdateResolverTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResolverTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)
    end

  end
end

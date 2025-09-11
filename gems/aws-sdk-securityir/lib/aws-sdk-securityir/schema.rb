# frozen_string_literal: true

# This is generated code!

module Aws::SecurityIR
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#AWSAccountId', name: 'AWSAccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AWSAccountIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#AWSAccountIds', name: 'AWSAccountIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 12, "max" => 1010}, "smithy.api#pattern" => "^arn:aws:security-ir:\\w+?-\\w+?-\\d+:[0-9]{12}:(membership/m-[a-z0-9]{10,32}|case/[0-9]{10})$"})
    AttachmentId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#AttachmentId', name: 'AttachmentId', traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{12}$"})
    AwsRegion = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securityir#AwsRegion', name: 'AwsRegion')
    AwsService = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#AwsService', name: 'AwsService', traits: {"smithy.api#length" => {"min" => 2, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9 -.():]+$"})
    BatchGetMemberAccountDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#BatchGetMemberAccountDetailsRequest', name: 'BatchGetMemberAccountDetailsRequest', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_BatchGetMemberAccountDetails.html#API_BatchGetMemberAccountDetails_RequestSyntax"}})
    BatchGetMemberAccountDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#BatchGetMemberAccountDetailsResponse', name: 'BatchGetMemberAccountDetailsResponse', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_BatchGetMemberAccountDetails.html#API_BatchGetMemberAccountDetails_ResponseSyntax"}})
    CancelMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#CancelMembershipRequest', name: 'CancelMembershipRequest', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CancelMembership.html#API_CancelMembership_RequestSyntax"}})
    CancelMembershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#CancelMembershipResponse', name: 'CancelMembershipResponse', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CancelMembership.html#API_CancelMembership_ResponseSyntax"}})
    CaseArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#CaseArn', name: 'CaseArn', traits: {"smithy.api#length" => {"min" => 12, "max" => 80}, "smithy.api#pattern" => "^arn:aws:security-ir:\\w+?-\\w+?-\\d+:[0-9]{12}:case/[0-9]{10}$"})
    CaseAttachmentAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#CaseAttachmentAttributes', name: 'CaseAttachmentAttributes', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseAttachmentAttributes.html"}})
    CaseAttachmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securityir#CaseAttachmentStatus', name: 'CaseAttachmentStatus')
    CaseAttachmentsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#CaseAttachmentsList', name: 'CaseAttachmentsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    CaseDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#CaseDescription', name: 'CaseDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 8000}, "smithy.api#sensitive" => {}})
    CaseEditAction = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#CaseEditAction', name: 'CaseEditAction', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CaseEditItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#CaseEditItem', name: 'CaseEditItem', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseEditItem.html"}})
    CaseEditItems = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#CaseEditItems', name: 'CaseEditItems')
    CaseEditMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#CaseEditMessage', name: 'CaseEditMessage', traits: {"smithy.api#length" => {"min" => 10, "max" => 4096}})
    CaseId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#CaseId', name: 'CaseId', traits: {"smithy.api#length" => {"min" => 10, "max" => 32}, "smithy.api#pattern" => "^\\d{10,32}"})
    CaseStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securityir#CaseStatus', name: 'CaseStatus')
    CaseTitle = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#CaseTitle', name: 'CaseTitle', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#sensitive" => {}})
    CloseCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#CloseCaseRequest', name: 'CloseCaseRequest')
    CloseCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#CloseCaseResponse', name: 'CloseCaseResponse')
    ClosureCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securityir#ClosureCode', name: 'ClosureCode')
    CommentBody = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#CommentBody', name: 'CommentBody', traits: {"smithy.api#length" => {"min" => 1, "max" => 12000}, "smithy.api#sensitive" => {}})
    CommentId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#CommentId', name: 'CommentId', traits: {"smithy.api#length" => {"min" => 6, "max" => 6}, "smithy.api#pattern" => "^\\d{6}$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentLength = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.securityir#ContentLength', name: 'ContentLength', traits: {"smithy.api#range" => {"min" => 1, "max" => 104857600}})
    CreateCaseCommentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#CreateCaseCommentRequest', name: 'CreateCaseCommentRequest')
    CreateCaseCommentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#CreateCaseCommentResponse', name: 'CreateCaseCommentResponse')
    CreateCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#CreateCaseRequest', name: 'CreateCaseRequest')
    CreateCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#CreateCaseResponse', name: 'CreateCaseResponse', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#API_CreateCase_ResponseSyntax"}})
    CreateMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#CreateMembershipRequest', name: 'CreateMembershipRequest')
    CreateMembershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#CreateMembershipResponse', name: 'CreateMembershipResponse')
    CustomerType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securityir#CustomerType', name: 'CustomerType')
    EmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#EmailAddress', name: 'EmailAddress', traits: {"smithy.api#length" => {"min" => 6, "max" => 254}, "smithy.api#pattern" => "^[a-zA-Z0-9.!\#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$", "smithy.api#sensitive" => {}})
    EngagementType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securityir#EngagementType', name: 'EngagementType')
    FileName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#FileName', name: 'FileName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]+$", "smithy.api#sensitive" => {}})
    GetCaseAttachmentDownloadUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#GetCaseAttachmentDownloadUrlRequest', name: 'GetCaseAttachmentDownloadUrlRequest')
    GetCaseAttachmentDownloadUrlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#GetCaseAttachmentDownloadUrlResponse', name: 'GetCaseAttachmentDownloadUrlResponse')
    GetCaseAttachmentUploadUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#GetCaseAttachmentUploadUrlRequest', name: 'GetCaseAttachmentUploadUrlRequest')
    GetCaseAttachmentUploadUrlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#GetCaseAttachmentUploadUrlResponse', name: 'GetCaseAttachmentUploadUrlResponse')
    GetCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#GetCaseRequest', name: 'GetCaseRequest')
    GetCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#GetCaseResponse', name: 'GetCaseResponse')
    GetMembershipAccountDetailError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#GetMembershipAccountDetailError', name: 'GetMembershipAccountDetailError', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembershipAccountDetailError.html"}})
    GetMembershipAccountDetailErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#GetMembershipAccountDetailErrors', name: 'GetMembershipAccountDetailErrors', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    GetMembershipAccountDetailItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#GetMembershipAccountDetailItem', name: 'GetMembershipAccountDetailItem', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembershipAccountDetailItem.html"}})
    GetMembershipAccountDetailItems = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#GetMembershipAccountDetailItems', name: 'GetMembershipAccountDetailItems', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    GetMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#GetMembershipRequest', name: 'GetMembershipRequest')
    GetMembershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#GetMembershipResponse', name: 'GetMembershipResponse')
    IPAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#IPAddress', name: 'IPAddress', traits: {"smithy.api#pattern" => "^(?:(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))|(?:(?:[A-F0-9]{1,4}:){7}[A-F0-9]{1,4})|(?:(?:[A-F0-9]{1,4}:){6}(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))$", "smithy.api#sensitive" => {}})
    ImpactedAccounts = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#ImpactedAccounts', name: 'ImpactedAccounts', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#uniqueItems" => {}})
    ImpactedAwsRegion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ImpactedAwsRegion', name: 'ImpactedAwsRegion')
    ImpactedAwsRegionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#ImpactedAwsRegionList', name: 'ImpactedAwsRegionList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#uniqueItems" => {}})
    ImpactedServicesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#ImpactedServicesList', name: 'ImpactedServicesList', traits: {"smithy.api#length" => {"min" => 0, "max" => 600}, "smithy.api#uniqueItems" => {}})
    IncidentResponder = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#IncidentResponder', name: 'IncidentResponder')
    IncidentResponderName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#IncidentResponderName', name: 'IncidentResponderName', traits: {"smithy.api#length" => {"min" => 3, "max" => 50}, "smithy.api#sensitive" => {}})
    IncidentResponseTeam = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#IncidentResponseTeam', name: 'IncidentResponseTeam', traits: {"smithy.api#length" => {"min" => 2, "max" => 10}, "smithy.api#uniqueItems" => {}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#InvalidTokenException', name: 'InvalidTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 423, "smithy.api#retryable" => {}})
    JobTitle = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#JobTitle', name: 'JobTitle', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    ListCaseEditsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ListCaseEditsRequest', name: 'ListCaseEditsRequest')
    ListCaseEditsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ListCaseEditsResponse', name: 'ListCaseEditsResponse')
    ListCasesItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ListCasesItem', name: 'ListCasesItem')
    ListCasesItems = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#ListCasesItems', name: 'ListCasesItems')
    ListCasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ListCasesRequest', name: 'ListCasesRequest')
    ListCasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ListCasesResponse', name: 'ListCasesResponse')
    ListCommentsItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ListCommentsItem', name: 'ListCommentsItem', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCommentsItem.html#securityir-Type-ListCommentsItem-commentId"}})
    ListCommentsItems = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#ListCommentsItems', name: 'ListCommentsItems')
    ListCommentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ListCommentsRequest', name: 'ListCommentsRequest')
    ListCommentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ListCommentsResponse', name: 'ListCommentsResponse')
    ListMembershipItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ListMembershipItem', name: 'ListMembershipItem', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-response-items"}})
    ListMembershipItems = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#ListMembershipItems', name: 'ListMembershipItems')
    ListMembershipsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ListMembershipsRequest', name: 'ListMembershipsRequest')
    ListMembershipsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ListMembershipsResponse', name: 'ListMembershipsResponse')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ListTagsForResourceInput', name: 'ListTagsForResourceInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.securityir#Membership", "ids" => {"membershipId" => "resourceArn"}}, {"resource" => "com.amazonaws.securityir#Case", "ids" => {"caseId" => "resourceArn"}}]})
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MembershipAccountRelationshipStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securityir#MembershipAccountRelationshipStatus', name: 'MembershipAccountRelationshipStatus')
    MembershipAccountRelationshipType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securityir#MembershipAccountRelationshipType', name: 'MembershipAccountRelationshipType')
    MembershipAccountsConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#MembershipAccountsConfigurations', name: 'MembershipAccountsConfigurations')
    MembershipAccountsConfigurationsUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#MembershipAccountsConfigurationsUpdate', name: 'MembershipAccountsConfigurationsUpdate')
    MembershipArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#MembershipArn', name: 'MembershipArn', traits: {"smithy.api#length" => {"min" => 12, "max" => 80}, "smithy.api#pattern" => "^arn:aws:security-ir:\\w+?-\\w+?-\\d+:[0-9]{12}:membership/m-[a-z0-9]{10,32}$"})
    MembershipId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#MembershipId', name: 'MembershipId', traits: {"smithy.api#length" => {"min" => 12, "max" => 34}, "smithy.api#pattern" => "^m-[a-z0-9]{10,32}$"})
    MembershipName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#MembershipName', name: 'MembershipName', traits: {"smithy.api#length" => {"min" => 3, "max" => 50}, "smithy.api#sensitive" => {}})
    MembershipStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securityir#MembershipStatus', name: 'MembershipStatus')
    OptInFeature = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#OptInFeature', name: 'OptInFeature')
    OptInFeatureName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securityir#OptInFeatureName', name: 'OptInFeatureName')
    OptInFeatures = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#OptInFeatures', name: 'OptInFeatures', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    OrganizationalUnitId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#OrganizationalUnitId', name: 'OrganizationalUnitId', traits: {"smithy.api#pattern" => "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"})
    OrganizationalUnits = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#OrganizationalUnits', name: 'OrganizationalUnits', traits: {"smithy.api#uniqueItems" => {}})
    PendingAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securityir#PendingAction', name: 'PendingAction')
    PersonName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#PersonName', name: 'PersonName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    PrincipalId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#PrincipalId', name: 'PrincipalId', traits: {"smithy.api#pattern" => "((^AWS Responder)|(^\\d{12}$)|(^security-ir.amazonaws.com))"})
    ResolverType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securityir#ResolverType', name: 'ResolverType')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SecurityIncidentResponseNotActiveException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#SecurityIncidentResponseNotActiveException', name: 'SecurityIncidentResponseNotActiveException', traits: {"smithy.api#error" => "client", "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/CommonErrors.html"}, "smithy.api#httpError" => 400})
    SelfManagedCaseStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securityir#SelfManagedCaseStatus', name: 'SelfManagedCaseStatus')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#TagKeys', name: 'TagKeys')
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.securityir#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#TagResourceInput', name: 'TagResourceInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.securityir#Membership", "ids" => {"membershipId" => "resourceArn"}}, {"resource" => "com.amazonaws.securityir#Case", "ids" => {"caseId" => "resourceArn"}}]})
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#TagResourceOutput', name: 'TagResourceOutput', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_TagResource.html#API_TagResource_ResponseSyntax"}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThreatActorIp = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ThreatActorIp', name: 'ThreatActorIp')
    ThreatActorIpList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#ThreatActorIpList', name: 'ThreatActorIpList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#UntagResourceInput', name: 'UntagResourceInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.securityir#Membership", "ids" => {"membershipId" => "resourceArn"}}, {"resource" => "com.amazonaws.securityir#Case", "ids" => {"caseId" => "resourceArn"}}]})
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#UntagResourceOutput', name: 'UntagResourceOutput', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UntagResource.html#API_UntagResource_ResponseSyntax"}})
    UpdateCaseCommentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#UpdateCaseCommentRequest', name: 'UpdateCaseCommentRequest')
    UpdateCaseCommentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#UpdateCaseCommentResponse', name: 'UpdateCaseCommentResponse')
    UpdateCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#UpdateCaseRequest', name: 'UpdateCaseRequest')
    UpdateCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#UpdateCaseResponse', name: 'UpdateCaseResponse')
    UpdateCaseStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#UpdateCaseStatusRequest', name: 'UpdateCaseStatusRequest')
    UpdateCaseStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#UpdateCaseStatusResponse', name: 'UpdateCaseStatusResponse')
    UpdateMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#UpdateMembershipRequest', name: 'UpdateMembershipRequest')
    UpdateMembershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#UpdateMembershipResponse', name: 'UpdateMembershipResponse')
    UpdateResolverTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#UpdateResolverTypeRequest', name: 'UpdateResolverTypeRequest')
    UpdateResolverTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#UpdateResolverTypeResponse', name: 'UpdateResolverTypeResponse')
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#Url', name: 'Url', traits: {"smithy.api#pattern" => "^https?://(?:www.)?[a-zA-Z0-9@:._+~#=-]{2,256}\\.[a-z]{2,6}\\b(?:[-a-zA-Z0-9@:%_+.~#?&/=]{0,2048})$", "smithy.api#sensitive" => {}})
    UserAgent = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securityir#UserAgent', name: 'UserAgent', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securityir#ValidationExceptionReason', name: 'ValidationExceptionReason')
    Watcher = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securityir#Watcher', name: 'Watcher', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_Watcher.html"}})
    Watchers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securityir#Watchers', name: 'Watchers', traits: {"smithy.api#length" => {"min" => 0, "max" => 30}, "smithy.api#uniqueItems" => {}})

    AWSAccountIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId)
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AwsRegion.add_member(:af_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AF_SOUTH_1', traits: {"smithy.api#enumValue" => "af-south-1"}))
    AwsRegion.add_member(:ap_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_EAST_1', traits: {"smithy.api#enumValue" => "ap-east-1"}))
    AwsRegion.add_member(:ap_east_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_EAST_2', traits: {"smithy.api#enumValue" => "ap-east-2"}))
    AwsRegion.add_member(:ap_northeast_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_NORTHEAST_1', traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    AwsRegion.add_member(:ap_northeast_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_NORTHEAST_2', traits: {"smithy.api#enumValue" => "ap-northeast-2"}))
    AwsRegion.add_member(:ap_northeast_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_NORTHEAST_3', traits: {"smithy.api#enumValue" => "ap-northeast-3"}))
    AwsRegion.add_member(:ap_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_SOUTH_1', traits: {"smithy.api#enumValue" => "ap-south-1"}))
    AwsRegion.add_member(:ap_south_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_SOUTH_2', traits: {"smithy.api#enumValue" => "ap-south-2"}))
    AwsRegion.add_member(:ap_southeast_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_SOUTHEAST_1', traits: {"smithy.api#enumValue" => "ap-southeast-1"}))
    AwsRegion.add_member(:ap_southeast_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_SOUTHEAST_2', traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    AwsRegion.add_member(:ap_southeast_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_SOUTHEAST_3', traits: {"smithy.api#enumValue" => "ap-southeast-3"}))
    AwsRegion.add_member(:ap_southeast_4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_SOUTHEAST_4', traits: {"smithy.api#enumValue" => "ap-southeast-4"}))
    AwsRegion.add_member(:ap_southeast_5, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_SOUTHEAST_5', traits: {"smithy.api#enumValue" => "ap-southeast-5"}))
    AwsRegion.add_member(:ap_southeast_7, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_SOUTHEAST_7', traits: {"smithy.api#enumValue" => "ap-southeast-7"}))
    AwsRegion.add_member(:ca_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CA_CENTRAL_1', traits: {"smithy.api#enumValue" => "ca-central-1"}))
    AwsRegion.add_member(:ca_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CA_WEST_1', traits: {"smithy.api#enumValue" => "ca-west-1"}))
    AwsRegion.add_member(:cn_north_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CN_NORTH_1', traits: {"smithy.api#enumValue" => "cn-north-1"}))
    AwsRegion.add_member(:cn_northwest_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CN_NORTHWEST_1', traits: {"smithy.api#enumValue" => "cn-northwest-1"}))
    AwsRegion.add_member(:eu_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_CENTRAL_1', traits: {"smithy.api#enumValue" => "eu-central-1"}))
    AwsRegion.add_member(:eu_central_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_CENTRAL_2', traits: {"smithy.api#enumValue" => "eu-central-2"}))
    AwsRegion.add_member(:eu_north_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_NORTH_1', traits: {"smithy.api#enumValue" => "eu-north-1"}))
    AwsRegion.add_member(:eu_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_SOUTH_1', traits: {"smithy.api#enumValue" => "eu-south-1"}))
    AwsRegion.add_member(:eu_south_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_SOUTH_2', traits: {"smithy.api#enumValue" => "eu-south-2"}))
    AwsRegion.add_member(:eu_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_WEST_1', traits: {"smithy.api#enumValue" => "eu-west-1"}))
    AwsRegion.add_member(:eu_west_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_WEST_2', traits: {"smithy.api#enumValue" => "eu-west-2"}))
    AwsRegion.add_member(:eu_west_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_WEST_3', traits: {"smithy.api#enumValue" => "eu-west-3"}))
    AwsRegion.add_member(:il_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IL_CENTRAL_1', traits: {"smithy.api#enumValue" => "il-central-1"}))
    AwsRegion.add_member(:me_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ME_CENTRAL_1', traits: {"smithy.api#enumValue" => "me-central-1"}))
    AwsRegion.add_member(:me_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ME_SOUTH_1', traits: {"smithy.api#enumValue" => "me-south-1"}))
    AwsRegion.add_member(:mx_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MX_CENTRAL_1', traits: {"smithy.api#enumValue" => "mx-central-1"}))
    AwsRegion.add_member(:sa_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SA_EAST_1', traits: {"smithy.api#enumValue" => "sa-east-1"}))
    AwsRegion.add_member(:us_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'US_EAST_1', traits: {"smithy.api#enumValue" => "us-east-1"}))
    AwsRegion.add_member(:us_east_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'US_EAST_2', traits: {"smithy.api#enumValue" => "us-east-2"}))
    AwsRegion.add_member(:us_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'US_WEST_1', traits: {"smithy.api#enumValue" => "us-west-1"}))
    AwsRegion.add_member(:us_west_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'US_WEST_2', traits: {"smithy.api#enumValue" => "us-west-2"}))
    BatchGetMemberAccountDetailsRequest.add_member(:membership_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipId, location_name: 'membershipId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_BatchGetMemberAccountDetails.html#securityir-BatchGetMemberAccountDetails-request-uri-membershipId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchGetMemberAccountDetailsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountIds, location_name: 'accountIds', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_BatchGetMemberAccountDetails.html#securityir-BatchGetMemberAccountDetails-request-accountIds"}, "smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    BatchGetMemberAccountDetailsRequest.type = Types::BatchGetMemberAccountDetailsRequest
    BatchGetMemberAccountDetailsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMembershipAccountDetailItems, location_name: 'items', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_BatchGetMemberAccountDetails.html#securityir-BatchGetMemberAccountDetails-response-items"}, "smithy.api#notProperty" => {}}))
    BatchGetMemberAccountDetailsResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMembershipAccountDetailErrors, location_name: 'errors', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_BatchGetMemberAccountDetails.html#securityir-BatchGetMemberAccountDetails-response-errors"}, "smithy.api#notProperty" => {}}))
    BatchGetMemberAccountDetailsResponse.type = Types::BatchGetMemberAccountDetailsResponse
    CancelMembershipRequest.add_member(:membership_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipId, location_name: 'membershipId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CancelMembership.html#securityir-CancelMembership-request-uri-membershipId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelMembershipRequest.type = Types::CancelMembershipRequest
    CancelMembershipResponse.add_member(:membership_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipId, location_name: 'membershipId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CancelMembership.html#securityir-CancelMembership-response-membershipId"}, "smithy.api#required" => {}}))
    CancelMembershipResponse.type = Types::CancelMembershipResponse
    CaseAttachmentAttributes.add_member(:attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'attachmentId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseAttachmentAttributes.html#securityir-Type-CaseAttachmentAttributes-attachmentId"}, "smithy.api#required" => {}}))
    CaseAttachmentAttributes.add_member(:file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileName, location_name: 'fileName', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseAttachmentAttributes.html#securityir-Type-CaseAttachmentAttributes-fileName"}, "smithy.api#required" => {}}))
    CaseAttachmentAttributes.add_member(:attachment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseAttachmentStatus, location_name: 'attachmentStatus', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseAttachmentAttributes.html#securityir-Type-CaseAttachmentAttributes-attachmentStatus"}, "smithy.api#required" => {}}))
    CaseAttachmentAttributes.add_member(:creator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalId, location_name: 'creator', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseAttachmentAttributes.html#securityir-Type-CaseAttachmentAttributes-creator"}, "smithy.api#required" => {}}))
    CaseAttachmentAttributes.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdDate', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseAttachmentAttributes.html#securityir-Type-CaseAttachmentAttributes-createdDate"}, "smithy.api#required" => {}}))
    CaseAttachmentAttributes.type = Types::CaseAttachmentAttributes
    CaseAttachmentStatus.add_member(:verified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERIFIED', traits: {"smithy.api#enumValue" => "Verified"}))
    CaseAttachmentStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    CaseAttachmentStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "Pending"}))
    CaseAttachmentsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseAttachmentAttributes)
    CaseEditItem.add_member(:event_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'eventTimestamp', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseEditItem.html#securityir-Type-CaseEditItem-eventTimestamp"}}))
    CaseEditItem.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'principal', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseEditItem.html#securityir-Type-CaseEditItem-principal"}}))
    CaseEditItem.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseEditAction, location_name: 'action', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseEditItem.html#securityir-Type-CaseEditItem-action"}}))
    CaseEditItem.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseEditMessage, location_name: 'message', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseEditItem.html#securityir-Type-CaseEditItem-message"}}))
    CaseEditItem.type = Types::CaseEditItem
    CaseEditItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseEditItem)
    CaseStatus.add_member(:submitted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBMITTED', traits: {"smithy.api#enumValue" => "Submitted"}))
    CaseStatus.add_member(:acknowledged, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACKNOWLEDGED', traits: {"smithy.api#enumValue" => "Acknowledged"}))
    CaseStatus.add_member(:detection_and_analysis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DETECTION_AND_ANALYSIS', traits: {"smithy.api#enumValue" => "Detection and Analysis"}))
    CaseStatus.add_member(:containment_eradication_and_recovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINMENT_ERADICATION_AND_RECOVERY', traits: {"smithy.api#enumValue" => "Containment, Eradication and Recovery"}))
    CaseStatus.add_member(:post_incident_activities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POST_INCIDENT_ACTIVITIES', traits: {"smithy.api#enumValue" => "Post-incident Activities"}))
    CaseStatus.add_member(:ready_to_close, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY_TO_CLOSE', traits: {"smithy.api#enumValue" => "Ready to Close"}))
    CaseStatus.add_member(:closed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "Closed"}))
    CloseCaseRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CloseCase.html#securityir-CloseCase-request-uri-caseId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CloseCaseRequest.type = Types::CloseCaseRequest
    CloseCaseResponse.add_member(:case_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseStatus, location_name: 'caseStatus', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CloseCase.html#securityir-CloseCase-response-caseStatus"}}))
    CloseCaseResponse.add_member(:closed_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'closedDate', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CloseCase.html#securityir-CloseCase-response-closedDate"}}))
    CloseCaseResponse.type = Types::CloseCaseResponse
    ClosureCode.add_member(:investigation_completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVESTIGATION_COMPLETED', traits: {"smithy.api#enumValue" => "Investigation Completed"}))
    ClosureCode.add_member(:not_resolved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_RESOLVED', traits: {"smithy.api#enumValue" => "Not Resolved"}))
    ClosureCode.add_member(:false_positive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FALSE_POSITIVE', traits: {"smithy.api#enumValue" => "False Positive"}))
    ClosureCode.add_member(:duplicate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUPLICATE', traits: {"smithy.api#enumValue" => "Duplicate"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateCaseCommentRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCaseComment.html#securityir-CreateCaseComment-request-uri-caseId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCaseCommentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCaseComment.html#securityir-CreateCaseComment-request-clientToken"}, "smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateCaseCommentRequest.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentBody, location_name: 'body', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCaseComment.html#securityir-CreateCaseComment-request-body"}, "smithy.api#required" => {}}))
    CreateCaseCommentRequest.type = Types::CreateCaseCommentRequest
    CreateCaseCommentResponse.add_member(:comment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentId, location_name: 'commentId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCaseComment.html#securityir-CreateCaseComment-response-commentId"}, "smithy.api#required" => {}}))
    CreateCaseCommentResponse.type = Types::CreateCaseCommentResponse
    CreateCaseRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-clientToken"}, "smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateCaseRequest.add_member(:resolver_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverType, location_name: 'resolverType', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-resolverType"}, "smithy.api#required" => {}}))
    CreateCaseRequest.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseTitle, location_name: 'title', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-title"}, "smithy.api#required" => {}}))
    CreateCaseRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseDescription, location_name: 'description', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-description"}, "smithy.api#required" => {}}))
    CreateCaseRequest.add_member(:engagement_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngagementType, location_name: 'engagementType', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-engagementType"}, "smithy.api#required" => {}}))
    CreateCaseRequest.add_member(:reported_incident_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'reportedIncidentStartDate', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-reportedIncidentStartDate"}, "smithy.api#required" => {}}))
    CreateCaseRequest.add_member(:impacted_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactedAccounts, location_name: 'impactedAccounts', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-impactedAccounts"}, "smithy.api#required" => {}}))
    CreateCaseRequest.add_member(:watchers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Watchers, location_name: 'watchers', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-watchers"}, "smithy.api#required" => {}}))
    CreateCaseRequest.add_member(:threat_actor_ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThreatActorIpList, location_name: 'threatActorIpAddresses', traits: {"smithy.api#clientOptional" => {}, "smithy.api#default" => [], "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-threatActorIpAddresses"}}))
    CreateCaseRequest.add_member(:impacted_services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactedServicesList, location_name: 'impactedServices', traits: {"smithy.api#clientOptional" => {}, "smithy.api#default" => [], "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-impactedServices"}}))
    CreateCaseRequest.add_member(:impacted_aws_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactedAwsRegionList, location_name: 'impactedAwsRegions', traits: {"smithy.api#clientOptional" => {}, "smithy.api#default" => [], "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-impactedAwsRegions"}}))
    CreateCaseRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-tags"}}))
    CreateCaseRequest.type = Types::CreateCaseRequest
    CreateCaseResponse.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-response-caseId"}, "smithy.api#required" => {}}))
    CreateCaseResponse.type = Types::CreateCaseResponse
    CreateMembershipRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateMembership.html#securityir-CreateMembership-request-clientToken"}, "smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateMembershipRequest.add_member(:membership_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipName, location_name: 'membershipName', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateMembership.html#securityir-CreateMembership-request-membershipName"}, "smithy.api#required" => {}}))
    CreateMembershipRequest.add_member(:incident_response_team, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncidentResponseTeam, location_name: 'incidentResponseTeam', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateMembership.html#securityir-CreateMembership-request-incidentResponseTeam"}, "smithy.api#required" => {}}))
    CreateMembershipRequest.add_member(:opt_in_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptInFeatures, location_name: 'optInFeatures', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateMembership.html#securityir-CreateMembership-request-optInFeatures"}}))
    CreateMembershipRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateMembership.html#securityir-CreateMembership-request-tags"}}))
    CreateMembershipRequest.add_member(:cover_entire_organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'coverEntireOrganization', traits: {"smithy.api#default" => true, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateMembership.html#securityir-CreateMembership-request-coverEntireOrganization"}}))
    CreateMembershipRequest.type = Types::CreateMembershipRequest
    CreateMembershipResponse.add_member(:membership_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipId, location_name: 'membershipId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateMembership.html#securityir-CreateMembership-response-membershipId"}, "smithy.api#required" => {}}))
    CreateMembershipResponse.type = Types::CreateMembershipResponse
    CustomerType.add_member(:standalone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDALONE', traits: {"smithy.api#enumValue" => "Standalone"}))
    CustomerType.add_member(:organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION', traits: {"smithy.api#enumValue" => "Organization"}))
    EngagementType.add_member(:security_incident, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITY_INCIDENT', traits: {"smithy.api#enumValue" => "Security Incident"}))
    EngagementType.add_member(:investigation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVESTIGATION', traits: {"smithy.api#enumValue" => "Investigation"}))
    GetCaseAttachmentDownloadUrlRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentDownloadUrl.html#securityir-GetCaseAttachmentDownloadUrl-request-uri-caseId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCaseAttachmentDownloadUrlRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'attachmentId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentDownloadUrl.html#securityir-GetCaseAttachmentDownloadUrl-request-uri-attachmentId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCaseAttachmentDownloadUrlRequest.type = Types::GetCaseAttachmentDownloadUrlRequest
    GetCaseAttachmentDownloadUrlResponse.add_member(:attachment_presigned_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'attachmentPresignedUrl', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentDownloadUrl.html#securityir-GetCaseAttachmentDownloadUrl-response-attachmentPresignedUrl"}, "smithy.api#required" => {}}))
    GetCaseAttachmentDownloadUrlResponse.type = Types::GetCaseAttachmentDownloadUrlResponse
    GetCaseAttachmentUploadUrlRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentUploadUrl.html#securityir-GetCaseAttachmentUploadUrl-request-uri-caseId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCaseAttachmentUploadUrlRequest.add_member(:file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileName, location_name: 'fileName', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentUploadUrl.html#securityir-GetCaseAttachmentUploadUrl-request-contentLength"}, "smithy.api#required" => {}}))
    GetCaseAttachmentUploadUrlRequest.add_member(:content_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentLength, location_name: 'contentLength', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentUploadUrl.html#securityir-GetCaseAttachmentUploadUrl-request-fileName"}, "smithy.api#required" => {}}))
    GetCaseAttachmentUploadUrlRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentUploadUrl.html#securityir-GetCaseAttachmentUploadUrl-request-clientToken"}, "smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 255}}))
    GetCaseAttachmentUploadUrlRequest.type = Types::GetCaseAttachmentUploadUrlRequest
    GetCaseAttachmentUploadUrlResponse.add_member(:attachment_presigned_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'attachmentPresignedUrl', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentUploadUrl.html#securityir-GetCaseAttachmentUploadUrl-response-attachmentPresignedUrl"}, "smithy.api#required" => {}}))
    GetCaseAttachmentUploadUrlResponse.type = Types::GetCaseAttachmentUploadUrlResponse
    GetCaseRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-request-uri-caseId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCaseRequest.type = Types::GetCaseRequest
    GetCaseResponse.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseTitle, location_name: 'title', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-title"}}))
    GetCaseResponse.add_member(:case_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseArn, location_name: 'caseArn', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-caseArn"}}))
    GetCaseResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseDescription, location_name: 'description', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-description"}}))
    GetCaseResponse.add_member(:case_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseStatus, location_name: 'caseStatus', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-caseStatus"}}))
    GetCaseResponse.add_member(:engagement_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngagementType, location_name: 'engagementType', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-engagementType"}}))
    GetCaseResponse.add_member(:reported_incident_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'reportedIncidentStartDate', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-reportedIncidentStartDate"}}))
    GetCaseResponse.add_member(:actual_incident_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'actualIncidentStartDate', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-actualIncidentStartDate"}}))
    GetCaseResponse.add_member(:impacted_aws_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactedAwsRegionList, location_name: 'impactedAwsRegions', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-impactedAwsRegions"}}))
    GetCaseResponse.add_member(:threat_actor_ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThreatActorIpList, location_name: 'threatActorIpAddresses', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-threatActorIpAddresses"}}))
    GetCaseResponse.add_member(:pending_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingAction, location_name: 'pendingAction', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-pendingAction"}}))
    GetCaseResponse.add_member(:impacted_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactedAccounts, location_name: 'impactedAccounts', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-impactedAccounts"}}))
    GetCaseResponse.add_member(:watchers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Watchers, location_name: 'watchers', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-watchers"}}))
    GetCaseResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdDate', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-createdDate"}}))
    GetCaseResponse.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-lastUpdatedDate"}}))
    GetCaseResponse.add_member(:closure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClosureCode, location_name: 'closureCode', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-closureCode"}}))
    GetCaseResponse.add_member(:resolver_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverType, location_name: 'resolverType', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-resolverType"}}))
    GetCaseResponse.add_member(:impacted_services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactedServicesList, location_name: 'impactedServices', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-impactedServices"}}))
    GetCaseResponse.add_member(:case_attachments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseAttachmentsList, location_name: 'caseAttachments', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-caseAttachments"}}))
    GetCaseResponse.add_member(:closed_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'closedDate', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-closedDate"}}))
    GetCaseResponse.type = Types::GetCaseResponse
    GetMembershipAccountDetailError.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'accountId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembershipAccountDetailError.html#securityir-Type-GetMembershipAccountDetailError-accountId"}, "smithy.api#required" => {}}))
    GetMembershipAccountDetailError.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'error', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembershipAccountDetailItem.html#securityir-Type-GetMembershipAccountDetailItem-relationshipStatus"}, "smithy.api#required" => {}}))
    GetMembershipAccountDetailError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembershipAccountDetailItem.html#securityir-Type-GetMembershipAccountDetailItem-relationshipType"}, "smithy.api#required" => {}}))
    GetMembershipAccountDetailError.type = Types::GetMembershipAccountDetailError
    GetMembershipAccountDetailErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMembershipAccountDetailError)
    GetMembershipAccountDetailItem.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'accountId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembershipAccountDetailItem.html#securityir-Type-GetMembershipAccountDetailItem-accountId"}}))
    GetMembershipAccountDetailItem.add_member(:relationship_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipAccountRelationshipStatus, location_name: 'relationshipStatus', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembershipAccountDetailItem.html#securityir-Type-GetMembershipAccountDetailItem-relationshipStatus"}}))
    GetMembershipAccountDetailItem.add_member(:relationship_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipAccountRelationshipType, location_name: 'relationshipType', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembershipAccountDetailItem.html#securityir-Type-GetMembershipAccountDetailItem-relationshipType"}}))
    GetMembershipAccountDetailItem.type = Types::GetMembershipAccountDetailItem
    GetMembershipAccountDetailItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMembershipAccountDetailItem)
    GetMembershipRequest.add_member(:membership_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipId, location_name: 'membershipId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-request-uri-membershipId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMembershipRequest.type = Types::GetMembershipRequest
    GetMembershipResponse.add_member(:membership_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipId, location_name: 'membershipId', traits: {"smithy.api#required" => {}}))
    GetMembershipResponse.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'accountId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-accountId"}}))
    GetMembershipResponse.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: 'region', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-region"}}))
    GetMembershipResponse.add_member(:membership_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipName, location_name: 'membershipName', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-membershipName"}}))
    GetMembershipResponse.add_member(:membership_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-membershipArn"}}))
    GetMembershipResponse.add_member(:membership_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipStatus, location_name: 'membershipStatus', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-membershipStatus"}}))
    GetMembershipResponse.add_member(:membership_activation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'membershipActivationTimestamp', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-membershipActivationTimestamp"}}))
    GetMembershipResponse.add_member(:membership_deactivation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'membershipDeactivationTimestamp', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-membershipDeactivationTimestamp"}}))
    GetMembershipResponse.add_member(:customer_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerType, location_name: 'customerType', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-customerType"}}))
    GetMembershipResponse.add_member(:number_of_accounts_covered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'numberOfAccountsCovered', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-numberOfAccountsCovered"}}))
    GetMembershipResponse.add_member(:incident_response_team, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncidentResponseTeam, location_name: 'incidentResponseTeam', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-incidentResponseTeam"}}))
    GetMembershipResponse.add_member(:opt_in_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptInFeatures, location_name: 'optInFeatures', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-optInFeatures"}}))
    GetMembershipResponse.add_member(:membership_accounts_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipAccountsConfigurations, location_name: 'membershipAccountsConfigurations', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-membershipAccountsConfigurations"}}))
    GetMembershipResponse.type = Types::GetMembershipResponse
    ImpactedAccounts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId)
    ImpactedAwsRegion.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: 'region', traits: {"smithy.api#required" => {}}))
    ImpactedAwsRegion.type = Types::ImpactedAwsRegion
    ImpactedAwsRegionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactedAwsRegion)
    ImpactedServicesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsService)
    IncidentResponder.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncidentResponderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    IncidentResponder.add_member(:job_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTitle, location_name: 'jobTitle', traits: {"smithy.api#required" => {}}))
    IncidentResponder.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'email', traits: {"smithy.api#required" => {}}))
    IncidentResponder.type = Types::IncidentResponder
    IncidentResponseTeam.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncidentResponder)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    InvalidTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidTokenException.type = Types::InvalidTokenException
    ListCaseEditsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCaseEdits.html#securityir-ListCaseEdits-request-nextToken"}, "smithy.api#length" => {"max" => 2000}}))
    ListCaseEditsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#clientOptional" => {}, "smithy.api#default" => 25, "smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCaseEdits.html#securityir-ListCaseEdits-request-maxResults"}, "smithy.api#range" => {"min" => 1, "max" => 25}}))
    ListCaseEditsRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCaseEdits.html#securityir-ListCaseEdits-request-uri-caseId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCaseEditsRequest.type = Types::ListCaseEditsRequest
    ListCaseEditsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCaseEdits.html#securityir-ListCaseEdits-response-nextToken"}}))
    ListCaseEditsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseEditItems, location_name: 'items', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCaseEdits.html#securityir-ListCaseEdits-response-items"}}))
    ListCaseEditsResponse.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'total', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCaseEdits.html#securityir-ListCaseEdits-response-total"}}))
    ListCaseEditsResponse.type = Types::ListCaseEditsResponse
    ListCasesItem.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#required" => {}}))
    ListCasesItem.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-lastUpdatedDate"}}))
    ListCasesItem.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseTitle, location_name: 'title', traits: {"smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-title"}}))
    ListCasesItem.add_member(:case_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseArn, location_name: 'caseArn', traits: {"smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-caseArn"}}))
    ListCasesItem.add_member(:engagement_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngagementType, location_name: 'engagementType', traits: {"smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-engagementType"}}))
    ListCasesItem.add_member(:case_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseStatus, location_name: 'caseStatus', traits: {"smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-caseStatus"}}))
    ListCasesItem.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdDate', traits: {"smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-createdDate"}}))
    ListCasesItem.add_member(:closed_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'closedDate', traits: {"smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-closedDate"}}))
    ListCasesItem.add_member(:resolver_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverType, location_name: 'resolverType', traits: {"smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-resolverType"}}))
    ListCasesItem.add_member(:pending_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingAction, location_name: 'pendingAction', traits: {"smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-pendingAction"}}))
    ListCasesItem.type = Types::ListCasesItem
    ListCasesItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCasesItem)
    ListCasesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCases.html#securityir-ListCases-request-nextToken"}, "smithy.api#length" => {"max" => 2000}}))
    ListCasesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#clientOptional" => {}, "smithy.api#default" => 25, "smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCases.html#securityir-ListCases-request-maxResults"}, "smithy.api#range" => {"min" => 1, "max" => 25}}))
    ListCasesRequest.type = Types::ListCasesRequest
    ListCasesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCaseEdits.html#securityir-ListCaseEdits-response-nextToken"}}))
    ListCasesResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCasesItems, location_name: 'items', traits: {"smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCases.html#securityir-ListCases-response-items"}}))
    ListCasesResponse.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'total', traits: {"smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCases.html#securityir-ListCases-response-total"}}))
    ListCasesResponse.type = Types::ListCasesResponse
    ListCommentsItem.add_member(:comment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentId, location_name: 'commentId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCommentsItem.html#securityir-Type-ListCommentsItem-commentId"}, "smithy.api#required" => {}}))
    ListCommentsItem.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdDate'))
    ListCommentsItem.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedDate'))
    ListCommentsItem.add_member(:creator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalId, location_name: 'creator'))
    ListCommentsItem.add_member(:last_updated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalId, location_name: 'lastUpdatedBy'))
    ListCommentsItem.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentBody, location_name: 'body', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCommentsItem.html#securityir-Type-ListCommentsItem-body"}}))
    ListCommentsItem.type = Types::ListCommentsItem
    ListCommentsItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCommentsItem)
    ListCommentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListComments.html#securityir-ListComments-request-nextToken"}, "smithy.api#length" => {"max" => 2000}}))
    ListCommentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#clientOptional" => {}, "smithy.api#default" => 25, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListComments.html#securityir-ListComments-request-maxResults"}, "smithy.api#range" => {"min" => 1, "max" => 25}}))
    ListCommentsRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListComments.html#securityir-ListComments-request-uri-caseId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCommentsRequest.type = Types::ListCommentsRequest
    ListCommentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListComments.html#securityir-ListComments-response-nextToken"}}))
    ListCommentsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCommentsItems, location_name: 'items', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListComments.html#securityir-ListComments-response-items"}}))
    ListCommentsResponse.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'total', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListComments.html#securityir-ListComments-response-total"}}))
    ListCommentsResponse.type = Types::ListCommentsResponse
    ListMembershipItem.add_member(:membership_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipId, location_name: 'membershipId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMembershipItem.html#securityir-Type-ListMembershipItem-membershipId"}, "smithy.api#required" => {}}))
    ListMembershipItem.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'accountId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-response-accountId"}}))
    ListMembershipItem.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: 'region', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-response-region"}}))
    ListMembershipItem.add_member(:membership_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-response-membershipArn"}}))
    ListMembershipItem.add_member(:membership_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipStatus, location_name: 'membershipStatus', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-response-membershipStatus"}}))
    ListMembershipItem.type = Types::ListMembershipItem
    ListMembershipItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembershipItem)
    ListMembershipsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-request-nextToken"}, "smithy.api#length" => {"max" => 2000}}))
    ListMembershipsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#clientOptional" => {}, "smithy.api#default" => 25, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-request-maxResults"}, "smithy.api#range" => {"min" => 1, "max" => 25}}))
    ListMembershipsRequest.type = Types::ListMembershipsRequest
    ListMembershipsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-response-nextToken"}}))
    ListMembershipsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembershipItems, location_name: 'items', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-response-items"}}))
    ListMembershipsResponse.type = Types::ListMembershipsResponse
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListTagsForResource.html#securityir-ListTagsForResource-request-uri-resourceArn"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"aws.api#data" => "tagging", "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListTagsForResource.html#securityir-ListTagsForResource-response-tags"}, "smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MembershipAccountRelationshipStatus.add_member(:associated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATED', traits: {"smithy.api#enumValue" => "Associated"}))
    MembershipAccountRelationshipStatus.add_member(:disassociated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISASSOCIATED', traits: {"smithy.api#enumValue" => "Disassociated"}))
    MembershipAccountRelationshipStatus.add_member(:unassociated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNASSOCIATED', traits: {"smithy.api#enumValue" => "Unassociated"}))
    MembershipAccountRelationshipType.add_member(:organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION', traits: {"smithy.api#enumValue" => "Organization"}))
    MembershipAccountRelationshipType.add_member(:unrelated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNRELATED', traits: {"smithy.api#enumValue" => "Unrelated"}))
    MembershipAccountsConfigurations.add_member(:cover_entire_organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'coverEntireOrganization'))
    MembershipAccountsConfigurations.add_member(:organizational_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnits, location_name: 'organizationalUnits'))
    MembershipAccountsConfigurations.type = Types::MembershipAccountsConfigurations
    MembershipAccountsConfigurationsUpdate.add_member(:cover_entire_organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'coverEntireOrganization'))
    MembershipAccountsConfigurationsUpdate.add_member(:organizational_units_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnits, location_name: 'organizationalUnitsToAdd', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}}))
    MembershipAccountsConfigurationsUpdate.add_member(:organizational_units_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnits, location_name: 'organizationalUnitsToRemove', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}}))
    MembershipAccountsConfigurationsUpdate.type = Types::MembershipAccountsConfigurationsUpdate
    MembershipStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "Active"}))
    MembershipStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "Cancelled"}))
    MembershipStatus.add_member(:terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "Terminated"}))
    OptInFeature.add_member(:feature_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptInFeatureName, location_name: 'featureName', traits: {"smithy.api#required" => {}}))
    OptInFeature.add_member(:is_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isEnabled', traits: {"smithy.api#required" => {}}))
    OptInFeature.type = Types::OptInFeature
    OptInFeatureName.add_member(:triage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRIAGE', traits: {"smithy.api#enumValue" => "Triage"}))
    OptInFeatures.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptInFeature)
    OrganizationalUnits.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId)
    PendingAction.add_member(:customer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER', traits: {"smithy.api#enumValue" => "Customer"}))
    PendingAction.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "None"}))
    ResolverType.add_member(:aws, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS', traits: {"smithy.api#enumValue" => "AWS"}))
    ResolverType.add_member(:self, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELF', traits: {"smithy.api#enumValue" => "Self"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SecurityIncidentResponseNotActiveException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    SecurityIncidentResponseNotActiveException.type = Types::SecurityIncidentResponseNotActiveException
    SelfManagedCaseStatus.add_member(:submitted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBMITTED', traits: {"smithy.api#enumValue" => "Submitted"}))
    SelfManagedCaseStatus.add_member(:detection_and_analysis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DETECTION_AND_ANALYSIS', traits: {"smithy.api#enumValue" => "Detection and Analysis"}))
    SelfManagedCaseStatus.add_member(:containment_eradication_and_recovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINMENT_ERADICATION_AND_RECOVERY', traits: {"smithy.api#enumValue" => "Containment, Eradication and Recovery"}))
    SelfManagedCaseStatus.add_member(:post_incident_activities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POST_INCIDENT_ACTIVITIES', traits: {"smithy.api#enumValue" => "Post-incident Activities"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_TagResource.html#securityir-TagResource-request-uri-resourceArn"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"aws.api#data" => "tagging", "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_TagResource.html#securityir-TagResource-request-tags"}, "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThreatActorIp.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddress, location_name: 'ipAddress', traits: {"smithy.api#required" => {}}))
    ThreatActorIp.add_member(:user_agent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAgent, location_name: 'userAgent'))
    ThreatActorIp.type = Types::ThreatActorIp
    ThreatActorIpList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThreatActorIp)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode'))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode'))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UntagResource.html#securityir-UntagResource-request-uri-resourceArn"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"aws.api#data" => "tagging", "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UntagResource.html#securityir-UntagResource-request-uri-resourceArn"}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateCaseCommentRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseComment.html#securityir-UpdateCaseComment-request-uri-caseId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCaseCommentRequest.add_member(:comment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentId, location_name: 'commentId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseComment.html#securityir-UpdateCaseComment-request-uri-commentId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCaseCommentRequest.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentBody, location_name: 'body', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseComment.html#securityir-UpdateCaseComment-request-body"}, "smithy.api#required" => {}}))
    UpdateCaseCommentRequest.type = Types::UpdateCaseCommentRequest
    UpdateCaseCommentResponse.add_member(:comment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentId, location_name: 'commentId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseComment.html#securityir-UpdateCaseComment-response-commentId"}, "smithy.api#required" => {}}))
    UpdateCaseCommentResponse.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentBody, location_name: 'body', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseComment.html#securityir-UpdateCaseComment-response-body"}}))
    UpdateCaseCommentResponse.type = Types::UpdateCaseCommentResponse
    UpdateCaseRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-uri-caseId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCaseRequest.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseTitle, location_name: 'title', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-title"}}))
    UpdateCaseRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseDescription, location_name: 'description', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-description"}}))
    UpdateCaseRequest.add_member(:reported_incident_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'reportedIncidentStartDate', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-reportedIncidentStartDate"}}))
    UpdateCaseRequest.add_member(:actual_incident_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'actualIncidentStartDate', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-actualIncidentStartDate"}}))
    UpdateCaseRequest.add_member(:engagement_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngagementType, location_name: 'engagementType', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-engagementType"}}))
    UpdateCaseRequest.add_member(:watchers_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Watchers, location_name: 'watchersToAdd', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-watchersToAdd"}}))
    UpdateCaseRequest.add_member(:watchers_to_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Watchers, location_name: 'watchersToDelete', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-watchersToDelete"}}))
    UpdateCaseRequest.add_member(:threat_actor_ip_addresses_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThreatActorIpList, location_name: 'threatActorIpAddressesToAdd', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-threatActorIpAddressesToAdd"}}))
    UpdateCaseRequest.add_member(:threat_actor_ip_addresses_to_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThreatActorIpList, location_name: 'threatActorIpAddressesToDelete', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-threatActorIpAddressesToDelete"}}))
    UpdateCaseRequest.add_member(:impacted_services_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactedServicesList, location_name: 'impactedServicesToAdd', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-impactedServicesToAdd"}}))
    UpdateCaseRequest.add_member(:impacted_services_to_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactedServicesList, location_name: 'impactedServicesToDelete', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-impactedServicesToDelete"}}))
    UpdateCaseRequest.add_member(:impacted_aws_regions_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactedAwsRegionList, location_name: 'impactedAwsRegionsToAdd', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-impactedAwsRegionsToAdd"}}))
    UpdateCaseRequest.add_member(:impacted_aws_regions_to_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactedAwsRegionList, location_name: 'impactedAwsRegionsToDelete', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-impactedAwsRegionsToDelete"}}))
    UpdateCaseRequest.add_member(:impacted_accounts_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactedAccounts, location_name: 'impactedAccountsToAdd', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-impactedAccountsToAdd"}}))
    UpdateCaseRequest.add_member(:impacted_accounts_to_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactedAccounts, location_name: 'impactedAccountsToDelete', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-impactedAccountsToDelete"}}))
    UpdateCaseRequest.type = Types::UpdateCaseRequest
    UpdateCaseResponse.type = Types::UpdateCaseResponse
    UpdateCaseStatusRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseStatus.html#securityir-UpdateCaseStatus-request-uri-caseId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCaseStatusRequest.add_member(:case_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SelfManagedCaseStatus, location_name: 'caseStatus', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseStatus.html#securityir-UpdateCaseStatus-request-caseStatus"}, "smithy.api#required" => {}}))
    UpdateCaseStatusRequest.type = Types::UpdateCaseStatusRequest
    UpdateCaseStatusResponse.add_member(:case_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SelfManagedCaseStatus, location_name: 'caseStatus', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseStatus.html#securityir-UpdateCaseStatus-response-caseStatus"}}))
    UpdateCaseStatusResponse.type = Types::UpdateCaseStatusResponse
    UpdateMembershipRequest.add_member(:membership_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipId, location_name: 'membershipId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateMembership.html#securityir-UpdateMembership-request-uri-membershipId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMembershipRequest.add_member(:membership_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipName, location_name: 'membershipName', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateMembership.html#securityir-UpdateMembership-request-membershipName"}}))
    UpdateMembershipRequest.add_member(:incident_response_team, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncidentResponseTeam, location_name: 'incidentResponseTeam', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateMembership.html#securityir-UpdateMembership-request-incidentResponseTeam"}}))
    UpdateMembershipRequest.add_member(:opt_in_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptInFeatures, location_name: 'optInFeatures', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateMembership.html#securityir-UpdateMembership-request-optInFeatures"}}))
    UpdateMembershipRequest.add_member(:membership_accounts_configurations_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipAccountsConfigurationsUpdate, location_name: 'membershipAccountsConfigurationsUpdate', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateMembership.html#securityir-UpdateMembership-request-membershipAccountsConfigurationsUpdate"}}))
    UpdateMembershipRequest.add_member(:undo_membership_cancellation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'undoMembershipCancellation', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateMembership.html#securityir-UpdateMembership-request-undoMembershipCancellation"}}))
    UpdateMembershipRequest.type = Types::UpdateMembershipRequest
    UpdateMembershipResponse.type = Types::UpdateMembershipResponse
    UpdateResolverTypeRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateResolverType.html#securityir-UpdateResolverType-request-uri-caseId"}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResolverTypeRequest.add_member(:resolver_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverType, location_name: 'resolverType', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateResolverType.html#securityir-UpdateResolverType-request-resolverType"}, "smithy.api#required" => {}}))
    UpdateResolverTypeRequest.type = Types::UpdateResolverTypeRequest
    UpdateResolverTypeResponse.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateResolverType.html#securityir-UpdateResolverType-response-caseId"}, "smithy.api#required" => {}}))
    UpdateResolverTypeResponse.add_member(:case_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseStatus, location_name: 'caseStatus', traits: {"smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateResolverType.html#securityir-UpdateResolverType-response-caseStatus"}}))
    UpdateResolverTypeResponse.add_member(:resolver_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverType, location_name: 'resolverType', traits: {"smithy.api#externalDocumentation" => {"API Response" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateResolverType.html#securityir-UpdateResolverType-response-resolverType"}}))
    UpdateResolverTypeResponse.type = Types::UpdateResolverTypeResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    Watcher.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'email', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_Watcher.html#securityir-Type-Watcher-email"}, "smithy.api#required" => {}}))
    Watcher.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonName, location_name: 'name', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_Watcher.html#securityir-Type-Watcher-name"}}))
    Watcher.add_member(:job_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTitle, location_name: 'jobTitle', traits: {"smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_Watcher.html#securityir-Type-Watcher-jobTitle"}}))
    Watcher.type = Types::Watcher
    Watchers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Watcher)

    SecurityIncidentResponse = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.securityir#SecurityIncidentResponse"
      service.name = "SecurityIncidentResponse"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Security IR", "arnNamespace" => "security-ir", "cloudTrailEventSource" => "security-ir.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "security-ir"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#defineConditionKeys" => {"aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#disableConditionKeyInference" => {}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Security Incident Response"}
      service.add_operation(:batch_get_member_account_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#BatchGetMemberAccountDetails"
        operation.name = "BatchGetMemberAccountDetails"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetMemberAccountDetailsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetMemberAccountDetailsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "BatchGetMemberAccountDetails", "documentation" => "Grants permission to get member account details in batch"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_BatchGetMemberAccountDetails.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/v1/membership/{membershipId}/batch-member-details"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:cancel_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#CancelMembership"
        operation.name = "CancelMembership"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelMembershipRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelMembershipResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "CancelMembership", "documentation" => "Grants permission to cancel a membership"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CancelMembership.html"}, "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/v1/membership/{membershipId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:close_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#CloseCase"
        operation.name = "CloseCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloseCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloseCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "CloseCase", "documentation" => "Grants permission to close a case"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CloseCase.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/v1/cases/{caseId}/close-case"}}
      end)
      service.add_operation(:create_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#CreateCase"
        operation.name = "CreateCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"name" => "CreateCase", "documentation" => "Grants permission to create a case"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html"}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/v1/create-case"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_case_comment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#CreateCaseComment"
        operation.name = "CreateCaseComment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCaseCommentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCaseCommentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateCaseComment", "documentation" => "Grants permission to create a case comment"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCaseComment.html"}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/v1/cases/{caseId}/create-comment"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#CreateMembership"
        operation.name = "CreateMembership"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMembershipRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMembershipResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"name" => "CreateMembership", "documentation" => "Grants permission to create a membership", "requiredActions" => ["iam:CreateServiceLinkedRole", "organizations:ListDelegatedAdministrators", "organizations:DescribeOrganization"]}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateMembership.html"}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/v1/membership"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#GetCase"
        operation.name = "GetCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetCase", "documentation" => "Grants permission to get a case"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/cases/{caseId}/get-case"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_case_attachment_download_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#GetCaseAttachmentDownloadUrl"
        operation.name = "GetCaseAttachmentDownloadUrl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCaseAttachmentDownloadUrlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCaseAttachmentDownloadUrlResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetCaseAttachmentDownloadUrl", "documentation" => "Grants permission to get a case attachment download URL"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentDownloadUrl.html"}, "smithy.api#http" => {"code" => 201, "method" => "GET", "uri" => "/v1/cases/{caseId}/get-presigned-url/{attachmentId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_case_attachment_upload_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#GetCaseAttachmentUploadUrl"
        operation.name = "GetCaseAttachmentUploadUrl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCaseAttachmentUploadUrlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCaseAttachmentUploadUrlResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetCaseAttachmentUploadUrl", "documentation" => "Grants permission to get a case attachment upload URL"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentUploadUrl.html"}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/v1/cases/{caseId}/get-presigned-url"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#GetMembership"
        operation.name = "GetMembership"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMembershipRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMembershipResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetMembership", "documentation" => "Grants permission to get a membership"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/membership/{membershipId}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetMembershipFailure", "params" => {"membershipId" => "m-aaaaaaaaaaaaaaaaaaaa"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.securityir#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:list_case_edits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#ListCaseEdits"
        operation.name = "ListCaseEdits"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCaseEditsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCaseEditsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListCaseEdits", "documentation" => "Grants permission to list case edits"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCaseEdits.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/v1/cases/{caseId}/list-case-edits"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCaseEdits.new
      end)
      service.add_operation(:list_cases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#ListCases"
        operation.name = "ListCases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCasesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCasesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListCases", "documentation" => "Grants permission to list cases"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCases.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/v1/list-cases"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCases.new
      end)
      service.add_operation(:list_comments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#ListComments"
        operation.name = "ListComments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCommentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCommentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListComments", "documentation" => "Grants permission to list case comments"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListComments.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/v1/cases/{caseId}/list-comments"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListComments.new
      end)
      service.add_operation(:list_memberships, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#ListMemberships"
        operation.name = "ListMemberships"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembershipsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembershipsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListMemberships", "documentation" => "Grants permission to list memberships"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/v1/memberships"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMemberships.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "ListTagsForResource", "documentation" => "Grants permission to list the tags attached to the specified resource"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListTagsForResource.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "TagResource", "documentation" => "Grants permission to add tags to the specified resource"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_TagResource.html"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "UntagResource", "documentation" => "Grants permission to remove tags from the specified resource"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UntagResource.html"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/tags/{resourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#UpdateCase"
        operation.name = "UpdateCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateCase", "documentation" => "Grants permission to update a case"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/v1/cases/{caseId}/update-case"}}
      end)
      service.add_operation(:update_case_comment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#UpdateCaseComment"
        operation.name = "UpdateCaseComment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCaseCommentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCaseCommentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateCaseComment", "documentation" => "Grants permission to update a case comment"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseComment.html"}, "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/v1/cases/{caseId}/update-case-comment/{commentId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_case_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#UpdateCaseStatus"
        operation.name = "UpdateCaseStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCaseStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCaseStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateCaseStatus", "documentation" => "Grants permission to update a case status"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseStatus.html"}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/v1/cases/{caseId}/update-case-status"}}
      end)
      service.add_operation(:update_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#UpdateMembership"
        operation.name = "UpdateMembership"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMembershipRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMembershipResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateMembership", "requiredActions" => ["iam:CreateServiceLinkedRole", "organizations:DescribeOrganizationalUnit"], "documentation" => "Grants permission to update memberships"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateMembership.html"}, "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/v1/membership/{membershipId}/update-membership"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_resolver_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityir#UpdateResolverType"
        operation.name = "UpdateResolverType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityIncidentResponseNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateResolverType", "documentation" => "Grants permission to update case resolver type"}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateResolverType.html"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/v1/cases/{caseId}/update-resolver-type"}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end

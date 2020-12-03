# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Organizations
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSOrganizationsNotInUseException = Shapes::StructureShape.new(name: 'AWSOrganizationsNotInUseException')
    AcceptHandshakeRequest = Shapes::StructureShape.new(name: 'AcceptHandshakeRequest')
    AcceptHandshakeResponse = Shapes::StructureShape.new(name: 'AcceptHandshakeResponse')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDeniedForDependencyException = Shapes::StructureShape.new(name: 'AccessDeniedForDependencyException')
    AccessDeniedForDependencyExceptionReason = Shapes::StringShape.new(name: 'AccessDeniedForDependencyExceptionReason')
    Account = Shapes::StructureShape.new(name: 'Account')
    AccountAlreadyRegisteredException = Shapes::StructureShape.new(name: 'AccountAlreadyRegisteredException')
    AccountArn = Shapes::StringShape.new(name: 'AccountArn')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountJoinedMethod = Shapes::StringShape.new(name: 'AccountJoinedMethod')
    AccountName = Shapes::StringShape.new(name: 'AccountName')
    AccountNotFoundException = Shapes::StructureShape.new(name: 'AccountNotFoundException')
    AccountNotRegisteredException = Shapes::StructureShape.new(name: 'AccountNotRegisteredException')
    AccountOwnerNotVerifiedException = Shapes::StructureShape.new(name: 'AccountOwnerNotVerifiedException')
    AccountStatus = Shapes::StringShape.new(name: 'AccountStatus')
    Accounts = Shapes::ListShape.new(name: 'Accounts')
    ActionType = Shapes::StringShape.new(name: 'ActionType')
    AlreadyInOrganizationException = Shapes::StructureShape.new(name: 'AlreadyInOrganizationException')
    AttachPolicyRequest = Shapes::StructureShape.new(name: 'AttachPolicyRequest')
    AwsManagedPolicy = Shapes::BooleanShape.new(name: 'AwsManagedPolicy')
    CancelHandshakeRequest = Shapes::StructureShape.new(name: 'CancelHandshakeRequest')
    CancelHandshakeResponse = Shapes::StructureShape.new(name: 'CancelHandshakeResponse')
    Child = Shapes::StructureShape.new(name: 'Child')
    ChildId = Shapes::StringShape.new(name: 'ChildId')
    ChildNotFoundException = Shapes::StructureShape.new(name: 'ChildNotFoundException')
    ChildType = Shapes::StringShape.new(name: 'ChildType')
    Children = Shapes::ListShape.new(name: 'Children')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConstraintViolationException = Shapes::StructureShape.new(name: 'ConstraintViolationException')
    ConstraintViolationExceptionReason = Shapes::StringShape.new(name: 'ConstraintViolationExceptionReason')
    CreateAccountFailureReason = Shapes::StringShape.new(name: 'CreateAccountFailureReason')
    CreateAccountRequest = Shapes::StructureShape.new(name: 'CreateAccountRequest')
    CreateAccountRequestId = Shapes::StringShape.new(name: 'CreateAccountRequestId')
    CreateAccountResponse = Shapes::StructureShape.new(name: 'CreateAccountResponse')
    CreateAccountState = Shapes::StringShape.new(name: 'CreateAccountState')
    CreateAccountStates = Shapes::ListShape.new(name: 'CreateAccountStates')
    CreateAccountStatus = Shapes::StructureShape.new(name: 'CreateAccountStatus')
    CreateAccountStatusNotFoundException = Shapes::StructureShape.new(name: 'CreateAccountStatusNotFoundException')
    CreateAccountStatuses = Shapes::ListShape.new(name: 'CreateAccountStatuses')
    CreateGovCloudAccountRequest = Shapes::StructureShape.new(name: 'CreateGovCloudAccountRequest')
    CreateGovCloudAccountResponse = Shapes::StructureShape.new(name: 'CreateGovCloudAccountResponse')
    CreateOrganizationRequest = Shapes::StructureShape.new(name: 'CreateOrganizationRequest')
    CreateOrganizationResponse = Shapes::StructureShape.new(name: 'CreateOrganizationResponse')
    CreateOrganizationalUnitRequest = Shapes::StructureShape.new(name: 'CreateOrganizationalUnitRequest')
    CreateOrganizationalUnitResponse = Shapes::StructureShape.new(name: 'CreateOrganizationalUnitResponse')
    CreatePolicyRequest = Shapes::StructureShape.new(name: 'CreatePolicyRequest')
    CreatePolicyResponse = Shapes::StructureShape.new(name: 'CreatePolicyResponse')
    DeclineHandshakeRequest = Shapes::StructureShape.new(name: 'DeclineHandshakeRequest')
    DeclineHandshakeResponse = Shapes::StructureShape.new(name: 'DeclineHandshakeResponse')
    DelegatedAdministrator = Shapes::StructureShape.new(name: 'DelegatedAdministrator')
    DelegatedAdministrators = Shapes::ListShape.new(name: 'DelegatedAdministrators')
    DelegatedService = Shapes::StructureShape.new(name: 'DelegatedService')
    DelegatedServices = Shapes::ListShape.new(name: 'DelegatedServices')
    DeleteOrganizationalUnitRequest = Shapes::StructureShape.new(name: 'DeleteOrganizationalUnitRequest')
    DeletePolicyRequest = Shapes::StructureShape.new(name: 'DeletePolicyRequest')
    DeregisterDelegatedAdministratorRequest = Shapes::StructureShape.new(name: 'DeregisterDelegatedAdministratorRequest')
    DescribeAccountRequest = Shapes::StructureShape.new(name: 'DescribeAccountRequest')
    DescribeAccountResponse = Shapes::StructureShape.new(name: 'DescribeAccountResponse')
    DescribeCreateAccountStatusRequest = Shapes::StructureShape.new(name: 'DescribeCreateAccountStatusRequest')
    DescribeCreateAccountStatusResponse = Shapes::StructureShape.new(name: 'DescribeCreateAccountStatusResponse')
    DescribeEffectivePolicyRequest = Shapes::StructureShape.new(name: 'DescribeEffectivePolicyRequest')
    DescribeEffectivePolicyResponse = Shapes::StructureShape.new(name: 'DescribeEffectivePolicyResponse')
    DescribeHandshakeRequest = Shapes::StructureShape.new(name: 'DescribeHandshakeRequest')
    DescribeHandshakeResponse = Shapes::StructureShape.new(name: 'DescribeHandshakeResponse')
    DescribeOrganizationResponse = Shapes::StructureShape.new(name: 'DescribeOrganizationResponse')
    DescribeOrganizationalUnitRequest = Shapes::StructureShape.new(name: 'DescribeOrganizationalUnitRequest')
    DescribeOrganizationalUnitResponse = Shapes::StructureShape.new(name: 'DescribeOrganizationalUnitResponse')
    DescribePolicyRequest = Shapes::StructureShape.new(name: 'DescribePolicyRequest')
    DescribePolicyResponse = Shapes::StructureShape.new(name: 'DescribePolicyResponse')
    DestinationParentNotFoundException = Shapes::StructureShape.new(name: 'DestinationParentNotFoundException')
    DetachPolicyRequest = Shapes::StructureShape.new(name: 'DetachPolicyRequest')
    DisableAWSServiceAccessRequest = Shapes::StructureShape.new(name: 'DisableAWSServiceAccessRequest')
    DisablePolicyTypeRequest = Shapes::StructureShape.new(name: 'DisablePolicyTypeRequest')
    DisablePolicyTypeResponse = Shapes::StructureShape.new(name: 'DisablePolicyTypeResponse')
    DuplicateAccountException = Shapes::StructureShape.new(name: 'DuplicateAccountException')
    DuplicateHandshakeException = Shapes::StructureShape.new(name: 'DuplicateHandshakeException')
    DuplicateOrganizationalUnitException = Shapes::StructureShape.new(name: 'DuplicateOrganizationalUnitException')
    DuplicatePolicyAttachmentException = Shapes::StructureShape.new(name: 'DuplicatePolicyAttachmentException')
    DuplicatePolicyException = Shapes::StructureShape.new(name: 'DuplicatePolicyException')
    EffectivePolicy = Shapes::StructureShape.new(name: 'EffectivePolicy')
    EffectivePolicyNotFoundException = Shapes::StructureShape.new(name: 'EffectivePolicyNotFoundException')
    EffectivePolicyType = Shapes::StringShape.new(name: 'EffectivePolicyType')
    Email = Shapes::StringShape.new(name: 'Email')
    EnableAWSServiceAccessRequest = Shapes::StructureShape.new(name: 'EnableAWSServiceAccessRequest')
    EnableAllFeaturesRequest = Shapes::StructureShape.new(name: 'EnableAllFeaturesRequest')
    EnableAllFeaturesResponse = Shapes::StructureShape.new(name: 'EnableAllFeaturesResponse')
    EnablePolicyTypeRequest = Shapes::StructureShape.new(name: 'EnablePolicyTypeRequest')
    EnablePolicyTypeResponse = Shapes::StructureShape.new(name: 'EnablePolicyTypeResponse')
    EnabledServicePrincipal = Shapes::StructureShape.new(name: 'EnabledServicePrincipal')
    EnabledServicePrincipals = Shapes::ListShape.new(name: 'EnabledServicePrincipals')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    ExceptionType = Shapes::StringShape.new(name: 'ExceptionType')
    FinalizingOrganizationException = Shapes::StructureShape.new(name: 'FinalizingOrganizationException')
    GenericArn = Shapes::StringShape.new(name: 'GenericArn')
    Handshake = Shapes::StructureShape.new(name: 'Handshake')
    HandshakeAlreadyInStateException = Shapes::StructureShape.new(name: 'HandshakeAlreadyInStateException')
    HandshakeArn = Shapes::StringShape.new(name: 'HandshakeArn')
    HandshakeConstraintViolationException = Shapes::StructureShape.new(name: 'HandshakeConstraintViolationException')
    HandshakeConstraintViolationExceptionReason = Shapes::StringShape.new(name: 'HandshakeConstraintViolationExceptionReason')
    HandshakeFilter = Shapes::StructureShape.new(name: 'HandshakeFilter')
    HandshakeId = Shapes::StringShape.new(name: 'HandshakeId')
    HandshakeNotFoundException = Shapes::StructureShape.new(name: 'HandshakeNotFoundException')
    HandshakeNotes = Shapes::StringShape.new(name: 'HandshakeNotes')
    HandshakeParties = Shapes::ListShape.new(name: 'HandshakeParties')
    HandshakeParty = Shapes::StructureShape.new(name: 'HandshakeParty')
    HandshakePartyId = Shapes::StringShape.new(name: 'HandshakePartyId')
    HandshakePartyType = Shapes::StringShape.new(name: 'HandshakePartyType')
    HandshakeResource = Shapes::StructureShape.new(name: 'HandshakeResource')
    HandshakeResourceType = Shapes::StringShape.new(name: 'HandshakeResourceType')
    HandshakeResourceValue = Shapes::StringShape.new(name: 'HandshakeResourceValue')
    HandshakeResources = Shapes::ListShape.new(name: 'HandshakeResources')
    HandshakeState = Shapes::StringShape.new(name: 'HandshakeState')
    Handshakes = Shapes::ListShape.new(name: 'Handshakes')
    IAMUserAccessToBilling = Shapes::StringShape.new(name: 'IAMUserAccessToBilling')
    InvalidHandshakeTransitionException = Shapes::StructureShape.new(name: 'InvalidHandshakeTransitionException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    InvalidInputExceptionReason = Shapes::StringShape.new(name: 'InvalidInputExceptionReason')
    InviteAccountToOrganizationRequest = Shapes::StructureShape.new(name: 'InviteAccountToOrganizationRequest')
    InviteAccountToOrganizationResponse = Shapes::StructureShape.new(name: 'InviteAccountToOrganizationResponse')
    ListAWSServiceAccessForOrganizationRequest = Shapes::StructureShape.new(name: 'ListAWSServiceAccessForOrganizationRequest')
    ListAWSServiceAccessForOrganizationResponse = Shapes::StructureShape.new(name: 'ListAWSServiceAccessForOrganizationResponse')
    ListAccountsForParentRequest = Shapes::StructureShape.new(name: 'ListAccountsForParentRequest')
    ListAccountsForParentResponse = Shapes::StructureShape.new(name: 'ListAccountsForParentResponse')
    ListAccountsRequest = Shapes::StructureShape.new(name: 'ListAccountsRequest')
    ListAccountsResponse = Shapes::StructureShape.new(name: 'ListAccountsResponse')
    ListChildrenRequest = Shapes::StructureShape.new(name: 'ListChildrenRequest')
    ListChildrenResponse = Shapes::StructureShape.new(name: 'ListChildrenResponse')
    ListCreateAccountStatusRequest = Shapes::StructureShape.new(name: 'ListCreateAccountStatusRequest')
    ListCreateAccountStatusResponse = Shapes::StructureShape.new(name: 'ListCreateAccountStatusResponse')
    ListDelegatedAdministratorsRequest = Shapes::StructureShape.new(name: 'ListDelegatedAdministratorsRequest')
    ListDelegatedAdministratorsResponse = Shapes::StructureShape.new(name: 'ListDelegatedAdministratorsResponse')
    ListDelegatedServicesForAccountRequest = Shapes::StructureShape.new(name: 'ListDelegatedServicesForAccountRequest')
    ListDelegatedServicesForAccountResponse = Shapes::StructureShape.new(name: 'ListDelegatedServicesForAccountResponse')
    ListHandshakesForAccountRequest = Shapes::StructureShape.new(name: 'ListHandshakesForAccountRequest')
    ListHandshakesForAccountResponse = Shapes::StructureShape.new(name: 'ListHandshakesForAccountResponse')
    ListHandshakesForOrganizationRequest = Shapes::StructureShape.new(name: 'ListHandshakesForOrganizationRequest')
    ListHandshakesForOrganizationResponse = Shapes::StructureShape.new(name: 'ListHandshakesForOrganizationResponse')
    ListOrganizationalUnitsForParentRequest = Shapes::StructureShape.new(name: 'ListOrganizationalUnitsForParentRequest')
    ListOrganizationalUnitsForParentResponse = Shapes::StructureShape.new(name: 'ListOrganizationalUnitsForParentResponse')
    ListParentsRequest = Shapes::StructureShape.new(name: 'ListParentsRequest')
    ListParentsResponse = Shapes::StructureShape.new(name: 'ListParentsResponse')
    ListPoliciesForTargetRequest = Shapes::StructureShape.new(name: 'ListPoliciesForTargetRequest')
    ListPoliciesForTargetResponse = Shapes::StructureShape.new(name: 'ListPoliciesForTargetResponse')
    ListPoliciesRequest = Shapes::StructureShape.new(name: 'ListPoliciesRequest')
    ListPoliciesResponse = Shapes::StructureShape.new(name: 'ListPoliciesResponse')
    ListRootsRequest = Shapes::StructureShape.new(name: 'ListRootsRequest')
    ListRootsResponse = Shapes::StructureShape.new(name: 'ListRootsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTargetsForPolicyRequest = Shapes::StructureShape.new(name: 'ListTargetsForPolicyRequest')
    ListTargetsForPolicyResponse = Shapes::StructureShape.new(name: 'ListTargetsForPolicyResponse')
    MalformedPolicyDocumentException = Shapes::StructureShape.new(name: 'MalformedPolicyDocumentException')
    MasterCannotLeaveOrganizationException = Shapes::StructureShape.new(name: 'MasterCannotLeaveOrganizationException')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MoveAccountRequest = Shapes::StructureShape.new(name: 'MoveAccountRequest')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Organization = Shapes::StructureShape.new(name: 'Organization')
    OrganizationArn = Shapes::StringShape.new(name: 'OrganizationArn')
    OrganizationFeatureSet = Shapes::StringShape.new(name: 'OrganizationFeatureSet')
    OrganizationId = Shapes::StringShape.new(name: 'OrganizationId')
    OrganizationNotEmptyException = Shapes::StructureShape.new(name: 'OrganizationNotEmptyException')
    OrganizationalUnit = Shapes::StructureShape.new(name: 'OrganizationalUnit')
    OrganizationalUnitArn = Shapes::StringShape.new(name: 'OrganizationalUnitArn')
    OrganizationalUnitId = Shapes::StringShape.new(name: 'OrganizationalUnitId')
    OrganizationalUnitName = Shapes::StringShape.new(name: 'OrganizationalUnitName')
    OrganizationalUnitNotEmptyException = Shapes::StructureShape.new(name: 'OrganizationalUnitNotEmptyException')
    OrganizationalUnitNotFoundException = Shapes::StructureShape.new(name: 'OrganizationalUnitNotFoundException')
    OrganizationalUnits = Shapes::ListShape.new(name: 'OrganizationalUnits')
    Parent = Shapes::StructureShape.new(name: 'Parent')
    ParentId = Shapes::StringShape.new(name: 'ParentId')
    ParentNotFoundException = Shapes::StructureShape.new(name: 'ParentNotFoundException')
    ParentType = Shapes::StringShape.new(name: 'ParentType')
    Parents = Shapes::ListShape.new(name: 'Parents')
    Policies = Shapes::ListShape.new(name: 'Policies')
    Policy = Shapes::StructureShape.new(name: 'Policy')
    PolicyArn = Shapes::StringShape.new(name: 'PolicyArn')
    PolicyChangesInProgressException = Shapes::StructureShape.new(name: 'PolicyChangesInProgressException')
    PolicyContent = Shapes::StringShape.new(name: 'PolicyContent')
    PolicyDescription = Shapes::StringShape.new(name: 'PolicyDescription')
    PolicyId = Shapes::StringShape.new(name: 'PolicyId')
    PolicyInUseException = Shapes::StructureShape.new(name: 'PolicyInUseException')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PolicyNotAttachedException = Shapes::StructureShape.new(name: 'PolicyNotAttachedException')
    PolicyNotFoundException = Shapes::StructureShape.new(name: 'PolicyNotFoundException')
    PolicySummary = Shapes::StructureShape.new(name: 'PolicySummary')
    PolicyTargetId = Shapes::StringShape.new(name: 'PolicyTargetId')
    PolicyTargetSummary = Shapes::StructureShape.new(name: 'PolicyTargetSummary')
    PolicyTargets = Shapes::ListShape.new(name: 'PolicyTargets')
    PolicyType = Shapes::StringShape.new(name: 'PolicyType')
    PolicyTypeAlreadyEnabledException = Shapes::StructureShape.new(name: 'PolicyTypeAlreadyEnabledException')
    PolicyTypeNotAvailableForOrganizationException = Shapes::StructureShape.new(name: 'PolicyTypeNotAvailableForOrganizationException')
    PolicyTypeNotEnabledException = Shapes::StructureShape.new(name: 'PolicyTypeNotEnabledException')
    PolicyTypeStatus = Shapes::StringShape.new(name: 'PolicyTypeStatus')
    PolicyTypeSummary = Shapes::StructureShape.new(name: 'PolicyTypeSummary')
    PolicyTypes = Shapes::ListShape.new(name: 'PolicyTypes')
    RegisterDelegatedAdministratorRequest = Shapes::StructureShape.new(name: 'RegisterDelegatedAdministratorRequest')
    RemoveAccountFromOrganizationRequest = Shapes::StructureShape.new(name: 'RemoveAccountFromOrganizationRequest')
    RoleName = Shapes::StringShape.new(name: 'RoleName')
    Root = Shapes::StructureShape.new(name: 'Root')
    RootArn = Shapes::StringShape.new(name: 'RootArn')
    RootId = Shapes::StringShape.new(name: 'RootId')
    RootName = Shapes::StringShape.new(name: 'RootName')
    RootNotFoundException = Shapes::StructureShape.new(name: 'RootNotFoundException')
    Roots = Shapes::ListShape.new(name: 'Roots')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    ServicePrincipal = Shapes::StringShape.new(name: 'ServicePrincipal')
    SourceParentNotFoundException = Shapes::StructureShape.new(name: 'SourceParentNotFoundException')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourceId = Shapes::StringShape.new(name: 'TaggableResourceId')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TargetName = Shapes::StringShape.new(name: 'TargetName')
    TargetNotFoundException = Shapes::StructureShape.new(name: 'TargetNotFoundException')
    TargetType = Shapes::StringShape.new(name: 'TargetType')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnsupportedAPIEndpointException = Shapes::StructureShape.new(name: 'UnsupportedAPIEndpointException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateOrganizationalUnitRequest = Shapes::StructureShape.new(name: 'UpdateOrganizationalUnitRequest')
    UpdateOrganizationalUnitResponse = Shapes::StructureShape.new(name: 'UpdateOrganizationalUnitResponse')
    UpdatePolicyRequest = Shapes::StructureShape.new(name: 'UpdatePolicyRequest')
    UpdatePolicyResponse = Shapes::StructureShape.new(name: 'UpdatePolicyResponse')

    AWSOrganizationsNotInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AWSOrganizationsNotInUseException.struct_class = Types::AWSOrganizationsNotInUseException

    AcceptHandshakeRequest.add_member(:handshake_id, Shapes::ShapeRef.new(shape: HandshakeId, required: true, location_name: "HandshakeId"))
    AcceptHandshakeRequest.struct_class = Types::AcceptHandshakeRequest

    AcceptHandshakeResponse.add_member(:handshake, Shapes::ShapeRef.new(shape: Handshake, location_name: "Handshake"))
    AcceptHandshakeResponse.struct_class = Types::AcceptHandshakeResponse

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessDeniedForDependencyException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccessDeniedForDependencyException.add_member(:reason, Shapes::ShapeRef.new(shape: AccessDeniedForDependencyExceptionReason, location_name: "Reason"))
    AccessDeniedForDependencyException.struct_class = Types::AccessDeniedForDependencyException

    Account.add_member(:id, Shapes::ShapeRef.new(shape: AccountId, location_name: "Id"))
    Account.add_member(:arn, Shapes::ShapeRef.new(shape: AccountArn, location_name: "Arn"))
    Account.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "Email"))
    Account.add_member(:name, Shapes::ShapeRef.new(shape: AccountName, location_name: "Name"))
    Account.add_member(:status, Shapes::ShapeRef.new(shape: AccountStatus, location_name: "Status"))
    Account.add_member(:joined_method, Shapes::ShapeRef.new(shape: AccountJoinedMethod, location_name: "JoinedMethod"))
    Account.add_member(:joined_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "JoinedTimestamp"))
    Account.struct_class = Types::Account

    AccountAlreadyRegisteredException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccountAlreadyRegisteredException.struct_class = Types::AccountAlreadyRegisteredException

    AccountNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccountNotFoundException.struct_class = Types::AccountNotFoundException

    AccountNotRegisteredException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccountNotRegisteredException.struct_class = Types::AccountNotRegisteredException

    AccountOwnerNotVerifiedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccountOwnerNotVerifiedException.struct_class = Types::AccountOwnerNotVerifiedException

    Accounts.member = Shapes::ShapeRef.new(shape: Account)

    AlreadyInOrganizationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AlreadyInOrganizationException.struct_class = Types::AlreadyInOrganizationException

    AttachPolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    AttachPolicyRequest.add_member(:target_id, Shapes::ShapeRef.new(shape: PolicyTargetId, required: true, location_name: "TargetId"))
    AttachPolicyRequest.struct_class = Types::AttachPolicyRequest

    CancelHandshakeRequest.add_member(:handshake_id, Shapes::ShapeRef.new(shape: HandshakeId, required: true, location_name: "HandshakeId"))
    CancelHandshakeRequest.struct_class = Types::CancelHandshakeRequest

    CancelHandshakeResponse.add_member(:handshake, Shapes::ShapeRef.new(shape: Handshake, location_name: "Handshake"))
    CancelHandshakeResponse.struct_class = Types::CancelHandshakeResponse

    Child.add_member(:id, Shapes::ShapeRef.new(shape: ChildId, location_name: "Id"))
    Child.add_member(:type, Shapes::ShapeRef.new(shape: ChildType, location_name: "Type"))
    Child.struct_class = Types::Child

    ChildNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ChildNotFoundException.struct_class = Types::ChildNotFoundException

    Children.member = Shapes::ShapeRef.new(shape: Child)

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConstraintViolationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ConstraintViolationException.add_member(:reason, Shapes::ShapeRef.new(shape: ConstraintViolationExceptionReason, location_name: "Reason"))
    ConstraintViolationException.struct_class = Types::ConstraintViolationException

    CreateAccountRequest.add_member(:email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "Email"))
    CreateAccountRequest.add_member(:account_name, Shapes::ShapeRef.new(shape: AccountName, required: true, location_name: "AccountName"))
    CreateAccountRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "RoleName"))
    CreateAccountRequest.add_member(:iam_user_access_to_billing, Shapes::ShapeRef.new(shape: IAMUserAccessToBilling, location_name: "IamUserAccessToBilling"))
    CreateAccountRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateAccountRequest.struct_class = Types::CreateAccountRequest

    CreateAccountResponse.add_member(:create_account_status, Shapes::ShapeRef.new(shape: CreateAccountStatus, location_name: "CreateAccountStatus"))
    CreateAccountResponse.struct_class = Types::CreateAccountResponse

    CreateAccountStates.member = Shapes::ShapeRef.new(shape: CreateAccountState)

    CreateAccountStatus.add_member(:id, Shapes::ShapeRef.new(shape: CreateAccountRequestId, location_name: "Id"))
    CreateAccountStatus.add_member(:account_name, Shapes::ShapeRef.new(shape: AccountName, location_name: "AccountName"))
    CreateAccountStatus.add_member(:state, Shapes::ShapeRef.new(shape: CreateAccountState, location_name: "State"))
    CreateAccountStatus.add_member(:requested_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RequestedTimestamp"))
    CreateAccountStatus.add_member(:completed_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletedTimestamp"))
    CreateAccountStatus.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    CreateAccountStatus.add_member(:gov_cloud_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "GovCloudAccountId"))
    CreateAccountStatus.add_member(:failure_reason, Shapes::ShapeRef.new(shape: CreateAccountFailureReason, location_name: "FailureReason"))
    CreateAccountStatus.struct_class = Types::CreateAccountStatus

    CreateAccountStatusNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    CreateAccountStatusNotFoundException.struct_class = Types::CreateAccountStatusNotFoundException

    CreateAccountStatuses.member = Shapes::ShapeRef.new(shape: CreateAccountStatus)

    CreateGovCloudAccountRequest.add_member(:email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "Email"))
    CreateGovCloudAccountRequest.add_member(:account_name, Shapes::ShapeRef.new(shape: AccountName, required: true, location_name: "AccountName"))
    CreateGovCloudAccountRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "RoleName"))
    CreateGovCloudAccountRequest.add_member(:iam_user_access_to_billing, Shapes::ShapeRef.new(shape: IAMUserAccessToBilling, location_name: "IamUserAccessToBilling"))
    CreateGovCloudAccountRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateGovCloudAccountRequest.struct_class = Types::CreateGovCloudAccountRequest

    CreateGovCloudAccountResponse.add_member(:create_account_status, Shapes::ShapeRef.new(shape: CreateAccountStatus, location_name: "CreateAccountStatus"))
    CreateGovCloudAccountResponse.struct_class = Types::CreateGovCloudAccountResponse

    CreateOrganizationRequest.add_member(:feature_set, Shapes::ShapeRef.new(shape: OrganizationFeatureSet, location_name: "FeatureSet"))
    CreateOrganizationRequest.struct_class = Types::CreateOrganizationRequest

    CreateOrganizationResponse.add_member(:organization, Shapes::ShapeRef.new(shape: Organization, location_name: "Organization"))
    CreateOrganizationResponse.struct_class = Types::CreateOrganizationResponse

    CreateOrganizationalUnitRequest.add_member(:parent_id, Shapes::ShapeRef.new(shape: ParentId, required: true, location_name: "ParentId"))
    CreateOrganizationalUnitRequest.add_member(:name, Shapes::ShapeRef.new(shape: OrganizationalUnitName, required: true, location_name: "Name"))
    CreateOrganizationalUnitRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateOrganizationalUnitRequest.struct_class = Types::CreateOrganizationalUnitRequest

    CreateOrganizationalUnitResponse.add_member(:organizational_unit, Shapes::ShapeRef.new(shape: OrganizationalUnit, location_name: "OrganizationalUnit"))
    CreateOrganizationalUnitResponse.struct_class = Types::CreateOrganizationalUnitResponse

    CreatePolicyRequest.add_member(:content, Shapes::ShapeRef.new(shape: PolicyContent, required: true, location_name: "Content"))
    CreatePolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, required: true, location_name: "Description"))
    CreatePolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "Name"))
    CreatePolicyRequest.add_member(:type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "Type"))
    CreatePolicyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreatePolicyRequest.struct_class = Types::CreatePolicyRequest

    CreatePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    CreatePolicyResponse.struct_class = Types::CreatePolicyResponse

    DeclineHandshakeRequest.add_member(:handshake_id, Shapes::ShapeRef.new(shape: HandshakeId, required: true, location_name: "HandshakeId"))
    DeclineHandshakeRequest.struct_class = Types::DeclineHandshakeRequest

    DeclineHandshakeResponse.add_member(:handshake, Shapes::ShapeRef.new(shape: Handshake, location_name: "Handshake"))
    DeclineHandshakeResponse.struct_class = Types::DeclineHandshakeResponse

    DelegatedAdministrator.add_member(:id, Shapes::ShapeRef.new(shape: AccountId, location_name: "Id"))
    DelegatedAdministrator.add_member(:arn, Shapes::ShapeRef.new(shape: AccountArn, location_name: "Arn"))
    DelegatedAdministrator.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "Email"))
    DelegatedAdministrator.add_member(:name, Shapes::ShapeRef.new(shape: AccountName, location_name: "Name"))
    DelegatedAdministrator.add_member(:status, Shapes::ShapeRef.new(shape: AccountStatus, location_name: "Status"))
    DelegatedAdministrator.add_member(:joined_method, Shapes::ShapeRef.new(shape: AccountJoinedMethod, location_name: "JoinedMethod"))
    DelegatedAdministrator.add_member(:joined_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "JoinedTimestamp"))
    DelegatedAdministrator.add_member(:delegation_enabled_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DelegationEnabledDate"))
    DelegatedAdministrator.struct_class = Types::DelegatedAdministrator

    DelegatedAdministrators.member = Shapes::ShapeRef.new(shape: DelegatedAdministrator)

    DelegatedService.add_member(:service_principal, Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: "ServicePrincipal"))
    DelegatedService.add_member(:delegation_enabled_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DelegationEnabledDate"))
    DelegatedService.struct_class = Types::DelegatedService

    DelegatedServices.member = Shapes::ShapeRef.new(shape: DelegatedService)

    DeleteOrganizationalUnitRequest.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, required: true, location_name: "OrganizationalUnitId"))
    DeleteOrganizationalUnitRequest.struct_class = Types::DeleteOrganizationalUnitRequest

    DeletePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    DeletePolicyRequest.struct_class = Types::DeletePolicyRequest

    DeregisterDelegatedAdministratorRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DeregisterDelegatedAdministratorRequest.add_member(:service_principal, Shapes::ShapeRef.new(shape: ServicePrincipal, required: true, location_name: "ServicePrincipal"))
    DeregisterDelegatedAdministratorRequest.struct_class = Types::DeregisterDelegatedAdministratorRequest

    DescribeAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    DescribeAccountRequest.struct_class = Types::DescribeAccountRequest

    DescribeAccountResponse.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    DescribeAccountResponse.struct_class = Types::DescribeAccountResponse

    DescribeCreateAccountStatusRequest.add_member(:create_account_request_id, Shapes::ShapeRef.new(shape: CreateAccountRequestId, required: true, location_name: "CreateAccountRequestId"))
    DescribeCreateAccountStatusRequest.struct_class = Types::DescribeCreateAccountStatusRequest

    DescribeCreateAccountStatusResponse.add_member(:create_account_status, Shapes::ShapeRef.new(shape: CreateAccountStatus, location_name: "CreateAccountStatus"))
    DescribeCreateAccountStatusResponse.struct_class = Types::DescribeCreateAccountStatusResponse

    DescribeEffectivePolicyRequest.add_member(:policy_type, Shapes::ShapeRef.new(shape: EffectivePolicyType, required: true, location_name: "PolicyType"))
    DescribeEffectivePolicyRequest.add_member(:target_id, Shapes::ShapeRef.new(shape: PolicyTargetId, location_name: "TargetId"))
    DescribeEffectivePolicyRequest.struct_class = Types::DescribeEffectivePolicyRequest

    DescribeEffectivePolicyResponse.add_member(:effective_policy, Shapes::ShapeRef.new(shape: EffectivePolicy, location_name: "EffectivePolicy"))
    DescribeEffectivePolicyResponse.struct_class = Types::DescribeEffectivePolicyResponse

    DescribeHandshakeRequest.add_member(:handshake_id, Shapes::ShapeRef.new(shape: HandshakeId, required: true, location_name: "HandshakeId"))
    DescribeHandshakeRequest.struct_class = Types::DescribeHandshakeRequest

    DescribeHandshakeResponse.add_member(:handshake, Shapes::ShapeRef.new(shape: Handshake, location_name: "Handshake"))
    DescribeHandshakeResponse.struct_class = Types::DescribeHandshakeResponse

    DescribeOrganizationResponse.add_member(:organization, Shapes::ShapeRef.new(shape: Organization, location_name: "Organization"))
    DescribeOrganizationResponse.struct_class = Types::DescribeOrganizationResponse

    DescribeOrganizationalUnitRequest.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, required: true, location_name: "OrganizationalUnitId"))
    DescribeOrganizationalUnitRequest.struct_class = Types::DescribeOrganizationalUnitRequest

    DescribeOrganizationalUnitResponse.add_member(:organizational_unit, Shapes::ShapeRef.new(shape: OrganizationalUnit, location_name: "OrganizationalUnit"))
    DescribeOrganizationalUnitResponse.struct_class = Types::DescribeOrganizationalUnitResponse

    DescribePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    DescribePolicyRequest.struct_class = Types::DescribePolicyRequest

    DescribePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    DescribePolicyResponse.struct_class = Types::DescribePolicyResponse

    DestinationParentNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    DestinationParentNotFoundException.struct_class = Types::DestinationParentNotFoundException

    DetachPolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    DetachPolicyRequest.add_member(:target_id, Shapes::ShapeRef.new(shape: PolicyTargetId, required: true, location_name: "TargetId"))
    DetachPolicyRequest.struct_class = Types::DetachPolicyRequest

    DisableAWSServiceAccessRequest.add_member(:service_principal, Shapes::ShapeRef.new(shape: ServicePrincipal, required: true, location_name: "ServicePrincipal"))
    DisableAWSServiceAccessRequest.struct_class = Types::DisableAWSServiceAccessRequest

    DisablePolicyTypeRequest.add_member(:root_id, Shapes::ShapeRef.new(shape: RootId, required: true, location_name: "RootId"))
    DisablePolicyTypeRequest.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "PolicyType"))
    DisablePolicyTypeRequest.struct_class = Types::DisablePolicyTypeRequest

    DisablePolicyTypeResponse.add_member(:root, Shapes::ShapeRef.new(shape: Root, location_name: "Root"))
    DisablePolicyTypeResponse.struct_class = Types::DisablePolicyTypeResponse

    DuplicateAccountException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    DuplicateAccountException.struct_class = Types::DuplicateAccountException

    DuplicateHandshakeException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    DuplicateHandshakeException.struct_class = Types::DuplicateHandshakeException

    DuplicateOrganizationalUnitException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    DuplicateOrganizationalUnitException.struct_class = Types::DuplicateOrganizationalUnitException

    DuplicatePolicyAttachmentException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    DuplicatePolicyAttachmentException.struct_class = Types::DuplicatePolicyAttachmentException

    DuplicatePolicyException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    DuplicatePolicyException.struct_class = Types::DuplicatePolicyException

    EffectivePolicy.add_member(:policy_content, Shapes::ShapeRef.new(shape: PolicyContent, location_name: "PolicyContent"))
    EffectivePolicy.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    EffectivePolicy.add_member(:target_id, Shapes::ShapeRef.new(shape: PolicyTargetId, location_name: "TargetId"))
    EffectivePolicy.add_member(:policy_type, Shapes::ShapeRef.new(shape: EffectivePolicyType, location_name: "PolicyType"))
    EffectivePolicy.struct_class = Types::EffectivePolicy

    EffectivePolicyNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    EffectivePolicyNotFoundException.struct_class = Types::EffectivePolicyNotFoundException

    EnableAWSServiceAccessRequest.add_member(:service_principal, Shapes::ShapeRef.new(shape: ServicePrincipal, required: true, location_name: "ServicePrincipal"))
    EnableAWSServiceAccessRequest.struct_class = Types::EnableAWSServiceAccessRequest

    EnableAllFeaturesRequest.struct_class = Types::EnableAllFeaturesRequest

    EnableAllFeaturesResponse.add_member(:handshake, Shapes::ShapeRef.new(shape: Handshake, location_name: "Handshake"))
    EnableAllFeaturesResponse.struct_class = Types::EnableAllFeaturesResponse

    EnablePolicyTypeRequest.add_member(:root_id, Shapes::ShapeRef.new(shape: RootId, required: true, location_name: "RootId"))
    EnablePolicyTypeRequest.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "PolicyType"))
    EnablePolicyTypeRequest.struct_class = Types::EnablePolicyTypeRequest

    EnablePolicyTypeResponse.add_member(:root, Shapes::ShapeRef.new(shape: Root, location_name: "Root"))
    EnablePolicyTypeResponse.struct_class = Types::EnablePolicyTypeResponse

    EnabledServicePrincipal.add_member(:service_principal, Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: "ServicePrincipal"))
    EnabledServicePrincipal.add_member(:date_enabled, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DateEnabled"))
    EnabledServicePrincipal.struct_class = Types::EnabledServicePrincipal

    EnabledServicePrincipals.member = Shapes::ShapeRef.new(shape: EnabledServicePrincipal)

    FinalizingOrganizationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    FinalizingOrganizationException.struct_class = Types::FinalizingOrganizationException

    Handshake.add_member(:id, Shapes::ShapeRef.new(shape: HandshakeId, location_name: "Id"))
    Handshake.add_member(:arn, Shapes::ShapeRef.new(shape: HandshakeArn, location_name: "Arn"))
    Handshake.add_member(:parties, Shapes::ShapeRef.new(shape: HandshakeParties, location_name: "Parties"))
    Handshake.add_member(:state, Shapes::ShapeRef.new(shape: HandshakeState, location_name: "State"))
    Handshake.add_member(:requested_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RequestedTimestamp"))
    Handshake.add_member(:expiration_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationTimestamp"))
    Handshake.add_member(:action, Shapes::ShapeRef.new(shape: ActionType, location_name: "Action"))
    Handshake.add_member(:resources, Shapes::ShapeRef.new(shape: HandshakeResources, location_name: "Resources"))
    Handshake.struct_class = Types::Handshake

    HandshakeAlreadyInStateException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    HandshakeAlreadyInStateException.struct_class = Types::HandshakeAlreadyInStateException

    HandshakeConstraintViolationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    HandshakeConstraintViolationException.add_member(:reason, Shapes::ShapeRef.new(shape: HandshakeConstraintViolationExceptionReason, location_name: "Reason"))
    HandshakeConstraintViolationException.struct_class = Types::HandshakeConstraintViolationException

    HandshakeFilter.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionType, location_name: "ActionType"))
    HandshakeFilter.add_member(:parent_handshake_id, Shapes::ShapeRef.new(shape: HandshakeId, location_name: "ParentHandshakeId"))
    HandshakeFilter.struct_class = Types::HandshakeFilter

    HandshakeNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    HandshakeNotFoundException.struct_class = Types::HandshakeNotFoundException

    HandshakeParties.member = Shapes::ShapeRef.new(shape: HandshakeParty)

    HandshakeParty.add_member(:id, Shapes::ShapeRef.new(shape: HandshakePartyId, required: true, location_name: "Id"))
    HandshakeParty.add_member(:type, Shapes::ShapeRef.new(shape: HandshakePartyType, required: true, location_name: "Type"))
    HandshakeParty.struct_class = Types::HandshakeParty

    HandshakeResource.add_member(:value, Shapes::ShapeRef.new(shape: HandshakeResourceValue, location_name: "Value"))
    HandshakeResource.add_member(:type, Shapes::ShapeRef.new(shape: HandshakeResourceType, location_name: "Type"))
    HandshakeResource.add_member(:resources, Shapes::ShapeRef.new(shape: HandshakeResources, location_name: "Resources"))
    HandshakeResource.struct_class = Types::HandshakeResource

    HandshakeResources.member = Shapes::ShapeRef.new(shape: HandshakeResource)

    Handshakes.member = Shapes::ShapeRef.new(shape: Handshake)

    InvalidHandshakeTransitionException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidHandshakeTransitionException.struct_class = Types::InvalidHandshakeTransitionException

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidInputException.add_member(:reason, Shapes::ShapeRef.new(shape: InvalidInputExceptionReason, location_name: "Reason"))
    InvalidInputException.struct_class = Types::InvalidInputException

    InviteAccountToOrganizationRequest.add_member(:target, Shapes::ShapeRef.new(shape: HandshakeParty, required: true, location_name: "Target"))
    InviteAccountToOrganizationRequest.add_member(:notes, Shapes::ShapeRef.new(shape: HandshakeNotes, location_name: "Notes"))
    InviteAccountToOrganizationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    InviteAccountToOrganizationRequest.struct_class = Types::InviteAccountToOrganizationRequest

    InviteAccountToOrganizationResponse.add_member(:handshake, Shapes::ShapeRef.new(shape: Handshake, location_name: "Handshake"))
    InviteAccountToOrganizationResponse.struct_class = Types::InviteAccountToOrganizationResponse

    ListAWSServiceAccessForOrganizationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAWSServiceAccessForOrganizationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAWSServiceAccessForOrganizationRequest.struct_class = Types::ListAWSServiceAccessForOrganizationRequest

    ListAWSServiceAccessForOrganizationResponse.add_member(:enabled_service_principals, Shapes::ShapeRef.new(shape: EnabledServicePrincipals, location_name: "EnabledServicePrincipals"))
    ListAWSServiceAccessForOrganizationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAWSServiceAccessForOrganizationResponse.struct_class = Types::ListAWSServiceAccessForOrganizationResponse

    ListAccountsForParentRequest.add_member(:parent_id, Shapes::ShapeRef.new(shape: ParentId, required: true, location_name: "ParentId"))
    ListAccountsForParentRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAccountsForParentRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAccountsForParentRequest.struct_class = Types::ListAccountsForParentRequest

    ListAccountsForParentResponse.add_member(:accounts, Shapes::ShapeRef.new(shape: Accounts, location_name: "Accounts"))
    ListAccountsForParentResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAccountsForParentResponse.struct_class = Types::ListAccountsForParentResponse

    ListAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAccountsRequest.struct_class = Types::ListAccountsRequest

    ListAccountsResponse.add_member(:accounts, Shapes::ShapeRef.new(shape: Accounts, location_name: "Accounts"))
    ListAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAccountsResponse.struct_class = Types::ListAccountsResponse

    ListChildrenRequest.add_member(:parent_id, Shapes::ShapeRef.new(shape: ParentId, required: true, location_name: "ParentId"))
    ListChildrenRequest.add_member(:child_type, Shapes::ShapeRef.new(shape: ChildType, required: true, location_name: "ChildType"))
    ListChildrenRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChildrenRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListChildrenRequest.struct_class = Types::ListChildrenRequest

    ListChildrenResponse.add_member(:children, Shapes::ShapeRef.new(shape: Children, location_name: "Children"))
    ListChildrenResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChildrenResponse.struct_class = Types::ListChildrenResponse

    ListCreateAccountStatusRequest.add_member(:states, Shapes::ShapeRef.new(shape: CreateAccountStates, location_name: "States"))
    ListCreateAccountStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCreateAccountStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCreateAccountStatusRequest.struct_class = Types::ListCreateAccountStatusRequest

    ListCreateAccountStatusResponse.add_member(:create_account_statuses, Shapes::ShapeRef.new(shape: CreateAccountStatuses, location_name: "CreateAccountStatuses"))
    ListCreateAccountStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCreateAccountStatusResponse.struct_class = Types::ListCreateAccountStatusResponse

    ListDelegatedAdministratorsRequest.add_member(:service_principal, Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: "ServicePrincipal"))
    ListDelegatedAdministratorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDelegatedAdministratorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDelegatedAdministratorsRequest.struct_class = Types::ListDelegatedAdministratorsRequest

    ListDelegatedAdministratorsResponse.add_member(:delegated_administrators, Shapes::ShapeRef.new(shape: DelegatedAdministrators, location_name: "DelegatedAdministrators"))
    ListDelegatedAdministratorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDelegatedAdministratorsResponse.struct_class = Types::ListDelegatedAdministratorsResponse

    ListDelegatedServicesForAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    ListDelegatedServicesForAccountRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDelegatedServicesForAccountRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDelegatedServicesForAccountRequest.struct_class = Types::ListDelegatedServicesForAccountRequest

    ListDelegatedServicesForAccountResponse.add_member(:delegated_services, Shapes::ShapeRef.new(shape: DelegatedServices, location_name: "DelegatedServices"))
    ListDelegatedServicesForAccountResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDelegatedServicesForAccountResponse.struct_class = Types::ListDelegatedServicesForAccountResponse

    ListHandshakesForAccountRequest.add_member(:filter, Shapes::ShapeRef.new(shape: HandshakeFilter, location_name: "Filter"))
    ListHandshakesForAccountRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHandshakesForAccountRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListHandshakesForAccountRequest.struct_class = Types::ListHandshakesForAccountRequest

    ListHandshakesForAccountResponse.add_member(:handshakes, Shapes::ShapeRef.new(shape: Handshakes, location_name: "Handshakes"))
    ListHandshakesForAccountResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHandshakesForAccountResponse.struct_class = Types::ListHandshakesForAccountResponse

    ListHandshakesForOrganizationRequest.add_member(:filter, Shapes::ShapeRef.new(shape: HandshakeFilter, location_name: "Filter"))
    ListHandshakesForOrganizationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHandshakesForOrganizationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListHandshakesForOrganizationRequest.struct_class = Types::ListHandshakesForOrganizationRequest

    ListHandshakesForOrganizationResponse.add_member(:handshakes, Shapes::ShapeRef.new(shape: Handshakes, location_name: "Handshakes"))
    ListHandshakesForOrganizationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHandshakesForOrganizationResponse.struct_class = Types::ListHandshakesForOrganizationResponse

    ListOrganizationalUnitsForParentRequest.add_member(:parent_id, Shapes::ShapeRef.new(shape: ParentId, required: true, location_name: "ParentId"))
    ListOrganizationalUnitsForParentRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOrganizationalUnitsForParentRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListOrganizationalUnitsForParentRequest.struct_class = Types::ListOrganizationalUnitsForParentRequest

    ListOrganizationalUnitsForParentResponse.add_member(:organizational_units, Shapes::ShapeRef.new(shape: OrganizationalUnits, location_name: "OrganizationalUnits"))
    ListOrganizationalUnitsForParentResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOrganizationalUnitsForParentResponse.struct_class = Types::ListOrganizationalUnitsForParentResponse

    ListParentsRequest.add_member(:child_id, Shapes::ShapeRef.new(shape: ChildId, required: true, location_name: "ChildId"))
    ListParentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListParentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListParentsRequest.struct_class = Types::ListParentsRequest

    ListParentsResponse.add_member(:parents, Shapes::ShapeRef.new(shape: Parents, location_name: "Parents"))
    ListParentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListParentsResponse.struct_class = Types::ListParentsResponse

    ListPoliciesForTargetRequest.add_member(:target_id, Shapes::ShapeRef.new(shape: PolicyTargetId, required: true, location_name: "TargetId"))
    ListPoliciesForTargetRequest.add_member(:filter, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "Filter"))
    ListPoliciesForTargetRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPoliciesForTargetRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPoliciesForTargetRequest.struct_class = Types::ListPoliciesForTargetRequest

    ListPoliciesForTargetResponse.add_member(:policies, Shapes::ShapeRef.new(shape: Policies, location_name: "Policies"))
    ListPoliciesForTargetResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPoliciesForTargetResponse.struct_class = Types::ListPoliciesForTargetResponse

    ListPoliciesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "Filter"))
    ListPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPoliciesRequest.struct_class = Types::ListPoliciesRequest

    ListPoliciesResponse.add_member(:policies, Shapes::ShapeRef.new(shape: Policies, location_name: "Policies"))
    ListPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPoliciesResponse.struct_class = Types::ListPoliciesResponse

    ListRootsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRootsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListRootsRequest.struct_class = Types::ListRootsRequest

    ListRootsResponse.add_member(:roots, Shapes::ShapeRef.new(shape: Roots, location_name: "Roots"))
    ListRootsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRootsResponse.struct_class = Types::ListRootsResponse

    ListTagsForResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: TaggableResourceId, required: true, location_name: "ResourceId"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTargetsForPolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    ListTargetsForPolicyRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTargetsForPolicyRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTargetsForPolicyRequest.struct_class = Types::ListTargetsForPolicyRequest

    ListTargetsForPolicyResponse.add_member(:targets, Shapes::ShapeRef.new(shape: PolicyTargets, location_name: "Targets"))
    ListTargetsForPolicyResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTargetsForPolicyResponse.struct_class = Types::ListTargetsForPolicyResponse

    MalformedPolicyDocumentException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    MalformedPolicyDocumentException.struct_class = Types::MalformedPolicyDocumentException

    MasterCannotLeaveOrganizationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    MasterCannotLeaveOrganizationException.struct_class = Types::MasterCannotLeaveOrganizationException

    MoveAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    MoveAccountRequest.add_member(:source_parent_id, Shapes::ShapeRef.new(shape: ParentId, required: true, location_name: "SourceParentId"))
    MoveAccountRequest.add_member(:destination_parent_id, Shapes::ShapeRef.new(shape: ParentId, required: true, location_name: "DestinationParentId"))
    MoveAccountRequest.struct_class = Types::MoveAccountRequest

    Organization.add_member(:id, Shapes::ShapeRef.new(shape: OrganizationId, location_name: "Id"))
    Organization.add_member(:arn, Shapes::ShapeRef.new(shape: OrganizationArn, location_name: "Arn"))
    Organization.add_member(:feature_set, Shapes::ShapeRef.new(shape: OrganizationFeatureSet, location_name: "FeatureSet"))
    Organization.add_member(:master_account_arn, Shapes::ShapeRef.new(shape: AccountArn, location_name: "MasterAccountArn"))
    Organization.add_member(:master_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "MasterAccountId"))
    Organization.add_member(:master_account_email, Shapes::ShapeRef.new(shape: Email, location_name: "MasterAccountEmail"))
    Organization.add_member(:available_policy_types, Shapes::ShapeRef.new(shape: PolicyTypes, location_name: "AvailablePolicyTypes"))
    Organization.struct_class = Types::Organization

    OrganizationNotEmptyException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    OrganizationNotEmptyException.struct_class = Types::OrganizationNotEmptyException

    OrganizationalUnit.add_member(:id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: "Id"))
    OrganizationalUnit.add_member(:arn, Shapes::ShapeRef.new(shape: OrganizationalUnitArn, location_name: "Arn"))
    OrganizationalUnit.add_member(:name, Shapes::ShapeRef.new(shape: OrganizationalUnitName, location_name: "Name"))
    OrganizationalUnit.struct_class = Types::OrganizationalUnit

    OrganizationalUnitNotEmptyException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    OrganizationalUnitNotEmptyException.struct_class = Types::OrganizationalUnitNotEmptyException

    OrganizationalUnitNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    OrganizationalUnitNotFoundException.struct_class = Types::OrganizationalUnitNotFoundException

    OrganizationalUnits.member = Shapes::ShapeRef.new(shape: OrganizationalUnit)

    Parent.add_member(:id, Shapes::ShapeRef.new(shape: ParentId, location_name: "Id"))
    Parent.add_member(:type, Shapes::ShapeRef.new(shape: ParentType, location_name: "Type"))
    Parent.struct_class = Types::Parent

    ParentNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ParentNotFoundException.struct_class = Types::ParentNotFoundException

    Parents.member = Shapes::ShapeRef.new(shape: Parent)

    Policies.member = Shapes::ShapeRef.new(shape: PolicySummary)

    Policy.add_member(:policy_summary, Shapes::ShapeRef.new(shape: PolicySummary, location_name: "PolicySummary"))
    Policy.add_member(:content, Shapes::ShapeRef.new(shape: PolicyContent, location_name: "Content"))
    Policy.struct_class = Types::Policy

    PolicyChangesInProgressException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    PolicyChangesInProgressException.struct_class = Types::PolicyChangesInProgressException

    PolicyInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    PolicyInUseException.struct_class = Types::PolicyInUseException

    PolicyNotAttachedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    PolicyNotAttachedException.struct_class = Types::PolicyNotAttachedException

    PolicyNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    PolicyNotFoundException.struct_class = Types::PolicyNotFoundException

    PolicySummary.add_member(:id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "Id"))
    PolicySummary.add_member(:arn, Shapes::ShapeRef.new(shape: PolicyArn, location_name: "Arn"))
    PolicySummary.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "Name"))
    PolicySummary.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "Description"))
    PolicySummary.add_member(:type, Shapes::ShapeRef.new(shape: PolicyType, location_name: "Type"))
    PolicySummary.add_member(:aws_managed, Shapes::ShapeRef.new(shape: AwsManagedPolicy, location_name: "AwsManaged"))
    PolicySummary.struct_class = Types::PolicySummary

    PolicyTargetSummary.add_member(:target_id, Shapes::ShapeRef.new(shape: PolicyTargetId, location_name: "TargetId"))
    PolicyTargetSummary.add_member(:arn, Shapes::ShapeRef.new(shape: GenericArn, location_name: "Arn"))
    PolicyTargetSummary.add_member(:name, Shapes::ShapeRef.new(shape: TargetName, location_name: "Name"))
    PolicyTargetSummary.add_member(:type, Shapes::ShapeRef.new(shape: TargetType, location_name: "Type"))
    PolicyTargetSummary.struct_class = Types::PolicyTargetSummary

    PolicyTargets.member = Shapes::ShapeRef.new(shape: PolicyTargetSummary)

    PolicyTypeAlreadyEnabledException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    PolicyTypeAlreadyEnabledException.struct_class = Types::PolicyTypeAlreadyEnabledException

    PolicyTypeNotAvailableForOrganizationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    PolicyTypeNotAvailableForOrganizationException.struct_class = Types::PolicyTypeNotAvailableForOrganizationException

    PolicyTypeNotEnabledException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    PolicyTypeNotEnabledException.struct_class = Types::PolicyTypeNotEnabledException

    PolicyTypeSummary.add_member(:type, Shapes::ShapeRef.new(shape: PolicyType, location_name: "Type"))
    PolicyTypeSummary.add_member(:status, Shapes::ShapeRef.new(shape: PolicyTypeStatus, location_name: "Status"))
    PolicyTypeSummary.struct_class = Types::PolicyTypeSummary

    PolicyTypes.member = Shapes::ShapeRef.new(shape: PolicyTypeSummary)

    RegisterDelegatedAdministratorRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    RegisterDelegatedAdministratorRequest.add_member(:service_principal, Shapes::ShapeRef.new(shape: ServicePrincipal, required: true, location_name: "ServicePrincipal"))
    RegisterDelegatedAdministratorRequest.struct_class = Types::RegisterDelegatedAdministratorRequest

    RemoveAccountFromOrganizationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    RemoveAccountFromOrganizationRequest.struct_class = Types::RemoveAccountFromOrganizationRequest

    Root.add_member(:id, Shapes::ShapeRef.new(shape: RootId, location_name: "Id"))
    Root.add_member(:arn, Shapes::ShapeRef.new(shape: RootArn, location_name: "Arn"))
    Root.add_member(:name, Shapes::ShapeRef.new(shape: RootName, location_name: "Name"))
    Root.add_member(:policy_types, Shapes::ShapeRef.new(shape: PolicyTypes, location_name: "PolicyTypes"))
    Root.struct_class = Types::Root

    RootNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    RootNotFoundException.struct_class = Types::RootNotFoundException

    Roots.member = Shapes::ShapeRef.new(shape: Root)

    ServiceException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ServiceException.struct_class = Types::ServiceException

    SourceParentNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    SourceParentNotFoundException.struct_class = Types::SourceParentNotFoundException

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: TaggableResourceId, required: true, location_name: "ResourceId"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TargetNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    TargetNotFoundException.struct_class = Types::TargetNotFoundException

    TooManyRequestsException.add_member(:type, Shapes::ShapeRef.new(shape: ExceptionType, location_name: "Type"))
    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UnsupportedAPIEndpointException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    UnsupportedAPIEndpointException.struct_class = Types::UnsupportedAPIEndpointException

    UntagResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: TaggableResourceId, required: true, location_name: "ResourceId"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateOrganizationalUnitRequest.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, required: true, location_name: "OrganizationalUnitId"))
    UpdateOrganizationalUnitRequest.add_member(:name, Shapes::ShapeRef.new(shape: OrganizationalUnitName, location_name: "Name"))
    UpdateOrganizationalUnitRequest.struct_class = Types::UpdateOrganizationalUnitRequest

    UpdateOrganizationalUnitResponse.add_member(:organizational_unit, Shapes::ShapeRef.new(shape: OrganizationalUnit, location_name: "OrganizationalUnit"))
    UpdateOrganizationalUnitResponse.struct_class = Types::UpdateOrganizationalUnitResponse

    UpdatePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    UpdatePolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "Name"))
    UpdatePolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "Description"))
    UpdatePolicyRequest.add_member(:content, Shapes::ShapeRef.new(shape: PolicyContent, location_name: "Content"))
    UpdatePolicyRequest.struct_class = Types::UpdatePolicyRequest

    UpdatePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    UpdatePolicyResponse.struct_class = Types::UpdatePolicyResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-11-28"

      api.metadata = {
        "apiVersion" => "2016-11-28",
        "endpointPrefix" => "organizations",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Organizations",
        "serviceFullName" => "AWS Organizations",
        "serviceId" => "Organizations",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSOrganizationsV20161128",
        "uid" => "organizations-2016-11-28",
      }

      api.add_operation(:accept_handshake, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptHandshake"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcceptHandshakeRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptHandshakeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: HandshakeConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: HandshakeNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHandshakeTransitionException)
        o.errors << Shapes::ShapeRef.new(shape: HandshakeAlreadyInStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedForDependencyException)
      end)

      api.add_operation(:attach_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicatePolicyAttachmentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyTypeNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TargetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyChangesInProgressException)
      end)

      api.add_operation(:cancel_handshake, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelHandshake"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelHandshakeRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelHandshakeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: HandshakeNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHandshakeTransitionException)
        o.errors << Shapes::ShapeRef.new(shape: HandshakeAlreadyInStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: FinalizingOrganizationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
      end)

      api.add_operation(:create_gov_cloud_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGovCloudAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGovCloudAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGovCloudAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: FinalizingOrganizationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
      end)

      api.add_operation(:create_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateOrganizationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOrganizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyInOrganizationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedForDependencyException)
      end)

      api.add_operation(:create_organizational_unit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOrganizationalUnit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateOrganizationalUnitRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOrganizationalUnitResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateOrganizationalUnitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ParentNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicatePolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyTypeNotAvailableForOrganizationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
      end)

      api.add_operation(:decline_handshake, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeclineHandshake"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeclineHandshakeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeclineHandshakeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: HandshakeNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHandshakeTransitionException)
        o.errors << Shapes::ShapeRef.new(shape: HandshakeAlreadyInStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotEmptyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_organizational_unit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOrganizationalUnit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteOrganizationalUnitRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationalUnitNotEmptyException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationalUnitNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyInUseException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
      end)

      api.add_operation(:deregister_delegated_administrator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterDelegatedAdministrator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterDelegatedAdministratorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotRegisteredException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
      end)

      api.add_operation(:describe_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_create_account_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCreateAccountStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCreateAccountStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCreateAccountStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: CreateAccountStatusNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
      end)

      api.add_operation(:describe_effective_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEffectivePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEffectivePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEffectivePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: TargetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EffectivePolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
      end)

      api.add_operation(:describe_handshake, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeHandshake"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeHandshakeRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeHandshakeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: HandshakeNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeOrganizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_organizational_unit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrganizationalUnit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrganizationalUnitRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrganizationalUnitResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationalUnitNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
      end)

      api.add_operation(:detach_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotAttachedException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TargetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyChangesInProgressException)
      end)

      api.add_operation(:disable_aws_service_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableAWSServiceAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableAWSServiceAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
      end)

      api.add_operation(:disable_policy_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisablePolicyType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisablePolicyTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DisablePolicyTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyTypeNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: RootNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyChangesInProgressException)
      end)

      api.add_operation(:enable_aws_service_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableAWSServiceAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableAWSServiceAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
      end)

      api.add_operation(:enable_all_features, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableAllFeatures"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableAllFeaturesRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableAllFeaturesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: HandshakeConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:enable_policy_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnablePolicyType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnablePolicyTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: EnablePolicyTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyTypeAlreadyEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: RootNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyTypeNotAvailableForOrganizationException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyChangesInProgressException)
      end)

      api.add_operation(:invite_account_to_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InviteAccountToOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: InviteAccountToOrganizationRequest)
        o.output = Shapes::ShapeRef.new(shape: InviteAccountToOrganizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: AccountOwnerNotVerifiedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: HandshakeConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateHandshakeException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: FinalizingOrganizationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:leave_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "LeaveOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: MasterCannotLeaveOrganizationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_aws_service_access_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAWSServiceAccessForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAWSServiceAccessForOrganizationRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAWSServiceAccessForOrganizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_accounts_for_parent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountsForParent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccountsForParentRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountsForParentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ParentNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_children, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChildren"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListChildrenRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChildrenResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ParentNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_create_account_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCreateAccountStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCreateAccountStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCreateAccountStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_delegated_administrators, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDelegatedAdministrators"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDelegatedAdministratorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDelegatedAdministratorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_delegated_services_for_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDelegatedServicesForAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDelegatedServicesForAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDelegatedServicesForAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotRegisteredException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_handshakes_for_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHandshakesForAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListHandshakesForAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHandshakesForAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_handshakes_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHandshakesForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListHandshakesForOrganizationRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHandshakesForOrganizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_organizational_units_for_parent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOrganizationalUnitsForParent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOrganizationalUnitsForParentRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOrganizationalUnitsForParentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ParentNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_parents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListParents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListParentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListParentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ChildNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_policies_for_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPoliciesForTarget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPoliciesForTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPoliciesForTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TargetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_roots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRootsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRootsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: TargetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_targets_for_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTargetsForPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTargetsForPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTargetsForPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:move_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "MoveAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: MoveAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: SourceParentNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DestinationParentNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateAccountException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:register_delegated_administrator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterDelegatedAdministrator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterDelegatedAdministratorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountAlreadyRegisteredException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
      end)

      api.add_operation(:remove_account_from_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveAccountFromOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveAccountFromOrganizationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: MasterCannotLeaveOrganizationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: TargetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: TargetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_organizational_unit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOrganizationalUnit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateOrganizationalUnitRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateOrganizationalUnitResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateOrganizationalUnitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationalUnitNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicatePolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyChangesInProgressException)
      end)
    end

  end
end

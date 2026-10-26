# frozen_string_literal: true

# This is generated code!

module Aws::Organizations
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSOrganizationsNotInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#AWSOrganizationsNotInUseException", name: "AWSOrganizationsNotInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AcceptHandshakeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#AcceptHandshakeRequest", name: "AcceptHandshakeRequest")
    AcceptHandshakeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#AcceptHandshakeResponse", name: "AcceptHandshakeResponse")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedForDependencyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#AccessDeniedForDependencyException", name: "AccessDeniedForDependencyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedForDependencyExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#AccessDeniedForDependencyExceptionReason", name: "AccessDeniedForDependencyExceptionReason")
    Account = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#Account", name: "Account")
    AccountAlreadyClosedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#AccountAlreadyClosedException", name: "AccountAlreadyClosedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    AccountAlreadyRegisteredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#AccountAlreadyRegisteredException", name: "AccountAlreadyRegisteredException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    AccountArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#AccountArn", name: "AccountArn", traits: {"smithy.api#pattern" => "^arn:aws:organizations::\\d{12}:account\\/o-[a-z0-9]{10,32}\\/\\d{12}$"})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 0, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AccountJoinedMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#AccountJoinedMethod", name: "AccountJoinedMethod")
    AccountName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#AccountName", name: "AccountName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    AccountNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#AccountNotFoundException", name: "AccountNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AccountNotRegisteredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#AccountNotRegisteredException", name: "AccountNotRegisteredException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    AccountOwnerNotVerifiedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#AccountOwnerNotVerifiedException", name: "AccountOwnerNotVerifiedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#AccountState", name: "AccountState")
    AccountStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#AccountStatus", name: "AccountStatus")
    Accounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#Accounts", name: "Accounts")
    ActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#ActionType", name: "ActionType")
    AlreadyInOrganizationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#AlreadyInOrganizationException", name: "AlreadyInOrganizationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    AttachPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#AttachPolicyRequest", name: "AttachPolicyRequest")
    AwsManagedPolicy = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.organizations#AwsManagedPolicy", name: "AwsManagedPolicy", traits: {"smithy.api#default" => false})
    CancelHandshakeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#CancelHandshakeRequest", name: "CancelHandshakeRequest")
    CancelHandshakeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#CancelHandshakeResponse", name: "CancelHandshakeResponse")
    Child = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#Child", name: "Child")
    ChildId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#ChildId", name: "ChildId", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"})
    ChildNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ChildNotFoundException", name: "ChildNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ChildType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#ChildType", name: "ChildType")
    Children = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#Children", name: "Children")
    CloseAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#CloseAccountRequest", name: "CloseAccountRequest")
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConstraintViolationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ConstraintViolationException", name: "ConstraintViolationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConstraintViolationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#ConstraintViolationExceptionReason", name: "ConstraintViolationExceptionReason")
    CreateAccountFailureReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#CreateAccountFailureReason", name: "CreateAccountFailureReason")
    CreateAccountName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#CreateAccountName", name: "CreateAccountName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[\\u0020-\\u007E]+$", "smithy.api#sensitive" => {}})
    CreateAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#CreateAccountRequest", name: "CreateAccountRequest")
    CreateAccountRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#CreateAccountRequestId", name: "CreateAccountRequestId", traits: {"smithy.api#length" => {"min" => 0, "max" => 36}, "smithy.api#pattern" => "^car-[a-z0-9]{8,32}$"})
    CreateAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#CreateAccountResponse", name: "CreateAccountResponse")
    CreateAccountState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#CreateAccountState", name: "CreateAccountState")
    CreateAccountStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#CreateAccountStates", name: "CreateAccountStates")
    CreateAccountStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#CreateAccountStatus", name: "CreateAccountStatus")
    CreateAccountStatusNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#CreateAccountStatusNotFoundException", name: "CreateAccountStatusNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CreateAccountStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#CreateAccountStatuses", name: "CreateAccountStatuses")
    CreateGovCloudAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#CreateGovCloudAccountRequest", name: "CreateGovCloudAccountRequest")
    CreateGovCloudAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#CreateGovCloudAccountResponse", name: "CreateGovCloudAccountResponse")
    CreateOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#CreateOrganizationRequest", name: "CreateOrganizationRequest")
    CreateOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#CreateOrganizationResponse", name: "CreateOrganizationResponse")
    CreateOrganizationalUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#CreateOrganizationalUnitRequest", name: "CreateOrganizationalUnitRequest")
    CreateOrganizationalUnitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#CreateOrganizationalUnitResponse", name: "CreateOrganizationalUnitResponse")
    CreatePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#CreatePolicyRequest", name: "CreatePolicyRequest")
    CreatePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#CreatePolicyResponse", name: "CreatePolicyResponse")
    DeclineHandshakeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DeclineHandshakeRequest", name: "DeclineHandshakeRequest")
    DeclineHandshakeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DeclineHandshakeResponse", name: "DeclineHandshakeResponse")
    DelegatedAdministrator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DelegatedAdministrator", name: "DelegatedAdministrator")
    DelegatedAdministrators = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#DelegatedAdministrators", name: "DelegatedAdministrators")
    DelegatedService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DelegatedService", name: "DelegatedService")
    DelegatedServices = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#DelegatedServices", name: "DelegatedServices")
    DeleteOrganizationalUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DeleteOrganizationalUnitRequest", name: "DeleteOrganizationalUnitRequest")
    DeletePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DeletePolicyRequest", name: "DeletePolicyRequest")
    DeregisterDelegatedAdministratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DeregisterDelegatedAdministratorRequest", name: "DeregisterDelegatedAdministratorRequest")
    DescribeAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DescribeAccountRequest", name: "DescribeAccountRequest")
    DescribeAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DescribeAccountResponse", name: "DescribeAccountResponse")
    DescribeCreateAccountStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DescribeCreateAccountStatusRequest", name: "DescribeCreateAccountStatusRequest")
    DescribeCreateAccountStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DescribeCreateAccountStatusResponse", name: "DescribeCreateAccountStatusResponse")
    DescribeEffectivePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DescribeEffectivePolicyRequest", name: "DescribeEffectivePolicyRequest")
    DescribeEffectivePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DescribeEffectivePolicyResponse", name: "DescribeEffectivePolicyResponse")
    DescribeHandshakeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DescribeHandshakeRequest", name: "DescribeHandshakeRequest")
    DescribeHandshakeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DescribeHandshakeResponse", name: "DescribeHandshakeResponse")
    DescribeOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DescribeOrganizationResponse", name: "DescribeOrganizationResponse")
    DescribeOrganizationalUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DescribeOrganizationalUnitRequest", name: "DescribeOrganizationalUnitRequest")
    DescribeOrganizationalUnitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DescribeOrganizationalUnitResponse", name: "DescribeOrganizationalUnitResponse")
    DescribePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DescribePolicyRequest", name: "DescribePolicyRequest")
    DescribePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DescribePolicyResponse", name: "DescribePolicyResponse")
    DescribeResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DescribeResourcePolicyResponse", name: "DescribeResourcePolicyResponse")
    DescribeResponsibilityTransferRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DescribeResponsibilityTransferRequest", name: "DescribeResponsibilityTransferRequest")
    DescribeResponsibilityTransferResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DescribeResponsibilityTransferResponse", name: "DescribeResponsibilityTransferResponse")
    DestinationParentNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DestinationParentNotFoundException", name: "DestinationParentNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DetachPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DetachPolicyRequest", name: "DetachPolicyRequest")
    DisableAWSServiceAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DisableAWSServiceAccessRequest", name: "DisableAWSServiceAccessRequest")
    DisablePolicyTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DisablePolicyTypeRequest", name: "DisablePolicyTypeRequest")
    DisablePolicyTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DisablePolicyTypeResponse", name: "DisablePolicyTypeResponse")
    DuplicateAccountException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DuplicateAccountException", name: "DuplicateAccountException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DuplicateHandshakeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DuplicateHandshakeException", name: "DuplicateHandshakeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DuplicateOrganizationalUnitException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DuplicateOrganizationalUnitException", name: "DuplicateOrganizationalUnitException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DuplicatePolicyAttachmentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DuplicatePolicyAttachmentException", name: "DuplicatePolicyAttachmentException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DuplicatePolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#DuplicatePolicyException", name: "DuplicatePolicyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EffectivePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#EffectivePolicy", name: "EffectivePolicy")
    EffectivePolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#EffectivePolicyNotFoundException", name: "EffectivePolicyNotFoundException", traits: {"smithy.api#error" => "client"})
    EffectivePolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#EffectivePolicyType", name: "EffectivePolicyType")
    EffectivePolicyValidationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#EffectivePolicyValidationError", name: "EffectivePolicyValidationError")
    EffectivePolicyValidationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#EffectivePolicyValidationErrors", name: "EffectivePolicyValidationErrors")
    Email = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#Email", name: "Email", traits: {"smithy.api#length" => {"min" => 6, "max" => 64}, "smithy.api#pattern" => "^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$", "smithy.api#sensitive" => {}})
    EnableAWSServiceAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#EnableAWSServiceAccessRequest", name: "EnableAWSServiceAccessRequest")
    EnableAllFeaturesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#EnableAllFeaturesRequest", name: "EnableAllFeaturesRequest")
    EnableAllFeaturesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#EnableAllFeaturesResponse", name: "EnableAllFeaturesResponse")
    EnablePolicyTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#EnablePolicyTypeRequest", name: "EnablePolicyTypeRequest")
    EnablePolicyTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#EnablePolicyTypeResponse", name: "EnablePolicyTypeResponse")
    EnabledServicePrincipal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#EnabledServicePrincipal", name: "EnabledServicePrincipal")
    EnabledServicePrincipals = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#EnabledServicePrincipals", name: "EnabledServicePrincipals")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#ErrorMessage", name: "ErrorMessage")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#ExceptionMessage", name: "ExceptionMessage")
    ExceptionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#ExceptionType", name: "ExceptionType")
    FinalizingOrganizationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#FinalizingOrganizationException", name: "FinalizingOrganizationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    GenericArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#GenericArn", name: "GenericArn", traits: {"smithy.api#pattern" => "^arn:aws:organizations::.+:.+$"})
    Handshake = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#Handshake", name: "Handshake")
    HandshakeAlreadyInStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#HandshakeAlreadyInStateException", name: "HandshakeAlreadyInStateException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    HandshakeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#HandshakeArn", name: "HandshakeArn", traits: {"smithy.api#pattern" => "^arn:aws:organizations::\\d{12}:handshake\\/o-[a-z0-9]{10,32}\\/[a-z_]{1,32}\\/h-[0-9a-z]{8,32}$"})
    HandshakeConstraintViolationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#HandshakeConstraintViolationException", name: "HandshakeConstraintViolationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    HandshakeConstraintViolationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#HandshakeConstraintViolationExceptionReason", name: "HandshakeConstraintViolationExceptionReason")
    HandshakeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#HandshakeFilter", name: "HandshakeFilter")
    HandshakeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#HandshakeId", name: "HandshakeId", traits: {"smithy.api#length" => {"min" => 0, "max" => 34}, "smithy.api#pattern" => "^h-[0-9a-z]{8,32}$"})
    HandshakeNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#HandshakeNotFoundException", name: "HandshakeNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    HandshakeNotes = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#HandshakeNotes", name: "HandshakeNotes", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    HandshakeParties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#HandshakeParties", name: "HandshakeParties")
    HandshakeParty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#HandshakeParty", name: "HandshakeParty")
    HandshakePartyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#HandshakePartyId", name: "HandshakePartyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    HandshakePartyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#HandshakePartyType", name: "HandshakePartyType")
    HandshakeResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#HandshakeResource", name: "HandshakeResource")
    HandshakeResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#HandshakeResourceType", name: "HandshakeResourceType")
    HandshakeResourceValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#HandshakeResourceValue", name: "HandshakeResourceValue", traits: {"smithy.api#sensitive" => {}})
    HandshakeResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#HandshakeResources", name: "HandshakeResources")
    HandshakeState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#HandshakeState", name: "HandshakeState")
    Handshakes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#Handshakes", name: "Handshakes")
    IAMUserAccessToBilling = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#IAMUserAccessToBilling", name: "IAMUserAccessToBilling")
    InvalidHandshakeTransitionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#InvalidHandshakeTransitionException", name: "InvalidHandshakeTransitionException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidInputExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#InvalidInputExceptionReason", name: "InvalidInputExceptionReason")
    InvalidResponsibilityTransferTransitionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#InvalidResponsibilityTransferTransitionException", name: "InvalidResponsibilityTransferTransitionException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InviteAccountToOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#InviteAccountToOrganizationRequest", name: "InviteAccountToOrganizationRequest")
    InviteAccountToOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#InviteAccountToOrganizationResponse", name: "InviteAccountToOrganizationResponse")
    InviteOrganizationToTransferResponsibilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#InviteOrganizationToTransferResponsibilityRequest", name: "InviteOrganizationToTransferResponsibilityRequest")
    InviteOrganizationToTransferResponsibilityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#InviteOrganizationToTransferResponsibilityResponse", name: "InviteOrganizationToTransferResponsibilityResponse")
    ListAWSServiceAccessForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListAWSServiceAccessForOrganizationRequest", name: "ListAWSServiceAccessForOrganizationRequest")
    ListAWSServiceAccessForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListAWSServiceAccessForOrganizationResponse", name: "ListAWSServiceAccessForOrganizationResponse")
    ListAccountsForParentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListAccountsForParentRequest", name: "ListAccountsForParentRequest")
    ListAccountsForParentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListAccountsForParentResponse", name: "ListAccountsForParentResponse")
    ListAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListAccountsRequest", name: "ListAccountsRequest")
    ListAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListAccountsResponse", name: "ListAccountsResponse")
    ListAccountsWithInvalidEffectivePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListAccountsWithInvalidEffectivePolicyRequest", name: "ListAccountsWithInvalidEffectivePolicyRequest")
    ListAccountsWithInvalidEffectivePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListAccountsWithInvalidEffectivePolicyResponse", name: "ListAccountsWithInvalidEffectivePolicyResponse")
    ListChildrenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListChildrenRequest", name: "ListChildrenRequest")
    ListChildrenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListChildrenResponse", name: "ListChildrenResponse")
    ListCreateAccountStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListCreateAccountStatusRequest", name: "ListCreateAccountStatusRequest")
    ListCreateAccountStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListCreateAccountStatusResponse", name: "ListCreateAccountStatusResponse")
    ListDelegatedAdministratorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListDelegatedAdministratorsRequest", name: "ListDelegatedAdministratorsRequest")
    ListDelegatedAdministratorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListDelegatedAdministratorsResponse", name: "ListDelegatedAdministratorsResponse")
    ListDelegatedServicesForAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListDelegatedServicesForAccountRequest", name: "ListDelegatedServicesForAccountRequest")
    ListDelegatedServicesForAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListDelegatedServicesForAccountResponse", name: "ListDelegatedServicesForAccountResponse")
    ListEffectivePolicyValidationErrorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListEffectivePolicyValidationErrorsRequest", name: "ListEffectivePolicyValidationErrorsRequest")
    ListEffectivePolicyValidationErrorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListEffectivePolicyValidationErrorsResponse", name: "ListEffectivePolicyValidationErrorsResponse")
    ListHandshakesForAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListHandshakesForAccountRequest", name: "ListHandshakesForAccountRequest")
    ListHandshakesForAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListHandshakesForAccountResponse", name: "ListHandshakesForAccountResponse")
    ListHandshakesForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListHandshakesForOrganizationRequest", name: "ListHandshakesForOrganizationRequest")
    ListHandshakesForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListHandshakesForOrganizationResponse", name: "ListHandshakesForOrganizationResponse")
    ListInboundResponsibilityTransfersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListInboundResponsibilityTransfersRequest", name: "ListInboundResponsibilityTransfersRequest")
    ListInboundResponsibilityTransfersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListInboundResponsibilityTransfersResponse", name: "ListInboundResponsibilityTransfersResponse")
    ListOrganizationalUnitsForParentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListOrganizationalUnitsForParentRequest", name: "ListOrganizationalUnitsForParentRequest")
    ListOrganizationalUnitsForParentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListOrganizationalUnitsForParentResponse", name: "ListOrganizationalUnitsForParentResponse")
    ListOutboundResponsibilityTransfersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListOutboundResponsibilityTransfersRequest", name: "ListOutboundResponsibilityTransfersRequest")
    ListOutboundResponsibilityTransfersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListOutboundResponsibilityTransfersResponse", name: "ListOutboundResponsibilityTransfersResponse")
    ListParentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListParentsRequest", name: "ListParentsRequest")
    ListParentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListParentsResponse", name: "ListParentsResponse")
    ListPoliciesForTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListPoliciesForTargetRequest", name: "ListPoliciesForTargetRequest")
    ListPoliciesForTargetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListPoliciesForTargetResponse", name: "ListPoliciesForTargetResponse")
    ListPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListPoliciesRequest", name: "ListPoliciesRequest")
    ListPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListPoliciesResponse", name: "ListPoliciesResponse")
    ListRootsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListRootsRequest", name: "ListRootsRequest")
    ListRootsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListRootsResponse", name: "ListRootsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTargetsForPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListTargetsForPolicyRequest", name: "ListTargetsForPolicyRequest")
    ListTargetsForPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ListTargetsForPolicyResponse", name: "ListTargetsForPolicyResponse")
    MalformedPolicyDocumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#MalformedPolicyDocumentException", name: "MalformedPolicyDocumentException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MasterCannotLeaveOrganizationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#MasterCannotLeaveOrganizationException", name: "MasterCannotLeaveOrganizationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.organizations#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    MoveAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#MoveAccountRequest", name: "MoveAccountRequest")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 100000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    Organization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#Organization", name: "Organization")
    OrganizationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#OrganizationArn", name: "OrganizationArn", traits: {"smithy.api#pattern" => "^arn:aws:organizations::\\d{12}:organization\\/o-[a-z0-9]{10,32}$"})
    OrganizationFeatureSet = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#OrganizationFeatureSet", name: "OrganizationFeatureSet")
    OrganizationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#OrganizationId", name: "OrganizationId", traits: {"smithy.api#pattern" => "^o-[a-z0-9]{10,32}$"})
    OrganizationNotEmptyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#OrganizationNotEmptyException", name: "OrganizationNotEmptyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OrganizationalUnit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#OrganizationalUnit", name: "OrganizationalUnit")
    OrganizationalUnitArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#OrganizationalUnitArn", name: "OrganizationalUnitArn", traits: {"smithy.api#pattern" => "^arn:aws:organizations::\\d{12}:ou\\/o-[a-z0-9]{10,32}\\/ou-[0-9a-z]{4,32}-[0-9a-z]{8,32}$"})
    OrganizationalUnitId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#OrganizationalUnitId", name: "OrganizationalUnitId", traits: {"smithy.api#length" => {"min" => 0, "max" => 68}, "smithy.api#pattern" => "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"})
    OrganizationalUnitName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#OrganizationalUnitName", name: "OrganizationalUnitName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    OrganizationalUnitNotEmptyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#OrganizationalUnitNotEmptyException", name: "OrganizationalUnitNotEmptyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OrganizationalUnitNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#OrganizationalUnitNotFoundException", name: "OrganizationalUnitNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OrganizationalUnits = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#OrganizationalUnits", name: "OrganizationalUnits")
    Parent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#Parent", name: "Parent")
    ParentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#ParentId", name: "ParentId", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"})
    ParentNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ParentNotFoundException", name: "ParentNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ParentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#ParentType", name: "ParentType")
    Parents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#Parents", name: "Parents")
    Path = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#Path", name: "Path", traits: {"smithy.api#pattern" => "^(o-[a-z0-9]{10,32}\\/r-[0-9a-z]{4,32}(\\/ou\\-[0-9a-z]{4,32}-[a-z0-9]{8,32})*(\\/\\d{12})*)\\/$"})
    PathToError = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#PathToError", name: "PathToError")
    Paths = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#Paths", name: "Paths")
    Policies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#Policies", name: "Policies")
    Policy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#Policy", name: "Policy")
    PolicyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#PolicyArn", name: "PolicyArn", traits: {"smithy.api#pattern" => "^(arn:aws:organizations::\\d{12}:policy\\/o-[a-z0-9]{10,32}\\/[0-9a-z_]+\\/p-[0-9a-z]{10,32})|(arn:aws:organizations::aws:policy\\/[0-9a-z_]+\\/p-[0-9a-zA-Z_]{10,128})$"})
    PolicyChangesInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#PolicyChangesInProgressException", name: "PolicyChangesInProgressException", traits: {"smithy.api#error" => "client"})
    PolicyContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#PolicyContent", name: "PolicyContent", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    PolicyDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#PolicyDescription", name: "PolicyDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    PolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#PolicyId", name: "PolicyId", traits: {"smithy.api#length" => {"min" => 0, "max" => 130}, "smithy.api#pattern" => "^p-[0-9a-zA-Z_]{8,128}$"})
    PolicyIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#PolicyIds", name: "PolicyIds")
    PolicyInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#PolicyInUseException", name: "PolicyInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#PolicyName", name: "PolicyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    PolicyNotAttachedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#PolicyNotAttachedException", name: "PolicyNotAttachedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#PolicyNotFoundException", name: "PolicyNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#PolicySummary", name: "PolicySummary")
    PolicyTargetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#PolicyTargetId", name: "PolicyTargetId", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^(r-[0-9a-z]{4,32})|(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"})
    PolicyTargetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#PolicyTargetSummary", name: "PolicyTargetSummary")
    PolicyTargets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#PolicyTargets", name: "PolicyTargets")
    PolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#PolicyType", name: "PolicyType")
    PolicyTypeAlreadyEnabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#PolicyTypeAlreadyEnabledException", name: "PolicyTypeAlreadyEnabledException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PolicyTypeNotAvailableForOrganizationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#PolicyTypeNotAvailableForOrganizationException", name: "PolicyTypeNotAvailableForOrganizationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PolicyTypeNotEnabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#PolicyTypeNotEnabledException", name: "PolicyTypeNotEnabledException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PolicyTypeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#PolicyTypeStatus", name: "PolicyTypeStatus")
    PolicyTypeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#PolicyTypeSummary", name: "PolicyTypeSummary")
    PolicyTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#PolicyTypes", name: "PolicyTypes")
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    RegisterDelegatedAdministratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#RegisterDelegatedAdministratorRequest", name: "RegisterDelegatedAdministratorRequest")
    RemoveAccountFromOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#RemoveAccountFromOrganizationRequest", name: "RemoveAccountFromOrganizationRequest")
    ResourcePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ResourcePolicy", name: "ResourcePolicy")
    ResourcePolicyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#ResourcePolicyArn", name: "ResourcePolicyArn", traits: {"smithy.api#pattern" => "^arn:[a-z0-9][a-z0-9-.]{0,62}:organizations::\\d{12}:resourcepolicy\\/o-[a-z0-9]{10,32}\\/rp-[0-9a-zA-Z_]{4,128}$"})
    ResourcePolicyContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#ResourcePolicyContent", name: "ResourcePolicyContent", traits: {"smithy.api#length" => {"min" => 1, "max" => 40000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ResourcePolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#ResourcePolicyId", name: "ResourcePolicyId", traits: {"smithy.api#length" => {"min" => 0, "max" => 131}, "smithy.api#pattern" => "^rp-[0-9a-zA-Z_]{4,128}$"})
    ResourcePolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ResourcePolicyNotFoundException", name: "ResourcePolicyNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ResourcePolicySummary", name: "ResourcePolicySummary")
    ResponsibilityTransfer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ResponsibilityTransfer", name: "ResponsibilityTransfer")
    ResponsibilityTransferAlreadyInStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ResponsibilityTransferAlreadyInStatusException", name: "ResponsibilityTransferAlreadyInStatusException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResponsibilityTransferArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#ResponsibilityTransferArn", name: "ResponsibilityTransferArn", traits: {"smithy.api#pattern" => "^arn:[a-z0-9][a-z0-9-.]{0,62}:organizations::\\d{12}:transfer\\/o-[a-z0-9]{10,32}\\/(billing)\\/(inbound|outbound)\\/rt-[0-9a-z]{8,32}$"})
    ResponsibilityTransferId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#ResponsibilityTransferId", name: "ResponsibilityTransferId", traits: {"smithy.api#pattern" => "^rt-[0-9a-z]{8,32}$"})
    ResponsibilityTransferName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#ResponsibilityTransferName", name: "ResponsibilityTransferName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[ -~]+$", "smithy.api#sensitive" => {}})
    ResponsibilityTransferNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ResponsibilityTransferNotFoundException", name: "ResponsibilityTransferNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponsibilityTransferStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#ResponsibilityTransferStatus", name: "ResponsibilityTransferStatus")
    ResponsibilityTransferType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#ResponsibilityTransferType", name: "ResponsibilityTransferType")
    ResponsibilityTransfers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#ResponsibilityTransfers", name: "ResponsibilityTransfers")
    RoleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#RoleName", name: "RoleName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\w+=,.@-]{1,64}$"})
    Root = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#Root", name: "Root")
    RootArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#RootArn", name: "RootArn", traits: {"smithy.api#pattern" => "^arn:aws:organizations::\\d{12}:root\\/o-[a-z0-9]{10,32}\\/r-[0-9a-z]{4,32}$"})
    RootId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#RootId", name: "RootId", traits: {"smithy.api#length" => {"min" => 0, "max" => 34}, "smithy.api#pattern" => "^r-[0-9a-z]{4,32}$"})
    RootName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#RootName", name: "RootName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RootNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#RootNotFoundException", name: "RootNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Roots = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#Roots", name: "Roots")
    ServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#ServiceException", name: "ServiceException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServicePrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#ServicePrincipal", name: "ServicePrincipal", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=,.@-]*$"})
    SourceParentNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#SourceParentNotFoundException", name: "SourceParentNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#TagKeys", name: "TagKeys")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TaggableResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#TaggableResourceId", name: "TaggableResourceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 130}, "smithy.api#pattern" => "^(r-[0-9a-z]{4,32})|(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})|(^p-[0-9a-zA-Z_]{8,128})|(^rp-[0-9a-zA-Z_]{4,128})|(^rt-[0-9a-zA-Z_]{8,32})$"})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.organizations#Tags", name: "Tags")
    TargetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.organizations#TargetName", name: "TargetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TargetNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#TargetNotFoundException", name: "TargetNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.organizations#TargetType", name: "TargetType")
    TerminateResponsibilityTransferRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#TerminateResponsibilityTransferRequest", name: "TerminateResponsibilityTransferRequest")
    TerminateResponsibilityTransferResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#TerminateResponsibilityTransferResponse", name: "TerminateResponsibilityTransferResponse")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.organizations#Timestamp", name: "Timestamp")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TransferParticipant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#TransferParticipant", name: "TransferParticipant")
    UnsupportedAPIEndpointException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#UnsupportedAPIEndpointException", name: "UnsupportedAPIEndpointException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateOrganizationalUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#UpdateOrganizationalUnitRequest", name: "UpdateOrganizationalUnitRequest")
    UpdateOrganizationalUnitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#UpdateOrganizationalUnitResponse", name: "UpdateOrganizationalUnitResponse")
    UpdatePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#UpdatePolicyRequest", name: "UpdatePolicyRequest")
    UpdatePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#UpdatePolicyResponse", name: "UpdatePolicyResponse")
    UpdateResponsibilityTransferRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#UpdateResponsibilityTransferRequest", name: "UpdateResponsibilityTransferRequest")
    UpdateResponsibilityTransferResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.organizations#UpdateResponsibilityTransferResponse", name: "UpdateResponsibilityTransferResponse")

    AWSOrganizationsNotInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    AWSOrganizationsNotInUseException.type = Types::AWSOrganizationsNotInUseException
    AcceptHandshakeRequest.add_member(:handshake_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeId, name: "HandshakeId", traits: {"smithy.api#required" => {}}))
    AcceptHandshakeRequest.type = Types::AcceptHandshakeRequest
    AcceptHandshakeResponse.add_member(:handshake, ::Smithy::Schema::Shapes::MemberShape.new(target: Handshake, name: "Handshake"))
    AcceptHandshakeResponse.type = Types::AcceptHandshakeResponse
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDeniedForDependencyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    AccessDeniedForDependencyException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedForDependencyExceptionReason, name: "Reason"))
    AccessDeniedForDependencyException.type = Types::AccessDeniedForDependencyException
    AccessDeniedForDependencyExceptionReason.add_member(:access_denied_during_create_service_linked_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE", traits: {"smithy.api#enumValue" => "ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE"}))
    Account.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "Id"))
    Account.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountArn, name: "Arn"))
    Account.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "Email"))
    Account.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountName, name: "Name"))
    Account.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountStatus, name: "Status"))
    Account.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountState, name: "State"))
    Account.add_member(:paths, ::Smithy::Schema::Shapes::MemberShape.new(target: Paths, name: "Paths"))
    Account.add_member(:joined_method, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountJoinedMethod, name: "JoinedMethod"))
    Account.add_member(:joined_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "JoinedTimestamp"))
    Account.type = Types::Account
    AccountAlreadyClosedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    AccountAlreadyClosedException.type = Types::AccountAlreadyClosedException
    AccountAlreadyRegisteredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    AccountAlreadyRegisteredException.type = Types::AccountAlreadyRegisteredException
    AccountJoinedMethod.add_member(:invited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVITED", traits: {"smithy.api#enumValue" => "INVITED"}))
    AccountJoinedMethod.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    AccountNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    AccountNotFoundException.type = Types::AccountNotFoundException
    AccountNotRegisteredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    AccountNotRegisteredException.type = Types::AccountNotRegisteredException
    AccountOwnerNotVerifiedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    AccountOwnerNotVerifiedException.type = Types::AccountOwnerNotVerifiedException
    AccountState.add_member(:pending_activation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_ACTIVATION", traits: {"smithy.api#enumValue" => "PENDING_ACTIVATION"}))
    AccountState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AccountState.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    AccountState.add_member(:pending_closure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_CLOSURE", traits: {"smithy.api#enumValue" => "PENDING_CLOSURE"}))
    AccountState.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED", traits: {"smithy.api#enumValue" => "CLOSED"}))
    AccountStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AccountStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    AccountStatus.add_member(:pending_closure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_CLOSURE", traits: {"smithy.api#enumValue" => "PENDING_CLOSURE"}))
    Accounts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "member"))
    ActionType.add_member(:invite_account_to_organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVITE_ACCOUNT_TO_ORGANIZATION", traits: {"smithy.api#enumValue" => "INVITE"}))
    ActionType.add_member(:enable_all_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLE_ALL_FEATURES", traits: {"smithy.api#enumValue" => "ENABLE_ALL_FEATURES"}))
    ActionType.add_member(:approve_all_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVE_ALL_FEATURES", traits: {"smithy.api#enumValue" => "APPROVE_ALL_FEATURES"}))
    ActionType.add_member(:add_organizations_service_linked_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE", traits: {"smithy.api#enumValue" => "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"}))
    ActionType.add_member(:transfer_responsibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSFER_RESPONSIBILITY", traits: {"smithy.api#enumValue" => "TRANSFER_RESPONSIBILITY"}))
    AlreadyInOrganizationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    AlreadyInOrganizationException.type = Types::AlreadyInOrganizationException
    AttachPolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId", traits: {"smithy.api#required" => {}}))
    AttachPolicyRequest.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTargetId, name: "TargetId", traits: {"smithy.api#required" => {}}))
    AttachPolicyRequest.type = Types::AttachPolicyRequest
    CancelHandshakeRequest.add_member(:handshake_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeId, name: "HandshakeId", traits: {"smithy.api#required" => {}}))
    CancelHandshakeRequest.type = Types::CancelHandshakeRequest
    CancelHandshakeResponse.add_member(:handshake, ::Smithy::Schema::Shapes::MemberShape.new(target: Handshake, name: "Handshake"))
    CancelHandshakeResponse.type = Types::CancelHandshakeResponse
    Child.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildId, name: "Id"))
    Child.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildType, name: "Type"))
    Child.type = Types::Child
    ChildNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ChildNotFoundException.type = Types::ChildNotFoundException
    ChildType.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    ChildType.add_member(:organizational_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATIONAL_UNIT", traits: {"smithy.api#enumValue" => "ORGANIZATIONAL_UNIT"}))
    Children.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Child, name: "member"))
    CloseAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    CloseAccountRequest.type = Types::CloseAccountRequest
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ConflictException.type = Types::ConflictException
    ConstraintViolationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ConstraintViolationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintViolationExceptionReason, name: "Reason"))
    ConstraintViolationException.type = Types::ConstraintViolationException
    ConstraintViolationExceptionReason.add_member(:account_number_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_NUMBER_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "ACCOUNT_NUMBER_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:handshake_rate_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HANDSHAKE_RATE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "HANDSHAKE_RATE_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:ou_number_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OU_NUMBER_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "OU_NUMBER_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:ou_depth_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OU_DEPTH_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "OU_DEPTH_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:policy_number_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_NUMBER_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "POLICY_NUMBER_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:policy_content_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_CONTENT_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "POLICY_CONTENT_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:max_policy_type_attachment_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:min_policy_type_attachment_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:account_cannot_leave_organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_CANNOT_LEAVE_ORGANIZATION", traits: {"smithy.api#enumValue" => "ACCOUNT_CANNOT_LEAVE_ORGANIZATION"}))
    ConstraintViolationExceptionReason.add_member(:account_cannot_leave_without_eula, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA", traits: {"smithy.api#enumValue" => "ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA"}))
    ConstraintViolationExceptionReason.add_member(:account_cannot_leave_without_phone_verification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION", traits: {"smithy.api#enumValue" => "ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION"}))
    ConstraintViolationExceptionReason.add_member(:master_account_payment_instrument_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED", traits: {"smithy.api#enumValue" => "MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED"}))
    ConstraintViolationExceptionReason.add_member(:member_account_payment_instrument_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED", traits: {"smithy.api#enumValue" => "MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED"}))
    ConstraintViolationExceptionReason.add_member(:account_creation_rate_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:master_account_address_does_not_match_marketplace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE", traits: {"smithy.api#enumValue" => "MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE"}))
    ConstraintViolationExceptionReason.add_member(:master_account_missing_contact_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASTER_ACCOUNT_MISSING_CONTACT_INFO", traits: {"smithy.api#enumValue" => "MASTER_ACCOUNT_MISSING_CONTACT_INFO"}))
    ConstraintViolationExceptionReason.add_member(:master_account_not_govcloud_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED", traits: {"smithy.api#enumValue" => "MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED"}))
    ConstraintViolationExceptionReason.add_member(:organization_not_in_all_features_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION_NOT_IN_ALL_FEATURES_MODE", traits: {"smithy.api#enumValue" => "ORGANIZATION_NOT_IN_ALL_FEATURES_MODE"}))
    ConstraintViolationExceptionReason.add_member(:create_organization_in_billing_mode_unsupported_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION", traits: {"smithy.api#enumValue" => "CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION"}))
    ConstraintViolationExceptionReason.add_member(:email_verification_code_expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_VERIFICATION_CODE_EXPIRED", traits: {"smithy.api#enumValue" => "EMAIL_VERIFICATION_CODE_EXPIRED"}))
    ConstraintViolationExceptionReason.add_member(:wait_period_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAIT_PERIOD_ACTIVE", traits: {"smithy.api#enumValue" => "WAIT_PERIOD_ACTIVE"}))
    ConstraintViolationExceptionReason.add_member(:max_tag_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_TAG_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "MAX_TAG_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:tag_policy_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAG_POLICY_VIOLATION", traits: {"smithy.api#enumValue" => "TAG_POLICY_VIOLATION"}))
    ConstraintViolationExceptionReason.add_member(:max_delegated_administrators_for_service_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:cannot_register_master_as_delegated_administrator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR", traits: {"smithy.api#enumValue" => "CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR"}))
    ConstraintViolationExceptionReason.add_member(:cannot_remove_delegated_administrator_from_org, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG", traits: {"smithy.api#enumValue" => "CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG"}))
    ConstraintViolationExceptionReason.add_member(:delegated_administrator_exists_for_this_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE", traits: {"smithy.api#enumValue" => "DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE"}))
    ConstraintViolationExceptionReason.add_member(:policy_type_enabled_for_this_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_TYPE_ENABLED_FOR_THIS_SERVICE", traits: {"smithy.api#enumValue" => "POLICY_TYPE_ENABLED_FOR_THIS_SERVICE"}))
    ConstraintViolationExceptionReason.add_member(:master_account_missing_business_license, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE", traits: {"smithy.api#enumValue" => "MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE"}))
    ConstraintViolationExceptionReason.add_member(:cannot_close_management_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_CLOSE_MANAGEMENT_ACCOUNT", traits: {"smithy.api#enumValue" => "CANNOT_CLOSE_MANAGEMENT_ACCOUNT"}))
    ConstraintViolationExceptionReason.add_member(:close_account_quota_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSE_ACCOUNT_QUOTA_EXCEEDED", traits: {"smithy.api#enumValue" => "CLOSE_ACCOUNT_QUOTA_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:close_account_requests_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:service_access_not_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_ACCESS_NOT_ENABLED", traits: {"smithy.api#enumValue" => "SERVICE_ACCESS_NOT_ENABLED"}))
    ConstraintViolationExceptionReason.add_member(:invalid_payment_instrument, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PAYMENT_INSTRUMENT", traits: {"smithy.api#enumValue" => "INVALID_PAYMENT_INSTRUMENT"}))
    ConstraintViolationExceptionReason.add_member(:account_creation_not_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_CREATION_NOT_COMPLETE", traits: {"smithy.api#enumValue" => "ACCOUNT_CREATION_NOT_COMPLETE"}))
    ConstraintViolationExceptionReason.add_member(:cannot_register_suspended_account_as_delegated_administrator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_REGISTER_SUSPENDED_ACCOUNT_AS_DELEGATED_ADMINISTRATOR", traits: {"smithy.api#enumValue" => "CANNOT_REGISTER_SUSPENDED_ACCOUNT_AS_DELEGATED_ADMINISTRATOR"}))
    ConstraintViolationExceptionReason.add_member(:all_features_migration_organization_size_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_FEATURES_MIGRATION_ORGANIZATION_SIZE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "ALL_FEATURES_MIGRATION_ORGANIZATION_SIZE_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:responsibility_transfer_max_level_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSIBILITY_TRANSFER_MAX_LEVEL_VIOLATION", traits: {"smithy.api#enumValue" => "RESPONSIBILITY_TRANSFER_MAX_LEVEL_VIOLATION"}))
    ConstraintViolationExceptionReason.add_member(:responsibility_transfer_max_inbound_quota_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSIBILITY_TRANSFER_MAX_INBOUND_QUOTA_VIOLATION", traits: {"smithy.api#enumValue" => "RESPONSIBILITY_TRANSFER_MAX_INBOUND_QUOTA_VIOLATION"}))
    ConstraintViolationExceptionReason.add_member(:responsibility_transfer_max_outbound_quota_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSIBILITY_TRANSFER_MAX_OUTBOUND_QUOTA_VIOLATION", traits: {"smithy.api#enumValue" => "RESPONSIBILITY_TRANSFER_MAX_OUTBOUND_QUOTA_VIOLATION"}))
    ConstraintViolationExceptionReason.add_member(:responsibility_transfer_max_transfers_quota_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSIBILITY_TRANSFER_MAX_TRANSFERS_QUOTA_VIOLATION", traits: {"smithy.api#enumValue" => "RESPONSIBILITY_TRANSFER_MAX_TRANSFERS_QUOTA_VIOLATION"}))
    ConstraintViolationExceptionReason.add_member(:active_responsibility_transfer_process, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE_RESPONSIBILITY_TRANSFER_PROCESS", traits: {"smithy.api#enumValue" => "ACTIVE_RESPONSIBILITY_TRANSFER_PROCESS"}))
    ConstraintViolationExceptionReason.add_member(:transfer_responsibility_target_deletion_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSFER_RESPONSIBILITY_TARGET_DELETION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "TRANSFER_RESPONSIBILITY_TARGET_DELETION_IN_PROGRESS"}))
    ConstraintViolationExceptionReason.add_member(:transfer_responsibility_source_deletion_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSFER_RESPONSIBILITY_SOURCE_DELETION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "TRANSFER_RESPONSIBILITY_SOURCE_DELETION_IN_PROGRESS"}))
    ConstraintViolationExceptionReason.add_member(:unsupported_pricing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_PRICING", traits: {"smithy.api#enumValue" => "UNSUPPORTED_PRICING"}))
    ConstraintViolationExceptionReason.add_member(:unmet_billing_prerequisite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNMET_BILLING_PREREQUISITE", traits: {"smithy.api#enumValue" => "UNMET_BILLING_PREREQUISITE"}))
    ConstraintViolationExceptionReason.add_member(:account_not_active_for_transfer_responsibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_NOT_ACTIVE_FOR_TRANSFER_RESPONSIBILITY", traits: {"smithy.api#enumValue" => "ACCOUNT_NOT_ACTIVE_FOR_TRANSFER_RESPONSIBILITY"}))
    ConstraintViolationExceptionReason.add_member(:transfer_responsibility_update_not_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSFER_RESPONSIBILITY_UPDATE_NOT_ALLOWED", traits: {"smithy.api#enumValue" => "TRANSFER_RESPONSIBILITY_UPDATE_NOT_ALLOWED"}))
    CreateAccountFailureReason.add_member(:account_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "ACCOUNT_LIMIT_EXCEEDED"}))
    CreateAccountFailureReason.add_member(:email_already_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_ALREADY_EXISTS", traits: {"smithy.api#enumValue" => "EMAIL_ALREADY_EXISTS"}))
    CreateAccountFailureReason.add_member(:invalid_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ADDRESS", traits: {"smithy.api#enumValue" => "INVALID_ADDRESS"}))
    CreateAccountFailureReason.add_member(:invalid_email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_EMAIL", traits: {"smithy.api#enumValue" => "INVALID_EMAIL"}))
    CreateAccountFailureReason.add_member(:concurrent_account_modification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONCURRENT_ACCOUNT_MODIFICATION", traits: {"smithy.api#enumValue" => "CONCURRENT_ACCOUNT_MODIFICATION"}))
    CreateAccountFailureReason.add_member(:internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_FAILURE", traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    CreateAccountFailureReason.add_member(:govcloud_account_already_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOVCLOUD_ACCOUNT_ALREADY_EXISTS", traits: {"smithy.api#enumValue" => "GOVCLOUD_ACCOUNT_ALREADY_EXISTS"}))
    CreateAccountFailureReason.add_member(:missing_business_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_BUSINESS_VALIDATION", traits: {"smithy.api#enumValue" => "MISSING_BUSINESS_VALIDATION"}))
    CreateAccountFailureReason.add_member(:failed_business_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_BUSINESS_VALIDATION", traits: {"smithy.api#enumValue" => "FAILED_BUSINESS_VALIDATION"}))
    CreateAccountFailureReason.add_member(:pending_business_validatio_nv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_BUSINESS_VALIDATIONv", traits: {"smithy.api#enumValue" => "PENDING_BUSINESS_VALIDATION"}))
    CreateAccountFailureReason.add_member(:invalid_identity_for_business_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION", traits: {"smithy.api#enumValue" => "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION"}))
    CreateAccountFailureReason.add_member(:unknown_business_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_BUSINESS_VALIDATION", traits: {"smithy.api#enumValue" => "UNKNOWN_BUSINESS_VALIDATION"}))
    CreateAccountFailureReason.add_member(:missing_payment_instrument, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_PAYMENT_INSTRUMENT", traits: {"smithy.api#enumValue" => "MISSING_PAYMENT_INSTRUMENT"}))
    CreateAccountFailureReason.add_member(:invalid_payment_instrument, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PAYMENT_INSTRUMENT", traits: {"smithy.api#enumValue" => "INVALID_PAYMENT_INSTRUMENT"}))
    CreateAccountFailureReason.add_member(:update_existing_resource_policy_with_tags_not_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED", traits: {"smithy.api#enumValue" => "UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED"}))
    CreateAccountRequest.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "Email", traits: {"smithy.api#required" => {}}))
    CreateAccountRequest.add_member(:account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAccountName, name: "AccountName", traits: {"smithy.api#required" => {}}))
    CreateAccountRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleName, name: "RoleName"))
    CreateAccountRequest.add_member(:iam_user_access_to_billing, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMUserAccessToBilling, name: "IamUserAccessToBilling"))
    CreateAccountRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateAccountRequest.type = Types::CreateAccountRequest
    CreateAccountResponse.add_member(:create_account_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAccountStatus, name: "CreateAccountStatus"))
    CreateAccountResponse.type = Types::CreateAccountResponse
    CreateAccountState.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CreateAccountState.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    CreateAccountState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CreateAccountStates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAccountState, name: "member"))
    CreateAccountStatus.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAccountRequestId, name: "Id"))
    CreateAccountStatus.add_member(:account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAccountName, name: "AccountName"))
    CreateAccountStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAccountState, name: "State"))
    CreateAccountStatus.add_member(:requested_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RequestedTimestamp"))
    CreateAccountStatus.add_member(:completed_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CompletedTimestamp"))
    CreateAccountStatus.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    CreateAccountStatus.add_member(:gov_cloud_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "GovCloudAccountId"))
    CreateAccountStatus.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAccountFailureReason, name: "FailureReason"))
    CreateAccountStatus.type = Types::CreateAccountStatus
    CreateAccountStatusNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    CreateAccountStatusNotFoundException.type = Types::CreateAccountStatusNotFoundException
    CreateAccountStatuses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAccountStatus, name: "member"))
    CreateGovCloudAccountRequest.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "Email", traits: {"smithy.api#required" => {}}))
    CreateGovCloudAccountRequest.add_member(:account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAccountName, name: "AccountName", traits: {"smithy.api#required" => {}}))
    CreateGovCloudAccountRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleName, name: "RoleName"))
    CreateGovCloudAccountRequest.add_member(:iam_user_access_to_billing, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMUserAccessToBilling, name: "IamUserAccessToBilling"))
    CreateGovCloudAccountRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateGovCloudAccountRequest.type = Types::CreateGovCloudAccountRequest
    CreateGovCloudAccountResponse.add_member(:create_account_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAccountStatus, name: "CreateAccountStatus"))
    CreateGovCloudAccountResponse.type = Types::CreateGovCloudAccountResponse
    CreateOrganizationRequest.add_member(:feature_set, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationFeatureSet, name: "FeatureSet"))
    CreateOrganizationRequest.type = Types::CreateOrganizationRequest
    CreateOrganizationResponse.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: Organization, name: "Organization"))
    CreateOrganizationResponse.type = Types::CreateOrganizationResponse
    CreateOrganizationalUnitRequest.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentId, name: "ParentId", traits: {"smithy.api#required" => {}}))
    CreateOrganizationalUnitRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateOrganizationalUnitRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateOrganizationalUnitRequest.type = Types::CreateOrganizationalUnitRequest
    CreateOrganizationalUnitResponse.add_member(:organizational_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnit, name: "OrganizationalUnit"))
    CreateOrganizationalUnitResponse.type = Types::CreateOrganizationalUnitResponse
    CreatePolicyRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyContent, name: "Content", traits: {"smithy.api#required" => {}}))
    CreatePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, name: "Description", traits: {"smithy.api#required" => {}}))
    CreatePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreatePolicyRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "Type", traits: {"smithy.api#required" => {}}))
    CreatePolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreatePolicyRequest.type = Types::CreatePolicyRequest
    CreatePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy"))
    CreatePolicyResponse.type = Types::CreatePolicyResponse
    DeclineHandshakeRequest.add_member(:handshake_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeId, name: "HandshakeId", traits: {"smithy.api#required" => {}}))
    DeclineHandshakeRequest.type = Types::DeclineHandshakeRequest
    DeclineHandshakeResponse.add_member(:handshake, ::Smithy::Schema::Shapes::MemberShape.new(target: Handshake, name: "Handshake"))
    DeclineHandshakeResponse.type = Types::DeclineHandshakeResponse
    DelegatedAdministrator.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "Id"))
    DelegatedAdministrator.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountArn, name: "Arn"))
    DelegatedAdministrator.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "Email"))
    DelegatedAdministrator.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountName, name: "Name"))
    DelegatedAdministrator.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountStatus, name: "Status"))
    DelegatedAdministrator.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountState, name: "State"))
    DelegatedAdministrator.add_member(:joined_method, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountJoinedMethod, name: "JoinedMethod"))
    DelegatedAdministrator.add_member(:joined_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "JoinedTimestamp"))
    DelegatedAdministrator.add_member(:delegation_enabled_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "DelegationEnabledDate"))
    DelegatedAdministrator.type = Types::DelegatedAdministrator
    DelegatedAdministrators.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DelegatedAdministrator, name: "member"))
    DelegatedService.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, name: "ServicePrincipal"))
    DelegatedService.add_member(:delegation_enabled_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "DelegationEnabledDate"))
    DelegatedService.type = Types::DelegatedService
    DelegatedServices.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DelegatedService, name: "member"))
    DeleteOrganizationalUnitRequest.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitId, name: "OrganizationalUnitId", traits: {"smithy.api#required" => {}}))
    DeleteOrganizationalUnitRequest.type = Types::DeleteOrganizationalUnitRequest
    DeletePolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId", traits: {"smithy.api#required" => {}}))
    DeletePolicyRequest.type = Types::DeletePolicyRequest
    DeregisterDelegatedAdministratorRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    DeregisterDelegatedAdministratorRequest.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, name: "ServicePrincipal", traits: {"smithy.api#required" => {}}))
    DeregisterDelegatedAdministratorRequest.type = Types::DeregisterDelegatedAdministratorRequest
    DescribeAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    DescribeAccountRequest.type = Types::DescribeAccountRequest
    DescribeAccountResponse.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "Account"))
    DescribeAccountResponse.type = Types::DescribeAccountResponse
    DescribeCreateAccountStatusRequest.add_member(:create_account_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAccountRequestId, name: "CreateAccountRequestId", traits: {"smithy.api#required" => {}}))
    DescribeCreateAccountStatusRequest.type = Types::DescribeCreateAccountStatusRequest
    DescribeCreateAccountStatusResponse.add_member(:create_account_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAccountStatus, name: "CreateAccountStatus"))
    DescribeCreateAccountStatusResponse.type = Types::DescribeCreateAccountStatusResponse
    DescribeEffectivePolicyRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectivePolicyType, name: "PolicyType", traits: {"smithy.api#required" => {}}))
    DescribeEffectivePolicyRequest.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTargetId, name: "TargetId"))
    DescribeEffectivePolicyRequest.type = Types::DescribeEffectivePolicyRequest
    DescribeEffectivePolicyResponse.add_member(:effective_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectivePolicy, name: "EffectivePolicy"))
    DescribeEffectivePolicyResponse.type = Types::DescribeEffectivePolicyResponse
    DescribeHandshakeRequest.add_member(:handshake_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeId, name: "HandshakeId", traits: {"smithy.api#required" => {}}))
    DescribeHandshakeRequest.type = Types::DescribeHandshakeRequest
    DescribeHandshakeResponse.add_member(:handshake, ::Smithy::Schema::Shapes::MemberShape.new(target: Handshake, name: "Handshake"))
    DescribeHandshakeResponse.type = Types::DescribeHandshakeResponse
    DescribeOrganizationResponse.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: Organization, name: "Organization"))
    DescribeOrganizationResponse.type = Types::DescribeOrganizationResponse
    DescribeOrganizationalUnitRequest.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitId, name: "OrganizationalUnitId", traits: {"smithy.api#required" => {}}))
    DescribeOrganizationalUnitRequest.type = Types::DescribeOrganizationalUnitRequest
    DescribeOrganizationalUnitResponse.add_member(:organizational_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnit, name: "OrganizationalUnit"))
    DescribeOrganizationalUnitResponse.type = Types::DescribeOrganizationalUnitResponse
    DescribePolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId", traits: {"smithy.api#required" => {}}))
    DescribePolicyRequest.type = Types::DescribePolicyRequest
    DescribePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy"))
    DescribePolicyResponse.type = Types::DescribePolicyResponse
    DescribeResourcePolicyResponse.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "ResourcePolicy"))
    DescribeResourcePolicyResponse.type = Types::DescribeResourcePolicyResponse
    DescribeResponsibilityTransferRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferId, name: "Id", traits: {"smithy.api#required" => {}}))
    DescribeResponsibilityTransferRequest.type = Types::DescribeResponsibilityTransferRequest
    DescribeResponsibilityTransferResponse.add_member(:responsibility_transfer, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransfer, name: "ResponsibilityTransfer"))
    DescribeResponsibilityTransferResponse.type = Types::DescribeResponsibilityTransferResponse
    DestinationParentNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DestinationParentNotFoundException.type = Types::DestinationParentNotFoundException
    DetachPolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId", traits: {"smithy.api#required" => {}}))
    DetachPolicyRequest.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTargetId, name: "TargetId", traits: {"smithy.api#required" => {}}))
    DetachPolicyRequest.type = Types::DetachPolicyRequest
    DisableAWSServiceAccessRequest.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, name: "ServicePrincipal", traits: {"smithy.api#required" => {}}))
    DisableAWSServiceAccessRequest.type = Types::DisableAWSServiceAccessRequest
    DisablePolicyTypeRequest.add_member(:root_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RootId, name: "RootId", traits: {"smithy.api#required" => {}}))
    DisablePolicyTypeRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "PolicyType", traits: {"smithy.api#required" => {}}))
    DisablePolicyTypeRequest.type = Types::DisablePolicyTypeRequest
    DisablePolicyTypeResponse.add_member(:root, ::Smithy::Schema::Shapes::MemberShape.new(target: Root, name: "Root"))
    DisablePolicyTypeResponse.type = Types::DisablePolicyTypeResponse
    DuplicateAccountException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DuplicateAccountException.type = Types::DuplicateAccountException
    DuplicateHandshakeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DuplicateHandshakeException.type = Types::DuplicateHandshakeException
    DuplicateOrganizationalUnitException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DuplicateOrganizationalUnitException.type = Types::DuplicateOrganizationalUnitException
    DuplicatePolicyAttachmentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DuplicatePolicyAttachmentException.type = Types::DuplicatePolicyAttachmentException
    DuplicatePolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DuplicatePolicyException.type = Types::DuplicatePolicyException
    EffectivePolicy.add_member(:policy_content, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyContent, name: "PolicyContent"))
    EffectivePolicy.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTimestamp"))
    EffectivePolicy.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTargetId, name: "TargetId"))
    EffectivePolicy.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectivePolicyType, name: "PolicyType"))
    EffectivePolicy.type = Types::EffectivePolicy
    EffectivePolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    EffectivePolicyNotFoundException.type = Types::EffectivePolicyNotFoundException
    EffectivePolicyType.add_member(:tag_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAG_POLICY", traits: {"smithy.api#enumValue" => "TAG_POLICY"}))
    EffectivePolicyType.add_member(:backup_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_POLICY", traits: {"smithy.api#enumValue" => "BACKUP_POLICY"}))
    EffectivePolicyType.add_member(:aiservices_opt_out_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AISERVICES_OPT_OUT_POLICY", traits: {"smithy.api#enumValue" => "AISERVICES_OPT_OUT_POLICY"}))
    EffectivePolicyType.add_member(:chatbot_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHATBOT_POLICY", traits: {"smithy.api#enumValue" => "CHATBOT_POLICY"}))
    EffectivePolicyType.add_member(:declarative_policy_ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DECLARATIVE_POLICY_EC2", traits: {"smithy.api#enumValue" => "DECLARATIVE_POLICY_EC2"}))
    EffectivePolicyType.add_member(:securityhub_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITYHUB_POLICY", traits: {"smithy.api#enumValue" => "SECURITYHUB_POLICY"}))
    EffectivePolicyType.add_member(:inspector_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSPECTOR_POLICY", traits: {"smithy.api#enumValue" => "INSPECTOR_POLICY"}))
    EffectivePolicyType.add_member(:upgrade_rollout_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPGRADE_ROLLOUT_POLICY", traits: {"smithy.api#enumValue" => "UPGRADE_ROLLOUT_POLICY"}))
    EffectivePolicyType.add_member(:bedrock_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_POLICY", traits: {"smithy.api#enumValue" => "BEDROCK_POLICY"}))
    EffectivePolicyType.add_member(:s3_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_POLICY", traits: {"smithy.api#enumValue" => "S3_POLICY"}))
    EffectivePolicyType.add_member(:network_security_director_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_SECURITY_DIRECTOR_POLICY", traits: {"smithy.api#enumValue" => "NETWORK_SECURITY_DIRECTOR_POLICY"}))
    EffectivePolicyType.add_member(:guardduty_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GUARDDUTY_POLICY", traits: {"smithy.api#enumValue" => "GUARDDUTY_POLICY"}))
    EffectivePolicyValidationError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    EffectivePolicyValidationError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    EffectivePolicyValidationError.add_member(:path_to_error, ::Smithy::Schema::Shapes::MemberShape.new(target: PathToError, name: "PathToError"))
    EffectivePolicyValidationError.add_member(:contributing_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyIds, name: "ContributingPolicies"))
    EffectivePolicyValidationError.type = Types::EffectivePolicyValidationError
    EffectivePolicyValidationErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectivePolicyValidationError, name: "member"))
    EnableAWSServiceAccessRequest.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, name: "ServicePrincipal", traits: {"smithy.api#required" => {}}))
    EnableAWSServiceAccessRequest.type = Types::EnableAWSServiceAccessRequest
    EnableAllFeaturesRequest.type = Types::EnableAllFeaturesRequest
    EnableAllFeaturesResponse.add_member(:handshake, ::Smithy::Schema::Shapes::MemberShape.new(target: Handshake, name: "Handshake"))
    EnableAllFeaturesResponse.type = Types::EnableAllFeaturesResponse
    EnablePolicyTypeRequest.add_member(:root_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RootId, name: "RootId", traits: {"smithy.api#required" => {}}))
    EnablePolicyTypeRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "PolicyType", traits: {"smithy.api#required" => {}}))
    EnablePolicyTypeRequest.type = Types::EnablePolicyTypeRequest
    EnablePolicyTypeResponse.add_member(:root, ::Smithy::Schema::Shapes::MemberShape.new(target: Root, name: "Root"))
    EnablePolicyTypeResponse.type = Types::EnablePolicyTypeResponse
    EnabledServicePrincipal.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, name: "ServicePrincipal"))
    EnabledServicePrincipal.add_member(:date_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "DateEnabled"))
    EnabledServicePrincipal.type = Types::EnabledServicePrincipal
    EnabledServicePrincipals.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledServicePrincipal, name: "member"))
    FinalizingOrganizationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    FinalizingOrganizationException.type = Types::FinalizingOrganizationException
    Handshake.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeId, name: "Id"))
    Handshake.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeArn, name: "Arn"))
    Handshake.add_member(:parties, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeParties, name: "Parties"))
    Handshake.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeState, name: "State"))
    Handshake.add_member(:requested_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RequestedTimestamp"))
    Handshake.add_member(:expiration_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpirationTimestamp"))
    Handshake.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionType, name: "Action"))
    Handshake.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeResources, name: "Resources"))
    Handshake.type = Types::Handshake
    HandshakeAlreadyInStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    HandshakeAlreadyInStateException.type = Types::HandshakeAlreadyInStateException
    HandshakeConstraintViolationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    HandshakeConstraintViolationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeConstraintViolationExceptionReason, name: "Reason"))
    HandshakeConstraintViolationException.type = Types::HandshakeConstraintViolationException
    HandshakeConstraintViolationExceptionReason.add_member(:account_number_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_NUMBER_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "ACCOUNT_NUMBER_LIMIT_EXCEEDED"}))
    HandshakeConstraintViolationExceptionReason.add_member(:handshake_rate_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HANDSHAKE_RATE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "HANDSHAKE_RATE_LIMIT_EXCEEDED"}))
    HandshakeConstraintViolationExceptionReason.add_member(:already_in_an_organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALREADY_IN_AN_ORGANIZATION", traits: {"smithy.api#enumValue" => "ALREADY_IN_AN_ORGANIZATION"}))
    HandshakeConstraintViolationExceptionReason.add_member(:organization_already_has_all_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION_ALREADY_HAS_ALL_FEATURES", traits: {"smithy.api#enumValue" => "ORGANIZATION_ALREADY_HAS_ALL_FEATURES"}))
    HandshakeConstraintViolationExceptionReason.add_member(:organization_is_already_pending_all_features_migration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION", traits: {"smithy.api#enumValue" => "ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION"}))
    HandshakeConstraintViolationExceptionReason.add_member(:invite_disabled_during_enable_all_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES", traits: {"smithy.api#enumValue" => "INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES"}))
    HandshakeConstraintViolationExceptionReason.add_member(:payment_instrument_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAYMENT_INSTRUMENT_REQUIRED", traits: {"smithy.api#enumValue" => "PAYMENT_INSTRUMENT_REQUIRED"}))
    HandshakeConstraintViolationExceptionReason.add_member(:organization_from_different_seller_of_record, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD", traits: {"smithy.api#enumValue" => "ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD"}))
    HandshakeConstraintViolationExceptionReason.add_member(:organization_membership_change_rate_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED"}))
    HandshakeConstraintViolationExceptionReason.add_member(:management_account_email_not_verified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGEMENT_ACCOUNT_EMAIL_NOT_VERIFIED", traits: {"smithy.api#enumValue" => "MANAGEMENT_ACCOUNT_EMAIL_NOT_VERIFIED"}))
    HandshakeConstraintViolationExceptionReason.add_member(:responsibility_transfer_already_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSIBILITY_TRANSFER_ALREADY_EXISTS", traits: {"smithy.api#enumValue" => "RESPONSIBILITY_TRANSFER_ALREADY_EXISTS"}))
    HandshakeConstraintViolationExceptionReason.add_member(:source_and_target_cannot_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_AND_TARGET_CANNOT_MATCH", traits: {"smithy.api#enumValue" => "SOURCE_AND_TARGET_CANNOT_MATCH"}))
    HandshakeConstraintViolationExceptionReason.add_member(:unused_prepayment_balance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNUSED_PREPAYMENT_BALANCE", traits: {"smithy.api#enumValue" => "UNUSED_PREPAYMENT_BALANCE"}))
    HandshakeConstraintViolationExceptionReason.add_member(:legacy_permissions_still_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEGACY_PERMISSIONS_STILL_IN_USE", traits: {"smithy.api#enumValue" => "LEGACY_PERMISSIONS_STILL_IN_USE"}))
    HandshakeConstraintViolationExceptionReason.add_member(:past_due_invoice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAST_DUE_INVOICE", traits: {"smithy.api#enumValue" => "PAST_DUE_INVOICE"}))
    HandshakeConstraintViolationExceptionReason.add_member(:target_account_validation_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_ACCOUNT_VALIDATION_FAILURE", traits: {"smithy.api#enumValue" => "TARGET_ACCOUNT_VALIDATION_FAILURE"}))
    HandshakeFilter.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionType, name: "ActionType"))
    HandshakeFilter.add_member(:parent_handshake_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeId, name: "ParentHandshakeId"))
    HandshakeFilter.type = Types::HandshakeFilter
    HandshakeNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    HandshakeNotFoundException.type = Types::HandshakeNotFoundException
    HandshakeParties.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeParty, name: "member"))
    HandshakeParty.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakePartyId, name: "Id", traits: {"smithy.api#required" => {}}))
    HandshakeParty.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakePartyType, name: "Type", traits: {"smithy.api#required" => {}}))
    HandshakeParty.type = Types::HandshakeParty
    HandshakePartyType.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    HandshakePartyType.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION", traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    HandshakePartyType.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL", traits: {"smithy.api#enumValue" => "EMAIL"}))
    HandshakeResource.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeResourceValue, name: "Value"))
    HandshakeResource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeResourceType, name: "Type"))
    HandshakeResource.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeResources, name: "Resources"))
    HandshakeResource.type = Types::HandshakeResource
    HandshakeResourceType.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    HandshakeResourceType.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION", traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    HandshakeResourceType.add_member(:organization_feature_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION_FEATURE_SET", traits: {"smithy.api#enumValue" => "ORGANIZATION_FEATURE_SET"}))
    HandshakeResourceType.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL", traits: {"smithy.api#enumValue" => "EMAIL"}))
    HandshakeResourceType.add_member(:master_email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASTER_EMAIL", traits: {"smithy.api#enumValue" => "MASTER_EMAIL"}))
    HandshakeResourceType.add_member(:master_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASTER_NAME", traits: {"smithy.api#enumValue" => "MASTER_NAME"}))
    HandshakeResourceType.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOTES", traits: {"smithy.api#enumValue" => "NOTES"}))
    HandshakeResourceType.add_member(:parent_handshake, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARENT_HANDSHAKE", traits: {"smithy.api#enumValue" => "PARENT_HANDSHAKE"}))
    HandshakeResourceType.add_member(:responsibility_transfer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSIBILITY_TRANSFER", traits: {"smithy.api#enumValue" => "RESPONSIBILITY_TRANSFER"}))
    HandshakeResourceType.add_member(:transfer_start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSFER_START_TIMESTAMP", traits: {"smithy.api#enumValue" => "TRANSFER_START_TIMESTAMP"}))
    HandshakeResourceType.add_member(:transfer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSFER_TYPE", traits: {"smithy.api#enumValue" => "TRANSFER_TYPE"}))
    HandshakeResourceType.add_member(:management_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGEMENT_ACCOUNT", traits: {"smithy.api#enumValue" => "MANAGEMENT_ACCOUNT"}))
    HandshakeResourceType.add_member(:management_email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGEMENT_EMAIL", traits: {"smithy.api#enumValue" => "MANAGEMENT_EMAIL"}))
    HandshakeResourceType.add_member(:management_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGEMENT_NAME", traits: {"smithy.api#enumValue" => "MANAGEMENT_NAME"}))
    HandshakeResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeResource, name: "member"))
    HandshakeState.add_member(:requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUESTED", traits: {"smithy.api#enumValue" => "REQUESTED"}))
    HandshakeState.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    HandshakeState.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    HandshakeState.add_member(:accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCEPTED", traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    HandshakeState.add_member(:declined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DECLINED", traits: {"smithy.api#enumValue" => "DECLINED"}))
    HandshakeState.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    Handshakes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Handshake, name: "member"))
    IAMUserAccessToBilling.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    IAMUserAccessToBilling.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    InvalidHandshakeTransitionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidHandshakeTransitionException.type = Types::InvalidHandshakeTransitionException
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidInputException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidInputExceptionReason, name: "Reason"))
    InvalidInputException.type = Types::InvalidInputException
    InvalidInputExceptionReason.add_member(:invalid_party_type_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PARTY_TYPE_TARGET", traits: {"smithy.api#enumValue" => "INVALID_PARTY_TYPE_TARGET"}))
    InvalidInputExceptionReason.add_member(:invalid_syntax_organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SYNTAX_ORGANIZATION", traits: {"smithy.api#enumValue" => "INVALID_SYNTAX_ORGANIZATION_ARN"}))
    InvalidInputExceptionReason.add_member(:invalid_syntax_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SYNTAX_POLICY", traits: {"smithy.api#enumValue" => "INVALID_SYNTAX_POLICY_ID"}))
    InvalidInputExceptionReason.add_member(:invalid_enum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ENUM", traits: {"smithy.api#enumValue" => "INVALID_ENUM"}))
    InvalidInputExceptionReason.add_member(:invalid_enum_policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ENUM_POLICY_TYPE", traits: {"smithy.api#enumValue" => "INVALID_ENUM_POLICY_TYPE"}))
    InvalidInputExceptionReason.add_member(:invalid_list_member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_LIST_MEMBER", traits: {"smithy.api#enumValue" => "INVALID_LIST_MEMBER"}))
    InvalidInputExceptionReason.add_member(:max_length_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_LENGTH_EXCEEDED", traits: {"smithy.api#enumValue" => "MAX_LENGTH_EXCEEDED"}))
    InvalidInputExceptionReason.add_member(:max_value_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_VALUE_EXCEEDED", traits: {"smithy.api#enumValue" => "MAX_VALUE_EXCEEDED"}))
    InvalidInputExceptionReason.add_member(:min_length_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIN_LENGTH_EXCEEDED", traits: {"smithy.api#enumValue" => "MIN_LENGTH_EXCEEDED"}))
    InvalidInputExceptionReason.add_member(:min_value_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIN_VALUE_EXCEEDED", traits: {"smithy.api#enumValue" => "MIN_VALUE_EXCEEDED"}))
    InvalidInputExceptionReason.add_member(:immutable_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMMUTABLE_POLICY", traits: {"smithy.api#enumValue" => "IMMUTABLE_POLICY"}))
    InvalidInputExceptionReason.add_member(:invalid_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PATTERN", traits: {"smithy.api#enumValue" => "INVALID_PATTERN"}))
    InvalidInputExceptionReason.add_member(:invalid_pattern_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PATTERN_TARGET_ID", traits: {"smithy.api#enumValue" => "INVALID_PATTERN_TARGET_ID"}))
    InvalidInputExceptionReason.add_member(:input_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPUT_REQUIRED", traits: {"smithy.api#enumValue" => "INPUT_REQUIRED"}))
    InvalidInputExceptionReason.add_member(:invalid_pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PAGINATION_TOKEN", traits: {"smithy.api#enumValue" => "INVALID_NEXT_TOKEN"}))
    InvalidInputExceptionReason.add_member(:max_filter_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_FILTER_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "MAX_LIMIT_EXCEEDED_FILTER"}))
    InvalidInputExceptionReason.add_member(:moving_account_between_different_roots, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS", traits: {"smithy.api#enumValue" => "MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS"}))
    InvalidInputExceptionReason.add_member(:invalid_full_name_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_FULL_NAME_TARGET", traits: {"smithy.api#enumValue" => "INVALID_FULL_NAME_TARGET"}))
    InvalidInputExceptionReason.add_member(:unrecognized_service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNRECOGNIZED_SERVICE_PRINCIPAL", traits: {"smithy.api#enumValue" => "UNRECOGNIZED_SERVICE_PRINCIPAL"}))
    InvalidInputExceptionReason.add_member(:invalid_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ROLE_NAME", traits: {"smithy.api#enumValue" => "INVALID_ROLE_NAME"}))
    InvalidInputExceptionReason.add_member(:invalid_system_tags_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SYSTEM_TAGS_PARAMETER", traits: {"smithy.api#enumValue" => "INVALID_SYSTEM_TAGS_PARAMETER"}))
    InvalidInputExceptionReason.add_member(:duplicate_tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_TAG_KEY", traits: {"smithy.api#enumValue" => "DUPLICATE_TAG_KEY"}))
    InvalidInputExceptionReason.add_member(:target_not_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_NOT_SUPPORTED", traits: {"smithy.api#enumValue" => "TARGET_NOT_SUPPORTED"}))
    InvalidInputExceptionReason.add_member(:invalid_email_address_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_EMAIL_ADDRESS_TARGET", traits: {"smithy.api#enumValue" => "INVALID_EMAIL_ADDRESS_TARGET"}))
    InvalidInputExceptionReason.add_member(:invalid_resource_policy_json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_RESOURCE_POLICY_JSON", traits: {"smithy.api#enumValue" => "INVALID_RESOURCE_POLICY_JSON"}))
    InvalidInputExceptionReason.add_member(:invalid_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PRINCIPAL", traits: {"smithy.api#enumValue" => "INVALID_PRINCIPAL"}))
    InvalidInputExceptionReason.add_member(:unsupported_action_in_resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_ACTION_IN_RESOURCE_POLICY", traits: {"smithy.api#enumValue" => "UNSUPPORTED_ACTION_IN_RESOURCE_POLICY"}))
    InvalidInputExceptionReason.add_member(:unsupported_policy_type_in_resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_POLICY_TYPE_IN_RESOURCE_POLICY", traits: {"smithy.api#enumValue" => "UNSUPPORTED_POLICY_TYPE_IN_RESOURCE_POLICY"}))
    InvalidInputExceptionReason.add_member(:unsupported_resource_in_resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_RESOURCE_IN_RESOURCE_POLICY", traits: {"smithy.api#enumValue" => "UNSUPPORTED_RESOURCE_IN_RESOURCE_POLICY"}))
    InvalidInputExceptionReason.add_member(:non_detachable_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_DETACHABLE_POLICY", traits: {"smithy.api#enumValue" => "NON_DETACHABLE_POLICY"}))
    InvalidInputExceptionReason.add_member(:caller_required_field_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CALLER_REQUIRED_FIELD_MISSING", traits: {"smithy.api#enumValue" => "CALLER_REQUIRED_FIELD_MISSING"}))
    InvalidInputExceptionReason.add_member(:unsupported_action_in_responsibility_transfer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_ACTION_IN_RESPONSIBILITY_TRANSFER", traits: {"smithy.api#enumValue" => "UNSUPPORTED_ACTION_IN_RESPONSIBILITY_TRANSFER"}))
    InvalidInputExceptionReason.add_member(:start_date_not_beginning_of_month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_DATE_NOT_BEGINNING_OF_MONTH", traits: {"smithy.api#enumValue" => "START_DATE_NOT_BEGINNING_OF_MONTH"}))
    InvalidInputExceptionReason.add_member(:start_date_not_beginning_of_day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_DATE_NOT_BEGINNING_OF_DAY", traits: {"smithy.api#enumValue" => "START_DATE_NOT_BEGINNING_OF_DAY"}))
    InvalidInputExceptionReason.add_member(:start_date_too_early, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_DATE_TOO_EARLY", traits: {"smithy.api#enumValue" => "START_DATE_TOO_EARLY"}))
    InvalidInputExceptionReason.add_member(:start_date_too_late, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_DATE_TOO_LATE", traits: {"smithy.api#enumValue" => "START_DATE_TOO_LATE"}))
    InvalidInputExceptionReason.add_member(:invalid_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_START_DATE", traits: {"smithy.api#enumValue" => "INVALID_START_DATE"}))
    InvalidInputExceptionReason.add_member(:end_date_not_end_of_month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "END_DATE_NOT_END_OF_MONTH", traits: {"smithy.api#enumValue" => "END_DATE_NOT_END_OF_MONTH"}))
    InvalidInputExceptionReason.add_member(:end_date_too_early, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "END_DATE_TOO_EARLY", traits: {"smithy.api#enumValue" => "END_DATE_TOO_EARLY"}))
    InvalidInputExceptionReason.add_member(:end_date_too_late, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "END_DATE_TOO_LATE", traits: {"smithy.api#enumValue" => "END_DATE_TOO_LATE"}))
    InvalidInputExceptionReason.add_member(:invalid_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_END_DATE", traits: {"smithy.api#enumValue" => "INVALID_END_DATE"}))
    InvalidResponsibilityTransferTransitionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidResponsibilityTransferTransitionException.type = Types::InvalidResponsibilityTransferTransitionException
    InviteAccountToOrganizationRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeParty, name: "Target", traits: {"smithy.api#required" => {}}))
    InviteAccountToOrganizationRequest.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeNotes, name: "Notes"))
    InviteAccountToOrganizationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    InviteAccountToOrganizationRequest.type = Types::InviteAccountToOrganizationRequest
    InviteAccountToOrganizationResponse.add_member(:handshake, ::Smithy::Schema::Shapes::MemberShape.new(target: Handshake, name: "Handshake"))
    InviteAccountToOrganizationResponse.type = Types::InviteAccountToOrganizationResponse
    InviteOrganizationToTransferResponsibilityRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferType, name: "Type", traits: {"smithy.api#required" => {}}))
    InviteOrganizationToTransferResponsibilityRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeParty, name: "Target", traits: {"smithy.api#required" => {}}))
    InviteOrganizationToTransferResponsibilityRequest.add_member(:notes, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeNotes, name: "Notes"))
    InviteOrganizationToTransferResponsibilityRequest.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTimestamp", traits: {"smithy.api#required" => {}}))
    InviteOrganizationToTransferResponsibilityRequest.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferName, name: "SourceName", traits: {"smithy.api#required" => {}}))
    InviteOrganizationToTransferResponsibilityRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    InviteOrganizationToTransferResponsibilityRequest.type = Types::InviteOrganizationToTransferResponsibilityRequest
    InviteOrganizationToTransferResponsibilityResponse.add_member(:handshake, ::Smithy::Schema::Shapes::MemberShape.new(target: Handshake, name: "Handshake"))
    InviteOrganizationToTransferResponsibilityResponse.type = Types::InviteOrganizationToTransferResponsibilityResponse
    ListAWSServiceAccessForOrganizationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAWSServiceAccessForOrganizationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListAWSServiceAccessForOrganizationRequest.type = Types::ListAWSServiceAccessForOrganizationRequest
    ListAWSServiceAccessForOrganizationResponse.add_member(:enabled_service_principals, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledServicePrincipals, name: "EnabledServicePrincipals"))
    ListAWSServiceAccessForOrganizationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAWSServiceAccessForOrganizationResponse.type = Types::ListAWSServiceAccessForOrganizationResponse
    ListAccountsForParentRequest.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentId, name: "ParentId", traits: {"smithy.api#required" => {}}))
    ListAccountsForParentRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAccountsForParentRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListAccountsForParentRequest.type = Types::ListAccountsForParentRequest
    ListAccountsForParentResponse.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: Accounts, name: "Accounts"))
    ListAccountsForParentResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAccountsForParentResponse.type = Types::ListAccountsForParentResponse
    ListAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListAccountsRequest.type = Types::ListAccountsRequest
    ListAccountsResponse.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: Accounts, name: "Accounts"))
    ListAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAccountsResponse.type = Types::ListAccountsResponse
    ListAccountsWithInvalidEffectivePolicyRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectivePolicyType, name: "PolicyType", traits: {"smithy.api#required" => {}}))
    ListAccountsWithInvalidEffectivePolicyRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAccountsWithInvalidEffectivePolicyRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListAccountsWithInvalidEffectivePolicyRequest.type = Types::ListAccountsWithInvalidEffectivePolicyRequest
    ListAccountsWithInvalidEffectivePolicyResponse.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: Accounts, name: "Accounts"))
    ListAccountsWithInvalidEffectivePolicyResponse.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectivePolicyType, name: "PolicyType"))
    ListAccountsWithInvalidEffectivePolicyResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAccountsWithInvalidEffectivePolicyResponse.type = Types::ListAccountsWithInvalidEffectivePolicyResponse
    ListChildrenRequest.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentId, name: "ParentId", traits: {"smithy.api#required" => {}}))
    ListChildrenRequest.add_member(:child_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildType, name: "ChildType", traits: {"smithy.api#required" => {}}))
    ListChildrenRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListChildrenRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListChildrenRequest.type = Types::ListChildrenRequest
    ListChildrenResponse.add_member(:children, ::Smithy::Schema::Shapes::MemberShape.new(target: Children, name: "Children"))
    ListChildrenResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListChildrenResponse.type = Types::ListChildrenResponse
    ListCreateAccountStatusRequest.add_member(:states, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAccountStates, name: "States"))
    ListCreateAccountStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCreateAccountStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListCreateAccountStatusRequest.type = Types::ListCreateAccountStatusRequest
    ListCreateAccountStatusResponse.add_member(:create_account_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAccountStatuses, name: "CreateAccountStatuses"))
    ListCreateAccountStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCreateAccountStatusResponse.type = Types::ListCreateAccountStatusResponse
    ListDelegatedAdministratorsRequest.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, name: "ServicePrincipal"))
    ListDelegatedAdministratorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDelegatedAdministratorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListDelegatedAdministratorsRequest.type = Types::ListDelegatedAdministratorsRequest
    ListDelegatedAdministratorsResponse.add_member(:delegated_administrators, ::Smithy::Schema::Shapes::MemberShape.new(target: DelegatedAdministrators, name: "DelegatedAdministrators"))
    ListDelegatedAdministratorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDelegatedAdministratorsResponse.type = Types::ListDelegatedAdministratorsResponse
    ListDelegatedServicesForAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    ListDelegatedServicesForAccountRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDelegatedServicesForAccountRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListDelegatedServicesForAccountRequest.type = Types::ListDelegatedServicesForAccountRequest
    ListDelegatedServicesForAccountResponse.add_member(:delegated_services, ::Smithy::Schema::Shapes::MemberShape.new(target: DelegatedServices, name: "DelegatedServices"))
    ListDelegatedServicesForAccountResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDelegatedServicesForAccountResponse.type = Types::ListDelegatedServicesForAccountResponse
    ListEffectivePolicyValidationErrorsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    ListEffectivePolicyValidationErrorsRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectivePolicyType, name: "PolicyType", traits: {"smithy.api#required" => {}}))
    ListEffectivePolicyValidationErrorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEffectivePolicyValidationErrorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListEffectivePolicyValidationErrorsRequest.type = Types::ListEffectivePolicyValidationErrorsRequest
    ListEffectivePolicyValidationErrorsResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    ListEffectivePolicyValidationErrorsResponse.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectivePolicyType, name: "PolicyType"))
    ListEffectivePolicyValidationErrorsResponse.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "Path"))
    ListEffectivePolicyValidationErrorsResponse.add_member(:evaluation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EvaluationTimestamp"))
    ListEffectivePolicyValidationErrorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEffectivePolicyValidationErrorsResponse.add_member(:effective_policy_validation_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectivePolicyValidationErrors, name: "EffectivePolicyValidationErrors"))
    ListEffectivePolicyValidationErrorsResponse.type = Types::ListEffectivePolicyValidationErrorsResponse
    ListHandshakesForAccountRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeFilter, name: "Filter"))
    ListHandshakesForAccountRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListHandshakesForAccountRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListHandshakesForAccountRequest.type = Types::ListHandshakesForAccountRequest
    ListHandshakesForAccountResponse.add_member(:handshakes, ::Smithy::Schema::Shapes::MemberShape.new(target: Handshakes, name: "Handshakes"))
    ListHandshakesForAccountResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListHandshakesForAccountResponse.type = Types::ListHandshakesForAccountResponse
    ListHandshakesForOrganizationRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeFilter, name: "Filter"))
    ListHandshakesForOrganizationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListHandshakesForOrganizationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListHandshakesForOrganizationRequest.type = Types::ListHandshakesForOrganizationRequest
    ListHandshakesForOrganizationResponse.add_member(:handshakes, ::Smithy::Schema::Shapes::MemberShape.new(target: Handshakes, name: "Handshakes"))
    ListHandshakesForOrganizationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListHandshakesForOrganizationResponse.type = Types::ListHandshakesForOrganizationResponse
    ListInboundResponsibilityTransfersRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferType, name: "Type", traits: {"smithy.api#required" => {}}))
    ListInboundResponsibilityTransfersRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferId, name: "Id"))
    ListInboundResponsibilityTransfersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListInboundResponsibilityTransfersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListInboundResponsibilityTransfersRequest.type = Types::ListInboundResponsibilityTransfersRequest
    ListInboundResponsibilityTransfersResponse.add_member(:responsibility_transfers, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransfers, name: "ResponsibilityTransfers"))
    ListInboundResponsibilityTransfersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListInboundResponsibilityTransfersResponse.type = Types::ListInboundResponsibilityTransfersResponse
    ListOrganizationalUnitsForParentRequest.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentId, name: "ParentId", traits: {"smithy.api#required" => {}}))
    ListOrganizationalUnitsForParentRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOrganizationalUnitsForParentRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListOrganizationalUnitsForParentRequest.type = Types::ListOrganizationalUnitsForParentRequest
    ListOrganizationalUnitsForParentResponse.add_member(:organizational_units, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnits, name: "OrganizationalUnits"))
    ListOrganizationalUnitsForParentResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOrganizationalUnitsForParentResponse.type = Types::ListOrganizationalUnitsForParentResponse
    ListOutboundResponsibilityTransfersRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferType, name: "Type", traits: {"smithy.api#required" => {}}))
    ListOutboundResponsibilityTransfersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOutboundResponsibilityTransfersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListOutboundResponsibilityTransfersRequest.type = Types::ListOutboundResponsibilityTransfersRequest
    ListOutboundResponsibilityTransfersResponse.add_member(:responsibility_transfers, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransfers, name: "ResponsibilityTransfers"))
    ListOutboundResponsibilityTransfersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOutboundResponsibilityTransfersResponse.type = Types::ListOutboundResponsibilityTransfersResponse
    ListParentsRequest.add_member(:child_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildId, name: "ChildId", traits: {"smithy.api#required" => {}}))
    ListParentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListParentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListParentsRequest.type = Types::ListParentsRequest
    ListParentsResponse.add_member(:parents, ::Smithy::Schema::Shapes::MemberShape.new(target: Parents, name: "Parents"))
    ListParentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListParentsResponse.type = Types::ListParentsResponse
    ListPoliciesForTargetRequest.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTargetId, name: "TargetId", traits: {"smithy.api#required" => {}}))
    ListPoliciesForTargetRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "Filter", traits: {"smithy.api#required" => {}}))
    ListPoliciesForTargetRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPoliciesForTargetRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListPoliciesForTargetRequest.type = Types::ListPoliciesForTargetRequest
    ListPoliciesForTargetResponse.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: Policies, name: "Policies"))
    ListPoliciesForTargetResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPoliciesForTargetResponse.type = Types::ListPoliciesForTargetResponse
    ListPoliciesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "Filter", traits: {"smithy.api#required" => {}}))
    ListPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListPoliciesRequest.type = Types::ListPoliciesRequest
    ListPoliciesResponse.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: Policies, name: "Policies"))
    ListPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPoliciesResponse.type = Types::ListPoliciesResponse
    ListRootsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRootsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListRootsRequest.type = Types::ListRootsRequest
    ListRootsResponse.add_member(:roots, ::Smithy::Schema::Shapes::MemberShape.new(target: Roots, name: "Roots"))
    ListRootsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRootsResponse.type = Types::ListRootsResponse
    ListTagsForResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTargetsForPolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId", traits: {"smithy.api#required" => {}}))
    ListTargetsForPolicyRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTargetsForPolicyRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListTargetsForPolicyRequest.type = Types::ListTargetsForPolicyRequest
    ListTargetsForPolicyResponse.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTargets, name: "Targets"))
    ListTargetsForPolicyResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTargetsForPolicyResponse.type = Types::ListTargetsForPolicyResponse
    MalformedPolicyDocumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    MalformedPolicyDocumentException.type = Types::MalformedPolicyDocumentException
    MasterCannotLeaveOrganizationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    MasterCannotLeaveOrganizationException.type = Types::MasterCannotLeaveOrganizationException
    MoveAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    MoveAccountRequest.add_member(:source_parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentId, name: "SourceParentId", traits: {"smithy.api#required" => {}}))
    MoveAccountRequest.add_member(:destination_parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentId, name: "DestinationParentId", traits: {"smithy.api#required" => {}}))
    MoveAccountRequest.type = Types::MoveAccountRequest
    Organization.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationId, name: "Id"))
    Organization.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationArn, name: "Arn"))
    Organization.add_member(:feature_set, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationFeatureSet, name: "FeatureSet"))
    Organization.add_member(:master_account_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountArn, name: "MasterAccountArn"))
    Organization.add_member(:master_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "MasterAccountId"))
    Organization.add_member(:master_account_email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "MasterAccountEmail"))
    Organization.add_member(:available_policy_types, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTypes, name: "AvailablePolicyTypes"))
    Organization.type = Types::Organization
    OrganizationFeatureSet.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    OrganizationFeatureSet.add_member(:consolidated_billing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONSOLIDATED_BILLING", traits: {"smithy.api#enumValue" => "CONSOLIDATED_BILLING"}))
    OrganizationNotEmptyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    OrganizationNotEmptyException.type = Types::OrganizationNotEmptyException
    OrganizationalUnit.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitId, name: "Id"))
    OrganizationalUnit.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitArn, name: "Arn"))
    OrganizationalUnit.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitName, name: "Name"))
    OrganizationalUnit.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "Path"))
    OrganizationalUnit.type = Types::OrganizationalUnit
    OrganizationalUnitNotEmptyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    OrganizationalUnitNotEmptyException.type = Types::OrganizationalUnitNotEmptyException
    OrganizationalUnitNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    OrganizationalUnitNotFoundException.type = Types::OrganizationalUnitNotFoundException
    OrganizationalUnits.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnit, name: "member"))
    Parent.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentId, name: "Id"))
    Parent.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentType, name: "Type"))
    Parent.type = Types::Parent
    ParentNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ParentNotFoundException.type = Types::ParentNotFoundException
    ParentType.add_member(:root, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROOT", traits: {"smithy.api#enumValue" => "ROOT"}))
    ParentType.add_member(:organizational_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATIONAL_UNIT", traits: {"smithy.api#enumValue" => "ORGANIZATIONAL_UNIT"}))
    Parents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Parent, name: "member"))
    Paths.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "member"))
    Policies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicySummary, name: "member"))
    Policy.add_member(:policy_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicySummary, name: "PolicySummary"))
    Policy.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyContent, name: "Content"))
    Policy.type = Types::Policy
    PolicyChangesInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    PolicyChangesInProgressException.type = Types::PolicyChangesInProgressException
    PolicyIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "member"))
    PolicyInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    PolicyInUseException.type = Types::PolicyInUseException
    PolicyNotAttachedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    PolicyNotAttachedException.type = Types::PolicyNotAttachedException
    PolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    PolicyNotFoundException.type = Types::PolicyNotFoundException
    PolicySummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "Id"))
    PolicySummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyArn, name: "Arn"))
    PolicySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "Name"))
    PolicySummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, name: "Description"))
    PolicySummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "Type"))
    PolicySummary.add_member(:aws_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsManagedPolicy, name: "AwsManaged", traits: {"smithy.api#default" => false}))
    PolicySummary.type = Types::PolicySummary
    PolicyTargetSummary.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTargetId, name: "TargetId"))
    PolicyTargetSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "Arn"))
    PolicyTargetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetName, name: "Name"))
    PolicyTargetSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "Type"))
    PolicyTargetSummary.type = Types::PolicyTargetSummary
    PolicyTargets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTargetSummary, name: "member"))
    PolicyType.add_member(:service_control_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_CONTROL_POLICY", traits: {"smithy.api#enumValue" => "SERVICE_CONTROL_POLICY"}))
    PolicyType.add_member(:resource_control_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_CONTROL_POLICY", traits: {"smithy.api#enumValue" => "RESOURCE_CONTROL_POLICY"}))
    PolicyType.add_member(:tag_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAG_POLICY", traits: {"smithy.api#enumValue" => "TAG_POLICY"}))
    PolicyType.add_member(:backup_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_POLICY", traits: {"smithy.api#enumValue" => "BACKUP_POLICY"}))
    PolicyType.add_member(:aiservices_opt_out_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AISERVICES_OPT_OUT_POLICY", traits: {"smithy.api#enumValue" => "AISERVICES_OPT_OUT_POLICY"}))
    PolicyType.add_member(:chatbot_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHATBOT_POLICY", traits: {"smithy.api#enumValue" => "CHATBOT_POLICY"}))
    PolicyType.add_member(:declarative_policy_ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DECLARATIVE_POLICY_EC2", traits: {"smithy.api#enumValue" => "DECLARATIVE_POLICY_EC2"}))
    PolicyType.add_member(:securityhub_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITYHUB_POLICY", traits: {"smithy.api#enumValue" => "SECURITYHUB_POLICY"}))
    PolicyType.add_member(:inspector_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSPECTOR_POLICY", traits: {"smithy.api#enumValue" => "INSPECTOR_POLICY"}))
    PolicyType.add_member(:upgrade_rollout_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPGRADE_ROLLOUT_POLICY", traits: {"smithy.api#enumValue" => "UPGRADE_ROLLOUT_POLICY"}))
    PolicyType.add_member(:bedrock_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_POLICY", traits: {"smithy.api#enumValue" => "BEDROCK_POLICY"}))
    PolicyType.add_member(:s3_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_POLICY", traits: {"smithy.api#enumValue" => "S3_POLICY"}))
    PolicyType.add_member(:network_security_director_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_SECURITY_DIRECTOR_POLICY", traits: {"smithy.api#enumValue" => "NETWORK_SECURITY_DIRECTOR_POLICY"}))
    PolicyType.add_member(:guardduty_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GUARDDUTY_POLICY", traits: {"smithy.api#enumValue" => "GUARDDUTY_POLICY"}))
    PolicyTypeAlreadyEnabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    PolicyTypeAlreadyEnabledException.type = Types::PolicyTypeAlreadyEnabledException
    PolicyTypeNotAvailableForOrganizationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    PolicyTypeNotAvailableForOrganizationException.type = Types::PolicyTypeNotAvailableForOrganizationException
    PolicyTypeNotEnabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    PolicyTypeNotEnabledException.type = Types::PolicyTypeNotEnabledException
    PolicyTypeStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    PolicyTypeStatus.add_member(:pending_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_ENABLE", traits: {"smithy.api#enumValue" => "PENDING_ENABLE"}))
    PolicyTypeStatus.add_member(:pending_disable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DISABLE", traits: {"smithy.api#enumValue" => "PENDING_DISABLE"}))
    PolicyTypeSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "Type"))
    PolicyTypeSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTypeStatus, name: "Status"))
    PolicyTypeSummary.type = Types::PolicyTypeSummary
    PolicyTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTypeSummary, name: "member"))
    PutResourcePolicyRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyContent, name: "Content", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "ResourcePolicy"))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    RegisterDelegatedAdministratorRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    RegisterDelegatedAdministratorRequest.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, name: "ServicePrincipal", traits: {"smithy.api#required" => {}}))
    RegisterDelegatedAdministratorRequest.type = Types::RegisterDelegatedAdministratorRequest
    RemoveAccountFromOrganizationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    RemoveAccountFromOrganizationRequest.type = Types::RemoveAccountFromOrganizationRequest
    ResourcePolicy.add_member(:resource_policy_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicySummary, name: "ResourcePolicySummary"))
    ResourcePolicy.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyContent, name: "Content"))
    ResourcePolicy.type = Types::ResourcePolicy
    ResourcePolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ResourcePolicyNotFoundException.type = Types::ResourcePolicyNotFoundException
    ResourcePolicySummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyId, name: "Id"))
    ResourcePolicySummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyArn, name: "Arn"))
    ResourcePolicySummary.type = Types::ResourcePolicySummary
    ResponsibilityTransfer.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferArn, name: "Arn"))
    ResponsibilityTransfer.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferName, name: "Name"))
    ResponsibilityTransfer.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferId, name: "Id"))
    ResponsibilityTransfer.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferType, name: "Type"))
    ResponsibilityTransfer.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferStatus, name: "Status"))
    ResponsibilityTransfer.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: TransferParticipant, name: "Source"))
    ResponsibilityTransfer.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: TransferParticipant, name: "Target"))
    ResponsibilityTransfer.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTimestamp"))
    ResponsibilityTransfer.add_member(:end_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTimestamp"))
    ResponsibilityTransfer.add_member(:active_handshake_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeId, name: "ActiveHandshakeId"))
    ResponsibilityTransfer.type = Types::ResponsibilityTransfer
    ResponsibilityTransferAlreadyInStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ResponsibilityTransferAlreadyInStatusException.type = Types::ResponsibilityTransferAlreadyInStatusException
    ResponsibilityTransferNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ResponsibilityTransferNotFoundException.type = Types::ResponsibilityTransferNotFoundException
    ResponsibilityTransferStatus.add_member(:requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUESTED", traits: {"smithy.api#enumValue" => "REQUESTED"}))
    ResponsibilityTransferStatus.add_member(:declined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DECLINED", traits: {"smithy.api#enumValue" => "DECLINED"}))
    ResponsibilityTransferStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    ResponsibilityTransferStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ResponsibilityTransferStatus.add_member(:accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCEPTED", traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    ResponsibilityTransferStatus.add_member(:withdrawn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WITHDRAWN", traits: {"smithy.api#enumValue" => "WITHDRAWN"}))
    ResponsibilityTransferType.add_member(:billing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLING", traits: {"smithy.api#enumValue" => "BILLING"}))
    ResponsibilityTransfers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransfer, name: "member"))
    Root.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RootId, name: "Id"))
    Root.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RootArn, name: "Arn"))
    Root.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RootName, name: "Name"))
    Root.add_member(:policy_types, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTypes, name: "PolicyTypes"))
    Root.type = Types::Root
    RootNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    RootNotFoundException.type = Types::RootNotFoundException
    Roots.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Root, name: "member"))
    ServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ServiceException.type = Types::ServiceException
    SourceParentNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    SourceParentNotFoundException.type = Types::SourceParentNotFoundException
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TargetNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    TargetNotFoundException.type = Types::TargetNotFoundException
    TargetType.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    TargetType.add_member(:organizational_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATIONAL_UNIT", traits: {"smithy.api#enumValue" => "ORGANIZATIONAL_UNIT"}))
    TargetType.add_member(:root, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROOT", traits: {"smithy.api#enumValue" => "ROOT"}))
    TerminateResponsibilityTransferRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferId, name: "Id", traits: {"smithy.api#required" => {}}))
    TerminateResponsibilityTransferRequest.add_member(:end_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTimestamp"))
    TerminateResponsibilityTransferRequest.type = Types::TerminateResponsibilityTransferRequest
    TerminateResponsibilityTransferResponse.add_member(:responsibility_transfer, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransfer, name: "ResponsibilityTransfer"))
    TerminateResponsibilityTransferResponse.type = Types::TerminateResponsibilityTransferResponse
    TooManyRequestsException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionType, name: "Type"))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    TransferParticipant.add_member(:management_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ManagementAccountId"))
    TransferParticipant.add_member(:management_account_email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "ManagementAccountEmail"))
    TransferParticipant.type = Types::TransferParticipant
    UnsupportedAPIEndpointException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    UnsupportedAPIEndpointException.type = Types::UnsupportedAPIEndpointException
    UntagResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateOrganizationalUnitRequest.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitId, name: "OrganizationalUnitId", traits: {"smithy.api#required" => {}}))
    UpdateOrganizationalUnitRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitName, name: "Name"))
    UpdateOrganizationalUnitRequest.type = Types::UpdateOrganizationalUnitRequest
    UpdateOrganizationalUnitResponse.add_member(:organizational_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnit, name: "OrganizationalUnit"))
    UpdateOrganizationalUnitResponse.type = Types::UpdateOrganizationalUnitResponse
    UpdatePolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId", traits: {"smithy.api#required" => {}}))
    UpdatePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "Name"))
    UpdatePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, name: "Description"))
    UpdatePolicyRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyContent, name: "Content"))
    UpdatePolicyRequest.type = Types::UpdatePolicyRequest
    UpdatePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy"))
    UpdatePolicyResponse.type = Types::UpdatePolicyResponse
    UpdateResponsibilityTransferRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferId, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateResponsibilityTransferRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateResponsibilityTransferRequest.type = Types::UpdateResponsibilityTransferRequest
    UpdateResponsibilityTransferResponse.add_member(:responsibility_transfer, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransfer, name: "ResponsibilityTransfer"))
    UpdateResponsibilityTransferResponse.type = Types::UpdateResponsibilityTransferResponse

    AWSOrganizationsV20161128 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.organizations#AWSOrganizationsV20161128"
      service.name = "AWSOrganizationsV20161128"
      service.version = "2016-11-28"
      service.traits = {"aws.api#service" => {"sdkId" => "Organizations", "arnNamespace" => "organizations", "cloudFormationName" => "Organizations", "cloudTrailEventSource" => "organizations.amazonaws.com", "endpointPrefix" => "organizations"}, "aws.auth#sigv4" => {"name" => "organizations"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Organizations", "smithy.api#xmlNamespace" => {"uri" => "http://organizations.amazonaws.com/doc/2016-11-28/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://organizations.us-gov-west-1.amazonaws.com", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-gov-west-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://organizations.us-gov-west-1.api.aws", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-gov-west-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://organizations-fips.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://organizations-fips.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://organizations.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://organizations.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 15, "nodes" => "/////wAAAAH/////AAAAAAAAAA4AAAADAAAAAQAAAAQF9eENAAAAAgAAAAUF9eENAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEMAAAABwX14QoF9eELAAAABAAAAAsAAAAJAAAABQX14QQAAAAKAAAABgX14QgF9eEJAAAABQX14QUAAAAMAAAABgAAAA0F9eEHAAAABwX14QYF9eEHAAAAAwX14QEAAAAPAAAABAX14QIF9eED"}}
      service.add_operation(:accept_handshake, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#AcceptHandshake"
        operation.name = "AcceptHandshake"
        operation.input = AcceptHandshakeRequest
        operation.output = AcceptHandshakeResponse
        operation.errors << AccessDeniedException
        operation.errors << AccessDeniedForDependencyException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << HandshakeAlreadyInStateException
        operation.errors << HandshakeConstraintViolationException
        operation.errors << HandshakeNotFoundException
        operation.errors << InvalidHandshakeTransitionException
        operation.errors << InvalidInputException
        operation.errors << MasterCannotLeaveOrganizationException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:attach_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#AttachPolicy"
        operation.name = "AttachPolicy"
        operation.input = AttachPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << DuplicatePolicyAttachmentException
        operation.errors << InvalidInputException
        operation.errors << PolicyChangesInProgressException
        operation.errors << PolicyNotFoundException
        operation.errors << PolicyTypeNotEnabledException
        operation.errors << ServiceException
        operation.errors << TargetNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:cancel_handshake, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CancelHandshake"
        operation.name = "CancelHandshake"
        operation.input = CancelHandshakeRequest
        operation.output = CancelHandshakeResponse
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << HandshakeAlreadyInStateException
        operation.errors << HandshakeNotFoundException
        operation.errors << InvalidHandshakeTransitionException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:close_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CloseAccount"
        operation.name = "CloseAccount"
        operation.input = CloseAccountRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << AccountAlreadyClosedException
        operation.errors << AccountNotFoundException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConflictException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:create_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CreateAccount"
        operation.name = "CreateAccount"
        operation.input = CreateAccountRequest
        operation.output = CreateAccountResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << FinalizingOrganizationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:create_gov_cloud_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CreateGovCloudAccount"
        operation.name = "CreateGovCloudAccount"
        operation.input = CreateGovCloudAccountRequest
        operation.output = CreateGovCloudAccountResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << FinalizingOrganizationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:create_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CreateOrganization"
        operation.name = "CreateOrganization"
        operation.input = CreateOrganizationRequest
        operation.output = CreateOrganizationResponse
        operation.errors << AccessDeniedException
        operation.errors << AccessDeniedForDependencyException
        operation.errors << AlreadyInOrganizationException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:create_organizational_unit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CreateOrganizationalUnit"
        operation.name = "CreateOrganizationalUnit"
        operation.input = CreateOrganizationalUnitRequest
        operation.output = CreateOrganizationalUnitResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << DuplicateOrganizationalUnitException
        operation.errors << InvalidInputException
        operation.errors << ParentNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:create_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CreatePolicy"
        operation.name = "CreatePolicy"
        operation.input = CreatePolicyRequest
        operation.output = CreatePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << DuplicatePolicyException
        operation.errors << InvalidInputException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << PolicyTypeNotAvailableForOrganizationException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:decline_handshake, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeclineHandshake"
        operation.name = "DeclineHandshake"
        operation.input = DeclineHandshakeRequest
        operation.output = DeclineHandshakeResponse
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << HandshakeAlreadyInStateException
        operation.errors << HandshakeNotFoundException
        operation.errors << InvalidHandshakeTransitionException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:delete_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeleteOrganization"
        operation.name = "DeleteOrganization"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << OrganizationNotEmptyException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:delete_organizational_unit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeleteOrganizationalUnit"
        operation.name = "DeleteOrganizationalUnit"
        operation.input = DeleteOrganizationalUnitRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << OrganizationalUnitNotEmptyException
        operation.errors << OrganizationalUnitNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:delete_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeletePolicy"
        operation.name = "DeletePolicy"
        operation.input = DeletePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << PolicyInUseException
        operation.errors << PolicyNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << ResourcePolicyNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:deregister_delegated_administrator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeregisterDelegatedAdministrator"
        operation.name = "DeregisterDelegatedAdministrator"
        operation.input = DeregisterDelegatedAdministratorRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << AccountNotFoundException
        operation.errors << AccountNotRegisteredException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:describe_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeAccount"
        operation.name = "DescribeAccount"
        operation.input = DescribeAccountRequest
        operation.output = DescribeAccountResponse
        operation.errors << AccessDeniedException
        operation.errors << AccountNotFoundException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_create_account_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeCreateAccountStatus"
        operation.name = "DescribeCreateAccountStatus"
        operation.input = DescribeCreateAccountStatusRequest
        operation.output = DescribeCreateAccountStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << CreateAccountStatusNotFoundException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:describe_effective_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeEffectivePolicy"
        operation.name = "DescribeEffectivePolicy"
        operation.input = DescribeEffectivePolicyRequest
        operation.output = DescribeEffectivePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConstraintViolationException
        operation.errors << EffectivePolicyNotFoundException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TargetNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:describe_handshake, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeHandshake"
        operation.name = "DescribeHandshake"
        operation.input = DescribeHandshakeRequest
        operation.output = DescribeHandshakeResponse
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << HandshakeNotFoundException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeOrganization"
        operation.name = "DescribeOrganization"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = DescribeOrganizationResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_organizational_unit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeOrganizationalUnit"
        operation.name = "DescribeOrganizationalUnit"
        operation.input = DescribeOrganizationalUnitRequest
        operation.output = DescribeOrganizationalUnitResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << InvalidInputException
        operation.errors << OrganizationalUnitNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribePolicy"
        operation.name = "DescribePolicy"
        operation.input = DescribePolicyRequest
        operation.output = DescribePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << InvalidInputException
        operation.errors << PolicyNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:describe_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeResourcePolicy"
        operation.name = "DescribeResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = DescribeResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConstraintViolationException
        operation.errors << ResourcePolicyNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:describe_responsibility_transfer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeResponsibilityTransfer"
        operation.name = "DescribeResponsibilityTransfer"
        operation.input = DescribeResponsibilityTransferRequest
        operation.output = DescribeResponsibilityTransferResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << InvalidInputException
        operation.errors << ResponsibilityTransferNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:detach_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DetachPolicy"
        operation.name = "DetachPolicy"
        operation.input = DetachPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << PolicyChangesInProgressException
        operation.errors << PolicyNotAttachedException
        operation.errors << PolicyNotFoundException
        operation.errors << ServiceException
        operation.errors << TargetNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:disable_aws_service_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DisableAWSServiceAccess"
        operation.name = "DisableAWSServiceAccess"
        operation.input = DisableAWSServiceAccessRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:disable_policy_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DisablePolicyType"
        operation.name = "DisablePolicyType"
        operation.input = DisablePolicyTypeRequest
        operation.output = DisablePolicyTypeResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << PolicyChangesInProgressException
        operation.errors << PolicyTypeNotEnabledException
        operation.errors << RootNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:enable_aws_service_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#EnableAWSServiceAccess"
        operation.name = "EnableAWSServiceAccess"
        operation.input = EnableAWSServiceAccessRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:enable_all_features, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#EnableAllFeatures"
        operation.name = "EnableAllFeatures"
        operation.input = EnableAllFeaturesRequest
        operation.output = EnableAllFeaturesResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << HandshakeConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:enable_policy_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#EnablePolicyType"
        operation.name = "EnablePolicyType"
        operation.input = EnablePolicyTypeRequest
        operation.output = EnablePolicyTypeResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << PolicyChangesInProgressException
        operation.errors << PolicyTypeAlreadyEnabledException
        operation.errors << PolicyTypeNotAvailableForOrganizationException
        operation.errors << RootNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:invite_account_to_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#InviteAccountToOrganization"
        operation.name = "InviteAccountToOrganization"
        operation.input = InviteAccountToOrganizationRequest
        operation.output = InviteAccountToOrganizationResponse
        operation.errors << AccessDeniedException
        operation.errors << AccountOwnerNotVerifiedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << DuplicateHandshakeException
        operation.errors << FinalizingOrganizationException
        operation.errors << HandshakeConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:invite_organization_to_transfer_responsibility, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#InviteOrganizationToTransferResponsibility"
        operation.name = "InviteOrganizationToTransferResponsibility"
        operation.input = InviteOrganizationToTransferResponsibilityRequest
        operation.output = InviteOrganizationToTransferResponsibilityResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << DuplicateHandshakeException
        operation.errors << HandshakeConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:leave_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#LeaveOrganization"
        operation.name = "LeaveOrganization"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << AccountNotFoundException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << MasterCannotLeaveOrganizationException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:list_aws_service_access_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListAWSServiceAccessForOrganization"
        operation.name = "ListAWSServiceAccessForOrganization"
        operation.input = ListAWSServiceAccessForOrganizationRequest
        operation.output = ListAWSServiceAccessForOrganizationResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAWSServiceAccessForOrganization.new
      end)
      service.add_operation(:list_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListAccounts"
        operation.name = "ListAccounts"
        operation.input = ListAccountsRequest
        operation.output = ListAccountsResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccounts.new
      end)
      service.add_operation(:list_accounts_for_parent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListAccountsForParent"
        operation.name = "ListAccountsForParent"
        operation.input = ListAccountsForParentRequest
        operation.output = ListAccountsForParentResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << InvalidInputException
        operation.errors << ParentNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountsForParent.new
      end)
      service.add_operation(:list_accounts_with_invalid_effective_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListAccountsWithInvalidEffectivePolicy"
        operation.name = "ListAccountsWithInvalidEffectivePolicy"
        operation.input = ListAccountsWithInvalidEffectivePolicyRequest
        operation.output = ListAccountsWithInvalidEffectivePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConstraintViolationException
        operation.errors << EffectivePolicyNotFoundException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountsWithInvalidEffectivePolicy.new
      end)
      service.add_operation(:list_children, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListChildren"
        operation.name = "ListChildren"
        operation.input = ListChildrenRequest
        operation.output = ListChildrenResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << InvalidInputException
        operation.errors << ParentNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListChildren.new
      end)
      service.add_operation(:list_create_account_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListCreateAccountStatus"
        operation.name = "ListCreateAccountStatus"
        operation.input = ListCreateAccountStatusRequest
        operation.output = ListCreateAccountStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
        operation[:paginator] = Paginators::ListCreateAccountStatus.new
      end)
      service.add_operation(:list_delegated_administrators, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListDelegatedAdministrators"
        operation.name = "ListDelegatedAdministrators"
        operation.input = ListDelegatedAdministratorsRequest
        operation.output = ListDelegatedAdministratorsResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDelegatedAdministrators.new
      end)
      service.add_operation(:list_delegated_services_for_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListDelegatedServicesForAccount"
        operation.name = "ListDelegatedServicesForAccount"
        operation.input = ListDelegatedServicesForAccountRequest
        operation.output = ListDelegatedServicesForAccountResponse
        operation.errors << AccessDeniedException
        operation.errors << AccountNotFoundException
        operation.errors << AccountNotRegisteredException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDelegatedServicesForAccount.new
      end)
      service.add_operation(:list_effective_policy_validation_errors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListEffectivePolicyValidationErrors"
        operation.name = "ListEffectivePolicyValidationErrors"
        operation.input = ListEffectivePolicyValidationErrorsRequest
        operation.output = ListEffectivePolicyValidationErrorsResponse
        operation.errors << AccessDeniedException
        operation.errors << AccountNotFoundException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConstraintViolationException
        operation.errors << EffectivePolicyNotFoundException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
        operation[:paginator] = Paginators::ListEffectivePolicyValidationErrors.new
      end)
      service.add_operation(:list_handshakes_for_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListHandshakesForAccount"
        operation.name = "ListHandshakesForAccount"
        operation.input = ListHandshakesForAccountRequest
        operation.output = ListHandshakesForAccountResponse
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListHandshakesForAccount.new
      end)
      service.add_operation(:list_handshakes_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListHandshakesForOrganization"
        operation.name = "ListHandshakesForOrganization"
        operation.input = ListHandshakesForOrganizationRequest
        operation.output = ListHandshakesForOrganizationResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListHandshakesForOrganization.new
      end)
      service.add_operation(:list_inbound_responsibility_transfers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListInboundResponsibilityTransfers"
        operation.name = "ListInboundResponsibilityTransfers"
        operation.input = ListInboundResponsibilityTransfersRequest
        operation.output = ListInboundResponsibilityTransfersResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ResponsibilityTransferNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:list_organizational_units_for_parent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListOrganizationalUnitsForParent"
        operation.name = "ListOrganizationalUnitsForParent"
        operation.input = ListOrganizationalUnitsForParentRequest
        operation.output = ListOrganizationalUnitsForParentResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << InvalidInputException
        operation.errors << ParentNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListOrganizationalUnitsForParent.new
      end)
      service.add_operation(:list_outbound_responsibility_transfers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListOutboundResponsibilityTransfers"
        operation.name = "ListOutboundResponsibilityTransfers"
        operation.input = ListOutboundResponsibilityTransfersRequest
        operation.output = ListOutboundResponsibilityTransfersResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:list_parents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListParents"
        operation.name = "ListParents"
        operation.input = ListParentsRequest
        operation.output = ListParentsResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ChildNotFoundException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListParents.new
      end)
      service.add_operation(:list_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListPolicies"
        operation.name = "ListPolicies"
        operation.input = ListPoliciesRequest
        operation.output = ListPoliciesResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPolicies.new
      end)
      service.add_operation(:list_policies_for_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListPoliciesForTarget"
        operation.name = "ListPoliciesForTarget"
        operation.input = ListPoliciesForTargetRequest
        operation.output = ListPoliciesForTargetResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TargetNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPoliciesForTarget.new
      end)
      service.add_operation(:list_roots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListRoots"
        operation.name = "ListRoots"
        operation.input = ListRootsRequest
        operation.output = ListRootsResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListRoots.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TargetNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_targets_for_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListTargetsForPolicy"
        operation.name = "ListTargetsForPolicy"
        operation.input = ListTargetsForPolicyRequest
        operation.output = ListTargetsForPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << InvalidInputException
        operation.errors << PolicyNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTargetsForPolicy.new
      end)
      service.add_operation(:move_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#MoveAccount"
        operation.name = "MoveAccount"
        operation.input = MoveAccountRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << AccountNotFoundException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << DestinationParentNotFoundException
        operation.errors << DuplicateAccountException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << SourceParentNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:register_delegated_administrator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#RegisterDelegatedAdministrator"
        operation.name = "RegisterDelegatedAdministrator"
        operation.input = RegisterDelegatedAdministratorRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << AccountAlreadyRegisteredException
        operation.errors << AccountNotFoundException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:remove_account_from_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#RemoveAccountFromOrganization"
        operation.name = "RemoveAccountFromOrganization"
        operation.input = RemoveAccountFromOrganizationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << AccountNotFoundException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << MasterCannotLeaveOrganizationException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TargetNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:terminate_responsibility_transfer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#TerminateResponsibilityTransfer"
        operation.name = "TerminateResponsibilityTransfer"
        operation.input = TerminateResponsibilityTransferRequest
        operation.output = TerminateResponsibilityTransferResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << InvalidResponsibilityTransferTransitionException
        operation.errors << ResponsibilityTransferAlreadyInStatusException
        operation.errors << ResponsibilityTransferNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ServiceException
        operation.errors << TargetNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:update_organizational_unit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#UpdateOrganizationalUnit"
        operation.name = "UpdateOrganizationalUnit"
        operation.input = UpdateOrganizationalUnitRequest
        operation.output = UpdateOrganizationalUnitResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << DuplicateOrganizationalUnitException
        operation.errors << InvalidInputException
        operation.errors << OrganizationalUnitNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:update_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#UpdatePolicy"
        operation.name = "UpdatePolicy"
        operation.input = UpdatePolicyRequest
        operation.output = UpdatePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << DuplicatePolicyException
        operation.errors << InvalidInputException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << PolicyChangesInProgressException
        operation.errors << PolicyNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
      end)
      service.add_operation(:update_responsibility_transfer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#UpdateResponsibilityTransfer"
        operation.name = "UpdateResponsibilityTransfer"
        operation.input = UpdateResponsibilityTransferRequest
        operation.output = UpdateResponsibilityTransferResponse
        operation.errors << AccessDeniedException
        operation.errors << AWSOrganizationsNotInUseException
        operation.errors << ConstraintViolationException
        operation.errors << InvalidInputException
        operation.errors << ResponsibilityTransferNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedAPIEndpointException
        operation.traits = {}
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

# frozen_string_literal: true

# This is generated code!

module Aws::Organizations
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSOrganizationsNotInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AWSOrganizationsNotInUseException', name: 'AWSOrganizationsNotInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AcceptHandshakeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AcceptHandshakeRequest', name: 'AcceptHandshakeRequest')
    AcceptHandshakeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AcceptHandshakeResponse', name: 'AcceptHandshakeResponse')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedForDependencyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AccessDeniedForDependencyException', name: 'AccessDeniedForDependencyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedForDependencyExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#AccessDeniedForDependencyExceptionReason', name: 'AccessDeniedForDependencyExceptionReason')
    Account = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#Account', name: 'Account')
    AccountAlreadyClosedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AccountAlreadyClosedException', name: 'AccountAlreadyClosedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    AccountAlreadyRegisteredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AccountAlreadyRegisteredException', name: 'AccountAlreadyRegisteredException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    AccountArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#AccountArn', name: 'AccountArn', traits: {"smithy.api#pattern" => "^arn:aws:organizations::\\d{12}:account\\/o-[a-z0-9]{10,32}\\/\\d{12}$"})
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 0, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AccountJoinedMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#AccountJoinedMethod', name: 'AccountJoinedMethod')
    AccountName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#AccountName', name: 'AccountName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    AccountNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AccountNotFoundException', name: 'AccountNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AccountNotRegisteredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AccountNotRegisteredException', name: 'AccountNotRegisteredException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    AccountOwnerNotVerifiedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AccountOwnerNotVerifiedException', name: 'AccountOwnerNotVerifiedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#AccountStatus', name: 'AccountStatus')
    Accounts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#Accounts', name: 'Accounts')
    ActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#ActionType', name: 'ActionType')
    AlreadyInOrganizationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AlreadyInOrganizationException', name: 'AlreadyInOrganizationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    AttachPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AttachPolicyRequest', name: 'AttachPolicyRequest')
    AwsManagedPolicy = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.organizations#AwsManagedPolicy', name: 'AwsManagedPolicy', traits: {"smithy.api#default" => false})
    CancelHandshakeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CancelHandshakeRequest', name: 'CancelHandshakeRequest')
    CancelHandshakeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CancelHandshakeResponse', name: 'CancelHandshakeResponse')
    Child = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#Child', name: 'Child')
    ChildId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ChildId', name: 'ChildId', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"})
    ChildNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ChildNotFoundException', name: 'ChildNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ChildType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#ChildType', name: 'ChildType')
    Children = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#Children', name: 'Children')
    CloseAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CloseAccountRequest', name: 'CloseAccountRequest')
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConstraintViolationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ConstraintViolationException', name: 'ConstraintViolationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConstraintViolationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#ConstraintViolationExceptionReason', name: 'ConstraintViolationExceptionReason')
    CreateAccountFailureReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#CreateAccountFailureReason', name: 'CreateAccountFailureReason')
    CreateAccountName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#CreateAccountName', name: 'CreateAccountName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[\\u0020-\\u007E]+$", "smithy.api#sensitive" => {}})
    CreateAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateAccountRequest', name: 'CreateAccountRequest')
    CreateAccountRequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#CreateAccountRequestId', name: 'CreateAccountRequestId', traits: {"smithy.api#length" => {"min" => 0, "max" => 36}, "smithy.api#pattern" => "^car-[a-z0-9]{8,32}$"})
    CreateAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateAccountResponse', name: 'CreateAccountResponse')
    CreateAccountState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#CreateAccountState', name: 'CreateAccountState')
    CreateAccountStates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#CreateAccountStates', name: 'CreateAccountStates')
    CreateAccountStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateAccountStatus', name: 'CreateAccountStatus')
    CreateAccountStatusNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateAccountStatusNotFoundException', name: 'CreateAccountStatusNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CreateAccountStatuses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#CreateAccountStatuses', name: 'CreateAccountStatuses')
    CreateGovCloudAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateGovCloudAccountRequest', name: 'CreateGovCloudAccountRequest')
    CreateGovCloudAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateGovCloudAccountResponse', name: 'CreateGovCloudAccountResponse')
    CreateOrganizationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateOrganizationRequest', name: 'CreateOrganizationRequest')
    CreateOrganizationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateOrganizationResponse', name: 'CreateOrganizationResponse')
    CreateOrganizationalUnitRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateOrganizationalUnitRequest', name: 'CreateOrganizationalUnitRequest')
    CreateOrganizationalUnitResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateOrganizationalUnitResponse', name: 'CreateOrganizationalUnitResponse')
    CreatePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreatePolicyRequest', name: 'CreatePolicyRequest')
    CreatePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreatePolicyResponse', name: 'CreatePolicyResponse')
    DeclineHandshakeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DeclineHandshakeRequest', name: 'DeclineHandshakeRequest')
    DeclineHandshakeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DeclineHandshakeResponse', name: 'DeclineHandshakeResponse')
    DelegatedAdministrator = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DelegatedAdministrator', name: 'DelegatedAdministrator')
    DelegatedAdministrators = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#DelegatedAdministrators', name: 'DelegatedAdministrators')
    DelegatedService = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DelegatedService', name: 'DelegatedService')
    DelegatedServices = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#DelegatedServices', name: 'DelegatedServices')
    DeleteOrganizationalUnitRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DeleteOrganizationalUnitRequest', name: 'DeleteOrganizationalUnitRequest')
    DeletePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DeletePolicyRequest', name: 'DeletePolicyRequest')
    DeregisterDelegatedAdministratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DeregisterDelegatedAdministratorRequest', name: 'DeregisterDelegatedAdministratorRequest')
    DescribeAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeAccountRequest', name: 'DescribeAccountRequest')
    DescribeAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeAccountResponse', name: 'DescribeAccountResponse')
    DescribeCreateAccountStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeCreateAccountStatusRequest', name: 'DescribeCreateAccountStatusRequest')
    DescribeCreateAccountStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeCreateAccountStatusResponse', name: 'DescribeCreateAccountStatusResponse')
    DescribeEffectivePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeEffectivePolicyRequest', name: 'DescribeEffectivePolicyRequest')
    DescribeEffectivePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeEffectivePolicyResponse', name: 'DescribeEffectivePolicyResponse')
    DescribeHandshakeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeHandshakeRequest', name: 'DescribeHandshakeRequest')
    DescribeHandshakeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeHandshakeResponse', name: 'DescribeHandshakeResponse')
    DescribeOrganizationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeOrganizationResponse', name: 'DescribeOrganizationResponse')
    DescribeOrganizationalUnitRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeOrganizationalUnitRequest', name: 'DescribeOrganizationalUnitRequest')
    DescribeOrganizationalUnitResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeOrganizationalUnitResponse', name: 'DescribeOrganizationalUnitResponse')
    DescribePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribePolicyRequest', name: 'DescribePolicyRequest')
    DescribePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribePolicyResponse', name: 'DescribePolicyResponse')
    DescribeResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeResourcePolicyResponse', name: 'DescribeResourcePolicyResponse')
    DestinationParentNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DestinationParentNotFoundException', name: 'DestinationParentNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DetachPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DetachPolicyRequest', name: 'DetachPolicyRequest')
    DisableAWSServiceAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DisableAWSServiceAccessRequest', name: 'DisableAWSServiceAccessRequest')
    DisablePolicyTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DisablePolicyTypeRequest', name: 'DisablePolicyTypeRequest')
    DisablePolicyTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DisablePolicyTypeResponse', name: 'DisablePolicyTypeResponse')
    DuplicateAccountException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DuplicateAccountException', name: 'DuplicateAccountException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DuplicateHandshakeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DuplicateHandshakeException', name: 'DuplicateHandshakeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DuplicateOrganizationalUnitException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DuplicateOrganizationalUnitException', name: 'DuplicateOrganizationalUnitException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DuplicatePolicyAttachmentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DuplicatePolicyAttachmentException', name: 'DuplicatePolicyAttachmentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DuplicatePolicyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DuplicatePolicyException', name: 'DuplicatePolicyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EffectivePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EffectivePolicy', name: 'EffectivePolicy')
    EffectivePolicyNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EffectivePolicyNotFoundException', name: 'EffectivePolicyNotFoundException', traits: {"smithy.api#error" => "client"})
    EffectivePolicyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#EffectivePolicyType', name: 'EffectivePolicyType')
    EffectivePolicyValidationError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EffectivePolicyValidationError', name: 'EffectivePolicyValidationError')
    EffectivePolicyValidationErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#EffectivePolicyValidationErrors', name: 'EffectivePolicyValidationErrors')
    Email = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#Email', name: 'Email', traits: {"smithy.api#length" => {"min" => 6, "max" => 64}, "smithy.api#pattern" => "^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$", "smithy.api#sensitive" => {}})
    EnableAWSServiceAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EnableAWSServiceAccessRequest', name: 'EnableAWSServiceAccessRequest')
    EnableAllFeaturesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EnableAllFeaturesRequest', name: 'EnableAllFeaturesRequest')
    EnableAllFeaturesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EnableAllFeaturesResponse', name: 'EnableAllFeaturesResponse')
    EnablePolicyTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EnablePolicyTypeRequest', name: 'EnablePolicyTypeRequest')
    EnablePolicyTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EnablePolicyTypeResponse', name: 'EnablePolicyTypeResponse')
    EnabledServicePrincipal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EnabledServicePrincipal', name: 'EnabledServicePrincipal')
    EnabledServicePrincipals = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#EnabledServicePrincipals', name: 'EnabledServicePrincipals')
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ErrorCode', name: 'ErrorCode')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ErrorMessage', name: 'ErrorMessage')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ExceptionMessage', name: 'ExceptionMessage')
    ExceptionType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ExceptionType', name: 'ExceptionType')
    FinalizingOrganizationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#FinalizingOrganizationException', name: 'FinalizingOrganizationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    GenericArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#GenericArn', name: 'GenericArn', traits: {"smithy.api#pattern" => "^arn:aws:organizations::.+:.+$"})
    Handshake = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#Handshake', name: 'Handshake')
    HandshakeAlreadyInStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#HandshakeAlreadyInStateException', name: 'HandshakeAlreadyInStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    HandshakeArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#HandshakeArn', name: 'HandshakeArn', traits: {"smithy.api#pattern" => "^arn:aws:organizations::\\d{12}:handshake\\/o-[a-z0-9]{10,32}\\/[a-z_]{1,32}\\/h-[0-9a-z]{8,32}$"})
    HandshakeConstraintViolationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#HandshakeConstraintViolationException', name: 'HandshakeConstraintViolationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    HandshakeConstraintViolationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#HandshakeConstraintViolationExceptionReason', name: 'HandshakeConstraintViolationExceptionReason')
    HandshakeFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#HandshakeFilter', name: 'HandshakeFilter')
    HandshakeId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#HandshakeId', name: 'HandshakeId', traits: {"smithy.api#length" => {"min" => 0, "max" => 34}, "smithy.api#pattern" => "^h-[0-9a-z]{8,32}$"})
    HandshakeNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#HandshakeNotFoundException', name: 'HandshakeNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    HandshakeNotes = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#HandshakeNotes', name: 'HandshakeNotes', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    HandshakeParties = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#HandshakeParties', name: 'HandshakeParties')
    HandshakeParty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#HandshakeParty', name: 'HandshakeParty')
    HandshakePartyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#HandshakePartyId', name: 'HandshakePartyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    HandshakePartyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#HandshakePartyType', name: 'HandshakePartyType')
    HandshakeResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#HandshakeResource', name: 'HandshakeResource')
    HandshakeResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#HandshakeResourceType', name: 'HandshakeResourceType')
    HandshakeResourceValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#HandshakeResourceValue', name: 'HandshakeResourceValue', traits: {"smithy.api#sensitive" => {}})
    HandshakeResources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#HandshakeResources', name: 'HandshakeResources')
    HandshakeState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#HandshakeState', name: 'HandshakeState')
    Handshakes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#Handshakes', name: 'Handshakes')
    IAMUserAccessToBilling = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#IAMUserAccessToBilling', name: 'IAMUserAccessToBilling')
    InvalidHandshakeTransitionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#InvalidHandshakeTransitionException', name: 'InvalidHandshakeTransitionException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InvalidInputException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#InvalidInputException', name: 'InvalidInputException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidInputExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#InvalidInputExceptionReason', name: 'InvalidInputExceptionReason')
    InviteAccountToOrganizationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#InviteAccountToOrganizationRequest', name: 'InviteAccountToOrganizationRequest')
    InviteAccountToOrganizationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#InviteAccountToOrganizationResponse', name: 'InviteAccountToOrganizationResponse')
    ListAWSServiceAccessForOrganizationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListAWSServiceAccessForOrganizationRequest', name: 'ListAWSServiceAccessForOrganizationRequest')
    ListAWSServiceAccessForOrganizationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListAWSServiceAccessForOrganizationResponse', name: 'ListAWSServiceAccessForOrganizationResponse')
    ListAccountsForParentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListAccountsForParentRequest', name: 'ListAccountsForParentRequest')
    ListAccountsForParentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListAccountsForParentResponse', name: 'ListAccountsForParentResponse')
    ListAccountsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListAccountsRequest', name: 'ListAccountsRequest')
    ListAccountsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListAccountsResponse', name: 'ListAccountsResponse')
    ListAccountsWithInvalidEffectivePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListAccountsWithInvalidEffectivePolicyRequest', name: 'ListAccountsWithInvalidEffectivePolicyRequest')
    ListAccountsWithInvalidEffectivePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListAccountsWithInvalidEffectivePolicyResponse', name: 'ListAccountsWithInvalidEffectivePolicyResponse')
    ListChildrenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListChildrenRequest', name: 'ListChildrenRequest')
    ListChildrenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListChildrenResponse', name: 'ListChildrenResponse')
    ListCreateAccountStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListCreateAccountStatusRequest', name: 'ListCreateAccountStatusRequest')
    ListCreateAccountStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListCreateAccountStatusResponse', name: 'ListCreateAccountStatusResponse')
    ListDelegatedAdministratorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListDelegatedAdministratorsRequest', name: 'ListDelegatedAdministratorsRequest')
    ListDelegatedAdministratorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListDelegatedAdministratorsResponse', name: 'ListDelegatedAdministratorsResponse')
    ListDelegatedServicesForAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListDelegatedServicesForAccountRequest', name: 'ListDelegatedServicesForAccountRequest')
    ListDelegatedServicesForAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListDelegatedServicesForAccountResponse', name: 'ListDelegatedServicesForAccountResponse')
    ListEffectivePolicyValidationErrorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListEffectivePolicyValidationErrorsRequest', name: 'ListEffectivePolicyValidationErrorsRequest')
    ListEffectivePolicyValidationErrorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListEffectivePolicyValidationErrorsResponse', name: 'ListEffectivePolicyValidationErrorsResponse')
    ListHandshakesForAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListHandshakesForAccountRequest', name: 'ListHandshakesForAccountRequest')
    ListHandshakesForAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListHandshakesForAccountResponse', name: 'ListHandshakesForAccountResponse')
    ListHandshakesForOrganizationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListHandshakesForOrganizationRequest', name: 'ListHandshakesForOrganizationRequest')
    ListHandshakesForOrganizationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListHandshakesForOrganizationResponse', name: 'ListHandshakesForOrganizationResponse')
    ListOrganizationalUnitsForParentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListOrganizationalUnitsForParentRequest', name: 'ListOrganizationalUnitsForParentRequest')
    ListOrganizationalUnitsForParentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListOrganizationalUnitsForParentResponse', name: 'ListOrganizationalUnitsForParentResponse')
    ListParentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListParentsRequest', name: 'ListParentsRequest')
    ListParentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListParentsResponse', name: 'ListParentsResponse')
    ListPoliciesForTargetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListPoliciesForTargetRequest', name: 'ListPoliciesForTargetRequest')
    ListPoliciesForTargetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListPoliciesForTargetResponse', name: 'ListPoliciesForTargetResponse')
    ListPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListPoliciesRequest', name: 'ListPoliciesRequest')
    ListPoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListPoliciesResponse', name: 'ListPoliciesResponse')
    ListRootsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListRootsRequest', name: 'ListRootsRequest')
    ListRootsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListRootsResponse', name: 'ListRootsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTargetsForPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListTargetsForPolicyRequest', name: 'ListTargetsForPolicyRequest')
    ListTargetsForPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListTargetsForPolicyResponse', name: 'ListTargetsForPolicyResponse')
    MalformedPolicyDocumentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#MalformedPolicyDocumentException', name: 'MalformedPolicyDocumentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MasterCannotLeaveOrganizationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#MasterCannotLeaveOrganizationException', name: 'MasterCannotLeaveOrganizationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.organizations#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    MoveAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#MoveAccountRequest', name: 'MoveAccountRequest')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 100000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    Organization = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#Organization', name: 'Organization')
    OrganizationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#OrganizationArn', name: 'OrganizationArn', traits: {"smithy.api#pattern" => "^arn:aws:organizations::\\d{12}:organization\\/o-[a-z0-9]{10,32}$"})
    OrganizationFeatureSet = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#OrganizationFeatureSet', name: 'OrganizationFeatureSet')
    OrganizationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#OrganizationId', name: 'OrganizationId', traits: {"smithy.api#pattern" => "^o-[a-z0-9]{10,32}$"})
    OrganizationNotEmptyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#OrganizationNotEmptyException', name: 'OrganizationNotEmptyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OrganizationalUnit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#OrganizationalUnit', name: 'OrganizationalUnit')
    OrganizationalUnitArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#OrganizationalUnitArn', name: 'OrganizationalUnitArn', traits: {"smithy.api#pattern" => "^arn:aws:organizations::\\d{12}:ou\\/o-[a-z0-9]{10,32}\\/ou-[0-9a-z]{4,32}-[0-9a-z]{8,32}$"})
    OrganizationalUnitId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#OrganizationalUnitId', name: 'OrganizationalUnitId', traits: {"smithy.api#length" => {"min" => 0, "max" => 68}, "smithy.api#pattern" => "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"})
    OrganizationalUnitName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#OrganizationalUnitName', name: 'OrganizationalUnitName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    OrganizationalUnitNotEmptyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#OrganizationalUnitNotEmptyException', name: 'OrganizationalUnitNotEmptyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OrganizationalUnitNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#OrganizationalUnitNotFoundException', name: 'OrganizationalUnitNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OrganizationalUnits = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#OrganizationalUnits', name: 'OrganizationalUnits')
    Parent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#Parent', name: 'Parent')
    ParentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ParentId', name: 'ParentId', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"})
    ParentNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ParentNotFoundException', name: 'ParentNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ParentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#ParentType', name: 'ParentType')
    Parents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#Parents', name: 'Parents')
    Path = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#Path', name: 'Path', traits: {"smithy.api#pattern" => "^(o-[a-z0-9]{10,32}\\/r-[0-9a-z]{4,32}(\\/ou\\-[0-9a-z]{4,32}-[a-z0-9]{8,32})*(\\/\\d{12})*)\\/$"})
    PathToError = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#PathToError', name: 'PathToError')
    Policies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#Policies', name: 'Policies')
    Policy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#Policy', name: 'Policy')
    PolicyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#PolicyArn', name: 'PolicyArn', traits: {"smithy.api#pattern" => "^(arn:aws:organizations::\\d{12}:policy\\/o-[a-z0-9]{10,32}\\/[0-9a-z_]+\\/p-[0-9a-z]{10,32})|(arn:aws:organizations::aws:policy\\/[0-9a-z_]+\\/p-[0-9a-zA-Z_]{10,128})$"})
    PolicyChangesInProgressException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyChangesInProgressException', name: 'PolicyChangesInProgressException', traits: {"smithy.api#error" => "client"})
    PolicyContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#PolicyContent', name: 'PolicyContent', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    PolicyDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#PolicyDescription', name: 'PolicyDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    PolicyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#PolicyId', name: 'PolicyId', traits: {"smithy.api#length" => {"min" => 0, "max" => 130}, "smithy.api#pattern" => "^p-[0-9a-zA-Z_]{8,128}$"})
    PolicyIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#PolicyIds', name: 'PolicyIds')
    PolicyInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyInUseException', name: 'PolicyInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PolicyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#PolicyName', name: 'PolicyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    PolicyNotAttachedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyNotAttachedException', name: 'PolicyNotAttachedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PolicyNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyNotFoundException', name: 'PolicyNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PolicySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicySummary', name: 'PolicySummary')
    PolicyTargetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#PolicyTargetId', name: 'PolicyTargetId', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^(r-[0-9a-z]{4,32})|(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"})
    PolicyTargetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyTargetSummary', name: 'PolicyTargetSummary')
    PolicyTargets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#PolicyTargets', name: 'PolicyTargets')
    PolicyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#PolicyType', name: 'PolicyType')
    PolicyTypeAlreadyEnabledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyTypeAlreadyEnabledException', name: 'PolicyTypeAlreadyEnabledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PolicyTypeNotAvailableForOrganizationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyTypeNotAvailableForOrganizationException', name: 'PolicyTypeNotAvailableForOrganizationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PolicyTypeNotEnabledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyTypeNotEnabledException', name: 'PolicyTypeNotEnabledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PolicyTypeStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#PolicyTypeStatus', name: 'PolicyTypeStatus')
    PolicyTypeSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyTypeSummary', name: 'PolicyTypeSummary')
    PolicyTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#PolicyTypes', name: 'PolicyTypes')
    PutResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PutResourcePolicyRequest', name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PutResourcePolicyResponse', name: 'PutResourcePolicyResponse')
    RegisterDelegatedAdministratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#RegisterDelegatedAdministratorRequest', name: 'RegisterDelegatedAdministratorRequest')
    RemoveAccountFromOrganizationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#RemoveAccountFromOrganizationRequest', name: 'RemoveAccountFromOrganizationRequest')
    ResourcePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ResourcePolicy', name: 'ResourcePolicy')
    ResourcePolicyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ResourcePolicyArn', name: 'ResourcePolicyArn', traits: {"smithy.api#pattern" => "^arn:[a-z0-9][a-z0-9-.]{0,62}:organizations::\\d{12}:resourcepolicy\\/o-[a-z0-9]{10,32}\\/rp-[0-9a-zA-Z_]{4,128}$"})
    ResourcePolicyContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ResourcePolicyContent', name: 'ResourcePolicyContent', traits: {"smithy.api#length" => {"min" => 1, "max" => 40000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ResourcePolicyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ResourcePolicyId', name: 'ResourcePolicyId', traits: {"smithy.api#length" => {"min" => 0, "max" => 131}, "smithy.api#pattern" => "^rp-[0-9a-zA-Z_]{4,128}$"})
    ResourcePolicyNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ResourcePolicyNotFoundException', name: 'ResourcePolicyNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ResourcePolicySummary', name: 'ResourcePolicySummary')
    RoleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#RoleName', name: 'RoleName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\w+=,.@-]{1,64}$"})
    Root = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#Root', name: 'Root')
    RootArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#RootArn', name: 'RootArn', traits: {"smithy.api#pattern" => "^arn:aws:organizations::\\d{12}:root\\/o-[a-z0-9]{10,32}\\/r-[0-9a-z]{4,32}$"})
    RootId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#RootId', name: 'RootId', traits: {"smithy.api#length" => {"min" => 0, "max" => 34}, "smithy.api#pattern" => "^r-[0-9a-z]{4,32}$"})
    RootName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#RootName', name: 'RootName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RootNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#RootNotFoundException', name: 'RootNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Roots = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#Roots', name: 'Roots')
    ServiceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ServiceException', name: 'ServiceException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServicePrincipal = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ServicePrincipal', name: 'ServicePrincipal', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=,.@-]*$"})
    SourceParentNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#SourceParentNotFoundException', name: 'SourceParentNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#TagKeys', name: 'TagKeys')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#TagResourceRequest', name: 'TagResourceRequest')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TaggableResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#TaggableResourceId', name: 'TaggableResourceId', traits: {"smithy.api#length" => {"min" => 0, "max" => 130}, "smithy.api#pattern" => "^(r-[0-9a-z]{4,32})|(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})|(^p-[0-9a-zA-Z_]{8,128})|(^rp-[0-9a-zA-Z_]{4,128})$"})
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#Tags', name: 'Tags')
    TargetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#TargetName', name: 'TargetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TargetNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#TargetNotFoundException', name: 'TargetNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TargetType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#TargetType', name: 'TargetType')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.organizations#Timestamp', name: 'Timestamp')
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnsupportedAPIEndpointException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#UnsupportedAPIEndpointException', name: 'UnsupportedAPIEndpointException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateOrganizationalUnitRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#UpdateOrganizationalUnitRequest', name: 'UpdateOrganizationalUnitRequest')
    UpdateOrganizationalUnitResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#UpdateOrganizationalUnitResponse', name: 'UpdateOrganizationalUnitResponse')
    UpdatePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#UpdatePolicyRequest', name: 'UpdatePolicyRequest')
    UpdatePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#UpdatePolicyResponse', name: 'UpdatePolicyResponse')

    AWSOrganizationsNotInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AWSOrganizationsNotInUseException.type = Types::AWSOrganizationsNotInUseException
    AcceptHandshakeRequest.add_member(:handshake_id, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeId, location_name: 'HandshakeId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the handshake that you want to accept.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for  handshake ID string requires \"h-\" \n    followed by from 8 to 32 lowercase letters or digits.</p>", "smithy.api#required" => {}}))
    AcceptHandshakeRequest.type = Types::AcceptHandshakeRequest
    AcceptHandshakeResponse.add_member(:handshake, Smithy::Schema::Shapes::ShapeRef.new(shape: Handshake, location_name: 'Handshake', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the accepted handshake.</p>"}))
    AcceptHandshakeResponse.type = Types::AcceptHandshakeResponse
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDeniedForDependencyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccessDeniedForDependencyException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedForDependencyExceptionReason, location_name: 'Reason'))
    AccessDeniedForDependencyException.type = Types::AccessDeniedForDependencyException
    AccessDeniedForDependencyExceptionReason.add_member(:access_denied_during_create_service_linked_role, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE"}))
    Account.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the account.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12\n    digits.</p>"}))
    Account.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the account.</p>\n         <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies\">ARN \n    Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>"}))
    Account.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'Email', traits: {"smithy.api#documentation" => "<p>The email address associated with the Amazon Web Services account.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for this parameter is a string of characters that represents a\n            standard internet email address.</p>"}))
    Account.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The friendly name of the account.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> \n    that is used to validate this parameter is a string of any of the characters in the ASCII \n    character range.</p>"}))
    Account.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the account in the organization.</p>"}))
    Account.add_member(:joined_method, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountJoinedMethod, location_name: 'JoinedMethod', traits: {"smithy.api#documentation" => "<p>The method by which the account joined the organization.</p>"}))
    Account.add_member(:joined_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'JoinedTimestamp', traits: {"smithy.api#documentation" => "<p>The date the account became a part of the organization.</p>"}))
    Account.type = Types::Account
    AccountAlreadyClosedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccountAlreadyClosedException.type = Types::AccountAlreadyClosedException
    AccountAlreadyRegisteredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccountAlreadyRegisteredException.type = Types::AccountAlreadyRegisteredException
    AccountJoinedMethod.add_member(:invited, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVITED', traits: {"smithy.api#enumValue" => "INVITED"}))
    AccountJoinedMethod.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    AccountNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccountNotFoundException.type = Types::AccountNotFoundException
    AccountNotRegisteredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccountNotRegisteredException.type = Types::AccountNotRegisteredException
    AccountOwnerNotVerifiedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccountOwnerNotVerifiedException.type = Types::AccountOwnerNotVerifiedException
    AccountStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AccountStatus.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    AccountStatus.add_member(:pending_closure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_CLOSURE', traits: {"smithy.api#enumValue" => "PENDING_CLOSURE"}))
    Accounts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Account)
    ActionType.add_member(:invite_account_to_organization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVITE_ACCOUNT_TO_ORGANIZATION', traits: {"smithy.api#enumValue" => "INVITE"}))
    ActionType.add_member(:enable_all_features, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLE_ALL_FEATURES', traits: {"smithy.api#enumValue" => "ENABLE_ALL_FEATURES"}))
    ActionType.add_member(:approve_all_features, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVE_ALL_FEATURES', traits: {"smithy.api#enumValue" => "APPROVE_ALL_FEATURES"}))
    ActionType.add_member(:add_organizations_service_linked_role, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE', traits: {"smithy.api#enumValue" => "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"}))
    AlreadyInOrganizationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AlreadyInOrganizationException.type = Types::AlreadyInOrganizationException
    AttachPolicyRequest.add_member(:policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the policy that you want to attach to the target. You\n            can get the ID for the policy by calling the <a>ListPolicies</a>\n            operation.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed \n    by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>", "smithy.api#required" => {}}))
    AttachPolicyRequest.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTargetId, location_name: 'TargetId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the root, OU, or account that you want to attach the\n            policy to. You can get the ID by calling the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a>\n            operations.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a target ID string requires one of the \n    following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or \n          digits.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Account</b> - A string that consists of exactly 12 digits.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 \n          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \n          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    AttachPolicyRequest.type = Types::AttachPolicyRequest
    CancelHandshakeRequest.add_member(:handshake_id, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeId, location_name: 'HandshakeId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the handshake that you want to cancel. You can get the\n            ID from the <a>ListHandshakesForOrganization</a> operation.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for  handshake ID string requires \"h-\" \n    followed by from 8 to 32 lowercase letters or digits.</p>", "smithy.api#required" => {}}))
    CancelHandshakeRequest.type = Types::CancelHandshakeRequest
    CancelHandshakeResponse.add_member(:handshake, Smithy::Schema::Shapes::ShapeRef.new(shape: Handshake, location_name: 'Handshake', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the handshake that you canceled.</p>"}))
    CancelHandshakeResponse.type = Types::CancelHandshakeResponse
    Child.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChildId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of this child entity.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a child ID string requires one of the \n    following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Account</b> - A string that consists of exactly 12 digits.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Organizational unit (OU)</b> - A string that begins with\n          \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that \n          contains the OU). This string is followed by a second \"-\" dash and from 8 to 32 additional \n          lowercase letters or digits.</p>\n            </li>\n         </ul>"}))
    Child.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChildType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of this child entity.</p>"}))
    Child.type = Types::Child
    ChildNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ChildNotFoundException.type = Types::ChildNotFoundException
    ChildType.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    ChildType.add_member(:organizational_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATIONAL_UNIT', traits: {"smithy.api#enumValue" => "ORGANIZATIONAL_UNIT"}))
    Children.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Child)
    CloseAccountRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>Retrieves the Amazon Web Services account Id for the current <code>CloseAccount</code> API request.\n        </p>", "smithy.api#required" => {}}))
    CloseAccountRequest.type = Types::CloseAccountRequest
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    ConstraintViolationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ConstraintViolationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationExceptionReason, location_name: 'Reason'))
    ConstraintViolationException.type = Types::ConstraintViolationException
    ConstraintViolationExceptionReason.add_member(:account_number_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_NUMBER_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ACCOUNT_NUMBER_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:handshake_rate_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HANDSHAKE_RATE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "HANDSHAKE_RATE_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:ou_number_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OU_NUMBER_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "OU_NUMBER_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:ou_depth_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OU_DEPTH_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "OU_DEPTH_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:policy_number_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY_NUMBER_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "POLICY_NUMBER_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:policy_content_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY_CONTENT_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "POLICY_CONTENT_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:max_policy_type_attachment_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:min_policy_type_attachment_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:account_cannot_leave_organization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_CANNOT_LEAVE_ORGANIZATION', traits: {"smithy.api#enumValue" => "ACCOUNT_CANNOT_LEAVE_ORGANIZATION"}))
    ConstraintViolationExceptionReason.add_member(:account_cannot_leave_without_eula, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA', traits: {"smithy.api#enumValue" => "ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA"}))
    ConstraintViolationExceptionReason.add_member(:account_cannot_leave_without_phone_verification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION', traits: {"smithy.api#enumValue" => "ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION"}))
    ConstraintViolationExceptionReason.add_member(:master_account_payment_instrument_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED', traits: {"smithy.api#enumValue" => "MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED"}))
    ConstraintViolationExceptionReason.add_member(:member_account_payment_instrument_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED', traits: {"smithy.api#enumValue" => "MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED"}))
    ConstraintViolationExceptionReason.add_member(:account_creation_rate_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:master_account_address_does_not_match_marketplace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE', traits: {"smithy.api#enumValue" => "MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE"}))
    ConstraintViolationExceptionReason.add_member(:master_account_missing_contact_info, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER_ACCOUNT_MISSING_CONTACT_INFO', traits: {"smithy.api#enumValue" => "MASTER_ACCOUNT_MISSING_CONTACT_INFO"}))
    ConstraintViolationExceptionReason.add_member(:master_account_not_govcloud_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED', traits: {"smithy.api#enumValue" => "MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED"}))
    ConstraintViolationExceptionReason.add_member(:organization_not_in_all_features_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION_NOT_IN_ALL_FEATURES_MODE', traits: {"smithy.api#enumValue" => "ORGANIZATION_NOT_IN_ALL_FEATURES_MODE"}))
    ConstraintViolationExceptionReason.add_member(:create_organization_in_billing_mode_unsupported_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION', traits: {"smithy.api#enumValue" => "CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION"}))
    ConstraintViolationExceptionReason.add_member(:email_verification_code_expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_VERIFICATION_CODE_EXPIRED', traits: {"smithy.api#enumValue" => "EMAIL_VERIFICATION_CODE_EXPIRED"}))
    ConstraintViolationExceptionReason.add_member(:wait_period_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAIT_PERIOD_ACTIVE', traits: {"smithy.api#enumValue" => "WAIT_PERIOD_ACTIVE"}))
    ConstraintViolationExceptionReason.add_member(:max_tag_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_TAG_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "MAX_TAG_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:tag_policy_violation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAG_POLICY_VIOLATION', traits: {"smithy.api#enumValue" => "TAG_POLICY_VIOLATION"}))
    ConstraintViolationExceptionReason.add_member(:max_delegated_administrators_for_service_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:cannot_register_master_as_delegated_administrator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR', traits: {"smithy.api#enumValue" => "CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR"}))
    ConstraintViolationExceptionReason.add_member(:cannot_remove_delegated_administrator_from_org, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG', traits: {"smithy.api#enumValue" => "CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG"}))
    ConstraintViolationExceptionReason.add_member(:delegated_administrator_exists_for_this_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE', traits: {"smithy.api#enumValue" => "DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE"}))
    ConstraintViolationExceptionReason.add_member(:policy_type_enabled_for_this_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY_TYPE_ENABLED_FOR_THIS_SERVICE', traits: {"smithy.api#enumValue" => "POLICY_TYPE_ENABLED_FOR_THIS_SERVICE"}))
    ConstraintViolationExceptionReason.add_member(:master_account_missing_business_license, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE', traits: {"smithy.api#enumValue" => "MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE"}))
    ConstraintViolationExceptionReason.add_member(:cannot_close_management_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_CLOSE_MANAGEMENT_ACCOUNT', traits: {"smithy.api#enumValue" => "CANNOT_CLOSE_MANAGEMENT_ACCOUNT"}))
    ConstraintViolationExceptionReason.add_member(:close_account_quota_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSE_ACCOUNT_QUOTA_EXCEEDED', traits: {"smithy.api#enumValue" => "CLOSE_ACCOUNT_QUOTA_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:close_account_requests_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:service_access_not_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_ACCESS_NOT_ENABLED', traits: {"smithy.api#enumValue" => "SERVICE_ACCESS_NOT_ENABLED"}))
    ConstraintViolationExceptionReason.add_member(:invalid_payment_instrument, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PAYMENT_INSTRUMENT', traits: {"smithy.api#enumValue" => "INVALID_PAYMENT_INSTRUMENT"}))
    ConstraintViolationExceptionReason.add_member(:account_creation_not_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_CREATION_NOT_COMPLETE', traits: {"smithy.api#enumValue" => "ACCOUNT_CREATION_NOT_COMPLETE"}))
    ConstraintViolationExceptionReason.add_member(:cannot_register_suspended_account_as_delegated_administrator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_REGISTER_SUSPENDED_ACCOUNT_AS_DELEGATED_ADMINISTRATOR', traits: {"smithy.api#enumValue" => "CANNOT_REGISTER_SUSPENDED_ACCOUNT_AS_DELEGATED_ADMINISTRATOR"}))
    ConstraintViolationExceptionReason.add_member(:all_features_migration_organization_size_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_FEATURES_MIGRATION_ORGANIZATION_SIZE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ALL_FEATURES_MIGRATION_ORGANIZATION_SIZE_LIMIT_EXCEEDED"}))
    CreateAccountFailureReason.add_member(:account_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ACCOUNT_LIMIT_EXCEEDED"}))
    CreateAccountFailureReason.add_member(:email_already_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_ALREADY_EXISTS', traits: {"smithy.api#enumValue" => "EMAIL_ALREADY_EXISTS"}))
    CreateAccountFailureReason.add_member(:invalid_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ADDRESS', traits: {"smithy.api#enumValue" => "INVALID_ADDRESS"}))
    CreateAccountFailureReason.add_member(:invalid_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_EMAIL', traits: {"smithy.api#enumValue" => "INVALID_EMAIL"}))
    CreateAccountFailureReason.add_member(:concurrent_account_modification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONCURRENT_ACCOUNT_MODIFICATION', traits: {"smithy.api#enumValue" => "CONCURRENT_ACCOUNT_MODIFICATION"}))
    CreateAccountFailureReason.add_member(:internal_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_FAILURE', traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    CreateAccountFailureReason.add_member(:govcloud_account_already_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GOVCLOUD_ACCOUNT_ALREADY_EXISTS', traits: {"smithy.api#enumValue" => "GOVCLOUD_ACCOUNT_ALREADY_EXISTS"}))
    CreateAccountFailureReason.add_member(:missing_business_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_BUSINESS_VALIDATION', traits: {"smithy.api#enumValue" => "MISSING_BUSINESS_VALIDATION"}))
    CreateAccountFailureReason.add_member(:failed_business_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_BUSINESS_VALIDATION', traits: {"smithy.api#enumValue" => "FAILED_BUSINESS_VALIDATION"}))
    CreateAccountFailureReason.add_member(:pending_business_validatio_nv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_BUSINESS_VALIDATIONv', traits: {"smithy.api#enumValue" => "PENDING_BUSINESS_VALIDATION"}))
    CreateAccountFailureReason.add_member(:invalid_identity_for_business_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_IDENTITY_FOR_BUSINESS_VALIDATION', traits: {"smithy.api#enumValue" => "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION"}))
    CreateAccountFailureReason.add_member(:unknown_business_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_BUSINESS_VALIDATION', traits: {"smithy.api#enumValue" => "UNKNOWN_BUSINESS_VALIDATION"}))
    CreateAccountFailureReason.add_member(:missing_payment_instrument, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_PAYMENT_INSTRUMENT', traits: {"smithy.api#enumValue" => "MISSING_PAYMENT_INSTRUMENT"}))
    CreateAccountFailureReason.add_member(:invalid_payment_instrument, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PAYMENT_INSTRUMENT', traits: {"smithy.api#enumValue" => "INVALID_PAYMENT_INSTRUMENT"}))
    CreateAccountFailureReason.add_member(:update_existing_resource_policy_with_tags_not_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED', traits: {"smithy.api#enumValue" => "UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED"}))
    CreateAccountRequest.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'Email', traits: {"smithy.api#documentation" => "<p>The email address of the owner to assign to the new member account. This email address\n            must not already be associated with another Amazon Web Services account. You must use a valid email\n            address to complete account creation.</p>\n         <p>The rules for a valid email address:</p>\n         <ul>\n            <li>\n               <p>The address must be a minimum of 6 and a maximum of 64 characters long.</p>\n            </li>\n            <li>\n               <p>All characters must be 7-bit ASCII characters.</p>\n            </li>\n            <li>\n               <p>There must be one and only one @ symbol, which separates the local name from\n                    the domain name.</p>\n            </li>\n            <li>\n               <p>The local name can't contain any of the following characters:</p>\n               <p>whitespace, \" ' ( ) < > [ ] : ; , \\ | % &</p>\n            </li>\n            <li>\n               <p>The local name can't begin with a dot (.)</p>\n            </li>\n            <li>\n               <p>The domain name can consist of only the characters [a-z],[A-Z],[0-9], hyphen\n                    (-), or dot (.)</p>\n            </li>\n            <li>\n               <p>The domain name can't begin or end with a hyphen (-) or dot (.)</p>\n            </li>\n            <li>\n               <p>The domain name must contain at least one dot</p>\n            </li>\n         </ul>\n         <p>You can't access the root user of the account or remove an account that was created\n            with an invalid email address.</p>", "smithy.api#required" => {}}))
    CreateAccountRequest.add_member(:account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountName, location_name: 'AccountName', traits: {"smithy.api#documentation" => "<p>The friendly name of the member account.</p>", "smithy.api#required" => {}}))
    CreateAccountRequest.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'RoleName', traits: {"smithy.api#documentation" => "<p>The name of an IAM role that Organizations automatically preconfigures in the new member\n            account. This role trusts the management account, allowing users in the management\n            account to assume the role, as permitted by the management account administrator. The\n            role has administrator permissions in the new member account.</p>\n         <p>If you don't specify this parameter, the role name defaults to\n                <code>OrganizationAccountAccessRole</code>.</p>\n         <p>For more information about how to use this role to access the member account, see the\n            following links:</p>\n         <ul>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role\">Creating the OrganizationAccountAccessRole in an invited member\n                        account</a> in the <i>Organizations User Guide</i>\n               </p>\n            </li>\n            <li>\n               <p>Steps 2 and 3 in <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html\">IAM Tutorial:\n                        Delegate access across Amazon Web Services accounts using IAM roles</a> in the\n                        <i>IAM User Guide</i>\n               </p>\n            </li>\n         </ul>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> that \n    is used to validate this parameter. The pattern can include uppercase \n    letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>"}))
    CreateAccountRequest.add_member(:iam_user_access_to_billing, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMUserAccessToBilling, location_name: 'IamUserAccessToBilling', traits: {"smithy.api#documentation" => "<p>If set to <code>ALLOW</code>, the new account enables IAM users to access account\n            billing information <i>if</i> they have the required permissions. If set\n            to <code>DENY</code>, only the root user of the new account can access account billing\n            information. For more information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate\">About IAM\n                access to the Billing and Cost Management console</a> in the\n            <i>Amazon Web Services Billing and Cost Management User Guide</i>.</p>\n         <p>If you don't specify this parameter, the value defaults to <code>ALLOW</code>, and\n            IAM users and roles with the required permissions can access billing information for\n            the new account.</p>"}))
    CreateAccountRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags that you want to attach to the newly created account. For each tag in\n            the list, you must specify both a tag key and a value. You can set the value to an empty\n            string, but you can't set it to <code>null</code>. For more information about tagging,\n            see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html\">Tagging Organizations\n                resources</a> in the Organizations User Guide.</p>\n         <note>\n            <p>If any one of the tags is not valid or if you exceed the maximum allowed number of\n                tags for an account, then the entire request fails and the account is not\n                created.</p>\n         </note>"}))
    CreateAccountRequest.type = Types::CreateAccountRequest
    CreateAccountResponse.add_member(:create_account_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountStatus, location_name: 'CreateAccountStatus', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the request to create an account. This\n            response structure might not be fully populated when you first receive it because\n            account creation is an asynchronous process. You can pass the returned\n                <code>CreateAccountStatus</code> ID as a parameter to <a>DescribeCreateAccountStatus</a> to get status about the progress of the\n            request at later times. You can also check the CloudTrail log for the\n                <code>CreateAccountResult</code> event. For more information, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_security_incident-response.html\">Logging and monitoring in Organizations</a> in the\n                <i>Organizations User Guide</i>.</p>"}))
    CreateAccountResponse.type = Types::CreateAccountResponse
    CreateAccountState.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CreateAccountState.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    CreateAccountState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CreateAccountStates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountState)
    CreateAccountStatus.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountRequestId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) that references this request. You get this value from the\n            response of the initial <a>CreateAccount</a> request to create the\n            account.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a create account request ID string \n    requires \"car-\" followed by from 8 to 32 lowercase letters or digits.</p>"}))
    CreateAccountStatus.add_member(:account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountName, location_name: 'AccountName', traits: {"smithy.api#documentation" => "<p>The account name given to the account when it was created.</p>"}))
    CreateAccountStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The status of the asynchronous request to create an Amazon Web Services account.</p>"}))
    CreateAccountStatus.add_member(:requested_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RequestedTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time that the request was made for the account creation.</p>"}))
    CreateAccountStatus.add_member(:completed_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CompletedTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time that the account was created and the request completed.</p>"}))
    CreateAccountStatus.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>If the account was created successfully, the unique identifier (ID) of the new\n            account.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12\n    digits.</p>"}))
    CreateAccountStatus.add_member(:gov_cloud_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'GovCloudAccountId', traits: {"smithy.api#documentation" => "<p>If the account was created successfully, the unique identifier (ID) of the new account\n            in the Amazon Web Services GovCloud (US) Region.</p>"}))
    CreateAccountStatus.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountFailureReason, location_name: 'FailureReason', traits: {"smithy.api#documentation" => "<p>If the request failed, a description of the reason for the failure.</p>\n         <ul>\n            <li>\n               <p>ACCOUNT_LIMIT_EXCEEDED: The account couldn't be created because you reached\n                    the limit on the number of accounts in your organization.</p>\n            </li>\n            <li>\n               <p>CONCURRENT_ACCOUNT_MODIFICATION: You already submitted a request with the same\n                    information.</p>\n            </li>\n            <li>\n               <p>EMAIL_ALREADY_EXISTS: The account could not be created because another Amazon Web Services\n                    account with that email address already exists.</p>\n            </li>\n            <li>\n               <p>FAILED_BUSINESS_VALIDATION: The Amazon Web Services account that owns your organization\n                    failed to receive business license validation.</p>\n            </li>\n            <li>\n               <p>GOVCLOUD_ACCOUNT_ALREADY_EXISTS: The account in the Amazon Web Services GovCloud (US) Region\n                    could not be created because this Region already includes an account with that\n                    email address.</p>\n            </li>\n            <li>\n               <p>IDENTITY_INVALID_BUSINESS_VALIDATION: The Amazon Web Services account that owns your\n                    organization can't complete business license validation because it doesn't have\n                    valid identity data.</p>\n            </li>\n            <li>\n               <p>INVALID_ADDRESS: The account could not be created because the address you\n                    provided is not valid.</p>\n            </li>\n            <li>\n               <p>INVALID_EMAIL: The account could not be created because the email address you\n                    provided is not valid.</p>\n            </li>\n            <li>\n               <p>INVALID_PAYMENT_INSTRUMENT: The Amazon Web Services account that owns your organization does\n                    not have a supported payment method associated with the account. Amazon Web Services does not\n                    support cards issued by financial institutions in Russia or Belarus. For more\n                    information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/manage-general.html\">Managing your\n                        Amazon Web Services payments</a>.</p>\n            </li>\n            <li>\n               <p>INTERNAL_FAILURE: The account could not be created because of an internal\n                    failure. Try again later. If the problem persists, contact Amazon Web Services Customer\n                    Support.</p>\n            </li>\n            <li>\n               <p>MISSING_BUSINESS_VALIDATION: The Amazon Web Services account that owns your organization has\n                    not received Business Validation.</p>\n            </li>\n            <li>\n               <p> MISSING_PAYMENT_INSTRUMENT: You must configure the management account with a\n                    valid payment method, such as a credit card.</p>\n            </li>\n            <li>\n               <p>PENDING_BUSINESS_VALIDATION: The Amazon Web Services account that owns your organization is\n                    still in the process of completing business license validation.</p>\n            </li>\n            <li>\n               <p>UNKNOWN_BUSINESS_VALIDATION: The Amazon Web Services account that owns your organization has\n                    an unknown issue with business license validation.</p>\n            </li>\n         </ul>"}))
    CreateAccountStatus.type = Types::CreateAccountStatus
    CreateAccountStatusNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    CreateAccountStatusNotFoundException.type = Types::CreateAccountStatusNotFoundException
    CreateAccountStatuses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountStatus)
    CreateGovCloudAccountRequest.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'Email', traits: {"smithy.api#documentation" => "<p>Specifies the email address of the owner to assign to the new member account in the\n            commercial Region. This email address must not already be associated with another\n            Amazon Web Services account. You must use a valid email address to complete account creation.</p>\n         <p>The rules for a valid email address:</p>\n         <ul>\n            <li>\n               <p>The address must be a minimum of 6 and a maximum of 64 characters long.</p>\n            </li>\n            <li>\n               <p>All characters must be 7-bit ASCII characters.</p>\n            </li>\n            <li>\n               <p>There must be one and only one @ symbol, which separates the local name from\n                    the domain name.</p>\n            </li>\n            <li>\n               <p>The local name can't contain any of the following characters:</p>\n               <p>whitespace, \" ' ( ) < > [ ] : ; , \\ | % &</p>\n            </li>\n            <li>\n               <p>The local name can't begin with a dot (.)</p>\n            </li>\n            <li>\n               <p>The domain name can consist of only the characters [a-z],[A-Z],[0-9], hyphen\n                    (-), or dot (.)</p>\n            </li>\n            <li>\n               <p>The domain name can't begin or end with a hyphen (-) or dot (.)</p>\n            </li>\n            <li>\n               <p>The domain name must contain at least one dot</p>\n            </li>\n         </ul>\n         <p>You can't access the root user of the account or remove an account that was created\n            with an invalid email address. Like all request parameters for\n                <code>CreateGovCloudAccount</code>, the request for the email address for the Amazon Web Services\n            GovCloud (US) account originates from the commercial Region, not from the Amazon Web Services GovCloud\n            (US) Region.</p>", "smithy.api#required" => {}}))
    CreateGovCloudAccountRequest.add_member(:account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountName, location_name: 'AccountName', traits: {"smithy.api#documentation" => "<p>The friendly name of the member account. </p>\n         <p>The account name can consist of only the characters [a-z],[A-Z],[0-9], hyphen (-), or\n            dot (.) You can't separate characters with a dash (–).</p>", "smithy.api#required" => {}}))
    CreateGovCloudAccountRequest.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'RoleName', traits: {"smithy.api#documentation" => "<p>(Optional)</p>\n         <p>The name of an IAM role that Organizations automatically preconfigures in the new member\n            accounts in both the Amazon Web Services GovCloud (US) Region and in the commercial Region. This role\n            trusts the management account, allowing users in the management account to assume the\n            role, as permitted by the management account administrator. The role has administrator\n            permissions in the new member account.</p>\n         <p>If you don't specify this parameter, the role name defaults to\n                <code>OrganizationAccountAccessRole</code>.</p>\n         <p>For more information about how to use this role to access the member account, see the\n            following links:</p>\n         <ul>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role\">Creating the OrganizationAccountAccessRole in an invited member\n                        account</a> in the <i>Organizations User Guide</i>\n               </p>\n            </li>\n            <li>\n               <p>Steps 2 and 3 in <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html\">IAM Tutorial:\n                        Delegate access across Amazon Web Services accounts using IAM roles</a> in the\n                        <i>IAM User Guide</i>\n               </p>\n            </li>\n         </ul>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> that \n    is used to validate this parameter. The pattern can include uppercase \n    letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>"}))
    CreateGovCloudAccountRequest.add_member(:iam_user_access_to_billing, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMUserAccessToBilling, location_name: 'IamUserAccessToBilling', traits: {"smithy.api#documentation" => "<p>If set to <code>ALLOW</code>, the new linked account in the commercial Region enables\n            IAM users to access account billing information <i>if</i> they have the\n            required permissions. If set to <code>DENY</code>, only the root user of the new account\n            can access account billing information. For more information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate\">About IAM\n                access to the Billing and Cost Management console</a> in the\n            <i>Amazon Web Services Billing and Cost Management User Guide</i>.</p>\n         <p>If you don't specify this parameter, the value defaults to <code>ALLOW</code>, and\n            IAM users and roles with the required permissions can access billing information for\n            the new account.</p>"}))
    CreateGovCloudAccountRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags that you want to attach to the newly created account. These tags are\n            attached to the commercial account associated with the GovCloud account, and not to the\n            GovCloud account itself. To add tags to the actual GovCloud account, call the <a>TagResource</a> operation in the GovCloud region after the new GovCloud\n            account exists.</p>\n         <p>For each tag in the list, you must specify both a tag key and a value. You can set the\n            value to an empty string, but you can't set it to <code>null</code>. For more\n            information about tagging, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html\">Tagging Organizations resources</a> in the\n            Organizations User Guide.</p>\n         <note>\n            <p>If any one of the tags is not valid or if you exceed the maximum allowed number of\n                tags for an account, then the entire request fails and the account is not\n                created.</p>\n         </note>"}))
    CreateGovCloudAccountRequest.type = Types::CreateGovCloudAccountRequest
    CreateGovCloudAccountResponse.add_member(:create_account_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountStatus, location_name: 'CreateAccountStatus'))
    CreateGovCloudAccountResponse.type = Types::CreateGovCloudAccountResponse
    CreateOrganizationRequest.add_member(:feature_set, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationFeatureSet, location_name: 'FeatureSet', traits: {"smithy.api#documentation" => "<p>Specifies the feature set supported by the new organization. Each feature set supports\n            different levels of functionality.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CONSOLIDATED_BILLING</code>: All member accounts have their bills\n                    consolidated to and paid by the management account. For more information, see\n                        <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only\">Consolidated billing</a> in the\n                    <i>Organizations User Guide</i>.</p>\n               <p> The consolidated billing feature subset isn't available for organizations in\n                    the Amazon Web Services GovCloud (US) Region.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ALL</code>: In addition to all the features supported by the\n                    consolidated billing feature set, the management account can also apply any\n                    policy type to any member account in the organization. For more information, see\n                        <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all\">All\n                        features</a> in the <i>Organizations User Guide</i>.</p>\n            </li>\n         </ul>"}))
    CreateOrganizationRequest.type = Types::CreateOrganizationRequest
    CreateOrganizationResponse.add_member(:organization, Smithy::Schema::Shapes::ShapeRef.new(shape: Organization, location_name: 'Organization', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the newly created organization.</p>"}))
    CreateOrganizationResponse.type = Types::CreateOrganizationResponse
    CreateOrganizationalUnitRequest.add_member(:parent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParentId, location_name: 'ParentId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the parent root or OU that you want to create the new OU\n            in.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the \n    following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or \n          digits.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32\n          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \n          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateOrganizationalUnitRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The friendly name to assign to the new OU.</p>", "smithy.api#required" => {}}))
    CreateOrganizationalUnitRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags that you want to attach to the newly created OU. For each tag in the\n            list, you must specify both a tag key and a value. You can set the value to an empty\n            string, but you can't set it to <code>null</code>. For more information about tagging,\n            see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html\">Tagging Organizations\n                resources</a> in the Organizations User Guide.</p>\n         <note>\n            <p>If any one of the tags is not valid or if you exceed the allowed number of tags\n                for an OU, then the entire request fails and the OU is not created.</p>\n         </note>"}))
    CreateOrganizationalUnitRequest.type = Types::CreateOrganizationalUnitRequest
    CreateOrganizationalUnitResponse.add_member(:organizational_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnit, location_name: 'OrganizationalUnit', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the newly created OU.</p>"}))
    CreateOrganizationalUnitResponse.type = Types::CreateOrganizationalUnitResponse
    CreatePolicyRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The policy text content to add to the new policy. The text that you supply must adhere\n            to the rules of the policy type you specify in the <code>Type</code> parameter. </p>\n         <p>The maximum size of a policy document depends on the policy's type. For more\n            information, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#min-max-values\">Maximum and minimum values</a> in the\n            <i>Organizations User Guide</i>.</p>", "smithy.api#required" => {}}))
    CreatePolicyRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>An optional description to assign to the policy.</p>", "smithy.api#required" => {}}))
    CreatePolicyRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The friendly name to assign to the policy.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> \n    that is used to validate this parameter is a string of any of the characters in the ASCII \n    character range.</p>", "smithy.api#required" => {}}))
    CreatePolicyRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of policy to create. You can specify one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html\">SERVICE_CONTROL_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html\">RESOURCE_CONTROL_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html\">DECLARATIVE_POLICY_EC2</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html\">CHATBOT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html\">SECURITYHUB_POLICY</a>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreatePolicyRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags that you want to attach to the newly created policy. For each tag in\n            the list, you must specify both a tag key and a value. You can set the value to an empty\n            string, but you can't set it to <code>null</code>. For more information about tagging,\n            see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html\">Tagging Organizations\n                resources</a> in the Organizations User Guide.</p>\n         <note>\n            <p>If any one of the tags is not valid or if you exceed the allowed number of tags\n                for a policy, then the entire request fails and the policy is not created.</p>\n         </note>"}))
    CreatePolicyRequest.type = Types::CreatePolicyRequest
    CreatePolicyResponse.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the newly created policy.</p>"}))
    CreatePolicyResponse.type = Types::CreatePolicyResponse
    DeclineHandshakeRequest.add_member(:handshake_id, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeId, location_name: 'HandshakeId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the handshake that you want to decline. You can get the\n            ID from the <a>ListHandshakesForAccount</a> operation.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for  handshake ID string requires \"h-\" \n    followed by from 8 to 32 lowercase letters or digits.</p>", "smithy.api#required" => {}}))
    DeclineHandshakeRequest.type = Types::DeclineHandshakeRequest
    DeclineHandshakeResponse.add_member(:handshake, Smithy::Schema::Shapes::ShapeRef.new(shape: Handshake, location_name: 'Handshake', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the declined handshake. The state is updated\n            to show the value <code>DECLINED</code>.</p>"}))
    DeclineHandshakeResponse.type = Types::DeclineHandshakeResponse
    DelegatedAdministrator.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the delegated administrator's account.</p>"}))
    DelegatedAdministrator.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the delegated administrator's account.</p>"}))
    DelegatedAdministrator.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'Email', traits: {"smithy.api#documentation" => "<p>The email address that is associated with the delegated administrator's Amazon Web Services\n            account.</p>"}))
    DelegatedAdministrator.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The friendly name of the delegated administrator's account.</p>"}))
    DelegatedAdministrator.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the delegated administrator's account in the organization.</p>"}))
    DelegatedAdministrator.add_member(:joined_method, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountJoinedMethod, location_name: 'JoinedMethod', traits: {"smithy.api#documentation" => "<p>The method by which the delegated administrator's account joined the\n            organization.</p>"}))
    DelegatedAdministrator.add_member(:joined_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'JoinedTimestamp', traits: {"smithy.api#documentation" => "<p>The date when the delegated administrator's account became a part of the\n            organization.</p>"}))
    DelegatedAdministrator.add_member(:delegation_enabled_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DelegationEnabledDate', traits: {"smithy.api#documentation" => "<p>The date when the account was made a delegated administrator.</p>"}))
    DelegatedAdministrator.type = Types::DelegatedAdministrator
    DelegatedAdministrators.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DelegatedAdministrator)
    DelegatedService.add_member(:service_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'ServicePrincipal', traits: {"smithy.api#documentation" => "<p>The name of an Amazon Web Services service that can request an operation for the specified service.\n            This is typically in the form of a URL, such as:\n                <code>\n               <i>servicename</i>.amazonaws.com</code>.</p>"}))
    DelegatedService.add_member(:delegation_enabled_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DelegationEnabledDate', traits: {"smithy.api#documentation" => "<p>The date that the account became a delegated administrator for this service. </p>"}))
    DelegatedService.type = Types::DelegatedService
    DelegatedServices.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DelegatedService)
    DeleteOrganizationalUnitRequest.add_member(:organizational_unit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'OrganizationalUnitId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the organizational unit that you want to delete. You can\n            get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an organizational unit ID string requires \n    \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the \n    OU). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters \n    or digits.</p>", "smithy.api#required" => {}}))
    DeleteOrganizationalUnitRequest.type = Types::DeleteOrganizationalUnitRequest
    DeletePolicyRequest.add_member(:policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the policy that you want to delete. You can get the ID\n            from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>\n            operations.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed \n    by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>", "smithy.api#required" => {}}))
    DeletePolicyRequest.type = Types::DeletePolicyRequest
    DeregisterDelegatedAdministratorRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The account ID number of the member account in the organization that you want to\n            deregister as a delegated administrator.</p>", "smithy.api#required" => {}}))
    DeregisterDelegatedAdministratorRequest.add_member(:service_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'ServicePrincipal', traits: {"smithy.api#documentation" => "<p>The service principal name of an Amazon Web Services service for which the account is a delegated\n            administrator.</p>\n         <p>Delegated administrator privileges are revoked for only the specified Amazon Web Services service\n            from the member account. If the specified service is the only service for which the\n            member account is a delegated administrator, the operation also revokes Organizations read action\n            permissions.</p>", "smithy.api#required" => {}}))
    DeregisterDelegatedAdministratorRequest.type = Types::DeregisterDelegatedAdministratorRequest
    DescribeAccountRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the Amazon Web Services account that you want information about. You\n            can get the ID from the <a>ListAccounts</a> or <a>ListAccountsForParent</a> operations.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12\n    digits.</p>", "smithy.api#required" => {}}))
    DescribeAccountRequest.type = Types::DescribeAccountRequest
    DescribeAccountResponse.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Account, location_name: 'Account', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the requested account.</p>"}))
    DescribeAccountResponse.type = Types::DescribeAccountResponse
    DescribeCreateAccountStatusRequest.add_member(:create_account_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountRequestId, location_name: 'CreateAccountRequestId', traits: {"smithy.api#documentation" => "<p>Specifies the <code>Id</code> value that uniquely identifies the\n                <code>CreateAccount</code> request. You can get the value from the\n                <code>CreateAccountStatus.Id</code> response in an earlier <a>CreateAccount</a> request, or from the <a>ListCreateAccountStatus</a> operation.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a create account request ID string \n    requires \"car-\" followed by from 8 to 32 lowercase letters or digits.</p>", "smithy.api#required" => {}}))
    DescribeCreateAccountStatusRequest.type = Types::DescribeCreateAccountStatusRequest
    DescribeCreateAccountStatusResponse.add_member(:create_account_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountStatus, location_name: 'CreateAccountStatus', traits: {"smithy.api#documentation" => "<p>A structure that contains the current status of an account creation request.</p>"}))
    DescribeCreateAccountStatusResponse.type = Types::DescribeCreateAccountStatusResponse
    DescribeEffectivePolicyRequest.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyType, location_name: 'PolicyType', traits: {"smithy.api#documentation" => "<p>The type of policy that you want information about. You can specify one of the\n            following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html\">DECLARATIVE_POLICY_EC2</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html\">CHATBOT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html\">SECURITYHUB_POLICY</a>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DescribeEffectivePolicyRequest.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTargetId, location_name: 'TargetId', traits: {"smithy.api#documentation" => "<p>When you're signed in as the management account, specify the ID of the account that\n            you want details about. Specifying an organization root or organizational unit (OU) as\n            the target is not supported.</p>"}))
    DescribeEffectivePolicyRequest.type = Types::DescribeEffectivePolicyRequest
    DescribeEffectivePolicyResponse.add_member(:effective_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicy, location_name: 'EffectivePolicy', traits: {"smithy.api#documentation" => "<p>The contents of the effective policy.</p>"}))
    DescribeEffectivePolicyResponse.type = Types::DescribeEffectivePolicyResponse
    DescribeHandshakeRequest.add_member(:handshake_id, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeId, location_name: 'HandshakeId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the handshake that you want information about. You can\n            get the ID from the original call to <a>InviteAccountToOrganization</a>, or\n            from a call to <a>ListHandshakesForAccount</a> or <a>ListHandshakesForOrganization</a>.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for  handshake ID string requires \"h-\" \n    followed by from 8 to 32 lowercase letters or digits.</p>", "smithy.api#required" => {}}))
    DescribeHandshakeRequest.type = Types::DescribeHandshakeRequest
    DescribeHandshakeResponse.add_member(:handshake, Smithy::Schema::Shapes::ShapeRef.new(shape: Handshake, location_name: 'Handshake', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the specified handshake.</p>"}))
    DescribeHandshakeResponse.type = Types::DescribeHandshakeResponse
    DescribeOrganizationResponse.add_member(:organization, Smithy::Schema::Shapes::ShapeRef.new(shape: Organization, location_name: 'Organization', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the organization.</p>\n         <important>\n            <p>The <code>AvailablePolicyTypes</code> part of the response is deprecated, and you\n                shouldn't use it in your apps. It doesn't include any policy type supported by Organizations\n                other than SCPs. In the China (Ningxia) Region, no policy type is included.\n                To determine which policy types are enabled in your organization,\n                use the <code>\n                  <a>ListRoots</a>\n               </code> operation.</p>\n         </important>"}))
    DescribeOrganizationResponse.type = Types::DescribeOrganizationResponse
    DescribeOrganizationalUnitRequest.add_member(:organizational_unit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'OrganizationalUnitId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the organizational unit that you want details about. You\n            can get the ID from the <a>ListOrganizationalUnitsForParent</a>\n            operation.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an organizational unit ID string requires \n    \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the \n    OU). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters \n    or digits.</p>", "smithy.api#required" => {}}))
    DescribeOrganizationalUnitRequest.type = Types::DescribeOrganizationalUnitRequest
    DescribeOrganizationalUnitResponse.add_member(:organizational_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnit, location_name: 'OrganizationalUnit', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the specified OU.</p>"}))
    DescribeOrganizationalUnitResponse.type = Types::DescribeOrganizationalUnitResponse
    DescribePolicyRequest.add_member(:policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the policy that you want details about. You can get the\n            ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>\n            operations.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed \n    by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>", "smithy.api#required" => {}}))
    DescribePolicyRequest.type = Types::DescribePolicyRequest
    DescribePolicyResponse.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the specified policy.</p>"}))
    DescribePolicyResponse.type = Types::DescribePolicyResponse
    DescribeResourcePolicyResponse.add_member(:resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'ResourcePolicy', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the resource policy.</p>"}))
    DescribeResourcePolicyResponse.type = Types::DescribeResourcePolicyResponse
    DestinationParentNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DestinationParentNotFoundException.type = Types::DestinationParentNotFoundException
    DetachPolicyRequest.add_member(:policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the policy you want to detach. You can get the ID from\n            the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>\n            operations.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed \n    by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>", "smithy.api#required" => {}}))
    DetachPolicyRequest.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTargetId, location_name: 'TargetId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the root, OU, or account that you want to detach the\n            policy from. You can get the ID from the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a>\n            operations.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a target ID string requires one of the \n    following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or \n          digits.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Account</b> - A string that consists of exactly 12 digits.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 \n          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \n          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DetachPolicyRequest.type = Types::DetachPolicyRequest
    DisableAWSServiceAccessRequest.add_member(:service_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'ServicePrincipal', traits: {"smithy.api#documentation" => "<p>The service principal name of the Amazon Web Services service for which you want to disable\n            integration with your organization. This is typically in the form of a URL, such as\n                    <code>\n               <i>service-abbreviation</i>.amazonaws.com</code>.</p>", "smithy.api#required" => {}}))
    DisableAWSServiceAccessRequest.type = Types::DisableAWSServiceAccessRequest
    DisablePolicyTypeRequest.add_member(:root_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RootId, location_name: 'RootId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the root in which you want to disable a policy type. You\n            can get the ID from the <a>ListRoots</a> operation.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a root ID string requires \"r-\" followed by \n    from 4 to 32 lowercase letters or digits.</p>", "smithy.api#required" => {}}))
    DisablePolicyTypeRequest.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"smithy.api#documentation" => "<p>The policy type that you want to disable in this root. You can specify one of the\n            following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html\">SERVICE_CONTROL_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html\">RESOURCE_CONTROL_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html\">DECLARATIVE_POLICY_EC2</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html\">CHATBOT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html\">SECURITYHUB_POLICY</a>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DisablePolicyTypeRequest.type = Types::DisablePolicyTypeRequest
    DisablePolicyTypeResponse.add_member(:root, Smithy::Schema::Shapes::ShapeRef.new(shape: Root, location_name: 'Root', traits: {"smithy.api#documentation" => "<p>A structure that shows the root with the updated list of enabled policy types.</p>"}))
    DisablePolicyTypeResponse.type = Types::DisablePolicyTypeResponse
    DuplicateAccountException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DuplicateAccountException.type = Types::DuplicateAccountException
    DuplicateHandshakeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DuplicateHandshakeException.type = Types::DuplicateHandshakeException
    DuplicateOrganizationalUnitException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DuplicateOrganizationalUnitException.type = Types::DuplicateOrganizationalUnitException
    DuplicatePolicyAttachmentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DuplicatePolicyAttachmentException.type = Types::DuplicatePolicyAttachmentException
    DuplicatePolicyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DuplicatePolicyException.type = Types::DuplicatePolicyException
    EffectivePolicy.add_member(:policy_content, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyContent, location_name: 'PolicyContent', traits: {"smithy.api#documentation" => "<p>The text content of the policy.</p>"}))
    EffectivePolicy.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time of the last update to this policy.</p>"}))
    EffectivePolicy.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTargetId, location_name: 'TargetId', traits: {"smithy.api#documentation" => "<p>The account ID of the policy target. </p>"}))
    EffectivePolicy.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyType, location_name: 'PolicyType', traits: {"smithy.api#documentation" => "<p>The policy type.</p>"}))
    EffectivePolicy.type = Types::EffectivePolicy
    EffectivePolicyNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    EffectivePolicyNotFoundException.type = Types::EffectivePolicyNotFoundException
    EffectivePolicyType.add_member(:tag_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAG_POLICY', traits: {"smithy.api#enumValue" => "TAG_POLICY"}))
    EffectivePolicyType.add_member(:backup_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKUP_POLICY', traits: {"smithy.api#enumValue" => "BACKUP_POLICY"}))
    EffectivePolicyType.add_member(:aiservices_opt_out_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AISERVICES_OPT_OUT_POLICY', traits: {"smithy.api#enumValue" => "AISERVICES_OPT_OUT_POLICY"}))
    EffectivePolicyType.add_member(:chatbot_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHATBOT_POLICY', traits: {"smithy.api#enumValue" => "CHATBOT_POLICY"}))
    EffectivePolicyType.add_member(:declarative_policy_ec2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECLARATIVE_POLICY_EC2', traits: {"smithy.api#enumValue" => "DECLARATIVE_POLICY_EC2"}))
    EffectivePolicyType.add_member(:securityhub_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITYHUB_POLICY', traits: {"smithy.api#enumValue" => "SECURITYHUB_POLICY"}))
    EffectivePolicyValidationError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code for the validation error. For example, <code>ELEMENTS_TOO_MANY</code>.</p>"}))
    EffectivePolicyValidationError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message for the validation error.</p>"}))
    EffectivePolicyValidationError.add_member(:path_to_error, Smithy::Schema::Shapes::ShapeRef.new(shape: PathToError, location_name: 'PathToError', traits: {"smithy.api#documentation" => "<p>The path within the effective policy where the validation error occurred.</p>"}))
    EffectivePolicyValidationError.add_member(:contributing_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyIds, location_name: 'ContributingPolicies', traits: {"smithy.api#documentation" => "<p>The individual policies <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_inheritance_mgmt.html\">inherited</a>  and <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_policies_attach.html\">attached</a> to the account which contributed to the validation error.</p>"}))
    EffectivePolicyValidationError.type = Types::EffectivePolicyValidationError
    EffectivePolicyValidationErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyValidationError)
    EnableAWSServiceAccessRequest.add_member(:service_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'ServicePrincipal', traits: {"smithy.api#documentation" => "<p>The service principal name of the Amazon Web Services service for which you want to enable\n            integration with your organization. This is typically in the form of a URL, such as\n                    <code>\n               <i>service-abbreviation</i>.amazonaws.com</code>.</p>", "smithy.api#required" => {}}))
    EnableAWSServiceAccessRequest.type = Types::EnableAWSServiceAccessRequest
    EnableAllFeaturesRequest.type = Types::EnableAllFeaturesRequest
    EnableAllFeaturesResponse.add_member(:handshake, Smithy::Schema::Shapes::ShapeRef.new(shape: Handshake, location_name: 'Handshake', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the handshake created to support this request\n            to enable all features in the organization.</p>"}))
    EnableAllFeaturesResponse.type = Types::EnableAllFeaturesResponse
    EnablePolicyTypeRequest.add_member(:root_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RootId, location_name: 'RootId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the root in which you want to enable a policy type. You\n            can get the ID from the <a>ListRoots</a> operation.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a root ID string requires \"r-\" followed by \n    from 4 to 32 lowercase letters or digits.</p>", "smithy.api#required" => {}}))
    EnablePolicyTypeRequest.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"smithy.api#documentation" => "<p>The policy type that you want to enable. You can specify one of the following\n            values:</p>\n         <ul>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html\">SERVICE_CONTROL_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html\">RESOURCE_CONTROL_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html\">DECLARATIVE_POLICY_EC2</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html\">CHATBOT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html\">SECURITYHUB_POLICY</a>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    EnablePolicyTypeRequest.type = Types::EnablePolicyTypeRequest
    EnablePolicyTypeResponse.add_member(:root, Smithy::Schema::Shapes::ShapeRef.new(shape: Root, location_name: 'Root', traits: {"smithy.api#documentation" => "<p>A structure that shows the root with the updated list of enabled policy types.</p>"}))
    EnablePolicyTypeResponse.type = Types::EnablePolicyTypeResponse
    EnabledServicePrincipal.add_member(:service_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'ServicePrincipal', traits: {"smithy.api#documentation" => "<p>The name of the service principal. This is typically in the form of a URL, such as:\n                    <code>\n               <i>servicename</i>.amazonaws.com</code>.</p>"}))
    EnabledServicePrincipal.add_member(:date_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateEnabled', traits: {"smithy.api#documentation" => "<p>The date that the service principal was enabled for integration with Organizations.</p>"}))
    EnabledServicePrincipal.type = Types::EnabledServicePrincipal
    EnabledServicePrincipals.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledServicePrincipal)
    FinalizingOrganizationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    FinalizingOrganizationException.type = Types::FinalizingOrganizationException
    Handshake.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of a handshake. The originating account creates the ID when\n            it initiates the handshake.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for  handshake ID string requires \"h-\" \n    followed by from 8 to 32 lowercase letters or digits.</p>"}))
    Handshake.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a handshake.</p>\n         <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies\">ARN \n    Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>"}))
    Handshake.add_member(:parties, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeParties, location_name: 'Parties', traits: {"smithy.api#documentation" => "<p>Information about the two accounts that are participating in the handshake.</p>"}))
    Handshake.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the handshake. Use the state to trace the flow of the handshake\n            through the process from its creation to its acceptance. The meaning of each of the\n            valid values is as follows:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>REQUESTED</b>: This handshake was sent to\n                    multiple recipients (applicable to only some handshake types) and not all\n                    recipients have responded yet. The request stays in this state until all\n                    recipients respond.</p>\n            </li>\n            <li>\n               <p>\n                  <b>OPEN</b>: This handshake was sent to multiple\n                    recipients (applicable to only some policy types) and all recipients have\n                    responded, allowing the originator to complete the handshake action.</p>\n            </li>\n            <li>\n               <p>\n                  <b>CANCELED</b>: This handshake is no longer active\n                    because it was canceled by the originating account.</p>\n            </li>\n            <li>\n               <p>\n                  <b>ACCEPTED</b>: This handshake is complete because\n                    it has been accepted by the recipient.</p>\n            </li>\n            <li>\n               <p>\n                  <b>DECLINED</b>: This handshake is no longer active\n                    because it was declined by the recipient account.</p>\n            </li>\n            <li>\n               <p>\n                  <b>EXPIRED</b>: This handshake is no longer active\n                    because the originator did not receive a response of any kind from the recipient\n                    before the expiration time (15 days).</p>\n            </li>\n         </ul>"}))
    Handshake.add_member(:requested_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RequestedTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time that the handshake request was made.</p>"}))
    Handshake.add_member(:expiration_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpirationTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time that the handshake expires. If the recipient of the handshake\n            request fails to respond before the specified date and time, the handshake becomes\n            inactive and is no longer valid.</p>"}))
    Handshake.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The type of handshake, indicating what action occurs when the recipient accepts the\n            handshake. The following handshake types are supported:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>INVITE</b>: This type of handshake represents a\n                    request to join an organization. It is always sent from the management account\n                    to only non-member accounts.</p>\n            </li>\n            <li>\n               <p>\n                  <b>ENABLE_ALL_FEATURES</b>: This type of handshake\n                    represents a request to enable all features in an organization. It is always\n                    sent from the management account to only <i>invited</i> member\n                    accounts. Created accounts do not receive this because those accounts were\n                    created by the organization's management account and approval is\n                    inferred.</p>\n            </li>\n            <li>\n               <p>\n                  <b>APPROVE_ALL_FEATURES</b>: This type of handshake\n                    is sent from the Organizations service when all member accounts have approved the\n                        <code>ENABLE_ALL_FEATURES</code> invitation. It is sent only to the\n                    management account and signals the master that it can finalize the process to\n                    enable all features.</p>\n            </li>\n         </ul>"}))
    Handshake.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeResources, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>Additional information that is needed to process the handshake.</p>"}))
    Handshake.type = Types::Handshake
    HandshakeAlreadyInStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    HandshakeAlreadyInStateException.type = Types::HandshakeAlreadyInStateException
    HandshakeConstraintViolationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    HandshakeConstraintViolationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeConstraintViolationExceptionReason, location_name: 'Reason'))
    HandshakeConstraintViolationException.type = Types::HandshakeConstraintViolationException
    HandshakeConstraintViolationExceptionReason.add_member(:account_number_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_NUMBER_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ACCOUNT_NUMBER_LIMIT_EXCEEDED"}))
    HandshakeConstraintViolationExceptionReason.add_member(:handshake_rate_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HANDSHAKE_RATE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "HANDSHAKE_RATE_LIMIT_EXCEEDED"}))
    HandshakeConstraintViolationExceptionReason.add_member(:already_in_an_organization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALREADY_IN_AN_ORGANIZATION', traits: {"smithy.api#enumValue" => "ALREADY_IN_AN_ORGANIZATION"}))
    HandshakeConstraintViolationExceptionReason.add_member(:organization_already_has_all_features, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION_ALREADY_HAS_ALL_FEATURES', traits: {"smithy.api#enumValue" => "ORGANIZATION_ALREADY_HAS_ALL_FEATURES"}))
    HandshakeConstraintViolationExceptionReason.add_member(:organization_is_already_pending_all_features_migration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION', traits: {"smithy.api#enumValue" => "ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION"}))
    HandshakeConstraintViolationExceptionReason.add_member(:invite_disabled_during_enable_all_features, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES', traits: {"smithy.api#enumValue" => "INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES"}))
    HandshakeConstraintViolationExceptionReason.add_member(:payment_instrument_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAYMENT_INSTRUMENT_REQUIRED', traits: {"smithy.api#enumValue" => "PAYMENT_INSTRUMENT_REQUIRED"}))
    HandshakeConstraintViolationExceptionReason.add_member(:organization_from_different_seller_of_record, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD', traits: {"smithy.api#enumValue" => "ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD"}))
    HandshakeConstraintViolationExceptionReason.add_member(:organization_membership_change_rate_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED"}))
    HandshakeConstraintViolationExceptionReason.add_member(:management_account_email_not_verified, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANAGEMENT_ACCOUNT_EMAIL_NOT_VERIFIED', traits: {"smithy.api#enumValue" => "MANAGEMENT_ACCOUNT_EMAIL_NOT_VERIFIED"}))
    HandshakeFilter.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'ActionType', traits: {"smithy.api#documentation" => "<p>Specifies the type of handshake action.</p>\n         <p>If you specify <code>ActionType</code>, you cannot also specify\n                <code>ParentHandshakeId</code>.</p>"}))
    HandshakeFilter.add_member(:parent_handshake_id, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeId, location_name: 'ParentHandshakeId', traits: {"smithy.api#documentation" => "<p>Specifies the parent handshake. Only used for handshake types that are a child of\n            another type.</p>\n         <p>If you specify <code>ParentHandshakeId</code>, you cannot also specify\n                <code>ActionType</code>.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for  handshake ID string requires \"h-\" \n    followed by from 8 to 32 lowercase letters or digits.</p>"}))
    HandshakeFilter.type = Types::HandshakeFilter
    HandshakeNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    HandshakeNotFoundException.type = Types::HandshakeNotFoundException
    HandshakeParties.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeParty)
    HandshakeParty.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakePartyId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) for the party.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for  handshake ID string requires \"h-\" \n    followed by from 8 to 32 lowercase letters or digits.</p>", "smithy.api#required" => {}}))
    HandshakeParty.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakePartyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of party.</p>", "smithy.api#required" => {}}))
    HandshakeParty.type = Types::HandshakeParty
    HandshakePartyType.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    HandshakePartyType.add_member(:organization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION', traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    HandshakePartyType.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    HandshakeResource.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeResourceValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The information that is passed to the other party in the handshake. The format of the\n            value string must match the requirements of the specified type.</p>"}))
    HandshakeResource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeResourceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of information being passed, specifying how the value is to be interpreted by\n            the other party:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACCOUNT</code> - Specifies an Amazon Web Services account ID number.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ORGANIZATION</code> - Specifies an organization ID number.</p>\n            </li>\n            <li>\n               <p>\n                  <code>EMAIL</code> - Specifies the email address that is associated with the\n                    account that receives the handshake. </p>\n            </li>\n            <li>\n               <p>\n                  <code>OWNER_EMAIL</code> - Specifies the email address associated with the\n                    management account. Included as information about an organization. </p>\n            </li>\n            <li>\n               <p>\n                  <code>OWNER_NAME</code> - Specifies the name associated with the management\n                    account. Included as information about an organization. </p>\n            </li>\n            <li>\n               <p>\n                  <code>NOTES</code> - Additional text provided by the handshake initiator and\n                    intended for the recipient to read.</p>\n            </li>\n         </ul>"}))
    HandshakeResource.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeResources, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>When needed, contains an additional array of <code>HandshakeResource</code>\n            objects.</p>"}))
    HandshakeResource.type = Types::HandshakeResource
    HandshakeResourceType.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    HandshakeResourceType.add_member(:organization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION', traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    HandshakeResourceType.add_member(:organization_feature_set, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION_FEATURE_SET', traits: {"smithy.api#enumValue" => "ORGANIZATION_FEATURE_SET"}))
    HandshakeResourceType.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    HandshakeResourceType.add_member(:master_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER_EMAIL', traits: {"smithy.api#enumValue" => "MASTER_EMAIL"}))
    HandshakeResourceType.add_member(:master_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER_NAME', traits: {"smithy.api#enumValue" => "MASTER_NAME"}))
    HandshakeResourceType.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOTES', traits: {"smithy.api#enumValue" => "NOTES"}))
    HandshakeResourceType.add_member(:parent_handshake, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARENT_HANDSHAKE', traits: {"smithy.api#enumValue" => "PARENT_HANDSHAKE"}))
    HandshakeResources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeResource)
    HandshakeState.add_member(:requested, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUESTED', traits: {"smithy.api#enumValue" => "REQUESTED"}))
    HandshakeState.add_member(:open, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN', traits: {"smithy.api#enumValue" => "OPEN"}))
    HandshakeState.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    HandshakeState.add_member(:accepted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCEPTED', traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    HandshakeState.add_member(:declined, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECLINED', traits: {"smithy.api#enumValue" => "DECLINED"}))
    HandshakeState.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    Handshakes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Handshake)
    IAMUserAccessToBilling.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    IAMUserAccessToBilling.add_member(:deny, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "DENY"}))
    InvalidHandshakeTransitionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidHandshakeTransitionException.type = Types::InvalidHandshakeTransitionException
    InvalidInputException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidInputException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputExceptionReason, location_name: 'Reason'))
    InvalidInputException.type = Types::InvalidInputException
    InvalidInputExceptionReason.add_member(:invalid_party_type_target, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PARTY_TYPE_TARGET', traits: {"smithy.api#enumValue" => "INVALID_PARTY_TYPE_TARGET"}))
    InvalidInputExceptionReason.add_member(:invalid_syntax_organization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SYNTAX_ORGANIZATION', traits: {"smithy.api#enumValue" => "INVALID_SYNTAX_ORGANIZATION_ARN"}))
    InvalidInputExceptionReason.add_member(:invalid_syntax_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SYNTAX_POLICY', traits: {"smithy.api#enumValue" => "INVALID_SYNTAX_POLICY_ID"}))
    InvalidInputExceptionReason.add_member(:invalid_enum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ENUM', traits: {"smithy.api#enumValue" => "INVALID_ENUM"}))
    InvalidInputExceptionReason.add_member(:invalid_enum_policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ENUM_POLICY_TYPE', traits: {"smithy.api#enumValue" => "INVALID_ENUM_POLICY_TYPE"}))
    InvalidInputExceptionReason.add_member(:invalid_list_member, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_LIST_MEMBER', traits: {"smithy.api#enumValue" => "INVALID_LIST_MEMBER"}))
    InvalidInputExceptionReason.add_member(:max_length_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_LENGTH_EXCEEDED', traits: {"smithy.api#enumValue" => "MAX_LENGTH_EXCEEDED"}))
    InvalidInputExceptionReason.add_member(:max_value_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_VALUE_EXCEEDED', traits: {"smithy.api#enumValue" => "MAX_VALUE_EXCEEDED"}))
    InvalidInputExceptionReason.add_member(:min_length_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MIN_LENGTH_EXCEEDED', traits: {"smithy.api#enumValue" => "MIN_LENGTH_EXCEEDED"}))
    InvalidInputExceptionReason.add_member(:min_value_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MIN_VALUE_EXCEEDED', traits: {"smithy.api#enumValue" => "MIN_VALUE_EXCEEDED"}))
    InvalidInputExceptionReason.add_member(:immutable_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMMUTABLE_POLICY', traits: {"smithy.api#enumValue" => "IMMUTABLE_POLICY"}))
    InvalidInputExceptionReason.add_member(:invalid_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PATTERN', traits: {"smithy.api#enumValue" => "INVALID_PATTERN"}))
    InvalidInputExceptionReason.add_member(:invalid_pattern_target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PATTERN_TARGET_ID', traits: {"smithy.api#enumValue" => "INVALID_PATTERN_TARGET_ID"}))
    InvalidInputExceptionReason.add_member(:input_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INPUT_REQUIRED', traits: {"smithy.api#enumValue" => "INPUT_REQUIRED"}))
    InvalidInputExceptionReason.add_member(:invalid_pagination_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PAGINATION_TOKEN', traits: {"smithy.api#enumValue" => "INVALID_NEXT_TOKEN"}))
    InvalidInputExceptionReason.add_member(:max_filter_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_FILTER_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "MAX_LIMIT_EXCEEDED_FILTER"}))
    InvalidInputExceptionReason.add_member(:moving_account_between_different_roots, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS', traits: {"smithy.api#enumValue" => "MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS"}))
    InvalidInputExceptionReason.add_member(:invalid_full_name_target, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_FULL_NAME_TARGET', traits: {"smithy.api#enumValue" => "INVALID_FULL_NAME_TARGET"}))
    InvalidInputExceptionReason.add_member(:unrecognized_service_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNRECOGNIZED_SERVICE_PRINCIPAL', traits: {"smithy.api#enumValue" => "UNRECOGNIZED_SERVICE_PRINCIPAL"}))
    InvalidInputExceptionReason.add_member(:invalid_role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ROLE_NAME', traits: {"smithy.api#enumValue" => "INVALID_ROLE_NAME"}))
    InvalidInputExceptionReason.add_member(:invalid_system_tags_parameter, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SYSTEM_TAGS_PARAMETER', traits: {"smithy.api#enumValue" => "INVALID_SYSTEM_TAGS_PARAMETER"}))
    InvalidInputExceptionReason.add_member(:duplicate_tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUPLICATE_TAG_KEY', traits: {"smithy.api#enumValue" => "DUPLICATE_TAG_KEY"}))
    InvalidInputExceptionReason.add_member(:target_not_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TARGET_NOT_SUPPORTED', traits: {"smithy.api#enumValue" => "TARGET_NOT_SUPPORTED"}))
    InvalidInputExceptionReason.add_member(:invalid_email_address_target, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_EMAIL_ADDRESS_TARGET', traits: {"smithy.api#enumValue" => "INVALID_EMAIL_ADDRESS_TARGET"}))
    InvalidInputExceptionReason.add_member(:invalid_resource_policy_json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RESOURCE_POLICY_JSON', traits: {"smithy.api#enumValue" => "INVALID_RESOURCE_POLICY_JSON"}))
    InvalidInputExceptionReason.add_member(:invalid_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PRINCIPAL', traits: {"smithy.api#enumValue" => "INVALID_PRINCIPAL"}))
    InvalidInputExceptionReason.add_member(:unsupported_action_in_resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_ACTION_IN_RESOURCE_POLICY', traits: {"smithy.api#enumValue" => "UNSUPPORTED_ACTION_IN_RESOURCE_POLICY"}))
    InvalidInputExceptionReason.add_member(:unsupported_policy_type_in_resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_POLICY_TYPE_IN_RESOURCE_POLICY', traits: {"smithy.api#enumValue" => "UNSUPPORTED_POLICY_TYPE_IN_RESOURCE_POLICY"}))
    InvalidInputExceptionReason.add_member(:unsupported_resource_in_resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_RESOURCE_IN_RESOURCE_POLICY', traits: {"smithy.api#enumValue" => "UNSUPPORTED_RESOURCE_IN_RESOURCE_POLICY"}))
    InvalidInputExceptionReason.add_member(:non_detachable_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NON_DETACHABLE_POLICY', traits: {"smithy.api#enumValue" => "NON_DETACHABLE_POLICY"}))
    InviteAccountToOrganizationRequest.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeParty, location_name: 'Target', traits: {"smithy.api#documentation" => "<p>The identifier (ID) of the Amazon Web Services account that you want to invite to join your\n            organization. This is a JSON object that contains the following elements:</p>\n         <p>\n            <code>{ \"Type\": \"ACCOUNT\", \"Id\": \"<<i>\n                  <b>account id\n                        number</b>\n               </i>>\" }</code>\n         </p>\n         <p>If you use the CLI, you can submit this as a single string, similar to the following\n            example:</p>\n         <p>\n            <code>--target Id=123456789012,Type=ACCOUNT</code>\n         </p>\n         <p>If you specify <code>\"Type\": \"ACCOUNT\"</code>, you must provide the Amazon Web Services account ID\n            number as the <code>Id</code>. If you specify <code>\"Type\": \"EMAIL\"</code>, you must\n            specify the email address that is associated with the account.</p>\n         <p>\n            <code>--target Id=diego@example.com,Type=EMAIL</code>\n         </p>", "smithy.api#required" => {}}))
    InviteAccountToOrganizationRequest.add_member(:notes, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeNotes, location_name: 'Notes', traits: {"smithy.api#documentation" => "<p>Additional information that you want to include in the generated email to the\n            recipient account owner.</p>"}))
    InviteAccountToOrganizationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags that you want to attach to the account when it becomes a member of the\n            organization. For each tag in the list, you must specify both a tag key and a value. You\n            can set the value to an empty string, but you can't set it to <code>null</code>. For\n            more information about tagging, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html\">Tagging Organizations resources</a> in the\n            Organizations User Guide.</p>\n         <important>\n            <p>Any tags in the request are checked for compliance with any applicable tag\n                policies when the request is made. The request is rejected if the tags in the\n                request don't match the requirements of the policy at that time. Tag policy\n                compliance is <i>\n                  <b>not</b>\n               </i> checked\n                again when the invitation is accepted and the tags are actually attached to the\n                account. That means that if the tag policy changes between the invitation and the\n                acceptance, then that tags could potentially be non-compliant.</p>\n         </important>\n         <note>\n            <p>If any one of the tags is not valid or if you exceed the allowed number of tags\n                for an account, then the entire request fails and invitations are not sent.</p>\n         </note>"}))
    InviteAccountToOrganizationRequest.type = Types::InviteAccountToOrganizationRequest
    InviteAccountToOrganizationResponse.add_member(:handshake, Smithy::Schema::Shapes::ShapeRef.new(shape: Handshake, location_name: 'Handshake', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the handshake that is created to support this\n            invitation request.</p>"}))
    InviteAccountToOrganizationResponse.type = Types::InviteAccountToOrganizationResponse
    ListAWSServiceAccessForOrganizationRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListAWSServiceAccessForOrganizationRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListAWSServiceAccessForOrganizationRequest.type = Types::ListAWSServiceAccessForOrganizationRequest
    ListAWSServiceAccessForOrganizationResponse.add_member(:enabled_service_principals, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledServicePrincipals, location_name: 'EnabledServicePrincipals', traits: {"smithy.api#documentation" => "<p>A list of the service principals for the services that are enabled to integrate with\n            your organization. Each principal is a structure that includes the name and the date\n            that it was enabled for integration with Organizations.</p>"}))
    ListAWSServiceAccessForOrganizationResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListAWSServiceAccessForOrganizationResponse.type = Types::ListAWSServiceAccessForOrganizationResponse
    ListAccountsForParentRequest.add_member(:parent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParentId, location_name: 'ParentId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) for the parent root or organization unit (OU) whose\n            accounts you want to list.</p>", "smithy.api#required" => {}}))
    ListAccountsForParentRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListAccountsForParentRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListAccountsForParentRequest.type = Types::ListAccountsForParentRequest
    ListAccountsForParentResponse.add_member(:accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: Accounts, location_name: 'Accounts', traits: {"smithy.api#documentation" => "<p>A list of the accounts in the specified root or OU.</p>"}))
    ListAccountsForParentResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListAccountsForParentResponse.type = Types::ListAccountsForParentResponse
    ListAccountsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListAccountsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListAccountsRequest.type = Types::ListAccountsRequest
    ListAccountsResponse.add_member(:accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: Accounts, location_name: 'Accounts', traits: {"smithy.api#documentation" => "<p>A list of objects in the organization.</p>"}))
    ListAccountsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListAccountsResponse.type = Types::ListAccountsResponse
    ListAccountsWithInvalidEffectivePolicyRequest.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyType, location_name: 'PolicyType', traits: {"smithy.api#documentation" => "<p>The type of policy that you want information about. You can specify one of the\n            following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html\">DECLARATIVE_POLICY_EC2</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html\">CHATBOT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html\">SECURITYHUB_POLICY</a>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ListAccountsWithInvalidEffectivePolicyRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListAccountsWithInvalidEffectivePolicyRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListAccountsWithInvalidEffectivePolicyRequest.type = Types::ListAccountsWithInvalidEffectivePolicyRequest
    ListAccountsWithInvalidEffectivePolicyResponse.add_member(:accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: Accounts, location_name: 'Accounts', traits: {"smithy.api#documentation" => "<p>The accounts in the organization which have an invalid effective policy for the specified policy type.</p>"}))
    ListAccountsWithInvalidEffectivePolicyResponse.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyType, location_name: 'PolicyType', traits: {"smithy.api#documentation" => "<p>The specified policy type. One of the\n            following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html\">DECLARATIVE_POLICY_EC2</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html\">CHATBOT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html\">SECURITYHUB_POLICY</a>\n               </p>\n            </li>\n         </ul>"}))
    ListAccountsWithInvalidEffectivePolicyResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListAccountsWithInvalidEffectivePolicyResponse.type = Types::ListAccountsWithInvalidEffectivePolicyResponse
    ListChildrenRequest.add_member(:parent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParentId, location_name: 'ParentId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) for the parent root or OU whose children you want to\n            list.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the \n    following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or \n          digits.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32\n          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \n          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ListChildrenRequest.add_member(:child_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChildType, location_name: 'ChildType', traits: {"smithy.api#documentation" => "<p>Filters the output to include only the specified child type.</p>", "smithy.api#required" => {}}))
    ListChildrenRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListChildrenRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListChildrenRequest.type = Types::ListChildrenRequest
    ListChildrenResponse.add_member(:children, Smithy::Schema::Shapes::ShapeRef.new(shape: Children, location_name: 'Children', traits: {"smithy.api#documentation" => "<p>The list of children of the specified parent container.</p>"}))
    ListChildrenResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListChildrenResponse.type = Types::ListChildrenResponse
    ListCreateAccountStatusRequest.add_member(:states, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountStates, location_name: 'States', traits: {"smithy.api#documentation" => "<p>A list of one or more states that you want included in the response. If this parameter\n            isn't present, all requests are included in the response.</p>"}))
    ListCreateAccountStatusRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListCreateAccountStatusRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListCreateAccountStatusRequest.type = Types::ListCreateAccountStatusRequest
    ListCreateAccountStatusResponse.add_member(:create_account_statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountStatuses, location_name: 'CreateAccountStatuses', traits: {"smithy.api#documentation" => "<p>A list of objects with details about the requests. Certain elements, such as the\n            accountId number, are present in the output only after the account has been successfully\n            created.</p>"}))
    ListCreateAccountStatusResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListCreateAccountStatusResponse.type = Types::ListCreateAccountStatusResponse
    ListDelegatedAdministratorsRequest.add_member(:service_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'ServicePrincipal', traits: {"smithy.api#documentation" => "<p>Specifies a service principal name. If specified, then the operation lists the\n            delegated administrators only for the specified service.</p>\n         <p>If you don't specify a service principal, the operation lists all delegated\n            administrators for all services in your organization.</p>"}))
    ListDelegatedAdministratorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListDelegatedAdministratorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListDelegatedAdministratorsRequest.type = Types::ListDelegatedAdministratorsRequest
    ListDelegatedAdministratorsResponse.add_member(:delegated_administrators, Smithy::Schema::Shapes::ShapeRef.new(shape: DelegatedAdministrators, location_name: 'DelegatedAdministrators', traits: {"smithy.api#documentation" => "<p>The list of delegated administrators in your organization.</p>"}))
    ListDelegatedAdministratorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListDelegatedAdministratorsResponse.type = Types::ListDelegatedAdministratorsResponse
    ListDelegatedServicesForAccountRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The account ID number of a delegated administrator account in the organization.</p>", "smithy.api#required" => {}}))
    ListDelegatedServicesForAccountRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListDelegatedServicesForAccountRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListDelegatedServicesForAccountRequest.type = Types::ListDelegatedServicesForAccountRequest
    ListDelegatedServicesForAccountResponse.add_member(:delegated_services, Smithy::Schema::Shapes::ShapeRef.new(shape: DelegatedServices, location_name: 'DelegatedServices', traits: {"smithy.api#documentation" => "<p>The services for which the account is a delegated administrator.</p>"}))
    ListDelegatedServicesForAccountResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListDelegatedServicesForAccountResponse.type = Types::ListDelegatedServicesForAccountResponse
    ListEffectivePolicyValidationErrorsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of the account that you want details about. Specifying an organization root or organizational unit (OU) as the target is not supported.</p>", "smithy.api#required" => {}}))
    ListEffectivePolicyValidationErrorsRequest.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyType, location_name: 'PolicyType', traits: {"smithy.api#documentation" => "<p>The type of policy that you want information about. You can specify one of the\n            following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html\">DECLARATIVE_POLICY_EC2</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html\">CHATBOT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html\">SECURITYHUB_POLICY</a>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ListEffectivePolicyValidationErrorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListEffectivePolicyValidationErrorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListEffectivePolicyValidationErrorsRequest.type = Types::ListEffectivePolicyValidationErrorsRequest
    ListEffectivePolicyValidationErrorsResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of the specified account.</p>"}))
    ListEffectivePolicyValidationErrorsResponse.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyType, location_name: 'PolicyType', traits: {"smithy.api#documentation" => "<p>The specified policy type. One of the\n            following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html\">DECLARATIVE_POLICY_EC2</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html\">CHATBOT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html\">SECURITYHUB_POLICY</a>\n               </p>\n            </li>\n         </ul>"}))
    ListEffectivePolicyValidationErrorsResponse.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'Path', traits: {"smithy.api#documentation" => "<p>The path in the organization where the specified account exists.</p>"}))
    ListEffectivePolicyValidationErrorsResponse.add_member(:evaluation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EvaluationTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the latest effective policy was generated for the specified account.</p>"}))
    ListEffectivePolicyValidationErrorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListEffectivePolicyValidationErrorsResponse.add_member(:effective_policy_validation_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyValidationErrors, location_name: 'EffectivePolicyValidationErrors', traits: {"smithy.api#documentation" => "<p>The <code>EffectivePolicyValidationError</code> object contains details about the\n            validation errors that occurred when generating or enforcing an effective policy, such as which policies contributed to the error and location of the error.</p>"}))
    ListEffectivePolicyValidationErrorsResponse.type = Types::ListEffectivePolicyValidationErrorsResponse
    ListHandshakesForAccountRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the handshakes that you want included in the response. The default is all\n            types. Use the <code>ActionType</code> element to limit the output to only a specified\n            type, such as <code>INVITE</code>, <code>ENABLE_ALL_FEATURES</code>, or\n                <code>APPROVE_ALL_FEATURES</code>. Alternatively, for the\n                <code>ENABLE_ALL_FEATURES</code> handshake that generates a separate child handshake\n            for each member account, you can specify <code>ParentHandshakeId</code> to see only the\n            handshakes that were generated by that parent request.</p>"}))
    ListHandshakesForAccountRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListHandshakesForAccountRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListHandshakesForAccountRequest.type = Types::ListHandshakesForAccountRequest
    ListHandshakesForAccountResponse.add_member(:handshakes, Smithy::Schema::Shapes::ShapeRef.new(shape: Handshakes, location_name: 'Handshakes', traits: {"smithy.api#documentation" => "<p>A list of <a>Handshake</a> objects with details about each of the\n            handshakes that is associated with the specified account.</p>"}))
    ListHandshakesForAccountResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListHandshakesForAccountResponse.type = Types::ListHandshakesForAccountResponse
    ListHandshakesForOrganizationRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>A filter of the handshakes that you want included in the response. The default is all\n            types. Use the <code>ActionType</code> element to limit the output to only a specified\n            type, such as <code>INVITE</code>, <code>ENABLE-ALL-FEATURES</code>, or\n                <code>APPROVE-ALL-FEATURES</code>. Alternatively, for the\n                <code>ENABLE-ALL-FEATURES</code> handshake that generates a separate child handshake\n            for each member account, you can specify the <code>ParentHandshakeId</code> to see only\n            the handshakes that were generated by that parent request.</p>"}))
    ListHandshakesForOrganizationRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListHandshakesForOrganizationRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListHandshakesForOrganizationRequest.type = Types::ListHandshakesForOrganizationRequest
    ListHandshakesForOrganizationResponse.add_member(:handshakes, Smithy::Schema::Shapes::ShapeRef.new(shape: Handshakes, location_name: 'Handshakes', traits: {"smithy.api#documentation" => "<p>A list of <a>Handshake</a> objects with details about each of the\n            handshakes that are associated with an organization.</p>"}))
    ListHandshakesForOrganizationResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListHandshakesForOrganizationResponse.type = Types::ListHandshakesForOrganizationResponse
    ListOrganizationalUnitsForParentRequest.add_member(:parent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParentId, location_name: 'ParentId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the root or OU whose child OUs you want to list.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the \n    following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or \n          digits.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32\n          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \n          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ListOrganizationalUnitsForParentRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListOrganizationalUnitsForParentRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListOrganizationalUnitsForParentRequest.type = Types::ListOrganizationalUnitsForParentRequest
    ListOrganizationalUnitsForParentResponse.add_member(:organizational_units, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnits, location_name: 'OrganizationalUnits', traits: {"smithy.api#documentation" => "<p>A list of the OUs in the specified root or parent OU.</p>"}))
    ListOrganizationalUnitsForParentResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListOrganizationalUnitsForParentResponse.type = Types::ListOrganizationalUnitsForParentResponse
    ListParentsRequest.add_member(:child_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChildId, location_name: 'ChildId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the OU or account whose parent containers you want to\n            list. Don't specify a root.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a child ID string requires one of the \n    following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Account</b> - A string that consists of exactly 12 digits.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Organizational unit (OU)</b> - A string that begins with\n          \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that \n          contains the OU). This string is followed by a second \"-\" dash and from 8 to 32 additional \n          lowercase letters or digits.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ListParentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListParentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListParentsRequest.type = Types::ListParentsRequest
    ListParentsResponse.add_member(:parents, Smithy::Schema::Shapes::ShapeRef.new(shape: Parents, location_name: 'Parents', traits: {"smithy.api#documentation" => "<p>A list of parents for the specified child account or OU.</p>"}))
    ListParentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListParentsResponse.type = Types::ListParentsResponse
    ListPoliciesForTargetRequest.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTargetId, location_name: 'TargetId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the root, organizational unit, or account whose policies\n            you want to list.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a target ID string requires one of the \n    following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or \n          digits.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Account</b> - A string that consists of exactly 12 digits.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 \n          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \n          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ListPoliciesForTargetRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>The type of policy that you want to include in the returned list. You must specify one\n            of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html\">SERVICE_CONTROL_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html\">RESOURCE_CONTROL_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html\">DECLARATIVE_POLICY_EC2</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html\">CHATBOT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html\">SECURITYHUB_POLICY</a>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ListPoliciesForTargetRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListPoliciesForTargetRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListPoliciesForTargetRequest.type = Types::ListPoliciesForTargetRequest
    ListPoliciesForTargetResponse.add_member(:policies, Smithy::Schema::Shapes::ShapeRef.new(shape: Policies, location_name: 'Policies', traits: {"smithy.api#documentation" => "<p>The list of policies that match the criteria in the request.</p>"}))
    ListPoliciesForTargetResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListPoliciesForTargetResponse.type = Types::ListPoliciesForTargetResponse
    ListPoliciesRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Specifies the type of policy that you want to include in the response. You must\n            specify one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html\">SERVICE_CONTROL_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html\">RESOURCE_CONTROL_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html\">DECLARATIVE_POLICY_EC2</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html\">CHATBOT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html\">SECURITYHUB_POLICY</a>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ListPoliciesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListPoliciesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListPoliciesRequest.type = Types::ListPoliciesRequest
    ListPoliciesResponse.add_member(:policies, Smithy::Schema::Shapes::ShapeRef.new(shape: Policies, location_name: 'Policies', traits: {"smithy.api#documentation" => "<p>A list of policies that match the filter criteria in the request. The output list\n            doesn't include the policy contents. To see the content for a policy, see <a>DescribePolicy</a>.</p>"}))
    ListPoliciesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListPoliciesResponse.type = Types::ListPoliciesResponse
    ListRootsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListRootsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListRootsRequest.type = Types::ListRootsRequest
    ListRootsResponse.add_member(:roots, Smithy::Schema::Shapes::ShapeRef.new(shape: Roots, location_name: 'Roots', traits: {"smithy.api#documentation" => "<p>A list of roots that are defined in an organization.</p>"}))
    ListRootsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListRootsResponse.type = Types::ListRootsResponse
    ListTagsForResourceRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource with the tags to list.</p>\n         <p>You can specify any of the following taggable resources.</p>\n         <ul>\n            <li>\n               <p>Amazon Web Services account – specify the account ID number.</p>\n            </li>\n            <li>\n               <p>Organizational unit  – specify the OU ID that begins with <code>ou-</code> and\n                    looks similar to: <code>ou-<i>1a2b-34uvwxyz</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>Root – specify the root ID that begins with <code>r-</code> and looks similar\n                    to: <code>r-<i>1a2b</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>Policy – specify the policy ID that begins with <code>p-</code> andlooks\n                    similar to: <code>p-<i>12abcdefg3</i>\n                  </code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags that are assigned to the resource.</p>"}))
    ListTagsForResourceResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTargetsForPolicyRequest.add_member(:policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the policy whose attachments you want to know.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed \n    by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>", "smithy.api#required" => {}}))
    ListTargetsForPolicyRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListTargetsForPolicyRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value that is specific to the \n    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \n    response element is present and has a value (is not null). Include that value as the \n    <code>NextToken</code> request parameter in the next call to the operation to get the next part \n    of the results. Note that Organizations might return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>"}))
    ListTargetsForPolicyRequest.type = Types::ListTargetsForPolicyRequest
    ListTargetsForPolicyResponse.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTargets, location_name: 'Targets', traits: {"smithy.api#documentation" => "<p>A list of structures, each of which contains details about one of the entities to\n            which the specified policy is attached.</p>"}))
    ListTargetsForPolicyResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListTargetsForPolicyResponse.type = Types::ListTargetsForPolicyResponse
    MalformedPolicyDocumentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    MalformedPolicyDocumentException.type = Types::MalformedPolicyDocumentException
    MasterCannotLeaveOrganizationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    MasterCannotLeaveOrganizationException.type = Types::MasterCannotLeaveOrganizationException
    MoveAccountRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the account that you want to move.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12\n    digits.</p>", "smithy.api#required" => {}}))
    MoveAccountRequest.add_member(:source_parent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParentId, location_name: 'SourceParentId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the root or organizational unit that you want to move\n            the account from.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the \n    following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or \n          digits.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32\n          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \n          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    MoveAccountRequest.add_member(:destination_parent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParentId, location_name: 'DestinationParentId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the root or organizational unit that you want to move\n            the account to.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the \n    following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or \n          digits.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32\n          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \n          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    MoveAccountRequest.type = Types::MoveAccountRequest
    Organization.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of an organization.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an organization ID string requires \"o-\" \n    followed by from 10 to 32 lowercase letters or digits.</p>"}))
    Organization.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an organization.</p>\n         <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies\">ARN \n    Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>"}))
    Organization.add_member(:feature_set, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationFeatureSet, location_name: 'FeatureSet', traits: {"smithy.api#documentation" => "<p>Specifies the functionality that currently is available to the organization. If set to\n            \"ALL\", then all features are enabled and policies can be applied to accounts in the\n            organization. If set to \"CONSOLIDATED_BILLING\", then only consolidated billing\n            functionality is available. For more information, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html\">Enabling all features\n                in your organization</a> in the <i>Organizations User Guide</i>.</p>"}))
    Organization.add_member(:master_account_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountArn, location_name: 'MasterAccountArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the account that is designated as the management\n            account for the organization.</p>\n         <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies\">ARN \n    Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>"}))
    Organization.add_member(:master_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'MasterAccountId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the management account of an organization.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12\n    digits.</p>"}))
    Organization.add_member(:master_account_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'MasterAccountEmail', traits: {"smithy.api#documentation" => "<p>The email address that is associated with the Amazon Web Services account that is designated as the\n            management account for the organization.</p>"}))
    Organization.add_member(:available_policy_types, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypes, location_name: 'AvailablePolicyTypes', traits: {"smithy.api#documentation" => "<important>\n            <p>Do not use. This field is deprecated and doesn't provide complete information\n                about the policies in your organization.</p>\n         </important>\n         <p>To determine the policies that are enabled and available for use in your organization,\n            use the <a>ListRoots</a> operation instead.</p>"}))
    Organization.type = Types::Organization
    OrganizationFeatureSet.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    OrganizationFeatureSet.add_member(:consolidated_billing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONSOLIDATED_BILLING', traits: {"smithy.api#enumValue" => "CONSOLIDATED_BILLING"}))
    OrganizationNotEmptyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    OrganizationNotEmptyException.type = Types::OrganizationNotEmptyException
    OrganizationalUnit.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) associated with this OU. The ID is unique to the organization only.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an organizational unit ID string requires \n    \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the \n    OU). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters \n    or digits.</p>"}))
    OrganizationalUnit.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of this OU.</p>\n         <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies\">ARN \n    Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>"}))
    OrganizationalUnit.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The friendly name of this OU.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> \n    that is used to validate this parameter is a string of any of the characters in the ASCII \n    character range.</p>"}))
    OrganizationalUnit.type = Types::OrganizationalUnit
    OrganizationalUnitNotEmptyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    OrganizationalUnitNotEmptyException.type = Types::OrganizationalUnitNotEmptyException
    OrganizationalUnitNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    OrganizationalUnitNotFoundException.type = Types::OrganizationalUnitNotFoundException
    OrganizationalUnits.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnit)
    Parent.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParentId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the parent entity.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the \n    following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or \n          digits.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32\n          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \n          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>\n            </li>\n         </ul>"}))
    Parent.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParentType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the parent entity.</p>"}))
    Parent.type = Types::Parent
    ParentNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ParentNotFoundException.type = Types::ParentNotFoundException
    ParentType.add_member(:root, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROOT', traits: {"smithy.api#enumValue" => "ROOT"}))
    ParentType.add_member(:organizational_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATIONAL_UNIT', traits: {"smithy.api#enumValue" => "ORGANIZATIONAL_UNIT"}))
    Parents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Parent)
    Policies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicySummary)
    Policy.add_member(:policy_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicySummary, location_name: 'PolicySummary', traits: {"smithy.api#documentation" => "<p>A structure that contains additional details about the policy.</p>"}))
    Policy.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The text content of the policy.</p>"}))
    Policy.type = Types::Policy
    PolicyChangesInProgressException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    PolicyChangesInProgressException.type = Types::PolicyChangesInProgressException
    PolicyIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId)
    PolicyInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    PolicyInUseException.type = Types::PolicyInUseException
    PolicyNotAttachedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    PolicyNotAttachedException.type = Types::PolicyNotAttachedException
    PolicyNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    PolicyNotFoundException.type = Types::PolicyNotFoundException
    PolicySummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the policy.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed \n    by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>"}))
    PolicySummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the policy.</p>\n         <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies\">ARN \n    Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>"}))
    PolicySummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The friendly name of the policy.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> \n    that is used to validate this parameter is a string of any of the characters in the ASCII \n    character range.</p>"}))
    PolicySummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the policy.</p>"}))
    PolicySummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of policy.</p>"}))
    PolicySummary.add_member(:aws_managed, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsManagedPolicy, location_name: 'AwsManaged', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A boolean value that indicates whether the specified policy is an Amazon Web Services managed\n            policy. If true, then you can attach the policy to roots, OUs, or accounts, but you\n            cannot edit it.</p>"}))
    PolicySummary.type = Types::PolicySummary
    PolicyTargetSummary.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTargetId, location_name: 'TargetId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the policy target.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a target ID string requires one of the \n    following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or \n          digits.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Account</b> - A string that consists of exactly 12 digits.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 \n          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \n          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>\n            </li>\n         </ul>"}))
    PolicyTargetSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the policy target.</p>\n         <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies\">ARN \n    Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>"}))
    PolicyTargetSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The friendly name of the policy target.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> \n    that is used to validate this parameter is a string of any of the characters in the ASCII \n    character range.</p>"}))
    PolicyTargetSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the policy target.</p>"}))
    PolicyTargetSummary.type = Types::PolicyTargetSummary
    PolicyTargets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTargetSummary)
    PolicyType.add_member(:service_control_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_CONTROL_POLICY', traits: {"smithy.api#enumValue" => "SERVICE_CONTROL_POLICY"}))
    PolicyType.add_member(:resource_control_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_CONTROL_POLICY', traits: {"smithy.api#enumValue" => "RESOURCE_CONTROL_POLICY"}))
    PolicyType.add_member(:tag_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAG_POLICY', traits: {"smithy.api#enumValue" => "TAG_POLICY"}))
    PolicyType.add_member(:backup_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKUP_POLICY', traits: {"smithy.api#enumValue" => "BACKUP_POLICY"}))
    PolicyType.add_member(:aiservices_opt_out_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AISERVICES_OPT_OUT_POLICY', traits: {"smithy.api#enumValue" => "AISERVICES_OPT_OUT_POLICY"}))
    PolicyType.add_member(:chatbot_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHATBOT_POLICY', traits: {"smithy.api#enumValue" => "CHATBOT_POLICY"}))
    PolicyType.add_member(:declarative_policy_ec2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECLARATIVE_POLICY_EC2', traits: {"smithy.api#enumValue" => "DECLARATIVE_POLICY_EC2"}))
    PolicyType.add_member(:securityhub_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITYHUB_POLICY', traits: {"smithy.api#enumValue" => "SECURITYHUB_POLICY"}))
    PolicyTypeAlreadyEnabledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    PolicyTypeAlreadyEnabledException.type = Types::PolicyTypeAlreadyEnabledException
    PolicyTypeNotAvailableForOrganizationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    PolicyTypeNotAvailableForOrganizationException.type = Types::PolicyTypeNotAvailableForOrganizationException
    PolicyTypeNotEnabledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    PolicyTypeNotEnabledException.type = Types::PolicyTypeNotEnabledException
    PolicyTypeStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    PolicyTypeStatus.add_member(:pending_enable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ENABLE', traits: {"smithy.api#enumValue" => "PENDING_ENABLE"}))
    PolicyTypeStatus.add_member(:pending_disable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DISABLE', traits: {"smithy.api#enumValue" => "PENDING_DISABLE"}))
    PolicyTypeSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The name of the policy type.</p>"}))
    PolicyTypeSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypeStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the policy type as it relates to the associated root. To attach a policy\n            of the specified type to a root or to an OU or account in that root, it must be\n            available in the organization and enabled for that root.</p>"}))
    PolicyTypeSummary.type = Types::PolicyTypeSummary
    PolicyTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypeSummary)
    PutResourcePolicyRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>If provided, the new content for the resource policy. The text must be correctly\n            formatted JSON that complies with the syntax for the resource policy's type. For more\n            information, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps_syntax.html\">SCP syntax</a> in the\n            <i>Organizations User Guide</i>.</p>", "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags that you want to attach to the newly created resource policy. For each\n            tag in the list, you must specify both a tag key and a value. You can set the value to\n            an empty string, but you can't set it to <code>null</code>. For more information about\n            tagging, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html\">Tagging\n                Organizations resources</a> in the Organizations User Guide.</p>\n         <note>\n            <p>Calls with tags apply to the initial creation of the resource policy, otherwise an\n                exception is thrown. If any one of the tags is not valid or if you exceed the\n                allowed number of tags for the resource policy, then the entire request fails and\n                the resource policy is not created. </p>\n         </note>"}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'ResourcePolicy', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the resource policy.</p>"}))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    RegisterDelegatedAdministratorRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The account ID number of the member account in the organization to register as a\n            delegated administrator.</p>", "smithy.api#required" => {}}))
    RegisterDelegatedAdministratorRequest.add_member(:service_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'ServicePrincipal', traits: {"smithy.api#documentation" => "<p>The service principal of the Amazon Web Services service for which you want to make the member\n            account a delegated administrator.</p>", "smithy.api#required" => {}}))
    RegisterDelegatedAdministratorRequest.type = Types::RegisterDelegatedAdministratorRequest
    RemoveAccountFromOrganizationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the member account that you want to remove from the\n            organization.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12\n    digits.</p>", "smithy.api#required" => {}}))
    RemoveAccountFromOrganizationRequest.type = Types::RemoveAccountFromOrganizationRequest
    ResourcePolicy.add_member(:resource_policy_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicySummary, location_name: 'ResourcePolicySummary', traits: {"smithy.api#documentation" => "<p>A structure that contains resource policy ID and Amazon Resource Name (ARN).</p>"}))
    ResourcePolicy.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The policy text of the resource policy.</p>"}))
    ResourcePolicy.type = Types::ResourcePolicy
    ResourcePolicyNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ResourcePolicyNotFoundException.type = Types::ResourcePolicyNotFoundException
    ResourcePolicySummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the resource policy.</p>"}))
    ResourcePolicySummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource policy.</p>"}))
    ResourcePolicySummary.type = Types::ResourcePolicySummary
    Root.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RootId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) for the root. The ID is unique to the organization only.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a root ID string requires \"r-\" followed by \n    from 4 to 32 lowercase letters or digits.</p>"}))
    Root.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RootArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the root.</p>\n         <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies\">ARN \n    Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>"}))
    Root.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RootName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The friendly name of the root.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> \n    that is used to validate this parameter is a string of any of the characters in the ASCII \n    character range.</p>"}))
    Root.add_member(:policy_types, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypes, location_name: 'PolicyTypes', traits: {"smithy.api#documentation" => "<p>The types of policies that are currently enabled for the root and therefore can be\n            attached to the root or to its OUs or accounts.</p>\n         <note>\n            <p>Even if a policy type is shown as available in the organization, you can\n                separately enable and disable them at the root level by using <a>EnablePolicyType</a> and <a>DisablePolicyType</a>. Use <a>DescribeOrganization</a> to see the availability of the policy types in\n                that organization.</p>\n         </note>"}))
    Root.type = Types::Root
    RootNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    RootNotFoundException.type = Types::RootNotFoundException
    Roots.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Root)
    ServiceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ServiceException.type = Types::ServiceException
    SourceParentNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    SourceParentNotFoundException.type = Types::SourceParentNotFoundException
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key identifier, or name, of the tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The string value that's associated with the key of the tag. You can set the value of a\n            tag to an empty string, but you can't set the value of a tag to null.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource to add a tag to.</p>\n         <p>You can specify any of the following taggable resources.</p>\n         <ul>\n            <li>\n               <p>Amazon Web Services account – specify the account ID number.</p>\n            </li>\n            <li>\n               <p>Organizational unit  – specify the OU ID that begins with <code>ou-</code> and\n                    looks similar to: <code>ou-<i>1a2b-34uvwxyz</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>Root – specify the root ID that begins with <code>r-</code> and looks similar\n                    to: <code>r-<i>1a2b</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>Policy – specify the policy ID that begins with <code>p-</code> andlooks\n                    similar to: <code>p-<i>12abcdefg3</i>\n                  </code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to add to the specified resource.</p>\n         <p>For each tag in the list, you must specify both a tag key and a value. The value can\n            be an empty string, but you can't set it to <code>null</code>.</p>\n         <note>\n            <p>If any one of the tags is not valid or if you exceed the maximum allowed number of\n                tags for a resource, then the entire request fails.</p>\n         </note>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TargetNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    TargetNotFoundException.type = Types::TargetNotFoundException
    TargetType.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    TargetType.add_member(:organizational_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATIONAL_UNIT', traits: {"smithy.api#enumValue" => "ORGANIZATIONAL_UNIT"}))
    TargetType.add_member(:root, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROOT', traits: {"smithy.api#enumValue" => "ROOT"}))
    TooManyRequestsException.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionType, location_name: 'Type'))
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnsupportedAPIEndpointException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    UnsupportedAPIEndpointException.type = Types::UnsupportedAPIEndpointException
    UntagResourceRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource to remove a tag from.</p>\n         <p>You can specify any of the following taggable resources.</p>\n         <ul>\n            <li>\n               <p>Amazon Web Services account – specify the account ID number.</p>\n            </li>\n            <li>\n               <p>Organizational unit  – specify the OU ID that begins with <code>ou-</code> and\n                    looks similar to: <code>ou-<i>1a2b-34uvwxyz</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>Root – specify the root ID that begins with <code>r-</code> and looks similar\n                    to: <code>r-<i>1a2b</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>Policy – specify the policy ID that begins with <code>p-</code> andlooks\n                    similar to: <code>p-<i>12abcdefg3</i>\n                  </code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The list of keys for tags to remove from the specified resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateOrganizationalUnitRequest.add_member(:organizational_unit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'OrganizationalUnitId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the OU that you want to rename. You can get the ID from\n            the <a>ListOrganizationalUnitsForParent</a> operation.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an organizational unit ID string requires \n    \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the \n    OU). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters \n    or digits.</p>", "smithy.api#required" => {}}))
    UpdateOrganizationalUnitRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The new name that you want to assign to the OU.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> \n    that is used to validate this parameter is a string of any of the characters in the ASCII \n    character range.</p>"}))
    UpdateOrganizationalUnitRequest.type = Types::UpdateOrganizationalUnitRequest
    UpdateOrganizationalUnitResponse.add_member(:organizational_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnit, location_name: 'OrganizationalUnit', traits: {"smithy.api#documentation" => "<p>A structure that contains the details about the specified OU, including its new\n            name.</p>"}))
    UpdateOrganizationalUnitResponse.type = Types::UpdateOrganizationalUnitResponse
    UpdatePolicyRequest.add_member(:policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the policy that you want to update.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed \n    by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>", "smithy.api#required" => {}}))
    UpdatePolicyRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>If provided, the new name for the policy.</p>\n         <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> \n    that is used to validate this parameter is a string of any of the characters in the ASCII \n    character range.</p>"}))
    UpdatePolicyRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>If provided, the new description for the policy.</p>"}))
    UpdatePolicyRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>If provided, the new content for the policy. The text must be correctly formatted JSON\n            that complies with the syntax for the policy's type. For more information, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps_syntax.html\">SCP\n                syntax</a> in the <i>Organizations User Guide</i>.</p>\n         <p>The maximum size of a policy document depends on the policy's type. For more\n            information, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#min-max-values\">Maximum and minimum values</a> in the\n            <i>Organizations User Guide</i>.</p>"}))
    UpdatePolicyRequest.type = Types::UpdatePolicyRequest
    UpdatePolicyResponse.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the updated policy, showing the requested\n            changes.</p>"}))
    UpdatePolicyResponse.type = Types::UpdatePolicyResponse

    AWSOrganizationsV20161128 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.organizations#AWSOrganizationsV20161128"
      service.name = "AWSOrganizationsV20161128"
      service.version = "2016-11-28"
      service.traits = {"aws.api#service" => {"sdkId" => "Organizations", "arnNamespace" => "organizations", "cloudFormationName" => "Organizations", "cloudTrailEventSource" => "organizations.amazonaws.com", "endpointPrefix" => "organizations"}, "aws.auth#sigv4" => {"name" => "organizations"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Organizations", "smithy.api#xmlNamespace" => {"uri" => "http://organizations.amazonaws.com/doc/2016-11-28/"}}
      service.add_operation(:accept_handshake, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#AcceptHandshake"
        operation.name = "AcceptHandshake"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptHandshakeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptHandshakeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedForDependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeAlreadyInStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHandshakeTransitionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:attach_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#AttachPolicy"
        operation.name = "AttachPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicatePolicyAttachmentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyChangesInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypeNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_handshake, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CancelHandshake"
        operation.name = "CancelHandshake"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelHandshakeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelHandshakeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeAlreadyInStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHandshakeTransitionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:close_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CloseAccount"
        operation.name = "CloseAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CloseAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAlreadyClosedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:create_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CreateAccount"
        operation.name = "CreateAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FinalizingOrganizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:create_gov_cloud_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CreateGovCloudAccount"
        operation.name = "CreateGovCloudAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGovCloudAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGovCloudAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FinalizingOrganizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:create_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CreateOrganization"
        operation.name = "CreateOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOrganizationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOrganizationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedForDependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyInOrganizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:create_organizational_unit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CreateOrganizationalUnit"
        operation.name = "CreateOrganizationalUnit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOrganizationalUnitRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOrganizationalUnitResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateOrganizationalUnitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParentNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:create_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CreatePolicy"
        operation.name = "CreatePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicatePolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypeNotAvailableForOrganizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:decline_handshake, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeclineHandshake"
        operation.name = "DeclineHandshake"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeclineHandshakeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeclineHandshakeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeAlreadyInStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHandshakeTransitionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeleteOrganization"
        operation.name = "DeleteOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotEmptyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_organizational_unit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeleteOrganizationalUnit"
        operation.name = "DeleteOrganizationalUnit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOrganizationalUnitRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitNotEmptyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeletePolicy"
        operation.name = "DeletePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_delegated_administrator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeregisterDelegatedAdministrator"
        operation.name = "DeregisterDelegatedAdministrator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterDelegatedAdministratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotRegisteredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:describe_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeAccount"
        operation.name = "DescribeAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_create_account_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeCreateAccountStatus"
        operation.name = "DescribeCreateAccountStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCreateAccountStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCreateAccountStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountStatusNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:describe_effective_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeEffectivePolicy"
        operation.name = "DescribeEffectivePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEffectivePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEffectivePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:describe_handshake, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeHandshake"
        operation.name = "DescribeHandshake"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHandshakeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHandshakeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeOrganization"
        operation.name = "DescribeOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_organizational_unit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeOrganizationalUnit"
        operation.name = "DescribeOrganizationalUnit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationalUnitRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationalUnitResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribePolicy"
        operation.name = "DescribePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:describe_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeResourcePolicy"
        operation.name = "DescribeResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:detach_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DetachPolicy"
        operation.name = "DetachPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetachPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyChangesInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotAttachedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:disable_aws_service_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DisableAWSServiceAccess"
        operation.name = "DisableAWSServiceAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableAWSServiceAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:disable_policy_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DisablePolicyType"
        operation.name = "DisablePolicyType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisablePolicyTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisablePolicyTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyChangesInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypeNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RootNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:enable_aws_service_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#EnableAWSServiceAccess"
        operation.name = "EnableAWSServiceAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAWSServiceAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:enable_all_features, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#EnableAllFeatures"
        operation.name = "EnableAllFeatures"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAllFeaturesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAllFeaturesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:enable_policy_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#EnablePolicyType"
        operation.name = "EnablePolicyType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnablePolicyTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnablePolicyTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyChangesInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypeAlreadyEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypeNotAvailableForOrganizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RootNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:invite_account_to_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#InviteAccountToOrganization"
        operation.name = "InviteAccountToOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: InviteAccountToOrganizationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: InviteAccountToOrganizationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountOwnerNotVerifiedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateHandshakeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FinalizingOrganizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:leave_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#LeaveOrganization"
        operation.name = "LeaveOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MasterCannotLeaveOrganizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:list_aws_service_access_for_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListAWSServiceAccessForOrganization"
        operation.name = "ListAWSServiceAccessForOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAWSServiceAccessForOrganizationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAWSServiceAccessForOrganizationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAWSServiceAccessForOrganization.new
      end)
      service.add_operation(:list_accounts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListAccounts"
        operation.name = "ListAccounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccounts.new
      end)
      service.add_operation(:list_accounts_for_parent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListAccountsForParent"
        operation.name = "ListAccountsForParent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsForParentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsForParentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParentNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountsForParent.new
      end)
      service.add_operation(:list_accounts_with_invalid_effective_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListAccountsWithInvalidEffectivePolicy"
        operation.name = "ListAccountsWithInvalidEffectivePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsWithInvalidEffectivePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsWithInvalidEffectivePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountsWithInvalidEffectivePolicy.new
      end)
      service.add_operation(:list_children, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListChildren"
        operation.name = "ListChildren"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChildrenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChildrenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParentNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListChildren.new
      end)
      service.add_operation(:list_create_account_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListCreateAccountStatus"
        operation.name = "ListCreateAccountStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCreateAccountStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCreateAccountStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCreateAccountStatus.new
      end)
      service.add_operation(:list_delegated_administrators, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListDelegatedAdministrators"
        operation.name = "ListDelegatedAdministrators"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDelegatedAdministratorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDelegatedAdministratorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDelegatedAdministrators.new
      end)
      service.add_operation(:list_delegated_services_for_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListDelegatedServicesForAccount"
        operation.name = "ListDelegatedServicesForAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDelegatedServicesForAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDelegatedServicesForAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotRegisteredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDelegatedServicesForAccount.new
      end)
      service.add_operation(:list_effective_policy_validation_errors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListEffectivePolicyValidationErrors"
        operation.name = "ListEffectivePolicyValidationErrors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEffectivePolicyValidationErrorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEffectivePolicyValidationErrorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListEffectivePolicyValidationErrors.new
      end)
      service.add_operation(:list_handshakes_for_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListHandshakesForAccount"
        operation.name = "ListHandshakesForAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHandshakesForAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHandshakesForAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListHandshakesForAccount.new
      end)
      service.add_operation(:list_handshakes_for_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListHandshakesForOrganization"
        operation.name = "ListHandshakesForOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHandshakesForOrganizationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHandshakesForOrganizationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListHandshakesForOrganization.new
      end)
      service.add_operation(:list_organizational_units_for_parent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListOrganizationalUnitsForParent"
        operation.name = "ListOrganizationalUnitsForParent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationalUnitsForParentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationalUnitsForParentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParentNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListOrganizationalUnitsForParent.new
      end)
      service.add_operation(:list_parents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListParents"
        operation.name = "ListParents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListParentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListParentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChildNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListParents.new
      end)
      service.add_operation(:list_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListPolicies"
        operation.name = "ListPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPoliciesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPolicies.new
      end)
      service.add_operation(:list_policies_for_target, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListPoliciesForTarget"
        operation.name = "ListPoliciesForTarget"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPoliciesForTargetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPoliciesForTargetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPoliciesForTarget.new
      end)
      service.add_operation(:list_roots, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListRoots"
        operation.name = "ListRoots"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRootsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRootsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRoots.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_targets_for_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListTargetsForPolicy"
        operation.name = "ListTargetsForPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetsForPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetsForPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTargetsForPolicy.new
      end)
      service.add_operation(:move_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#MoveAccount"
        operation.name = "MoveAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: MoveAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationParentNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SourceParentNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:register_delegated_administrator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#RegisterDelegatedAdministrator"
        operation.name = "RegisterDelegatedAdministrator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterDelegatedAdministratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAlreadyRegisteredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:remove_account_from_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#RemoveAccountFromOrganization"
        operation.name = "RemoveAccountFromOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAccountFromOrganizationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MasterCannotLeaveOrganizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:update_organizational_unit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#UpdateOrganizationalUnit"
        operation.name = "UpdateOrganizationalUnit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOrganizationalUnitRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOrganizationalUnitResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateOrganizationalUnitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:update_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#UpdatePolicy"
        operation.name = "UpdatePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicatePolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyChangesInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end

# frozen_string_literal: true

# This is generated code!

module Aws::Organizations
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSOrganizationsNotInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AWSOrganizationsNotInUseException', name: 'AWSOrganizationsNotInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AcceptHandshakeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AcceptHandshakeRequest', name: 'AcceptHandshakeRequest')
    AcceptHandshakeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AcceptHandshakeResponse', name: 'AcceptHandshakeResponse')
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedForDependencyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AccessDeniedForDependencyException', name: 'AccessDeniedForDependencyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedForDependencyExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#AccessDeniedForDependencyExceptionReason', name: 'AccessDeniedForDependencyExceptionReason')
    Account = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#Account', name: 'Account')
    AccountAlreadyClosedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AccountAlreadyClosedException', name: 'AccountAlreadyClosedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    AccountAlreadyRegisteredException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AccountAlreadyRegisteredException', name: 'AccountAlreadyRegisteredException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    AccountArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#AccountArn', name: 'AccountArn', traits: {"smithy.api#pattern" => "^arn:aws:organizations::\\d{12}:account\\/o-[a-z0-9]{10,32}\\/\\d{12}$"})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 0, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AccountJoinedMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#AccountJoinedMethod', name: 'AccountJoinedMethod')
    AccountName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#AccountName', name: 'AccountName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    AccountNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AccountNotFoundException', name: 'AccountNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AccountNotRegisteredException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AccountNotRegisteredException', name: 'AccountNotRegisteredException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    AccountOwnerNotVerifiedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AccountOwnerNotVerifiedException', name: 'AccountOwnerNotVerifiedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#AccountStatus', name: 'AccountStatus')
    Accounts = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#Accounts', name: 'Accounts')
    ActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#ActionType', name: 'ActionType')
    AlreadyInOrganizationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AlreadyInOrganizationException', name: 'AlreadyInOrganizationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    AttachPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#AttachPolicyRequest', name: 'AttachPolicyRequest')
    AwsManagedPolicy = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.organizations#AwsManagedPolicy', name: 'AwsManagedPolicy', traits: {"smithy.api#default" => false})
    CancelHandshakeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CancelHandshakeRequest', name: 'CancelHandshakeRequest')
    CancelHandshakeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CancelHandshakeResponse', name: 'CancelHandshakeResponse')
    Child = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#Child', name: 'Child')
    ChildId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ChildId', name: 'ChildId', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"})
    ChildNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ChildNotFoundException', name: 'ChildNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ChildType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#ChildType', name: 'ChildType')
    Children = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#Children', name: 'Children')
    CloseAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CloseAccountRequest', name: 'CloseAccountRequest')
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConstraintViolationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ConstraintViolationException', name: 'ConstraintViolationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConstraintViolationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#ConstraintViolationExceptionReason', name: 'ConstraintViolationExceptionReason')
    CreateAccountFailureReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#CreateAccountFailureReason', name: 'CreateAccountFailureReason')
    CreateAccountName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#CreateAccountName', name: 'CreateAccountName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[\\u0020-\\u007E]+$", "smithy.api#sensitive" => {}})
    CreateAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateAccountRequest', name: 'CreateAccountRequest')
    CreateAccountRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#CreateAccountRequestId', name: 'CreateAccountRequestId', traits: {"smithy.api#length" => {"min" => 0, "max" => 36}, "smithy.api#pattern" => "^car-[a-z0-9]{8,32}$"})
    CreateAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateAccountResponse', name: 'CreateAccountResponse')
    CreateAccountState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#CreateAccountState', name: 'CreateAccountState')
    CreateAccountStates = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#CreateAccountStates', name: 'CreateAccountStates')
    CreateAccountStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateAccountStatus', name: 'CreateAccountStatus')
    CreateAccountStatusNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateAccountStatusNotFoundException', name: 'CreateAccountStatusNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CreateAccountStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#CreateAccountStatuses', name: 'CreateAccountStatuses')
    CreateGovCloudAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateGovCloudAccountRequest', name: 'CreateGovCloudAccountRequest')
    CreateGovCloudAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateGovCloudAccountResponse', name: 'CreateGovCloudAccountResponse')
    CreateOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateOrganizationRequest', name: 'CreateOrganizationRequest')
    CreateOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateOrganizationResponse', name: 'CreateOrganizationResponse')
    CreateOrganizationalUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateOrganizationalUnitRequest', name: 'CreateOrganizationalUnitRequest')
    CreateOrganizationalUnitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreateOrganizationalUnitResponse', name: 'CreateOrganizationalUnitResponse')
    CreatePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreatePolicyRequest', name: 'CreatePolicyRequest')
    CreatePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#CreatePolicyResponse', name: 'CreatePolicyResponse')
    DeclineHandshakeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DeclineHandshakeRequest', name: 'DeclineHandshakeRequest')
    DeclineHandshakeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DeclineHandshakeResponse', name: 'DeclineHandshakeResponse')
    DelegatedAdministrator = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DelegatedAdministrator', name: 'DelegatedAdministrator')
    DelegatedAdministrators = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#DelegatedAdministrators', name: 'DelegatedAdministrators')
    DelegatedService = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DelegatedService', name: 'DelegatedService')
    DelegatedServices = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#DelegatedServices', name: 'DelegatedServices')
    DeleteOrganizationalUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DeleteOrganizationalUnitRequest', name: 'DeleteOrganizationalUnitRequest')
    DeletePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DeletePolicyRequest', name: 'DeletePolicyRequest')
    DeregisterDelegatedAdministratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DeregisterDelegatedAdministratorRequest', name: 'DeregisterDelegatedAdministratorRequest')
    DescribeAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeAccountRequest', name: 'DescribeAccountRequest')
    DescribeAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeAccountResponse', name: 'DescribeAccountResponse')
    DescribeCreateAccountStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeCreateAccountStatusRequest', name: 'DescribeCreateAccountStatusRequest')
    DescribeCreateAccountStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeCreateAccountStatusResponse', name: 'DescribeCreateAccountStatusResponse')
    DescribeEffectivePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeEffectivePolicyRequest', name: 'DescribeEffectivePolicyRequest')
    DescribeEffectivePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeEffectivePolicyResponse', name: 'DescribeEffectivePolicyResponse')
    DescribeHandshakeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeHandshakeRequest', name: 'DescribeHandshakeRequest')
    DescribeHandshakeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeHandshakeResponse', name: 'DescribeHandshakeResponse')
    DescribeOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeOrganizationResponse', name: 'DescribeOrganizationResponse')
    DescribeOrganizationalUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeOrganizationalUnitRequest', name: 'DescribeOrganizationalUnitRequest')
    DescribeOrganizationalUnitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeOrganizationalUnitResponse', name: 'DescribeOrganizationalUnitResponse')
    DescribePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribePolicyRequest', name: 'DescribePolicyRequest')
    DescribePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribePolicyResponse', name: 'DescribePolicyResponse')
    DescribeResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DescribeResourcePolicyResponse', name: 'DescribeResourcePolicyResponse')
    DestinationParentNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DestinationParentNotFoundException', name: 'DestinationParentNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DetachPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DetachPolicyRequest', name: 'DetachPolicyRequest')
    DisableAWSServiceAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DisableAWSServiceAccessRequest', name: 'DisableAWSServiceAccessRequest')
    DisablePolicyTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DisablePolicyTypeRequest', name: 'DisablePolicyTypeRequest')
    DisablePolicyTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DisablePolicyTypeResponse', name: 'DisablePolicyTypeResponse')
    DuplicateAccountException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DuplicateAccountException', name: 'DuplicateAccountException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DuplicateHandshakeException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DuplicateHandshakeException', name: 'DuplicateHandshakeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DuplicateOrganizationalUnitException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DuplicateOrganizationalUnitException', name: 'DuplicateOrganizationalUnitException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DuplicatePolicyAttachmentException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DuplicatePolicyAttachmentException', name: 'DuplicatePolicyAttachmentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DuplicatePolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#DuplicatePolicyException', name: 'DuplicatePolicyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EffectivePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EffectivePolicy', name: 'EffectivePolicy')
    EffectivePolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EffectivePolicyNotFoundException', name: 'EffectivePolicyNotFoundException', traits: {"smithy.api#error" => "client"})
    EffectivePolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#EffectivePolicyType', name: 'EffectivePolicyType')
    EffectivePolicyValidationError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EffectivePolicyValidationError', name: 'EffectivePolicyValidationError')
    EffectivePolicyValidationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#EffectivePolicyValidationErrors', name: 'EffectivePolicyValidationErrors')
    Email = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#Email', name: 'Email', traits: {"smithy.api#length" => {"min" => 6, "max" => 64}, "smithy.api#pattern" => "^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$", "smithy.api#sensitive" => {}})
    EnableAWSServiceAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EnableAWSServiceAccessRequest', name: 'EnableAWSServiceAccessRequest')
    EnableAllFeaturesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EnableAllFeaturesRequest', name: 'EnableAllFeaturesRequest')
    EnableAllFeaturesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EnableAllFeaturesResponse', name: 'EnableAllFeaturesResponse')
    EnablePolicyTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EnablePolicyTypeRequest', name: 'EnablePolicyTypeRequest')
    EnablePolicyTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EnablePolicyTypeResponse', name: 'EnablePolicyTypeResponse')
    EnabledServicePrincipal = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#EnabledServicePrincipal', name: 'EnabledServicePrincipal')
    EnabledServicePrincipals = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#EnabledServicePrincipals', name: 'EnabledServicePrincipals')
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ErrorCode', name: 'ErrorCode')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ErrorMessage', name: 'ErrorMessage')
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ExceptionMessage', name: 'ExceptionMessage')
    ExceptionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ExceptionType', name: 'ExceptionType')
    FinalizingOrganizationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#FinalizingOrganizationException', name: 'FinalizingOrganizationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    GenericArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#GenericArn', name: 'GenericArn', traits: {"smithy.api#pattern" => "^arn:aws:organizations::.+:.+$"})
    Handshake = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#Handshake', name: 'Handshake')
    HandshakeAlreadyInStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#HandshakeAlreadyInStateException', name: 'HandshakeAlreadyInStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    HandshakeArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#HandshakeArn', name: 'HandshakeArn', traits: {"smithy.api#pattern" => "^arn:aws:organizations::\\d{12}:handshake\\/o-[a-z0-9]{10,32}\\/[a-z_]{1,32}\\/h-[0-9a-z]{8,32}$"})
    HandshakeConstraintViolationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#HandshakeConstraintViolationException', name: 'HandshakeConstraintViolationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    HandshakeConstraintViolationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#HandshakeConstraintViolationExceptionReason', name: 'HandshakeConstraintViolationExceptionReason')
    HandshakeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#HandshakeFilter', name: 'HandshakeFilter')
    HandshakeId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#HandshakeId', name: 'HandshakeId', traits: {"smithy.api#length" => {"min" => 0, "max" => 34}, "smithy.api#pattern" => "^h-[0-9a-z]{8,32}$"})
    HandshakeNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#HandshakeNotFoundException', name: 'HandshakeNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    HandshakeNotes = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#HandshakeNotes', name: 'HandshakeNotes', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    HandshakeParties = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#HandshakeParties', name: 'HandshakeParties')
    HandshakeParty = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#HandshakeParty', name: 'HandshakeParty')
    HandshakePartyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#HandshakePartyId', name: 'HandshakePartyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    HandshakePartyType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#HandshakePartyType', name: 'HandshakePartyType')
    HandshakeResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#HandshakeResource', name: 'HandshakeResource')
    HandshakeResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#HandshakeResourceType', name: 'HandshakeResourceType')
    HandshakeResourceValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#HandshakeResourceValue', name: 'HandshakeResourceValue', traits: {"smithy.api#sensitive" => {}})
    HandshakeResources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#HandshakeResources', name: 'HandshakeResources')
    HandshakeState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#HandshakeState', name: 'HandshakeState')
    Handshakes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#Handshakes', name: 'Handshakes')
    IAMUserAccessToBilling = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#IAMUserAccessToBilling', name: 'IAMUserAccessToBilling')
    InvalidHandshakeTransitionException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#InvalidHandshakeTransitionException', name: 'InvalidHandshakeTransitionException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#InvalidInputException', name: 'InvalidInputException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidInputExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#InvalidInputExceptionReason', name: 'InvalidInputExceptionReason')
    InviteAccountToOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#InviteAccountToOrganizationRequest', name: 'InviteAccountToOrganizationRequest')
    InviteAccountToOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#InviteAccountToOrganizationResponse', name: 'InviteAccountToOrganizationResponse')
    ListAWSServiceAccessForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListAWSServiceAccessForOrganizationRequest', name: 'ListAWSServiceAccessForOrganizationRequest')
    ListAWSServiceAccessForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListAWSServiceAccessForOrganizationResponse', name: 'ListAWSServiceAccessForOrganizationResponse')
    ListAccountsForParentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListAccountsForParentRequest', name: 'ListAccountsForParentRequest')
    ListAccountsForParentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListAccountsForParentResponse', name: 'ListAccountsForParentResponse')
    ListAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListAccountsRequest', name: 'ListAccountsRequest')
    ListAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListAccountsResponse', name: 'ListAccountsResponse')
    ListAccountsWithInvalidEffectivePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListAccountsWithInvalidEffectivePolicyRequest', name: 'ListAccountsWithInvalidEffectivePolicyRequest')
    ListAccountsWithInvalidEffectivePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListAccountsWithInvalidEffectivePolicyResponse', name: 'ListAccountsWithInvalidEffectivePolicyResponse')
    ListChildrenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListChildrenRequest', name: 'ListChildrenRequest')
    ListChildrenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListChildrenResponse', name: 'ListChildrenResponse')
    ListCreateAccountStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListCreateAccountStatusRequest', name: 'ListCreateAccountStatusRequest')
    ListCreateAccountStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListCreateAccountStatusResponse', name: 'ListCreateAccountStatusResponse')
    ListDelegatedAdministratorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListDelegatedAdministratorsRequest', name: 'ListDelegatedAdministratorsRequest')
    ListDelegatedAdministratorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListDelegatedAdministratorsResponse', name: 'ListDelegatedAdministratorsResponse')
    ListDelegatedServicesForAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListDelegatedServicesForAccountRequest', name: 'ListDelegatedServicesForAccountRequest')
    ListDelegatedServicesForAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListDelegatedServicesForAccountResponse', name: 'ListDelegatedServicesForAccountResponse')
    ListEffectivePolicyValidationErrorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListEffectivePolicyValidationErrorsRequest', name: 'ListEffectivePolicyValidationErrorsRequest')
    ListEffectivePolicyValidationErrorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListEffectivePolicyValidationErrorsResponse', name: 'ListEffectivePolicyValidationErrorsResponse')
    ListHandshakesForAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListHandshakesForAccountRequest', name: 'ListHandshakesForAccountRequest')
    ListHandshakesForAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListHandshakesForAccountResponse', name: 'ListHandshakesForAccountResponse')
    ListHandshakesForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListHandshakesForOrganizationRequest', name: 'ListHandshakesForOrganizationRequest')
    ListHandshakesForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListHandshakesForOrganizationResponse', name: 'ListHandshakesForOrganizationResponse')
    ListOrganizationalUnitsForParentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListOrganizationalUnitsForParentRequest', name: 'ListOrganizationalUnitsForParentRequest')
    ListOrganizationalUnitsForParentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListOrganizationalUnitsForParentResponse', name: 'ListOrganizationalUnitsForParentResponse')
    ListParentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListParentsRequest', name: 'ListParentsRequest')
    ListParentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListParentsResponse', name: 'ListParentsResponse')
    ListPoliciesForTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListPoliciesForTargetRequest', name: 'ListPoliciesForTargetRequest')
    ListPoliciesForTargetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListPoliciesForTargetResponse', name: 'ListPoliciesForTargetResponse')
    ListPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListPoliciesRequest', name: 'ListPoliciesRequest')
    ListPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListPoliciesResponse', name: 'ListPoliciesResponse')
    ListRootsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListRootsRequest', name: 'ListRootsRequest')
    ListRootsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListRootsResponse', name: 'ListRootsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTargetsForPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListTargetsForPolicyRequest', name: 'ListTargetsForPolicyRequest')
    ListTargetsForPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ListTargetsForPolicyResponse', name: 'ListTargetsForPolicyResponse')
    MalformedPolicyDocumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#MalformedPolicyDocumentException', name: 'MalformedPolicyDocumentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MasterCannotLeaveOrganizationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#MasterCannotLeaveOrganizationException', name: 'MasterCannotLeaveOrganizationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.organizations#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    MoveAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#MoveAccountRequest', name: 'MoveAccountRequest')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 100000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    Organization = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#Organization', name: 'Organization')
    OrganizationArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#OrganizationArn', name: 'OrganizationArn', traits: {"smithy.api#pattern" => "^arn:aws:organizations::\\d{12}:organization\\/o-[a-z0-9]{10,32}$"})
    OrganizationFeatureSet = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#OrganizationFeatureSet', name: 'OrganizationFeatureSet')
    OrganizationId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#OrganizationId', name: 'OrganizationId', traits: {"smithy.api#pattern" => "^o-[a-z0-9]{10,32}$"})
    OrganizationNotEmptyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#OrganizationNotEmptyException', name: 'OrganizationNotEmptyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OrganizationalUnit = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#OrganizationalUnit', name: 'OrganizationalUnit')
    OrganizationalUnitArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#OrganizationalUnitArn', name: 'OrganizationalUnitArn', traits: {"smithy.api#pattern" => "^arn:aws:organizations::\\d{12}:ou\\/o-[a-z0-9]{10,32}\\/ou-[0-9a-z]{4,32}-[0-9a-z]{8,32}$"})
    OrganizationalUnitId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#OrganizationalUnitId', name: 'OrganizationalUnitId', traits: {"smithy.api#length" => {"min" => 0, "max" => 68}, "smithy.api#pattern" => "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"})
    OrganizationalUnitName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#OrganizationalUnitName', name: 'OrganizationalUnitName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    OrganizationalUnitNotEmptyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#OrganizationalUnitNotEmptyException', name: 'OrganizationalUnitNotEmptyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OrganizationalUnitNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#OrganizationalUnitNotFoundException', name: 'OrganizationalUnitNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OrganizationalUnits = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#OrganizationalUnits', name: 'OrganizationalUnits')
    Parent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#Parent', name: 'Parent')
    ParentId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ParentId', name: 'ParentId', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"})
    ParentNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ParentNotFoundException', name: 'ParentNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ParentType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#ParentType', name: 'ParentType')
    Parents = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#Parents', name: 'Parents')
    Path = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#Path', name: 'Path', traits: {"smithy.api#pattern" => "^(o-[a-z0-9]{10,32}\\/r-[0-9a-z]{4,32}(\\/ou\\-[0-9a-z]{4,32}-[a-z0-9]{8,32})*(\\/\\d{12})*)\\/$"})
    PathToError = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#PathToError', name: 'PathToError')
    Policies = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#Policies', name: 'Policies')
    Policy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#Policy', name: 'Policy')
    PolicyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#PolicyArn', name: 'PolicyArn', traits: {"smithy.api#pattern" => "^(arn:aws:organizations::\\d{12}:policy\\/o-[a-z0-9]{10,32}\\/[0-9a-z_]+\\/p-[0-9a-z]{10,32})|(arn:aws:organizations::aws:policy\\/[0-9a-z_]+\\/p-[0-9a-zA-Z_]{10,128})$"})
    PolicyChangesInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyChangesInProgressException', name: 'PolicyChangesInProgressException', traits: {"smithy.api#error" => "client"})
    PolicyContent = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#PolicyContent', name: 'PolicyContent', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    PolicyDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#PolicyDescription', name: 'PolicyDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    PolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#PolicyId', name: 'PolicyId', traits: {"smithy.api#length" => {"min" => 0, "max" => 130}, "smithy.api#pattern" => "^p-[0-9a-zA-Z_]{8,128}$"})
    PolicyIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#PolicyIds', name: 'PolicyIds')
    PolicyInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyInUseException', name: 'PolicyInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#PolicyName', name: 'PolicyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    PolicyNotAttachedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyNotAttachedException', name: 'PolicyNotAttachedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyNotFoundException', name: 'PolicyNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicySummary', name: 'PolicySummary')
    PolicyTargetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#PolicyTargetId', name: 'PolicyTargetId', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^(r-[0-9a-z]{4,32})|(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"})
    PolicyTargetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyTargetSummary', name: 'PolicyTargetSummary')
    PolicyTargets = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#PolicyTargets', name: 'PolicyTargets')
    PolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#PolicyType', name: 'PolicyType')
    PolicyTypeAlreadyEnabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyTypeAlreadyEnabledException', name: 'PolicyTypeAlreadyEnabledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PolicyTypeNotAvailableForOrganizationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyTypeNotAvailableForOrganizationException', name: 'PolicyTypeNotAvailableForOrganizationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PolicyTypeNotEnabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyTypeNotEnabledException', name: 'PolicyTypeNotEnabledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PolicyTypeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#PolicyTypeStatus', name: 'PolicyTypeStatus')
    PolicyTypeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PolicyTypeSummary', name: 'PolicyTypeSummary')
    PolicyTypes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#PolicyTypes', name: 'PolicyTypes')
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PutResourcePolicyRequest', name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#PutResourcePolicyResponse', name: 'PutResourcePolicyResponse')
    RegisterDelegatedAdministratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#RegisterDelegatedAdministratorRequest', name: 'RegisterDelegatedAdministratorRequest')
    RemoveAccountFromOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#RemoveAccountFromOrganizationRequest', name: 'RemoveAccountFromOrganizationRequest')
    ResourcePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ResourcePolicy', name: 'ResourcePolicy')
    ResourcePolicyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ResourcePolicyArn', name: 'ResourcePolicyArn', traits: {"smithy.api#pattern" => "^arn:[a-z0-9][a-z0-9-.]{0,62}:organizations::\\d{12}:resourcepolicy\\/o-[a-z0-9]{10,32}\\/rp-[0-9a-zA-Z_]{4,128}$"})
    ResourcePolicyContent = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ResourcePolicyContent', name: 'ResourcePolicyContent', traits: {"smithy.api#length" => {"min" => 1, "max" => 40000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ResourcePolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ResourcePolicyId', name: 'ResourcePolicyId', traits: {"smithy.api#length" => {"min" => 0, "max" => 131}, "smithy.api#pattern" => "^rp-[0-9a-zA-Z_]{4,128}$"})
    ResourcePolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ResourcePolicyNotFoundException', name: 'ResourcePolicyNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ResourcePolicySummary', name: 'ResourcePolicySummary')
    RoleName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#RoleName', name: 'RoleName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\w+=,.@-]{1,64}$"})
    Root = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#Root', name: 'Root')
    RootArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#RootArn', name: 'RootArn', traits: {"smithy.api#pattern" => "^arn:aws:organizations::\\d{12}:root\\/o-[a-z0-9]{10,32}\\/r-[0-9a-z]{4,32}$"})
    RootId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#RootId', name: 'RootId', traits: {"smithy.api#length" => {"min" => 0, "max" => 34}, "smithy.api#pattern" => "^r-[0-9a-z]{4,32}$"})
    RootName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#RootName', name: 'RootName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RootNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#RootNotFoundException', name: 'RootNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Roots = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#Roots', name: 'Roots')
    ServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#ServiceException', name: 'ServiceException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServicePrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#ServicePrincipal', name: 'ServicePrincipal', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=,.@-]*$"})
    SourceParentNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#SourceParentNotFoundException', name: 'SourceParentNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#TagKeys', name: 'TagKeys')
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#TagResourceRequest', name: 'TagResourceRequest')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TaggableResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#TaggableResourceId', name: 'TaggableResourceId', traits: {"smithy.api#length" => {"min" => 0, "max" => 130}, "smithy.api#pattern" => "^(r-[0-9a-z]{4,32})|(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})|(^p-[0-9a-zA-Z_]{8,128})|(^rp-[0-9a-zA-Z_]{4,128})$"})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.organizations#Tags', name: 'Tags')
    TargetName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.organizations#TargetName', name: 'TargetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TargetNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#TargetNotFoundException', name: 'TargetNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.organizations#TargetType', name: 'TargetType')
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.organizations#Timestamp', name: 'Timestamp')
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnsupportedAPIEndpointException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#UnsupportedAPIEndpointException', name: 'UnsupportedAPIEndpointException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateOrganizationalUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#UpdateOrganizationalUnitRequest', name: 'UpdateOrganizationalUnitRequest')
    UpdateOrganizationalUnitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#UpdateOrganizationalUnitResponse', name: 'UpdateOrganizationalUnitResponse')
    UpdatePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#UpdatePolicyRequest', name: 'UpdatePolicyRequest')
    UpdatePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.organizations#UpdatePolicyResponse', name: 'UpdatePolicyResponse')

    AWSOrganizationsNotInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AWSOrganizationsNotInUseException.type = Types::AWSOrganizationsNotInUseException
    AcceptHandshakeRequest.add_member(:handshake_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeId, location_name: 'HandshakeId', traits: {"smithy.api#required" => {}}))
    AcceptHandshakeRequest.type = Types::AcceptHandshakeRequest
    AcceptHandshakeResponse.add_member(:handshake, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Handshake, location_name: 'Handshake'))
    AcceptHandshakeResponse.type = Types::AcceptHandshakeResponse
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDeniedForDependencyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccessDeniedForDependencyException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedForDependencyExceptionReason, location_name: 'Reason'))
    AccessDeniedForDependencyException.type = Types::AccessDeniedForDependencyException
    AccessDeniedForDependencyExceptionReason.add_member(:access_denied_during_create_service_linked_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE"}))
    Account.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'Id'))
    Account.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountArn, location_name: 'Arn'))
    Account.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'Email'))
    Account.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountName, location_name: 'Name'))
    Account.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountStatus, location_name: 'Status'))
    Account.add_member(:joined_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountJoinedMethod, location_name: 'JoinedMethod'))
    Account.add_member(:joined_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'JoinedTimestamp'))
    Account.type = Types::Account
    AccountAlreadyClosedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccountAlreadyClosedException.type = Types::AccountAlreadyClosedException
    AccountAlreadyRegisteredException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccountAlreadyRegisteredException.type = Types::AccountAlreadyRegisteredException
    AccountJoinedMethod.add_member(:invited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVITED', traits: {"smithy.api#enumValue" => "INVITED"}))
    AccountJoinedMethod.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    AccountNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccountNotFoundException.type = Types::AccountNotFoundException
    AccountNotRegisteredException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccountNotRegisteredException.type = Types::AccountNotRegisteredException
    AccountOwnerNotVerifiedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccountOwnerNotVerifiedException.type = Types::AccountOwnerNotVerifiedException
    AccountStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AccountStatus.add_member(:suspended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    AccountStatus.add_member(:pending_closure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_CLOSURE', traits: {"smithy.api#enumValue" => "PENDING_CLOSURE"}))
    Accounts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Account)
    ActionType.add_member(:invite_account_to_organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVITE_ACCOUNT_TO_ORGANIZATION', traits: {"smithy.api#enumValue" => "INVITE"}))
    ActionType.add_member(:enable_all_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLE_ALL_FEATURES', traits: {"smithy.api#enumValue" => "ENABLE_ALL_FEATURES"}))
    ActionType.add_member(:approve_all_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVE_ALL_FEATURES', traits: {"smithy.api#enumValue" => "APPROVE_ALL_FEATURES"}))
    ActionType.add_member(:add_organizations_service_linked_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE', traits: {"smithy.api#enumValue" => "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"}))
    AlreadyInOrganizationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AlreadyInOrganizationException.type = Types::AlreadyInOrganizationException
    AttachPolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#required" => {}}))
    AttachPolicyRequest.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTargetId, location_name: 'TargetId', traits: {"smithy.api#required" => {}}))
    AttachPolicyRequest.type = Types::AttachPolicyRequest
    CancelHandshakeRequest.add_member(:handshake_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeId, location_name: 'HandshakeId', traits: {"smithy.api#required" => {}}))
    CancelHandshakeRequest.type = Types::CancelHandshakeRequest
    CancelHandshakeResponse.add_member(:handshake, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Handshake, location_name: 'Handshake'))
    CancelHandshakeResponse.type = Types::CancelHandshakeResponse
    Child.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChildId, location_name: 'Id'))
    Child.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChildType, location_name: 'Type'))
    Child.type = Types::Child
    ChildNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ChildNotFoundException.type = Types::ChildNotFoundException
    ChildType.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    ChildType.add_member(:organizational_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATIONAL_UNIT', traits: {"smithy.api#enumValue" => "ORGANIZATIONAL_UNIT"}))
    Children.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Child)
    CloseAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    CloseAccountRequest.type = Types::CloseAccountRequest
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    ConstraintViolationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ConstraintViolationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationExceptionReason, location_name: 'Reason'))
    ConstraintViolationException.type = Types::ConstraintViolationException
    ConstraintViolationExceptionReason.add_member(:account_number_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_NUMBER_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ACCOUNT_NUMBER_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:handshake_rate_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HANDSHAKE_RATE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "HANDSHAKE_RATE_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:ou_number_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OU_NUMBER_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "OU_NUMBER_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:ou_depth_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OU_DEPTH_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "OU_DEPTH_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:policy_number_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY_NUMBER_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "POLICY_NUMBER_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:policy_content_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY_CONTENT_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "POLICY_CONTENT_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:max_policy_type_attachment_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:min_policy_type_attachment_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:account_cannot_leave_organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_CANNOT_LEAVE_ORGANIZATION', traits: {"smithy.api#enumValue" => "ACCOUNT_CANNOT_LEAVE_ORGANIZATION"}))
    ConstraintViolationExceptionReason.add_member(:account_cannot_leave_without_eula, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA', traits: {"smithy.api#enumValue" => "ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA"}))
    ConstraintViolationExceptionReason.add_member(:account_cannot_leave_without_phone_verification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION', traits: {"smithy.api#enumValue" => "ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION"}))
    ConstraintViolationExceptionReason.add_member(:master_account_payment_instrument_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED', traits: {"smithy.api#enumValue" => "MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED"}))
    ConstraintViolationExceptionReason.add_member(:member_account_payment_instrument_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED', traits: {"smithy.api#enumValue" => "MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED"}))
    ConstraintViolationExceptionReason.add_member(:account_creation_rate_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:master_account_address_does_not_match_marketplace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE', traits: {"smithy.api#enumValue" => "MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE"}))
    ConstraintViolationExceptionReason.add_member(:master_account_missing_contact_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER_ACCOUNT_MISSING_CONTACT_INFO', traits: {"smithy.api#enumValue" => "MASTER_ACCOUNT_MISSING_CONTACT_INFO"}))
    ConstraintViolationExceptionReason.add_member(:master_account_not_govcloud_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED', traits: {"smithy.api#enumValue" => "MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED"}))
    ConstraintViolationExceptionReason.add_member(:organization_not_in_all_features_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION_NOT_IN_ALL_FEATURES_MODE', traits: {"smithy.api#enumValue" => "ORGANIZATION_NOT_IN_ALL_FEATURES_MODE"}))
    ConstraintViolationExceptionReason.add_member(:create_organization_in_billing_mode_unsupported_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION', traits: {"smithy.api#enumValue" => "CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION"}))
    ConstraintViolationExceptionReason.add_member(:email_verification_code_expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_VERIFICATION_CODE_EXPIRED', traits: {"smithy.api#enumValue" => "EMAIL_VERIFICATION_CODE_EXPIRED"}))
    ConstraintViolationExceptionReason.add_member(:wait_period_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAIT_PERIOD_ACTIVE', traits: {"smithy.api#enumValue" => "WAIT_PERIOD_ACTIVE"}))
    ConstraintViolationExceptionReason.add_member(:max_tag_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_TAG_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "MAX_TAG_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:tag_policy_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAG_POLICY_VIOLATION', traits: {"smithy.api#enumValue" => "TAG_POLICY_VIOLATION"}))
    ConstraintViolationExceptionReason.add_member(:max_delegated_administrators_for_service_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:cannot_register_master_as_delegated_administrator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR', traits: {"smithy.api#enumValue" => "CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR"}))
    ConstraintViolationExceptionReason.add_member(:cannot_remove_delegated_administrator_from_org, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG', traits: {"smithy.api#enumValue" => "CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG"}))
    ConstraintViolationExceptionReason.add_member(:delegated_administrator_exists_for_this_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE', traits: {"smithy.api#enumValue" => "DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE"}))
    ConstraintViolationExceptionReason.add_member(:policy_type_enabled_for_this_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY_TYPE_ENABLED_FOR_THIS_SERVICE', traits: {"smithy.api#enumValue" => "POLICY_TYPE_ENABLED_FOR_THIS_SERVICE"}))
    ConstraintViolationExceptionReason.add_member(:master_account_missing_business_license, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE', traits: {"smithy.api#enumValue" => "MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE"}))
    ConstraintViolationExceptionReason.add_member(:cannot_close_management_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_CLOSE_MANAGEMENT_ACCOUNT', traits: {"smithy.api#enumValue" => "CANNOT_CLOSE_MANAGEMENT_ACCOUNT"}))
    ConstraintViolationExceptionReason.add_member(:close_account_quota_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSE_ACCOUNT_QUOTA_EXCEEDED', traits: {"smithy.api#enumValue" => "CLOSE_ACCOUNT_QUOTA_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:close_account_requests_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED"}))
    ConstraintViolationExceptionReason.add_member(:service_access_not_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_ACCESS_NOT_ENABLED', traits: {"smithy.api#enumValue" => "SERVICE_ACCESS_NOT_ENABLED"}))
    ConstraintViolationExceptionReason.add_member(:invalid_payment_instrument, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PAYMENT_INSTRUMENT', traits: {"smithy.api#enumValue" => "INVALID_PAYMENT_INSTRUMENT"}))
    ConstraintViolationExceptionReason.add_member(:account_creation_not_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_CREATION_NOT_COMPLETE', traits: {"smithy.api#enumValue" => "ACCOUNT_CREATION_NOT_COMPLETE"}))
    ConstraintViolationExceptionReason.add_member(:cannot_register_suspended_account_as_delegated_administrator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_REGISTER_SUSPENDED_ACCOUNT_AS_DELEGATED_ADMINISTRATOR', traits: {"smithy.api#enumValue" => "CANNOT_REGISTER_SUSPENDED_ACCOUNT_AS_DELEGATED_ADMINISTRATOR"}))
    ConstraintViolationExceptionReason.add_member(:all_features_migration_organization_size_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_FEATURES_MIGRATION_ORGANIZATION_SIZE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ALL_FEATURES_MIGRATION_ORGANIZATION_SIZE_LIMIT_EXCEEDED"}))
    CreateAccountFailureReason.add_member(:account_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ACCOUNT_LIMIT_EXCEEDED"}))
    CreateAccountFailureReason.add_member(:email_already_exists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_ALREADY_EXISTS', traits: {"smithy.api#enumValue" => "EMAIL_ALREADY_EXISTS"}))
    CreateAccountFailureReason.add_member(:invalid_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ADDRESS', traits: {"smithy.api#enumValue" => "INVALID_ADDRESS"}))
    CreateAccountFailureReason.add_member(:invalid_email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_EMAIL', traits: {"smithy.api#enumValue" => "INVALID_EMAIL"}))
    CreateAccountFailureReason.add_member(:concurrent_account_modification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONCURRENT_ACCOUNT_MODIFICATION', traits: {"smithy.api#enumValue" => "CONCURRENT_ACCOUNT_MODIFICATION"}))
    CreateAccountFailureReason.add_member(:internal_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_FAILURE', traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    CreateAccountFailureReason.add_member(:govcloud_account_already_exists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GOVCLOUD_ACCOUNT_ALREADY_EXISTS', traits: {"smithy.api#enumValue" => "GOVCLOUD_ACCOUNT_ALREADY_EXISTS"}))
    CreateAccountFailureReason.add_member(:missing_business_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_BUSINESS_VALIDATION', traits: {"smithy.api#enumValue" => "MISSING_BUSINESS_VALIDATION"}))
    CreateAccountFailureReason.add_member(:failed_business_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_BUSINESS_VALIDATION', traits: {"smithy.api#enumValue" => "FAILED_BUSINESS_VALIDATION"}))
    CreateAccountFailureReason.add_member(:pending_business_validatio_nv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_BUSINESS_VALIDATIONv', traits: {"smithy.api#enumValue" => "PENDING_BUSINESS_VALIDATION"}))
    CreateAccountFailureReason.add_member(:invalid_identity_for_business_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_IDENTITY_FOR_BUSINESS_VALIDATION', traits: {"smithy.api#enumValue" => "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION"}))
    CreateAccountFailureReason.add_member(:unknown_business_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_BUSINESS_VALIDATION', traits: {"smithy.api#enumValue" => "UNKNOWN_BUSINESS_VALIDATION"}))
    CreateAccountFailureReason.add_member(:missing_payment_instrument, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_PAYMENT_INSTRUMENT', traits: {"smithy.api#enumValue" => "MISSING_PAYMENT_INSTRUMENT"}))
    CreateAccountFailureReason.add_member(:invalid_payment_instrument, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PAYMENT_INSTRUMENT', traits: {"smithy.api#enumValue" => "INVALID_PAYMENT_INSTRUMENT"}))
    CreateAccountFailureReason.add_member(:update_existing_resource_policy_with_tags_not_supported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED', traits: {"smithy.api#enumValue" => "UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED"}))
    CreateAccountRequest.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'Email', traits: {"smithy.api#required" => {}}))
    CreateAccountRequest.add_member(:account_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountName, location_name: 'AccountName', traits: {"smithy.api#required" => {}}))
    CreateAccountRequest.add_member(:role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'RoleName'))
    CreateAccountRequest.add_member(:iam_user_access_to_billing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMUserAccessToBilling, location_name: 'IamUserAccessToBilling'))
    CreateAccountRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateAccountRequest.type = Types::CreateAccountRequest
    CreateAccountResponse.add_member(:create_account_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountStatus, location_name: 'CreateAccountStatus'))
    CreateAccountResponse.type = Types::CreateAccountResponse
    CreateAccountState.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CreateAccountState.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    CreateAccountState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CreateAccountStates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountState)
    CreateAccountStatus.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountRequestId, location_name: 'Id'))
    CreateAccountStatus.add_member(:account_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountName, location_name: 'AccountName'))
    CreateAccountStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountState, location_name: 'State'))
    CreateAccountStatus.add_member(:requested_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RequestedTimestamp'))
    CreateAccountStatus.add_member(:completed_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CompletedTimestamp'))
    CreateAccountStatus.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    CreateAccountStatus.add_member(:gov_cloud_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'GovCloudAccountId'))
    CreateAccountStatus.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountFailureReason, location_name: 'FailureReason'))
    CreateAccountStatus.type = Types::CreateAccountStatus
    CreateAccountStatusNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    CreateAccountStatusNotFoundException.type = Types::CreateAccountStatusNotFoundException
    CreateAccountStatuses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountStatus)
    CreateGovCloudAccountRequest.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'Email', traits: {"smithy.api#required" => {}}))
    CreateGovCloudAccountRequest.add_member(:account_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountName, location_name: 'AccountName', traits: {"smithy.api#required" => {}}))
    CreateGovCloudAccountRequest.add_member(:role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleName, location_name: 'RoleName'))
    CreateGovCloudAccountRequest.add_member(:iam_user_access_to_billing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMUserAccessToBilling, location_name: 'IamUserAccessToBilling'))
    CreateGovCloudAccountRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateGovCloudAccountRequest.type = Types::CreateGovCloudAccountRequest
    CreateGovCloudAccountResponse.add_member(:create_account_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountStatus, location_name: 'CreateAccountStatus'))
    CreateGovCloudAccountResponse.type = Types::CreateGovCloudAccountResponse
    CreateOrganizationRequest.add_member(:feature_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationFeatureSet, location_name: 'FeatureSet'))
    CreateOrganizationRequest.type = Types::CreateOrganizationRequest
    CreateOrganizationResponse.add_member(:organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Organization, location_name: 'Organization'))
    CreateOrganizationResponse.type = Types::CreateOrganizationResponse
    CreateOrganizationalUnitRequest.add_member(:parent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentId, location_name: 'ParentId', traits: {"smithy.api#required" => {}}))
    CreateOrganizationalUnitRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateOrganizationalUnitRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateOrganizationalUnitRequest.type = Types::CreateOrganizationalUnitRequest
    CreateOrganizationalUnitResponse.add_member(:organizational_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnit, location_name: 'OrganizationalUnit'))
    CreateOrganizationalUnitResponse.type = Types::CreateOrganizationalUnitResponse
    CreatePolicyRequest.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyContent, location_name: 'Content', traits: {"smithy.api#required" => {}}))
    CreatePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    CreatePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreatePolicyRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    CreatePolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreatePolicyRequest.type = Types::CreatePolicyRequest
    CreatePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy'))
    CreatePolicyResponse.type = Types::CreatePolicyResponse
    DeclineHandshakeRequest.add_member(:handshake_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeId, location_name: 'HandshakeId', traits: {"smithy.api#required" => {}}))
    DeclineHandshakeRequest.type = Types::DeclineHandshakeRequest
    DeclineHandshakeResponse.add_member(:handshake, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Handshake, location_name: 'Handshake'))
    DeclineHandshakeResponse.type = Types::DeclineHandshakeResponse
    DelegatedAdministrator.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'Id'))
    DelegatedAdministrator.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountArn, location_name: 'Arn'))
    DelegatedAdministrator.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'Email'))
    DelegatedAdministrator.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountName, location_name: 'Name'))
    DelegatedAdministrator.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountStatus, location_name: 'Status'))
    DelegatedAdministrator.add_member(:joined_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountJoinedMethod, location_name: 'JoinedMethod'))
    DelegatedAdministrator.add_member(:joined_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'JoinedTimestamp'))
    DelegatedAdministrator.add_member(:delegation_enabled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DelegationEnabledDate'))
    DelegatedAdministrator.type = Types::DelegatedAdministrator
    DelegatedAdministrators.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegatedAdministrator)
    DelegatedService.add_member(:service_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'ServicePrincipal'))
    DelegatedService.add_member(:delegation_enabled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DelegationEnabledDate'))
    DelegatedService.type = Types::DelegatedService
    DelegatedServices.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegatedService)
    DeleteOrganizationalUnitRequest.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'OrganizationalUnitId', traits: {"smithy.api#required" => {}}))
    DeleteOrganizationalUnitRequest.type = Types::DeleteOrganizationalUnitRequest
    DeletePolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#required" => {}}))
    DeletePolicyRequest.type = Types::DeletePolicyRequest
    DeregisterDelegatedAdministratorRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DeregisterDelegatedAdministratorRequest.add_member(:service_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'ServicePrincipal', traits: {"smithy.api#required" => {}}))
    DeregisterDelegatedAdministratorRequest.type = Types::DeregisterDelegatedAdministratorRequest
    DescribeAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    DescribeAccountRequest.type = Types::DescribeAccountRequest
    DescribeAccountResponse.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Account, location_name: 'Account'))
    DescribeAccountResponse.type = Types::DescribeAccountResponse
    DescribeCreateAccountStatusRequest.add_member(:create_account_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountRequestId, location_name: 'CreateAccountRequestId', traits: {"smithy.api#required" => {}}))
    DescribeCreateAccountStatusRequest.type = Types::DescribeCreateAccountStatusRequest
    DescribeCreateAccountStatusResponse.add_member(:create_account_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountStatus, location_name: 'CreateAccountStatus'))
    DescribeCreateAccountStatusResponse.type = Types::DescribeCreateAccountStatusResponse
    DescribeEffectivePolicyRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyType, location_name: 'PolicyType', traits: {"smithy.api#required" => {}}))
    DescribeEffectivePolicyRequest.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTargetId, location_name: 'TargetId'))
    DescribeEffectivePolicyRequest.type = Types::DescribeEffectivePolicyRequest
    DescribeEffectivePolicyResponse.add_member(:effective_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicy, location_name: 'EffectivePolicy'))
    DescribeEffectivePolicyResponse.type = Types::DescribeEffectivePolicyResponse
    DescribeHandshakeRequest.add_member(:handshake_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeId, location_name: 'HandshakeId', traits: {"smithy.api#required" => {}}))
    DescribeHandshakeRequest.type = Types::DescribeHandshakeRequest
    DescribeHandshakeResponse.add_member(:handshake, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Handshake, location_name: 'Handshake'))
    DescribeHandshakeResponse.type = Types::DescribeHandshakeResponse
    DescribeOrganizationResponse.add_member(:organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Organization, location_name: 'Organization'))
    DescribeOrganizationResponse.type = Types::DescribeOrganizationResponse
    DescribeOrganizationalUnitRequest.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'OrganizationalUnitId', traits: {"smithy.api#required" => {}}))
    DescribeOrganizationalUnitRequest.type = Types::DescribeOrganizationalUnitRequest
    DescribeOrganizationalUnitResponse.add_member(:organizational_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnit, location_name: 'OrganizationalUnit'))
    DescribeOrganizationalUnitResponse.type = Types::DescribeOrganizationalUnitResponse
    DescribePolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#required" => {}}))
    DescribePolicyRequest.type = Types::DescribePolicyRequest
    DescribePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy'))
    DescribePolicyResponse.type = Types::DescribePolicyResponse
    DescribeResourcePolicyResponse.add_member(:resource_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'ResourcePolicy'))
    DescribeResourcePolicyResponse.type = Types::DescribeResourcePolicyResponse
    DestinationParentNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DestinationParentNotFoundException.type = Types::DestinationParentNotFoundException
    DetachPolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#required" => {}}))
    DetachPolicyRequest.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTargetId, location_name: 'TargetId', traits: {"smithy.api#required" => {}}))
    DetachPolicyRequest.type = Types::DetachPolicyRequest
    DisableAWSServiceAccessRequest.add_member(:service_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'ServicePrincipal', traits: {"smithy.api#required" => {}}))
    DisableAWSServiceAccessRequest.type = Types::DisableAWSServiceAccessRequest
    DisablePolicyTypeRequest.add_member(:root_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootId, location_name: 'RootId', traits: {"smithy.api#required" => {}}))
    DisablePolicyTypeRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"smithy.api#required" => {}}))
    DisablePolicyTypeRequest.type = Types::DisablePolicyTypeRequest
    DisablePolicyTypeResponse.add_member(:root, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Root, location_name: 'Root'))
    DisablePolicyTypeResponse.type = Types::DisablePolicyTypeResponse
    DuplicateAccountException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DuplicateAccountException.type = Types::DuplicateAccountException
    DuplicateHandshakeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DuplicateHandshakeException.type = Types::DuplicateHandshakeException
    DuplicateOrganizationalUnitException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DuplicateOrganizationalUnitException.type = Types::DuplicateOrganizationalUnitException
    DuplicatePolicyAttachmentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DuplicatePolicyAttachmentException.type = Types::DuplicatePolicyAttachmentException
    DuplicatePolicyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DuplicatePolicyException.type = Types::DuplicatePolicyException
    EffectivePolicy.add_member(:policy_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyContent, location_name: 'PolicyContent'))
    EffectivePolicy.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp'))
    EffectivePolicy.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTargetId, location_name: 'TargetId'))
    EffectivePolicy.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyType, location_name: 'PolicyType'))
    EffectivePolicy.type = Types::EffectivePolicy
    EffectivePolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    EffectivePolicyNotFoundException.type = Types::EffectivePolicyNotFoundException
    EffectivePolicyType.add_member(:tag_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAG_POLICY', traits: {"smithy.api#enumValue" => "TAG_POLICY"}))
    EffectivePolicyType.add_member(:backup_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKUP_POLICY', traits: {"smithy.api#enumValue" => "BACKUP_POLICY"}))
    EffectivePolicyType.add_member(:aiservices_opt_out_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AISERVICES_OPT_OUT_POLICY', traits: {"smithy.api#enumValue" => "AISERVICES_OPT_OUT_POLICY"}))
    EffectivePolicyType.add_member(:chatbot_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHATBOT_POLICY', traits: {"smithy.api#enumValue" => "CHATBOT_POLICY"}))
    EffectivePolicyType.add_member(:declarative_policy_ec2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECLARATIVE_POLICY_EC2', traits: {"smithy.api#enumValue" => "DECLARATIVE_POLICY_EC2"}))
    EffectivePolicyType.add_member(:securityhub_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITYHUB_POLICY', traits: {"smithy.api#enumValue" => "SECURITYHUB_POLICY"}))
    EffectivePolicyValidationError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    EffectivePolicyValidationError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage'))
    EffectivePolicyValidationError.add_member(:path_to_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PathToError, location_name: 'PathToError'))
    EffectivePolicyValidationError.add_member(:contributing_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyIds, location_name: 'ContributingPolicies'))
    EffectivePolicyValidationError.type = Types::EffectivePolicyValidationError
    EffectivePolicyValidationErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyValidationError)
    EnableAWSServiceAccessRequest.add_member(:service_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'ServicePrincipal', traits: {"smithy.api#required" => {}}))
    EnableAWSServiceAccessRequest.type = Types::EnableAWSServiceAccessRequest
    EnableAllFeaturesRequest.type = Types::EnableAllFeaturesRequest
    EnableAllFeaturesResponse.add_member(:handshake, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Handshake, location_name: 'Handshake'))
    EnableAllFeaturesResponse.type = Types::EnableAllFeaturesResponse
    EnablePolicyTypeRequest.add_member(:root_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootId, location_name: 'RootId', traits: {"smithy.api#required" => {}}))
    EnablePolicyTypeRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"smithy.api#required" => {}}))
    EnablePolicyTypeRequest.type = Types::EnablePolicyTypeRequest
    EnablePolicyTypeResponse.add_member(:root, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Root, location_name: 'Root'))
    EnablePolicyTypeResponse.type = Types::EnablePolicyTypeResponse
    EnabledServicePrincipal.add_member(:service_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'ServicePrincipal'))
    EnabledServicePrincipal.add_member(:date_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateEnabled'))
    EnabledServicePrincipal.type = Types::EnabledServicePrincipal
    EnabledServicePrincipals.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledServicePrincipal)
    FinalizingOrganizationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    FinalizingOrganizationException.type = Types::FinalizingOrganizationException
    Handshake.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeId, location_name: 'Id'))
    Handshake.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeArn, location_name: 'Arn'))
    Handshake.add_member(:parties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeParties, location_name: 'Parties'))
    Handshake.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeState, location_name: 'State'))
    Handshake.add_member(:requested_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RequestedTimestamp'))
    Handshake.add_member(:expiration_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpirationTimestamp'))
    Handshake.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'Action'))
    Handshake.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeResources, location_name: 'Resources'))
    Handshake.type = Types::Handshake
    HandshakeAlreadyInStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    HandshakeAlreadyInStateException.type = Types::HandshakeAlreadyInStateException
    HandshakeConstraintViolationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    HandshakeConstraintViolationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeConstraintViolationExceptionReason, location_name: 'Reason'))
    HandshakeConstraintViolationException.type = Types::HandshakeConstraintViolationException
    HandshakeConstraintViolationExceptionReason.add_member(:account_number_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_NUMBER_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ACCOUNT_NUMBER_LIMIT_EXCEEDED"}))
    HandshakeConstraintViolationExceptionReason.add_member(:handshake_rate_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HANDSHAKE_RATE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "HANDSHAKE_RATE_LIMIT_EXCEEDED"}))
    HandshakeConstraintViolationExceptionReason.add_member(:already_in_an_organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALREADY_IN_AN_ORGANIZATION', traits: {"smithy.api#enumValue" => "ALREADY_IN_AN_ORGANIZATION"}))
    HandshakeConstraintViolationExceptionReason.add_member(:organization_already_has_all_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION_ALREADY_HAS_ALL_FEATURES', traits: {"smithy.api#enumValue" => "ORGANIZATION_ALREADY_HAS_ALL_FEATURES"}))
    HandshakeConstraintViolationExceptionReason.add_member(:organization_is_already_pending_all_features_migration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION', traits: {"smithy.api#enumValue" => "ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION"}))
    HandshakeConstraintViolationExceptionReason.add_member(:invite_disabled_during_enable_all_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES', traits: {"smithy.api#enumValue" => "INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES"}))
    HandshakeConstraintViolationExceptionReason.add_member(:payment_instrument_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAYMENT_INSTRUMENT_REQUIRED', traits: {"smithy.api#enumValue" => "PAYMENT_INSTRUMENT_REQUIRED"}))
    HandshakeConstraintViolationExceptionReason.add_member(:organization_from_different_seller_of_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD', traits: {"smithy.api#enumValue" => "ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD"}))
    HandshakeConstraintViolationExceptionReason.add_member(:organization_membership_change_rate_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED"}))
    HandshakeConstraintViolationExceptionReason.add_member(:management_account_email_not_verified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANAGEMENT_ACCOUNT_EMAIL_NOT_VERIFIED', traits: {"smithy.api#enumValue" => "MANAGEMENT_ACCOUNT_EMAIL_NOT_VERIFIED"}))
    HandshakeFilter.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'ActionType'))
    HandshakeFilter.add_member(:parent_handshake_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeId, location_name: 'ParentHandshakeId'))
    HandshakeFilter.type = Types::HandshakeFilter
    HandshakeNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    HandshakeNotFoundException.type = Types::HandshakeNotFoundException
    HandshakeParties.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeParty)
    HandshakeParty.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakePartyId, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    HandshakeParty.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakePartyType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    HandshakeParty.type = Types::HandshakeParty
    HandshakePartyType.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    HandshakePartyType.add_member(:organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION', traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    HandshakePartyType.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    HandshakeResource.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeResourceValue, location_name: 'Value'))
    HandshakeResource.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeResourceType, location_name: 'Type'))
    HandshakeResource.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeResources, location_name: 'Resources'))
    HandshakeResource.type = Types::HandshakeResource
    HandshakeResourceType.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    HandshakeResourceType.add_member(:organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION', traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    HandshakeResourceType.add_member(:organization_feature_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION_FEATURE_SET', traits: {"smithy.api#enumValue" => "ORGANIZATION_FEATURE_SET"}))
    HandshakeResourceType.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    HandshakeResourceType.add_member(:master_email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER_EMAIL', traits: {"smithy.api#enumValue" => "MASTER_EMAIL"}))
    HandshakeResourceType.add_member(:master_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER_NAME', traits: {"smithy.api#enumValue" => "MASTER_NAME"}))
    HandshakeResourceType.add_member(:notes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOTES', traits: {"smithy.api#enumValue" => "NOTES"}))
    HandshakeResourceType.add_member(:parent_handshake, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARENT_HANDSHAKE', traits: {"smithy.api#enumValue" => "PARENT_HANDSHAKE"}))
    HandshakeResources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeResource)
    HandshakeState.add_member(:requested, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUESTED', traits: {"smithy.api#enumValue" => "REQUESTED"}))
    HandshakeState.add_member(:open, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN', traits: {"smithy.api#enumValue" => "OPEN"}))
    HandshakeState.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    HandshakeState.add_member(:accepted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCEPTED', traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    HandshakeState.add_member(:declined, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECLINED', traits: {"smithy.api#enumValue" => "DECLINED"}))
    HandshakeState.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    Handshakes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Handshake)
    IAMUserAccessToBilling.add_member(:allow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    IAMUserAccessToBilling.add_member(:deny, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "DENY"}))
    InvalidHandshakeTransitionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidHandshakeTransitionException.type = Types::InvalidHandshakeTransitionException
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidInputException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputExceptionReason, location_name: 'Reason'))
    InvalidInputException.type = Types::InvalidInputException
    InvalidInputExceptionReason.add_member(:invalid_party_type_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PARTY_TYPE_TARGET', traits: {"smithy.api#enumValue" => "INVALID_PARTY_TYPE_TARGET"}))
    InvalidInputExceptionReason.add_member(:invalid_syntax_organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SYNTAX_ORGANIZATION', traits: {"smithy.api#enumValue" => "INVALID_SYNTAX_ORGANIZATION_ARN"}))
    InvalidInputExceptionReason.add_member(:invalid_syntax_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SYNTAX_POLICY', traits: {"smithy.api#enumValue" => "INVALID_SYNTAX_POLICY_ID"}))
    InvalidInputExceptionReason.add_member(:invalid_enum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ENUM', traits: {"smithy.api#enumValue" => "INVALID_ENUM"}))
    InvalidInputExceptionReason.add_member(:invalid_enum_policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ENUM_POLICY_TYPE', traits: {"smithy.api#enumValue" => "INVALID_ENUM_POLICY_TYPE"}))
    InvalidInputExceptionReason.add_member(:invalid_list_member, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_LIST_MEMBER', traits: {"smithy.api#enumValue" => "INVALID_LIST_MEMBER"}))
    InvalidInputExceptionReason.add_member(:max_length_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_LENGTH_EXCEEDED', traits: {"smithy.api#enumValue" => "MAX_LENGTH_EXCEEDED"}))
    InvalidInputExceptionReason.add_member(:max_value_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_VALUE_EXCEEDED', traits: {"smithy.api#enumValue" => "MAX_VALUE_EXCEEDED"}))
    InvalidInputExceptionReason.add_member(:min_length_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MIN_LENGTH_EXCEEDED', traits: {"smithy.api#enumValue" => "MIN_LENGTH_EXCEEDED"}))
    InvalidInputExceptionReason.add_member(:min_value_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MIN_VALUE_EXCEEDED', traits: {"smithy.api#enumValue" => "MIN_VALUE_EXCEEDED"}))
    InvalidInputExceptionReason.add_member(:immutable_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMMUTABLE_POLICY', traits: {"smithy.api#enumValue" => "IMMUTABLE_POLICY"}))
    InvalidInputExceptionReason.add_member(:invalid_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PATTERN', traits: {"smithy.api#enumValue" => "INVALID_PATTERN"}))
    InvalidInputExceptionReason.add_member(:invalid_pattern_target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PATTERN_TARGET_ID', traits: {"smithy.api#enumValue" => "INVALID_PATTERN_TARGET_ID"}))
    InvalidInputExceptionReason.add_member(:input_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INPUT_REQUIRED', traits: {"smithy.api#enumValue" => "INPUT_REQUIRED"}))
    InvalidInputExceptionReason.add_member(:invalid_pagination_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PAGINATION_TOKEN', traits: {"smithy.api#enumValue" => "INVALID_NEXT_TOKEN"}))
    InvalidInputExceptionReason.add_member(:max_filter_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_FILTER_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "MAX_LIMIT_EXCEEDED_FILTER"}))
    InvalidInputExceptionReason.add_member(:moving_account_between_different_roots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS', traits: {"smithy.api#enumValue" => "MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS"}))
    InvalidInputExceptionReason.add_member(:invalid_full_name_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_FULL_NAME_TARGET', traits: {"smithy.api#enumValue" => "INVALID_FULL_NAME_TARGET"}))
    InvalidInputExceptionReason.add_member(:unrecognized_service_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNRECOGNIZED_SERVICE_PRINCIPAL', traits: {"smithy.api#enumValue" => "UNRECOGNIZED_SERVICE_PRINCIPAL"}))
    InvalidInputExceptionReason.add_member(:invalid_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ROLE_NAME', traits: {"smithy.api#enumValue" => "INVALID_ROLE_NAME"}))
    InvalidInputExceptionReason.add_member(:invalid_system_tags_parameter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SYSTEM_TAGS_PARAMETER', traits: {"smithy.api#enumValue" => "INVALID_SYSTEM_TAGS_PARAMETER"}))
    InvalidInputExceptionReason.add_member(:duplicate_tag_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUPLICATE_TAG_KEY', traits: {"smithy.api#enumValue" => "DUPLICATE_TAG_KEY"}))
    InvalidInputExceptionReason.add_member(:target_not_supported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TARGET_NOT_SUPPORTED', traits: {"smithy.api#enumValue" => "TARGET_NOT_SUPPORTED"}))
    InvalidInputExceptionReason.add_member(:invalid_email_address_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_EMAIL_ADDRESS_TARGET', traits: {"smithy.api#enumValue" => "INVALID_EMAIL_ADDRESS_TARGET"}))
    InvalidInputExceptionReason.add_member(:invalid_resource_policy_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RESOURCE_POLICY_JSON', traits: {"smithy.api#enumValue" => "INVALID_RESOURCE_POLICY_JSON"}))
    InvalidInputExceptionReason.add_member(:invalid_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PRINCIPAL', traits: {"smithy.api#enumValue" => "INVALID_PRINCIPAL"}))
    InvalidInputExceptionReason.add_member(:unsupported_action_in_resource_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_ACTION_IN_RESOURCE_POLICY', traits: {"smithy.api#enumValue" => "UNSUPPORTED_ACTION_IN_RESOURCE_POLICY"}))
    InvalidInputExceptionReason.add_member(:unsupported_policy_type_in_resource_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_POLICY_TYPE_IN_RESOURCE_POLICY', traits: {"smithy.api#enumValue" => "UNSUPPORTED_POLICY_TYPE_IN_RESOURCE_POLICY"}))
    InvalidInputExceptionReason.add_member(:unsupported_resource_in_resource_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_RESOURCE_IN_RESOURCE_POLICY', traits: {"smithy.api#enumValue" => "UNSUPPORTED_RESOURCE_IN_RESOURCE_POLICY"}))
    InvalidInputExceptionReason.add_member(:non_detachable_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NON_DETACHABLE_POLICY', traits: {"smithy.api#enumValue" => "NON_DETACHABLE_POLICY"}))
    InviteAccountToOrganizationRequest.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeParty, location_name: 'Target', traits: {"smithy.api#required" => {}}))
    InviteAccountToOrganizationRequest.add_member(:notes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeNotes, location_name: 'Notes'))
    InviteAccountToOrganizationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    InviteAccountToOrganizationRequest.type = Types::InviteAccountToOrganizationRequest
    InviteAccountToOrganizationResponse.add_member(:handshake, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Handshake, location_name: 'Handshake'))
    InviteAccountToOrganizationResponse.type = Types::InviteAccountToOrganizationResponse
    ListAWSServiceAccessForOrganizationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAWSServiceAccessForOrganizationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListAWSServiceAccessForOrganizationRequest.type = Types::ListAWSServiceAccessForOrganizationRequest
    ListAWSServiceAccessForOrganizationResponse.add_member(:enabled_service_principals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledServicePrincipals, location_name: 'EnabledServicePrincipals'))
    ListAWSServiceAccessForOrganizationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAWSServiceAccessForOrganizationResponse.type = Types::ListAWSServiceAccessForOrganizationResponse
    ListAccountsForParentRequest.add_member(:parent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentId, location_name: 'ParentId', traits: {"smithy.api#required" => {}}))
    ListAccountsForParentRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAccountsForParentRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListAccountsForParentRequest.type = Types::ListAccountsForParentRequest
    ListAccountsForParentResponse.add_member(:accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Accounts, location_name: 'Accounts'))
    ListAccountsForParentResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAccountsForParentResponse.type = Types::ListAccountsForParentResponse
    ListAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListAccountsRequest.type = Types::ListAccountsRequest
    ListAccountsResponse.add_member(:accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Accounts, location_name: 'Accounts'))
    ListAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAccountsResponse.type = Types::ListAccountsResponse
    ListAccountsWithInvalidEffectivePolicyRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyType, location_name: 'PolicyType', traits: {"smithy.api#required" => {}}))
    ListAccountsWithInvalidEffectivePolicyRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAccountsWithInvalidEffectivePolicyRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListAccountsWithInvalidEffectivePolicyRequest.type = Types::ListAccountsWithInvalidEffectivePolicyRequest
    ListAccountsWithInvalidEffectivePolicyResponse.add_member(:accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Accounts, location_name: 'Accounts'))
    ListAccountsWithInvalidEffectivePolicyResponse.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyType, location_name: 'PolicyType'))
    ListAccountsWithInvalidEffectivePolicyResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAccountsWithInvalidEffectivePolicyResponse.type = Types::ListAccountsWithInvalidEffectivePolicyResponse
    ListChildrenRequest.add_member(:parent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentId, location_name: 'ParentId', traits: {"smithy.api#required" => {}}))
    ListChildrenRequest.add_member(:child_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChildType, location_name: 'ChildType', traits: {"smithy.api#required" => {}}))
    ListChildrenRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListChildrenRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListChildrenRequest.type = Types::ListChildrenRequest
    ListChildrenResponse.add_member(:children, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Children, location_name: 'Children'))
    ListChildrenResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListChildrenResponse.type = Types::ListChildrenResponse
    ListCreateAccountStatusRequest.add_member(:states, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountStates, location_name: 'States'))
    ListCreateAccountStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListCreateAccountStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListCreateAccountStatusRequest.type = Types::ListCreateAccountStatusRequest
    ListCreateAccountStatusResponse.add_member(:create_account_statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountStatuses, location_name: 'CreateAccountStatuses'))
    ListCreateAccountStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListCreateAccountStatusResponse.type = Types::ListCreateAccountStatusResponse
    ListDelegatedAdministratorsRequest.add_member(:service_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'ServicePrincipal'))
    ListDelegatedAdministratorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListDelegatedAdministratorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListDelegatedAdministratorsRequest.type = Types::ListDelegatedAdministratorsRequest
    ListDelegatedAdministratorsResponse.add_member(:delegated_administrators, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegatedAdministrators, location_name: 'DelegatedAdministrators'))
    ListDelegatedAdministratorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListDelegatedAdministratorsResponse.type = Types::ListDelegatedAdministratorsResponse
    ListDelegatedServicesForAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    ListDelegatedServicesForAccountRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListDelegatedServicesForAccountRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListDelegatedServicesForAccountRequest.type = Types::ListDelegatedServicesForAccountRequest
    ListDelegatedServicesForAccountResponse.add_member(:delegated_services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegatedServices, location_name: 'DelegatedServices'))
    ListDelegatedServicesForAccountResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListDelegatedServicesForAccountResponse.type = Types::ListDelegatedServicesForAccountResponse
    ListEffectivePolicyValidationErrorsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    ListEffectivePolicyValidationErrorsRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyType, location_name: 'PolicyType', traits: {"smithy.api#required" => {}}))
    ListEffectivePolicyValidationErrorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListEffectivePolicyValidationErrorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListEffectivePolicyValidationErrorsRequest.type = Types::ListEffectivePolicyValidationErrorsRequest
    ListEffectivePolicyValidationErrorsResponse.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    ListEffectivePolicyValidationErrorsResponse.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyType, location_name: 'PolicyType'))
    ListEffectivePolicyValidationErrorsResponse.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'Path'))
    ListEffectivePolicyValidationErrorsResponse.add_member(:evaluation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EvaluationTimestamp'))
    ListEffectivePolicyValidationErrorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListEffectivePolicyValidationErrorsResponse.add_member(:effective_policy_validation_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyValidationErrors, location_name: 'EffectivePolicyValidationErrors'))
    ListEffectivePolicyValidationErrorsResponse.type = Types::ListEffectivePolicyValidationErrorsResponse
    ListHandshakesForAccountRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeFilter, location_name: 'Filter'))
    ListHandshakesForAccountRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListHandshakesForAccountRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListHandshakesForAccountRequest.type = Types::ListHandshakesForAccountRequest
    ListHandshakesForAccountResponse.add_member(:handshakes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Handshakes, location_name: 'Handshakes'))
    ListHandshakesForAccountResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListHandshakesForAccountResponse.type = Types::ListHandshakesForAccountResponse
    ListHandshakesForOrganizationRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeFilter, location_name: 'Filter'))
    ListHandshakesForOrganizationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListHandshakesForOrganizationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListHandshakesForOrganizationRequest.type = Types::ListHandshakesForOrganizationRequest
    ListHandshakesForOrganizationResponse.add_member(:handshakes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Handshakes, location_name: 'Handshakes'))
    ListHandshakesForOrganizationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListHandshakesForOrganizationResponse.type = Types::ListHandshakesForOrganizationResponse
    ListOrganizationalUnitsForParentRequest.add_member(:parent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentId, location_name: 'ParentId', traits: {"smithy.api#required" => {}}))
    ListOrganizationalUnitsForParentRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListOrganizationalUnitsForParentRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListOrganizationalUnitsForParentRequest.type = Types::ListOrganizationalUnitsForParentRequest
    ListOrganizationalUnitsForParentResponse.add_member(:organizational_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnits, location_name: 'OrganizationalUnits'))
    ListOrganizationalUnitsForParentResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListOrganizationalUnitsForParentResponse.type = Types::ListOrganizationalUnitsForParentResponse
    ListParentsRequest.add_member(:child_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChildId, location_name: 'ChildId', traits: {"smithy.api#required" => {}}))
    ListParentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListParentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListParentsRequest.type = Types::ListParentsRequest
    ListParentsResponse.add_member(:parents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Parents, location_name: 'Parents'))
    ListParentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListParentsResponse.type = Types::ListParentsResponse
    ListPoliciesForTargetRequest.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTargetId, location_name: 'TargetId', traits: {"smithy.api#required" => {}}))
    ListPoliciesForTargetRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'Filter', traits: {"smithy.api#required" => {}}))
    ListPoliciesForTargetRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListPoliciesForTargetRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListPoliciesForTargetRequest.type = Types::ListPoliciesForTargetRequest
    ListPoliciesForTargetResponse.add_member(:policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policies, location_name: 'Policies'))
    ListPoliciesForTargetResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListPoliciesForTargetResponse.type = Types::ListPoliciesForTargetResponse
    ListPoliciesRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'Filter', traits: {"smithy.api#required" => {}}))
    ListPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListPoliciesRequest.type = Types::ListPoliciesRequest
    ListPoliciesResponse.add_member(:policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policies, location_name: 'Policies'))
    ListPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListPoliciesResponse.type = Types::ListPoliciesResponse
    ListRootsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListRootsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListRootsRequest.type = Types::ListRootsRequest
    ListRootsResponse.add_member(:roots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Roots, location_name: 'Roots'))
    ListRootsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListRootsResponse.type = Types::ListRootsResponse
    ListTagsForResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceId, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTargetsForPolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#required" => {}}))
    ListTargetsForPolicyRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTargetsForPolicyRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListTargetsForPolicyRequest.type = Types::ListTargetsForPolicyRequest
    ListTargetsForPolicyResponse.add_member(:targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTargets, location_name: 'Targets'))
    ListTargetsForPolicyResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTargetsForPolicyResponse.type = Types::ListTargetsForPolicyResponse
    MalformedPolicyDocumentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    MalformedPolicyDocumentException.type = Types::MalformedPolicyDocumentException
    MasterCannotLeaveOrganizationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    MasterCannotLeaveOrganizationException.type = Types::MasterCannotLeaveOrganizationException
    MoveAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    MoveAccountRequest.add_member(:source_parent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentId, location_name: 'SourceParentId', traits: {"smithy.api#required" => {}}))
    MoveAccountRequest.add_member(:destination_parent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentId, location_name: 'DestinationParentId', traits: {"smithy.api#required" => {}}))
    MoveAccountRequest.type = Types::MoveAccountRequest
    Organization.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'Id'))
    Organization.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationArn, location_name: 'Arn'))
    Organization.add_member(:feature_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationFeatureSet, location_name: 'FeatureSet'))
    Organization.add_member(:master_account_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountArn, location_name: 'MasterAccountArn'))
    Organization.add_member(:master_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'MasterAccountId'))
    Organization.add_member(:master_account_email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'MasterAccountEmail'))
    Organization.add_member(:available_policy_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypes, location_name: 'AvailablePolicyTypes'))
    Organization.type = Types::Organization
    OrganizationFeatureSet.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    OrganizationFeatureSet.add_member(:consolidated_billing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONSOLIDATED_BILLING', traits: {"smithy.api#enumValue" => "CONSOLIDATED_BILLING"}))
    OrganizationNotEmptyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    OrganizationNotEmptyException.type = Types::OrganizationNotEmptyException
    OrganizationalUnit.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'Id'))
    OrganizationalUnit.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitArn, location_name: 'Arn'))
    OrganizationalUnit.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitName, location_name: 'Name'))
    OrganizationalUnit.type = Types::OrganizationalUnit
    OrganizationalUnitNotEmptyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    OrganizationalUnitNotEmptyException.type = Types::OrganizationalUnitNotEmptyException
    OrganizationalUnitNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    OrganizationalUnitNotFoundException.type = Types::OrganizationalUnitNotFoundException
    OrganizationalUnits.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnit)
    Parent.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentId, location_name: 'Id'))
    Parent.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentType, location_name: 'Type'))
    Parent.type = Types::Parent
    ParentNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ParentNotFoundException.type = Types::ParentNotFoundException
    ParentType.add_member(:root, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROOT', traits: {"smithy.api#enumValue" => "ROOT"}))
    ParentType.add_member(:organizational_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATIONAL_UNIT', traits: {"smithy.api#enumValue" => "ORGANIZATIONAL_UNIT"}))
    Parents.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Parent)
    Policies.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicySummary)
    Policy.add_member(:policy_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicySummary, location_name: 'PolicySummary'))
    Policy.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyContent, location_name: 'Content'))
    Policy.type = Types::Policy
    PolicyChangesInProgressException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    PolicyChangesInProgressException.type = Types::PolicyChangesInProgressException
    PolicyIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId)
    PolicyInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    PolicyInUseException.type = Types::PolicyInUseException
    PolicyNotAttachedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    PolicyNotAttachedException.type = Types::PolicyNotAttachedException
    PolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    PolicyNotFoundException.type = Types::PolicyNotFoundException
    PolicySummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'Id'))
    PolicySummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyArn, location_name: 'Arn'))
    PolicySummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'Name'))
    PolicySummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'Description'))
    PolicySummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'Type'))
    PolicySummary.add_member(:aws_managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsManagedPolicy, location_name: 'AwsManaged', traits: {"smithy.api#default" => false}))
    PolicySummary.type = Types::PolicySummary
    PolicyTargetSummary.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTargetId, location_name: 'TargetId'))
    PolicyTargetSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'Arn'))
    PolicyTargetSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetName, location_name: 'Name'))
    PolicyTargetSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: 'Type'))
    PolicyTargetSummary.type = Types::PolicyTargetSummary
    PolicyTargets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTargetSummary)
    PolicyType.add_member(:service_control_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_CONTROL_POLICY', traits: {"smithy.api#enumValue" => "SERVICE_CONTROL_POLICY"}))
    PolicyType.add_member(:resource_control_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_CONTROL_POLICY', traits: {"smithy.api#enumValue" => "RESOURCE_CONTROL_POLICY"}))
    PolicyType.add_member(:tag_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAG_POLICY', traits: {"smithy.api#enumValue" => "TAG_POLICY"}))
    PolicyType.add_member(:backup_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKUP_POLICY', traits: {"smithy.api#enumValue" => "BACKUP_POLICY"}))
    PolicyType.add_member(:aiservices_opt_out_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AISERVICES_OPT_OUT_POLICY', traits: {"smithy.api#enumValue" => "AISERVICES_OPT_OUT_POLICY"}))
    PolicyType.add_member(:chatbot_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHATBOT_POLICY', traits: {"smithy.api#enumValue" => "CHATBOT_POLICY"}))
    PolicyType.add_member(:declarative_policy_ec2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECLARATIVE_POLICY_EC2', traits: {"smithy.api#enumValue" => "DECLARATIVE_POLICY_EC2"}))
    PolicyType.add_member(:securityhub_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITYHUB_POLICY', traits: {"smithy.api#enumValue" => "SECURITYHUB_POLICY"}))
    PolicyTypeAlreadyEnabledException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    PolicyTypeAlreadyEnabledException.type = Types::PolicyTypeAlreadyEnabledException
    PolicyTypeNotAvailableForOrganizationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    PolicyTypeNotAvailableForOrganizationException.type = Types::PolicyTypeNotAvailableForOrganizationException
    PolicyTypeNotEnabledException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    PolicyTypeNotEnabledException.type = Types::PolicyTypeNotEnabledException
    PolicyTypeStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    PolicyTypeStatus.add_member(:pending_enable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ENABLE', traits: {"smithy.api#enumValue" => "PENDING_ENABLE"}))
    PolicyTypeStatus.add_member(:pending_disable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DISABLE', traits: {"smithy.api#enumValue" => "PENDING_DISABLE"}))
    PolicyTypeSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'Type'))
    PolicyTypeSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypeStatus, location_name: 'Status'))
    PolicyTypeSummary.type = Types::PolicyTypeSummary
    PolicyTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypeSummary)
    PutResourcePolicyRequest.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyContent, location_name: 'Content', traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:resource_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'ResourcePolicy'))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    RegisterDelegatedAdministratorRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    RegisterDelegatedAdministratorRequest.add_member(:service_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'ServicePrincipal', traits: {"smithy.api#required" => {}}))
    RegisterDelegatedAdministratorRequest.type = Types::RegisterDelegatedAdministratorRequest
    RemoveAccountFromOrganizationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    RemoveAccountFromOrganizationRequest.type = Types::RemoveAccountFromOrganizationRequest
    ResourcePolicy.add_member(:resource_policy_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicySummary, location_name: 'ResourcePolicySummary'))
    ResourcePolicy.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyContent, location_name: 'Content'))
    ResourcePolicy.type = Types::ResourcePolicy
    ResourcePolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ResourcePolicyNotFoundException.type = Types::ResourcePolicyNotFoundException
    ResourcePolicySummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyId, location_name: 'Id'))
    ResourcePolicySummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyArn, location_name: 'Arn'))
    ResourcePolicySummary.type = Types::ResourcePolicySummary
    Root.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootId, location_name: 'Id'))
    Root.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootArn, location_name: 'Arn'))
    Root.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootName, location_name: 'Name'))
    Root.add_member(:policy_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypes, location_name: 'PolicyTypes'))
    Root.type = Types::Root
    RootNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    RootNotFoundException.type = Types::RootNotFoundException
    Roots.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Root)
    ServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ServiceException.type = Types::ServiceException
    SourceParentNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    SourceParentNotFoundException.type = Types::SourceParentNotFoundException
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceId, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TargetNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    TargetNotFoundException.type = Types::TargetNotFoundException
    TargetType.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    TargetType.add_member(:organizational_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATIONAL_UNIT', traits: {"smithy.api#enumValue" => "ORGANIZATIONAL_UNIT"}))
    TargetType.add_member(:root, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROOT', traits: {"smithy.api#enumValue" => "ROOT"}))
    TooManyRequestsException.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionType, location_name: 'Type'))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnsupportedAPIEndpointException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    UnsupportedAPIEndpointException.type = Types::UnsupportedAPIEndpointException
    UntagResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceId, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateOrganizationalUnitRequest.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId, location_name: 'OrganizationalUnitId', traits: {"smithy.api#required" => {}}))
    UpdateOrganizationalUnitRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitName, location_name: 'Name'))
    UpdateOrganizationalUnitRequest.type = Types::UpdateOrganizationalUnitRequest
    UpdateOrganizationalUnitResponse.add_member(:organizational_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnit, location_name: 'OrganizationalUnit'))
    UpdateOrganizationalUnitResponse.type = Types::UpdateOrganizationalUnitResponse
    UpdatePolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#required" => {}}))
    UpdatePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'Name'))
    UpdatePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'Description'))
    UpdatePolicyRequest.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyContent, location_name: 'Content'))
    UpdatePolicyRequest.type = Types::UpdatePolicyRequest
    UpdatePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy'))
    UpdatePolicyResponse.type = Types::UpdatePolicyResponse

    AWSOrganizationsV20161128 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.organizations#AWSOrganizationsV20161128"
      service.name = "AWSOrganizationsV20161128"
      service.version = "2016-11-28"
      service.traits = {"aws.api#service" => {"sdkId" => "Organizations", "arnNamespace" => "organizations", "cloudFormationName" => "Organizations", "cloudTrailEventSource" => "organizations.amazonaws.com", "endpointPrefix" => "organizations"}, "aws.auth#sigv4" => {"name" => "organizations"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Organizations", "smithy.api#xmlNamespace" => {"uri" => "http://organizations.amazonaws.com/doc/2016-11-28/"}}
      service.add_operation(:accept_handshake, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#AcceptHandshake"
        operation.name = "AcceptHandshake"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptHandshakeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptHandshakeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedForDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeAlreadyInStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHandshakeTransitionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:attach_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#AttachPolicy"
        operation.name = "AttachPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicatePolicyAttachmentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyChangesInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypeNotEnabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_handshake, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CancelHandshake"
        operation.name = "CancelHandshake"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelHandshakeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelHandshakeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeAlreadyInStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHandshakeTransitionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:close_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CloseAccount"
        operation.name = "CloseAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloseAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAlreadyClosedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:create_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CreateAccount"
        operation.name = "CreateAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FinalizingOrganizationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:create_gov_cloud_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CreateGovCloudAccount"
        operation.name = "CreateGovCloudAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGovCloudAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGovCloudAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FinalizingOrganizationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:create_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CreateOrganization"
        operation.name = "CreateOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedForDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyInOrganizationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:create_organizational_unit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CreateOrganizationalUnit"
        operation.name = "CreateOrganizationalUnit"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOrganizationalUnitRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOrganizationalUnitResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateOrganizationalUnitException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:create_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#CreatePolicy"
        operation.name = "CreatePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicatePolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypeNotAvailableForOrganizationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:decline_handshake, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeclineHandshake"
        operation.name = "DeclineHandshake"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeclineHandshakeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeclineHandshakeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeAlreadyInStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHandshakeTransitionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeleteOrganization"
        operation.name = "DeleteOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotEmptyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_organizational_unit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeleteOrganizationalUnit"
        operation.name = "DeleteOrganizationalUnit"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOrganizationalUnitRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitNotEmptyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeletePolicy"
        operation.name = "DeletePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_delegated_administrator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DeregisterDelegatedAdministrator"
        operation.name = "DeregisterDelegatedAdministrator"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterDelegatedAdministratorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotRegisteredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:describe_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeAccount"
        operation.name = "DescribeAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_create_account_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeCreateAccountStatus"
        operation.name = "DescribeCreateAccountStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCreateAccountStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCreateAccountStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountStatusNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:describe_effective_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeEffectivePolicy"
        operation.name = "DescribeEffectivePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEffectivePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEffectivePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:describe_handshake, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeHandshake"
        operation.name = "DescribeHandshake"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHandshakeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHandshakeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeOrganization"
        operation.name = "DescribeOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_organizational_unit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeOrganizationalUnit"
        operation.name = "DescribeOrganizationalUnit"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationalUnitRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationalUnitResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribePolicy"
        operation.name = "DescribePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:describe_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DescribeResourcePolicy"
        operation.name = "DescribeResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:detach_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DetachPolicy"
        operation.name = "DetachPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetachPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyChangesInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotAttachedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:disable_aws_service_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DisableAWSServiceAccess"
        operation.name = "DisableAWSServiceAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableAWSServiceAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:disable_policy_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#DisablePolicyType"
        operation.name = "DisablePolicyType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisablePolicyTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisablePolicyTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyChangesInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypeNotEnabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:enable_aws_service_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#EnableAWSServiceAccess"
        operation.name = "EnableAWSServiceAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAWSServiceAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:enable_all_features, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#EnableAllFeatures"
        operation.name = "EnableAllFeatures"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAllFeaturesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAllFeaturesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:enable_policy_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#EnablePolicyType"
        operation.name = "EnablePolicyType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnablePolicyTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnablePolicyTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyChangesInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypeAlreadyEnabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypeNotAvailableForOrganizationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:invite_account_to_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#InviteAccountToOrganization"
        operation.name = "InviteAccountToOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InviteAccountToOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InviteAccountToOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountOwnerNotVerifiedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateHandshakeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FinalizingOrganizationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandshakeConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:leave_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#LeaveOrganization"
        operation.name = "LeaveOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MasterCannotLeaveOrganizationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:list_aws_service_access_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListAWSServiceAccessForOrganization"
        operation.name = "ListAWSServiceAccessForOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAWSServiceAccessForOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAWSServiceAccessForOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAWSServiceAccessForOrganization.new
      end)
      service.add_operation(:list_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListAccounts"
        operation.name = "ListAccounts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccounts.new
      end)
      service.add_operation(:list_accounts_for_parent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListAccountsForParent"
        operation.name = "ListAccountsForParent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsForParentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsForParentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountsForParent.new
      end)
      service.add_operation(:list_accounts_with_invalid_effective_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListAccountsWithInvalidEffectivePolicy"
        operation.name = "ListAccountsWithInvalidEffectivePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsWithInvalidEffectivePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsWithInvalidEffectivePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountsWithInvalidEffectivePolicy.new
      end)
      service.add_operation(:list_children, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListChildren"
        operation.name = "ListChildren"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChildrenRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChildrenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListChildren.new
      end)
      service.add_operation(:list_create_account_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListCreateAccountStatus"
        operation.name = "ListCreateAccountStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCreateAccountStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCreateAccountStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCreateAccountStatus.new
      end)
      service.add_operation(:list_delegated_administrators, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListDelegatedAdministrators"
        operation.name = "ListDelegatedAdministrators"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDelegatedAdministratorsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDelegatedAdministratorsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDelegatedAdministrators.new
      end)
      service.add_operation(:list_delegated_services_for_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListDelegatedServicesForAccount"
        operation.name = "ListDelegatedServicesForAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDelegatedServicesForAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDelegatedServicesForAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotRegisteredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDelegatedServicesForAccount.new
      end)
      service.add_operation(:list_effective_policy_validation_errors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListEffectivePolicyValidationErrors"
        operation.name = "ListEffectivePolicyValidationErrors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEffectivePolicyValidationErrorsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEffectivePolicyValidationErrorsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListEffectivePolicyValidationErrors.new
      end)
      service.add_operation(:list_handshakes_for_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListHandshakesForAccount"
        operation.name = "ListHandshakesForAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHandshakesForAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHandshakesForAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListHandshakesForAccount.new
      end)
      service.add_operation(:list_handshakes_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListHandshakesForOrganization"
        operation.name = "ListHandshakesForOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHandshakesForOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHandshakesForOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListHandshakesForOrganization.new
      end)
      service.add_operation(:list_organizational_units_for_parent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListOrganizationalUnitsForParent"
        operation.name = "ListOrganizationalUnitsForParent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationalUnitsForParentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationalUnitsForParentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListOrganizationalUnitsForParent.new
      end)
      service.add_operation(:list_parents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListParents"
        operation.name = "ListParents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListParentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListParentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChildNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListParents.new
      end)
      service.add_operation(:list_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListPolicies"
        operation.name = "ListPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPolicies.new
      end)
      service.add_operation(:list_policies_for_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListPoliciesForTarget"
        operation.name = "ListPoliciesForTarget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPoliciesForTargetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPoliciesForTargetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPoliciesForTarget.new
      end)
      service.add_operation(:list_roots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListRoots"
        operation.name = "ListRoots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRootsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRootsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRoots.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_targets_for_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#ListTargetsForPolicy"
        operation.name = "ListTargetsForPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetsForPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetsForPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTargetsForPolicy.new
      end)
      service.add_operation(:move_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#MoveAccount"
        operation.name = "MoveAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MoveAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationParentNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceParentNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:register_delegated_administrator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#RegisterDelegatedAdministrator"
        operation.name = "RegisterDelegatedAdministrator"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterDelegatedAdministratorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAlreadyRegisteredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
        operation.traits = {}
      end)
      service.add_operation(:remove_account_from_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#RemoveAccountFromOrganization"
        operation.name = "RemoveAccountFromOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAccountFromOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MasterCannotLeaveOrganizationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:update_organizational_unit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#UpdateOrganizationalUnit"
        operation.name = "UpdateOrganizationalUnit"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOrganizationalUnitRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOrganizationalUnitResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateOrganizationalUnitException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:update_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.organizations#UpdatePolicy"
        operation.name = "UpdatePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOrganizationsNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicatePolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyChangesInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAPIEndpointException)
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

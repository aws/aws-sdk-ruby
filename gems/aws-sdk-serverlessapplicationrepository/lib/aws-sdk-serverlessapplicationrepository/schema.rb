# frozen_string_literal: true

# This is generated code!

module Aws::ServerlessApplicationRepository
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ApplicationDependencySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#ApplicationDependencySummary", name: "ApplicationDependencySummary")
    ApplicationPolicyStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#ApplicationPolicyStatement", name: "ApplicationPolicyStatement")
    ApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#ApplicationSummary", name: "ApplicationSummary")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Capability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.serverlessapplicationrepository#Capability", name: "Capability")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#CreateApplicationRequest", name: "CreateApplicationRequest")
    CreateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#CreateApplicationResponse", name: "CreateApplicationResponse")
    CreateApplicationVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#CreateApplicationVersionRequest", name: "CreateApplicationVersionRequest")
    CreateApplicationVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#CreateApplicationVersionResponse", name: "CreateApplicationVersionResponse")
    CreateCloudFormationChangeSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#CreateCloudFormationChangeSetRequest", name: "CreateCloudFormationChangeSetRequest")
    CreateCloudFormationChangeSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#CreateCloudFormationChangeSetResponse", name: "CreateCloudFormationChangeSetResponse")
    CreateCloudFormationTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#CreateCloudFormationTemplateRequest", name: "CreateCloudFormationTemplateRequest")
    CreateCloudFormationTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#CreateCloudFormationTemplateResponse", name: "CreateCloudFormationTemplateResponse")
    DeleteApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#DeleteApplicationRequest", name: "DeleteApplicationRequest")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetApplicationPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#GetApplicationPolicyRequest", name: "GetApplicationPolicyRequest")
    GetApplicationPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#GetApplicationPolicyResponse", name: "GetApplicationPolicyResponse")
    GetApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#GetApplicationRequest", name: "GetApplicationRequest")
    GetApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#GetApplicationResponse", name: "GetApplicationResponse")
    GetCloudFormationTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#GetCloudFormationTemplateRequest", name: "GetCloudFormationTemplateRequest")
    GetCloudFormationTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#GetCloudFormationTemplateResponse", name: "GetCloudFormationTemplateResponse")
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#InternalServerErrorException", name: "InternalServerErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListApplicationDependenciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#ListApplicationDependenciesRequest", name: "ListApplicationDependenciesRequest")
    ListApplicationDependenciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#ListApplicationDependenciesResponse", name: "ListApplicationDependenciesResponse")
    ListApplicationVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#ListApplicationVersionsRequest", name: "ListApplicationVersionsRequest")
    ListApplicationVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#ListApplicationVersionsResponse", name: "ListApplicationVersionsResponse")
    ListApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#ListApplicationsRequest", name: "ListApplicationsRequest")
    ListApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#ListApplicationsResponse", name: "ListApplicationsResponse")
    MaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.serverlessapplicationrepository#MaxItems", name: "MaxItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ParameterDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#ParameterDefinition", name: "ParameterDefinition")
    ParameterValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#ParameterValue", name: "ParameterValue")
    PutApplicationPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#PutApplicationPolicyRequest", name: "PutApplicationPolicyRequest")
    PutApplicationPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#PutApplicationPolicyResponse", name: "PutApplicationPolicyResponse")
    RollbackConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#RollbackConfiguration", name: "RollbackConfiguration")
    RollbackTrigger = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#RollbackTrigger", name: "RollbackTrigger")
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.serverlessapplicationrepository#Status", name: "Status")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#Tag", name: "Tag")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnshareApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#UnshareApplicationRequest", name: "UnshareApplicationRequest")
    UpdateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#UpdateApplicationRequest", name: "UpdateApplicationRequest")
    UpdateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#UpdateApplicationResponse", name: "UpdateApplicationResponse")
    Version = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#Version", name: "Version")
    VersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.serverlessapplicationrepository#VersionSummary", name: "VersionSummary")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.serverlessapplicationrepository#__boolean", name: "Boolean")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.serverlessapplicationrepository#__integer", name: "Integer")
    Listofapplicationdependencysummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.serverlessapplicationrepository#__listOfApplicationDependencySummary", name: "Listofapplicationdependencysummary")
    Listofapplicationpolicystatement = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.serverlessapplicationrepository#__listOfApplicationPolicyStatement", name: "Listofapplicationpolicystatement")
    Listofapplicationsummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.serverlessapplicationrepository#__listOfApplicationSummary", name: "Listofapplicationsummary")
    Listofcapability = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.serverlessapplicationrepository#__listOfCapability", name: "Listofcapability")
    Listofparameterdefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.serverlessapplicationrepository#__listOfParameterDefinition", name: "Listofparameterdefinition")
    Listofparametervalue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.serverlessapplicationrepository#__listOfParameterValue", name: "Listofparametervalue")
    Listofrollbacktrigger = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.serverlessapplicationrepository#__listOfRollbackTrigger", name: "Listofrollbacktrigger")
    Listoftag = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.serverlessapplicationrepository#__listOfTag", name: "Listoftag")
    Listofversionsummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.serverlessapplicationrepository#__listOfVersionSummary", name: "Listofversionsummary")
    ListofString = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.serverlessapplicationrepository#__listOf__string", name: "ListofString")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.serverlessapplicationrepository#__string", name: "String")

    ApplicationDependencySummary.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "applicationId", "smithy.api#required" => {}}))
    ApplicationDependencySummary.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SemanticVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "semanticVersion", "smithy.api#required" => {}}))
    ApplicationDependencySummary.type = Types::ApplicationDependencySummary
    ApplicationPolicyStatement.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "Actions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "actions", "smithy.api#required" => {}}))
    ApplicationPolicyStatement.add_member(:principal_org_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "PrincipalOrgIDs", traits: {"smithy.api#jsonName" => "principalOrgIDs"}))
    ApplicationPolicyStatement.add_member(:principals, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "Principals", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "principals", "smithy.api#required" => {}}))
    ApplicationPolicyStatement.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "StatementId", traits: {"smithy.api#jsonName" => "statementId"}))
    ApplicationPolicyStatement.type = Types::ApplicationPolicyStatement
    ApplicationSummary.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "applicationId", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:author, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Author", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "author", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    ApplicationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "description", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:home_page_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "HomePageUrl", traits: {"smithy.api#jsonName" => "homePageUrl"}))
    ApplicationSummary.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "Labels", traits: {"smithy.api#jsonName" => "labels"}))
    ApplicationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:spdx_license_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SpdxLicenseId", traits: {"smithy.api#jsonName" => "spdxLicenseId"}))
    ApplicationSummary.type = Types::ApplicationSummary
    BadRequestException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ErrorCode", traits: {"smithy.api#jsonName" => "errorCode"}))
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    BadRequestException.type = Types::BadRequestException
    Capability.add_member(:capability_iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CAPABILITY_IAM", traits: {"smithy.api#enumValue" => "CAPABILITY_IAM"}))
    Capability.add_member(:capability_named_iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CAPABILITY_NAMED_IAM", traits: {"smithy.api#enumValue" => "CAPABILITY_NAMED_IAM"}))
    Capability.add_member(:capability_auto_expand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CAPABILITY_AUTO_EXPAND", traits: {"smithy.api#enumValue" => "CAPABILITY_AUTO_EXPAND"}))
    Capability.add_member(:capability_resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CAPABILITY_RESOURCE_POLICY", traits: {"smithy.api#enumValue" => "CAPABILITY_RESOURCE_POLICY"}))
    ConflictException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ErrorCode", traits: {"smithy.api#jsonName" => "errorCode"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ConflictException.type = Types::ConflictException
    CreateApplicationRequest.add_member(:author, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Author", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "author", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "description", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:home_page_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "HomePageUrl", traits: {"smithy.api#jsonName" => "homePageUrl"}))
    CreateApplicationRequest.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "Labels", traits: {"smithy.api#jsonName" => "labels"}))
    CreateApplicationRequest.add_member(:license_body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LicenseBody", traits: {"smithy.api#jsonName" => "licenseBody"}))
    CreateApplicationRequest.add_member(:license_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LicenseUrl", traits: {"smithy.api#jsonName" => "licenseUrl"}))
    CreateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:readme_body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ReadmeBody", traits: {"smithy.api#jsonName" => "readmeBody"}))
    CreateApplicationRequest.add_member(:readme_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ReadmeUrl", traits: {"smithy.api#jsonName" => "readmeUrl"}))
    CreateApplicationRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SemanticVersion", traits: {"smithy.api#jsonName" => "semanticVersion"}))
    CreateApplicationRequest.add_member(:source_code_archive_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SourceCodeArchiveUrl", traits: {"smithy.api#jsonName" => "sourceCodeArchiveUrl"}))
    CreateApplicationRequest.add_member(:source_code_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SourceCodeUrl", traits: {"smithy.api#jsonName" => "sourceCodeUrl"}))
    CreateApplicationRequest.add_member(:spdx_license_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SpdxLicenseId", traits: {"smithy.api#jsonName" => "spdxLicenseId"}))
    CreateApplicationRequest.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TemplateBody", traits: {"smithy.api#jsonName" => "templateBody"}))
    CreateApplicationRequest.add_member(:template_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TemplateUrl", traits: {"smithy.api#jsonName" => "templateUrl"}))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#jsonName" => "applicationId"}))
    CreateApplicationResponse.add_member(:author, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Author", traits: {"smithy.api#jsonName" => "author"}))
    CreateApplicationResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    CreateApplicationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    CreateApplicationResponse.add_member(:home_page_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "HomePageUrl", traits: {"smithy.api#jsonName" => "homePageUrl"}))
    CreateApplicationResponse.add_member(:is_verified_author, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IsVerifiedAuthor", traits: {"smithy.api#jsonName" => "isVerifiedAuthor"}))
    CreateApplicationResponse.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "Labels", traits: {"smithy.api#jsonName" => "labels"}))
    CreateApplicationResponse.add_member(:license_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LicenseUrl", traits: {"smithy.api#jsonName" => "licenseUrl"}))
    CreateApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    CreateApplicationResponse.add_member(:readme_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ReadmeUrl", traits: {"smithy.api#jsonName" => "readmeUrl"}))
    CreateApplicationResponse.add_member(:spdx_license_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SpdxLicenseId", traits: {"smithy.api#jsonName" => "spdxLicenseId"}))
    CreateApplicationResponse.add_member(:verified_author_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "VerifiedAuthorUrl", traits: {"smithy.api#jsonName" => "verifiedAuthorUrl"}))
    CreateApplicationResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, location_name: "Version", traits: {"smithy.api#jsonName" => "version"}))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateApplicationVersionRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateApplicationVersionRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SemanticVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateApplicationVersionRequest.add_member(:source_code_archive_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SourceCodeArchiveUrl", traits: {"smithy.api#jsonName" => "sourceCodeArchiveUrl"}))
    CreateApplicationVersionRequest.add_member(:source_code_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SourceCodeUrl", traits: {"smithy.api#jsonName" => "sourceCodeUrl"}))
    CreateApplicationVersionRequest.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TemplateBody", traits: {"smithy.api#jsonName" => "templateBody"}))
    CreateApplicationVersionRequest.add_member(:template_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TemplateUrl", traits: {"smithy.api#jsonName" => "templateUrl"}))
    CreateApplicationVersionRequest.type = Types::CreateApplicationVersionRequest
    CreateApplicationVersionResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#jsonName" => "applicationId"}))
    CreateApplicationVersionResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    CreateApplicationVersionResponse.add_member(:parameter_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofparameterdefinition, location_name: "ParameterDefinitions", traits: {"smithy.api#jsonName" => "parameterDefinitions"}))
    CreateApplicationVersionResponse.add_member(:required_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofcapability, location_name: "RequiredCapabilities", traits: {"smithy.api#jsonName" => "requiredCapabilities"}))
    CreateApplicationVersionResponse.add_member(:resources_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ResourcesSupported", traits: {"smithy.api#jsonName" => "resourcesSupported"}))
    CreateApplicationVersionResponse.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SemanticVersion", traits: {"smithy.api#jsonName" => "semanticVersion"}))
    CreateApplicationVersionResponse.add_member(:source_code_archive_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SourceCodeArchiveUrl", traits: {"smithy.api#jsonName" => "sourceCodeArchiveUrl"}))
    CreateApplicationVersionResponse.add_member(:source_code_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SourceCodeUrl", traits: {"smithy.api#jsonName" => "sourceCodeUrl"}))
    CreateApplicationVersionResponse.add_member(:template_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TemplateUrl", traits: {"smithy.api#jsonName" => "templateUrl"}))
    CreateApplicationVersionResponse.type = Types::CreateApplicationVersionResponse
    CreateCloudFormationChangeSetRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCloudFormationChangeSetRequest.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "Capabilities", traits: {"smithy.api#jsonName" => "capabilities"}))
    CreateCloudFormationChangeSetRequest.add_member(:change_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ChangeSetName", traits: {"smithy.api#jsonName" => "changeSetName"}))
    CreateCloudFormationChangeSetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ClientToken", traits: {"smithy.api#jsonName" => "clientToken"}))
    CreateCloudFormationChangeSetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    CreateCloudFormationChangeSetRequest.add_member(:notification_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "NotificationArns", traits: {"smithy.api#jsonName" => "notificationArns"}))
    CreateCloudFormationChangeSetRequest.add_member(:parameter_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofparametervalue, location_name: "ParameterOverrides", traits: {"smithy.api#jsonName" => "parameterOverrides"}))
    CreateCloudFormationChangeSetRequest.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "ResourceTypes", traits: {"smithy.api#jsonName" => "resourceTypes"}))
    CreateCloudFormationChangeSetRequest.add_member(:rollback_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RollbackConfiguration, location_name: "RollbackConfiguration", traits: {"smithy.api#jsonName" => "rollbackConfiguration"}))
    CreateCloudFormationChangeSetRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SemanticVersion", traits: {"smithy.api#jsonName" => "semanticVersion"}))
    CreateCloudFormationChangeSetRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "stackName", "smithy.api#required" => {}}))
    CreateCloudFormationChangeSetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoftag, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateCloudFormationChangeSetRequest.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TemplateId", traits: {"smithy.api#jsonName" => "templateId"}))
    CreateCloudFormationChangeSetRequest.type = Types::CreateCloudFormationChangeSetRequest
    CreateCloudFormationChangeSetResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#jsonName" => "applicationId"}))
    CreateCloudFormationChangeSetResponse.add_member(:change_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ChangeSetId", traits: {"smithy.api#jsonName" => "changeSetId"}))
    CreateCloudFormationChangeSetResponse.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SemanticVersion", traits: {"smithy.api#jsonName" => "semanticVersion"}))
    CreateCloudFormationChangeSetResponse.add_member(:stack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "StackId", traits: {"smithy.api#jsonName" => "stackId"}))
    CreateCloudFormationChangeSetResponse.type = Types::CreateCloudFormationChangeSetResponse
    CreateCloudFormationTemplateRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCloudFormationTemplateRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SemanticVersion", traits: {"smithy.api#jsonName" => "semanticVersion"}))
    CreateCloudFormationTemplateRequest.type = Types::CreateCloudFormationTemplateRequest
    CreateCloudFormationTemplateResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#jsonName" => "applicationId"}))
    CreateCloudFormationTemplateResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    CreateCloudFormationTemplateResponse.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ExpirationTime", traits: {"smithy.api#jsonName" => "expirationTime"}))
    CreateCloudFormationTemplateResponse.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SemanticVersion", traits: {"smithy.api#jsonName" => "semanticVersion"}))
    CreateCloudFormationTemplateResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    CreateCloudFormationTemplateResponse.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TemplateId", traits: {"smithy.api#jsonName" => "templateId"}))
    CreateCloudFormationTemplateResponse.add_member(:template_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TemplateUrl", traits: {"smithy.api#jsonName" => "templateUrl"}))
    CreateCloudFormationTemplateResponse.type = Types::CreateCloudFormationTemplateResponse
    DeleteApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    ForbiddenException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ErrorCode", traits: {"smithy.api#jsonName" => "errorCode"}))
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ForbiddenException.type = Types::ForbiddenException
    GetApplicationPolicyRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationPolicyRequest.type = Types::GetApplicationPolicyRequest
    GetApplicationPolicyResponse.add_member(:statements, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofapplicationpolicystatement, location_name: "Statements", traits: {"smithy.api#jsonName" => "statements"}))
    GetApplicationPolicyResponse.type = Types::GetApplicationPolicyResponse
    GetApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SemanticVersion", traits: {"smithy.api#httpQuery" => "semanticVersion"}))
    GetApplicationRequest.type = Types::GetApplicationRequest
    GetApplicationResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#jsonName" => "applicationId"}))
    GetApplicationResponse.add_member(:author, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Author", traits: {"smithy.api#jsonName" => "author"}))
    GetApplicationResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    GetApplicationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    GetApplicationResponse.add_member(:home_page_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "HomePageUrl", traits: {"smithy.api#jsonName" => "homePageUrl"}))
    GetApplicationResponse.add_member(:is_verified_author, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IsVerifiedAuthor", traits: {"smithy.api#jsonName" => "isVerifiedAuthor"}))
    GetApplicationResponse.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "Labels", traits: {"smithy.api#jsonName" => "labels"}))
    GetApplicationResponse.add_member(:license_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LicenseUrl", traits: {"smithy.api#jsonName" => "licenseUrl"}))
    GetApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    GetApplicationResponse.add_member(:readme_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ReadmeUrl", traits: {"smithy.api#jsonName" => "readmeUrl"}))
    GetApplicationResponse.add_member(:spdx_license_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SpdxLicenseId", traits: {"smithy.api#jsonName" => "spdxLicenseId"}))
    GetApplicationResponse.add_member(:verified_author_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "VerifiedAuthorUrl", traits: {"smithy.api#jsonName" => "verifiedAuthorUrl"}))
    GetApplicationResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, location_name: "Version", traits: {"smithy.api#jsonName" => "version"}))
    GetApplicationResponse.type = Types::GetApplicationResponse
    GetCloudFormationTemplateRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCloudFormationTemplateRequest.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCloudFormationTemplateRequest.type = Types::GetCloudFormationTemplateRequest
    GetCloudFormationTemplateResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#jsonName" => "applicationId"}))
    GetCloudFormationTemplateResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    GetCloudFormationTemplateResponse.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ExpirationTime", traits: {"smithy.api#jsonName" => "expirationTime"}))
    GetCloudFormationTemplateResponse.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SemanticVersion", traits: {"smithy.api#jsonName" => "semanticVersion"}))
    GetCloudFormationTemplateResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    GetCloudFormationTemplateResponse.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TemplateId", traits: {"smithy.api#jsonName" => "templateId"}))
    GetCloudFormationTemplateResponse.add_member(:template_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TemplateUrl", traits: {"smithy.api#jsonName" => "templateUrl"}))
    GetCloudFormationTemplateResponse.type = Types::GetCloudFormationTemplateResponse
    InternalServerErrorException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ErrorCode", traits: {"smithy.api#jsonName" => "errorCode"}))
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    InternalServerErrorException.type = Types::InternalServerErrorException
    ListApplicationDependenciesRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListApplicationDependenciesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "MaxItems", traits: {"smithy.api#httpQuery" => "maxItems"}))
    ListApplicationDependenciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationDependenciesRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SemanticVersion", traits: {"smithy.api#httpQuery" => "semanticVersion"}))
    ListApplicationDependenciesRequest.type = Types::ListApplicationDependenciesRequest
    ListApplicationDependenciesResponse.add_member(:dependencies, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofapplicationdependencysummary, location_name: "Dependencies", traits: {"smithy.api#jsonName" => "dependencies"}))
    ListApplicationDependenciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListApplicationDependenciesResponse.type = Types::ListApplicationDependenciesResponse
    ListApplicationVersionsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListApplicationVersionsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "MaxItems", traits: {"smithy.api#httpQuery" => "maxItems"}))
    ListApplicationVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationVersionsRequest.type = Types::ListApplicationVersionsRequest
    ListApplicationVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListApplicationVersionsResponse.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofversionsummary, location_name: "Versions", traits: {"smithy.api#jsonName" => "versions"}))
    ListApplicationVersionsResponse.type = Types::ListApplicationVersionsResponse
    ListApplicationsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "MaxItems", traits: {"smithy.api#httpQuery" => "maxItems"}))
    ListApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofapplicationsummary, location_name: "Applications", traits: {"smithy.api#jsonName" => "applications"}))
    ListApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    NotFoundException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ErrorCode", traits: {"smithy.api#jsonName" => "errorCode"}))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    NotFoundException.type = Types::NotFoundException
    ParameterDefinition.add_member(:allowed_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "AllowedPattern", traits: {"smithy.api#jsonName" => "allowedPattern"}))
    ParameterDefinition.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "AllowedValues", traits: {"smithy.api#jsonName" => "allowedValues"}))
    ParameterDefinition.add_member(:constraint_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ConstraintDescription", traits: {"smithy.api#jsonName" => "constraintDescription"}))
    ParameterDefinition.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DefaultValue", traits: {"smithy.api#jsonName" => "defaultValue"}))
    ParameterDefinition.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    ParameterDefinition.add_member(:max_length, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "MaxLength", traits: {"smithy.api#jsonName" => "maxLength"}))
    ParameterDefinition.add_member(:max_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "MaxValue", traits: {"smithy.api#jsonName" => "maxValue"}))
    ParameterDefinition.add_member(:min_length, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "MinLength", traits: {"smithy.api#jsonName" => "minLength"}))
    ParameterDefinition.add_member(:min_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "MinValue", traits: {"smithy.api#jsonName" => "minValue"}))
    ParameterDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ParameterDefinition.add_member(:no_echo, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "NoEcho", traits: {"smithy.api#jsonName" => "noEcho"}))
    ParameterDefinition.add_member(:referenced_by_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "ReferencedByResources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "referencedByResources", "smithy.api#required" => {}}))
    ParameterDefinition.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Type", traits: {"smithy.api#jsonName" => "type"}))
    ParameterDefinition.type = Types::ParameterDefinition
    ParameterValue.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ParameterValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "value", "smithy.api#required" => {}}))
    ParameterValue.type = Types::ParameterValue
    PutApplicationPolicyRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutApplicationPolicyRequest.add_member(:statements, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofapplicationpolicystatement, location_name: "Statements", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "statements", "smithy.api#required" => {}}))
    PutApplicationPolicyRequest.type = Types::PutApplicationPolicyRequest
    PutApplicationPolicyResponse.add_member(:statements, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofapplicationpolicystatement, location_name: "Statements", traits: {"smithy.api#jsonName" => "statements"}))
    PutApplicationPolicyResponse.type = Types::PutApplicationPolicyResponse
    RollbackConfiguration.add_member(:monitoring_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "MonitoringTimeInMinutes", traits: {"smithy.api#jsonName" => "monitoringTimeInMinutes"}))
    RollbackConfiguration.add_member(:rollback_triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofrollbacktrigger, location_name: "RollbackTriggers", traits: {"smithy.api#jsonName" => "rollbackTriggers"}))
    RollbackConfiguration.type = Types::RollbackConfiguration
    RollbackTrigger.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    RollbackTrigger.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "type", "smithy.api#required" => {}}))
    RollbackTrigger.type = Types::RollbackTrigger
    Status.add_member(:preparing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PREPARING", traits: {"smithy.api#enumValue" => "PREPARING"}))
    Status.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    Status.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "key", "smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "value", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TooManyRequestsException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ErrorCode", traits: {"smithy.api#jsonName" => "errorCode"}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnshareApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UnshareApplicationRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "OrganizationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "organizationId", "smithy.api#required" => {}}))
    UnshareApplicationRequest.type = Types::UnshareApplicationRequest
    UpdateApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:author, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Author", traits: {"smithy.api#jsonName" => "author"}))
    UpdateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateApplicationRequest.add_member(:home_page_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "HomePageUrl", traits: {"smithy.api#jsonName" => "homePageUrl"}))
    UpdateApplicationRequest.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "Labels", traits: {"smithy.api#jsonName" => "labels"}))
    UpdateApplicationRequest.add_member(:readme_body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ReadmeBody", traits: {"smithy.api#jsonName" => "readmeBody"}))
    UpdateApplicationRequest.add_member(:readme_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ReadmeUrl", traits: {"smithy.api#jsonName" => "readmeUrl"}))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#jsonName" => "applicationId"}))
    UpdateApplicationResponse.add_member(:author, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Author", traits: {"smithy.api#jsonName" => "author"}))
    UpdateApplicationResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    UpdateApplicationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateApplicationResponse.add_member(:home_page_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "HomePageUrl", traits: {"smithy.api#jsonName" => "homePageUrl"}))
    UpdateApplicationResponse.add_member(:is_verified_author, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IsVerifiedAuthor", traits: {"smithy.api#jsonName" => "isVerifiedAuthor"}))
    UpdateApplicationResponse.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "Labels", traits: {"smithy.api#jsonName" => "labels"}))
    UpdateApplicationResponse.add_member(:license_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LicenseUrl", traits: {"smithy.api#jsonName" => "licenseUrl"}))
    UpdateApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    UpdateApplicationResponse.add_member(:readme_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ReadmeUrl", traits: {"smithy.api#jsonName" => "readmeUrl"}))
    UpdateApplicationResponse.add_member(:spdx_license_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SpdxLicenseId", traits: {"smithy.api#jsonName" => "spdxLicenseId"}))
    UpdateApplicationResponse.add_member(:verified_author_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "VerifiedAuthorUrl", traits: {"smithy.api#jsonName" => "verifiedAuthorUrl"}))
    UpdateApplicationResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, location_name: "Version", traits: {"smithy.api#jsonName" => "version"}))
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    Version.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "applicationId", "smithy.api#required" => {}}))
    Version.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CreationTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "creationTime", "smithy.api#required" => {}}))
    Version.add_member(:parameter_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofparameterdefinition, location_name: "ParameterDefinitions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "parameterDefinitions", "smithy.api#required" => {}}))
    Version.add_member(:required_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofcapability, location_name: "RequiredCapabilities", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "requiredCapabilities", "smithy.api#required" => {}}))
    Version.add_member(:resources_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ResourcesSupported", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourcesSupported", "smithy.api#required" => {}}))
    Version.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SemanticVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "semanticVersion", "smithy.api#required" => {}}))
    Version.add_member(:source_code_archive_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SourceCodeArchiveUrl", traits: {"smithy.api#jsonName" => "sourceCodeArchiveUrl"}))
    Version.add_member(:source_code_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SourceCodeUrl", traits: {"smithy.api#jsonName" => "sourceCodeUrl"}))
    Version.add_member(:template_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TemplateUrl", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "templateUrl", "smithy.api#required" => {}}))
    Version.type = Types::Version
    VersionSummary.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApplicationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "applicationId", "smithy.api#required" => {}}))
    VersionSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CreationTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "creationTime", "smithy.api#required" => {}}))
    VersionSummary.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SemanticVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "semanticVersion", "smithy.api#required" => {}}))
    VersionSummary.add_member(:source_code_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SourceCodeUrl", traits: {"smithy.api#jsonName" => "sourceCodeUrl"}))
    VersionSummary.type = Types::VersionSummary
    Listofapplicationdependencysummary.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDependencySummary)
    Listofapplicationpolicystatement.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationPolicyStatement)
    Listofapplicationsummary.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummary)
    Listofcapability.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Capability)
    Listofparameterdefinition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterDefinition)
    Listofparametervalue.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue)
    Listofrollbacktrigger.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RollbackTrigger)
    Listoftag.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    Listofversionsummary.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VersionSummary)
    ListofString.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)

    ServerlessApplicationRepository = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.serverlessapplicationrepository#ServerlessApplicationRepository"
      service.name = "ServerlessApplicationRepository"
      service.version = "2017-09-08"
      service.traits = {"aws.api#service" => {"sdkId" => "ServerlessApplicationRepository", "arnNamespace" => "serverlessrepo", "cloudFormationName" => "ServerlessApplicationRepository", "cloudTrailEventSource" => "serverlessapplicationrepository.amazonaws.com", "docId" => "serverlessrepo-2017-09-08", "endpointPrefix" => "serverlessrepo"}, "aws.auth#sigv4" => {"name" => "serverlessrepo"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "AWSServerlessApplicationRepository"}
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.serverlessapplicationrepository#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = CreateApplicationRequest
        operation.output = CreateApplicationResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications", "code" => 201}}
      end)
      service.add_operation(:create_application_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.serverlessapplicationrepository#CreateApplicationVersion"
        operation.name = "CreateApplicationVersion"
        operation.input = CreateApplicationVersionRequest
        operation.output = CreateApplicationVersionResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{ApplicationId}/versions/{SemanticVersion}", "code" => 201}}
      end)
      service.add_operation(:create_cloud_formation_change_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.serverlessapplicationrepository#CreateCloudFormationChangeSet"
        operation.name = "CreateCloudFormationChangeSet"
        operation.input = CreateCloudFormationChangeSetRequest
        operation.output = CreateCloudFormationChangeSetResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{ApplicationId}/changesets", "code" => 201}}
      end)
      service.add_operation(:create_cloud_formation_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.serverlessapplicationrepository#CreateCloudFormationTemplate"
        operation.name = "CreateCloudFormationTemplate"
        operation.input = CreateCloudFormationTemplateRequest
        operation.output = CreateCloudFormationTemplateResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{ApplicationId}/templates", "code" => 201}}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.serverlessapplicationrepository#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = DeleteApplicationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{ApplicationId}", "code" => 204}}
      end)
      service.add_operation(:get_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.serverlessapplicationrepository#GetApplication"
        operation.name = "GetApplication"
        operation.input = GetApplicationRequest
        operation.output = GetApplicationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}", "code" => 200}}
      end)
      service.add_operation(:get_application_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.serverlessapplicationrepository#GetApplicationPolicy"
        operation.name = "GetApplicationPolicy"
        operation.input = GetApplicationPolicyRequest
        operation.output = GetApplicationPolicyResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/policy", "code" => 200}}
      end)
      service.add_operation(:get_cloud_formation_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.serverlessapplicationrepository#GetCloudFormationTemplate"
        operation.name = "GetCloudFormationTemplate"
        operation.input = GetCloudFormationTemplateRequest
        operation.output = GetCloudFormationTemplateResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/templates/{TemplateId}", "code" => 200}}
      end)
      service.add_operation(:list_application_dependencies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.serverlessapplicationrepository#ListApplicationDependencies"
        operation.name = "ListApplicationDependencies"
        operation.input = ListApplicationDependenciesRequest
        operation.output = ListApplicationDependenciesResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/dependencies", "code" => 200}}
        operation[:paginator] = Paginators::ListApplicationDependencies.new
      end)
      service.add_operation(:list_application_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.serverlessapplicationrepository#ListApplicationVersions"
        operation.name = "ListApplicationVersions"
        operation.input = ListApplicationVersionsRequest
        operation.output = ListApplicationVersionsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/versions", "code" => 200}}
        operation[:paginator] = Paginators::ListApplicationVersions.new
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.serverlessapplicationrepository#ListApplications"
        operation.name = "ListApplications"
        operation.input = ListApplicationsRequest
        operation.output = ListApplicationsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications", "code" => 200}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:put_application_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.serverlessapplicationrepository#PutApplicationPolicy"
        operation.name = "PutApplicationPolicy"
        operation.input = PutApplicationPolicyRequest
        operation.output = PutApplicationPolicyResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{ApplicationId}/policy", "code" => 200}}
      end)
      service.add_operation(:unshare_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.serverlessapplicationrepository#UnshareApplication"
        operation.name = "UnshareApplication"
        operation.input = UnshareApplicationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{ApplicationId}/unshare", "code" => 204}}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.serverlessapplicationrepository#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = UpdateApplicationRequest
        operation.output = UpdateApplicationResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{ApplicationId}", "code" => 200}}
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

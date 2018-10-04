# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ServerlessApplicationRepository
  # @api private
  module ClientApi

    include Seahorse::Model

    Application = Shapes::StructureShape.new(name: 'Application')
    ApplicationPage = Shapes::StructureShape.new(name: 'ApplicationPage')
    ApplicationPolicy = Shapes::StructureShape.new(name: 'ApplicationPolicy')
    ApplicationPolicyStatement = Shapes::StructureShape.new(name: 'ApplicationPolicyStatement')
    ApplicationSummary = Shapes::StructureShape.new(name: 'ApplicationSummary')
    ApplicationVersionPage = Shapes::StructureShape.new(name: 'ApplicationVersionPage')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    ChangeSetDetails = Shapes::StructureShape.new(name: 'ChangeSetDetails')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateApplicationInput = Shapes::StructureShape.new(name: 'CreateApplicationInput')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    CreateApplicationVersionInput = Shapes::StructureShape.new(name: 'CreateApplicationVersionInput')
    CreateApplicationVersionRequest = Shapes::StructureShape.new(name: 'CreateApplicationVersionRequest')
    CreateApplicationVersionResponse = Shapes::StructureShape.new(name: 'CreateApplicationVersionResponse')
    CreateCloudFormationChangeSetInput = Shapes::StructureShape.new(name: 'CreateCloudFormationChangeSetInput')
    CreateCloudFormationChangeSetRequest = Shapes::StructureShape.new(name: 'CreateCloudFormationChangeSetRequest')
    CreateCloudFormationChangeSetResponse = Shapes::StructureShape.new(name: 'CreateCloudFormationChangeSetResponse')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetApplicationPolicyRequest = Shapes::StructureShape.new(name: 'GetApplicationPolicyRequest')
    GetApplicationPolicyResponse = Shapes::StructureShape.new(name: 'GetApplicationPolicyResponse')
    GetApplicationRequest = Shapes::StructureShape.new(name: 'GetApplicationRequest')
    GetApplicationResponse = Shapes::StructureShape.new(name: 'GetApplicationResponse')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    ListApplicationVersionsRequest = Shapes::StructureShape.new(name: 'ListApplicationVersionsRequest')
    ListApplicationVersionsResponse = Shapes::StructureShape.new(name: 'ListApplicationVersionsResponse')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    MaxItems = Shapes::IntegerShape.new(name: 'MaxItems')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    ParameterDefinition = Shapes::StructureShape.new(name: 'ParameterDefinition')
    ParameterValue = Shapes::StructureShape.new(name: 'ParameterValue')
    PutApplicationPolicyRequest = Shapes::StructureShape.new(name: 'PutApplicationPolicyRequest')
    PutApplicationPolicyResponse = Shapes::StructureShape.new(name: 'PutApplicationPolicyResponse')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UpdateApplicationInput = Shapes::StructureShape.new(name: 'UpdateApplicationInput')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Shapes::StructureShape.new(name: 'UpdateApplicationResponse')
    Version = Shapes::StructureShape.new(name: 'Version')
    VersionSummary = Shapes::StructureShape.new(name: 'VersionSummary')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __listOfApplicationPolicyStatement = Shapes::ListShape.new(name: '__listOfApplicationPolicyStatement')
    __listOfApplicationSummary = Shapes::ListShape.new(name: '__listOfApplicationSummary')
    __listOfParameterDefinition = Shapes::ListShape.new(name: '__listOfParameterDefinition')
    __listOfParameterValue = Shapes::ListShape.new(name: '__listOfParameterValue')
    __listOfVersionSummary = Shapes::ListShape.new(name: '__listOfVersionSummary')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __string = Shapes::StringShape.new(name: '__string')

    Application.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "applicationId"))
    Application.add_member(:author, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "author"))
    Application.add_member(:creation_time, Shapes::ShapeRef.new(shape: __string, location_name: "creationTime"))
    Application.add_member(:description, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "description"))
    Application.add_member(:home_page_url, Shapes::ShapeRef.new(shape: __string, location_name: "homePageUrl"))
    Application.add_member(:labels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "labels"))
    Application.add_member(:license_url, Shapes::ShapeRef.new(shape: __string, location_name: "licenseUrl"))
    Application.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    Application.add_member(:readme_url, Shapes::ShapeRef.new(shape: __string, location_name: "readmeUrl"))
    Application.add_member(:spdx_license_id, Shapes::ShapeRef.new(shape: __string, location_name: "spdxLicenseId"))
    Application.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    Application.struct_class = Types::Application

    ApplicationPage.add_member(:applications, Shapes::ShapeRef.new(shape: __listOfApplicationSummary, required: true, location_name: "applications"))
    ApplicationPage.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ApplicationPage.struct_class = Types::ApplicationPage

    ApplicationPolicy.add_member(:statements, Shapes::ShapeRef.new(shape: __listOfApplicationPolicyStatement, required: true, location_name: "statements"))
    ApplicationPolicy.struct_class = Types::ApplicationPolicy

    ApplicationPolicyStatement.add_member(:actions, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "actions"))
    ApplicationPolicyStatement.add_member(:principals, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "principals"))
    ApplicationPolicyStatement.add_member(:statement_id, Shapes::ShapeRef.new(shape: __string, location_name: "statementId"))
    ApplicationPolicyStatement.struct_class = Types::ApplicationPolicyStatement

    ApplicationSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "applicationId"))
    ApplicationSummary.add_member(:author, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "author"))
    ApplicationSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: __string, location_name: "creationTime"))
    ApplicationSummary.add_member(:description, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "description"))
    ApplicationSummary.add_member(:home_page_url, Shapes::ShapeRef.new(shape: __string, location_name: "homePageUrl"))
    ApplicationSummary.add_member(:labels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "labels"))
    ApplicationSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    ApplicationSummary.add_member(:spdx_license_id, Shapes::ShapeRef.new(shape: __string, location_name: "spdxLicenseId"))
    ApplicationSummary.struct_class = Types::ApplicationSummary

    ApplicationVersionPage.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ApplicationVersionPage.add_member(:versions, Shapes::ShapeRef.new(shape: __listOfVersionSummary, required: true, location_name: "versions"))
    ApplicationVersionPage.struct_class = Types::ApplicationVersionPage

    ChangeSetDetails.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "applicationId"))
    ChangeSetDetails.add_member(:change_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "changeSetId"))
    ChangeSetDetails.add_member(:semantic_version, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "semanticVersion"))
    ChangeSetDetails.add_member(:stack_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "stackId"))
    ChangeSetDetails.struct_class = Types::ChangeSetDetails

    CreateApplicationInput.add_member(:author, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "author"))
    CreateApplicationInput.add_member(:description, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "description"))
    CreateApplicationInput.add_member(:home_page_url, Shapes::ShapeRef.new(shape: __string, location_name: "homePageUrl"))
    CreateApplicationInput.add_member(:labels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "labels"))
    CreateApplicationInput.add_member(:license_body, Shapes::ShapeRef.new(shape: __string, location_name: "licenseBody"))
    CreateApplicationInput.add_member(:license_url, Shapes::ShapeRef.new(shape: __string, location_name: "licenseUrl"))
    CreateApplicationInput.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CreateApplicationInput.add_member(:readme_body, Shapes::ShapeRef.new(shape: __string, location_name: "readmeBody"))
    CreateApplicationInput.add_member(:readme_url, Shapes::ShapeRef.new(shape: __string, location_name: "readmeUrl"))
    CreateApplicationInput.add_member(:semantic_version, Shapes::ShapeRef.new(shape: __string, location_name: "semanticVersion"))
    CreateApplicationInput.add_member(:source_code_url, Shapes::ShapeRef.new(shape: __string, location_name: "sourceCodeUrl"))
    CreateApplicationInput.add_member(:spdx_license_id, Shapes::ShapeRef.new(shape: __string, location_name: "spdxLicenseId"))
    CreateApplicationInput.add_member(:template_body, Shapes::ShapeRef.new(shape: __string, location_name: "templateBody"))
    CreateApplicationInput.add_member(:template_url, Shapes::ShapeRef.new(shape: __string, location_name: "templateUrl"))
    CreateApplicationInput.struct_class = Types::CreateApplicationInput

    CreateApplicationRequest.add_member(:author, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "author"))
    CreateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "description"))
    CreateApplicationRequest.add_member(:home_page_url, Shapes::ShapeRef.new(shape: __string, location_name: "homePageUrl"))
    CreateApplicationRequest.add_member(:labels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "labels"))
    CreateApplicationRequest.add_member(:license_body, Shapes::ShapeRef.new(shape: __string, location_name: "licenseBody"))
    CreateApplicationRequest.add_member(:license_url, Shapes::ShapeRef.new(shape: __string, location_name: "licenseUrl"))
    CreateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CreateApplicationRequest.add_member(:readme_body, Shapes::ShapeRef.new(shape: __string, location_name: "readmeBody"))
    CreateApplicationRequest.add_member(:readme_url, Shapes::ShapeRef.new(shape: __string, location_name: "readmeUrl"))
    CreateApplicationRequest.add_member(:semantic_version, Shapes::ShapeRef.new(shape: __string, location_name: "semanticVersion"))
    CreateApplicationRequest.add_member(:source_code_url, Shapes::ShapeRef.new(shape: __string, location_name: "sourceCodeUrl"))
    CreateApplicationRequest.add_member(:spdx_license_id, Shapes::ShapeRef.new(shape: __string, location_name: "spdxLicenseId"))
    CreateApplicationRequest.add_member(:template_body, Shapes::ShapeRef.new(shape: __string, location_name: "templateBody"))
    CreateApplicationRequest.add_member(:template_url, Shapes::ShapeRef.new(shape: __string, location_name: "templateUrl"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "applicationId"))
    CreateApplicationResponse.add_member(:author, Shapes::ShapeRef.new(shape: __string, location_name: "author"))
    CreateApplicationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __string, location_name: "creationTime"))
    CreateApplicationResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CreateApplicationResponse.add_member(:home_page_url, Shapes::ShapeRef.new(shape: __string, location_name: "homePageUrl"))
    CreateApplicationResponse.add_member(:labels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "labels"))
    CreateApplicationResponse.add_member(:license_url, Shapes::ShapeRef.new(shape: __string, location_name: "licenseUrl"))
    CreateApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateApplicationResponse.add_member(:readme_url, Shapes::ShapeRef.new(shape: __string, location_name: "readmeUrl"))
    CreateApplicationResponse.add_member(:spdx_license_id, Shapes::ShapeRef.new(shape: __string, location_name: "spdxLicenseId"))
    CreateApplicationResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    CreateApplicationVersionInput.add_member(:source_code_url, Shapes::ShapeRef.new(shape: __string, location_name: "sourceCodeUrl"))
    CreateApplicationVersionInput.add_member(:template_body, Shapes::ShapeRef.new(shape: __string, location_name: "templateBody"))
    CreateApplicationVersionInput.add_member(:template_url, Shapes::ShapeRef.new(shape: __string, location_name: "templateUrl"))
    CreateApplicationVersionInput.struct_class = Types::CreateApplicationVersionInput

    CreateApplicationVersionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "applicationId"))
    CreateApplicationVersionRequest.add_member(:semantic_version, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "semanticVersion"))
    CreateApplicationVersionRequest.add_member(:source_code_url, Shapes::ShapeRef.new(shape: __string, location_name: "sourceCodeUrl"))
    CreateApplicationVersionRequest.add_member(:template_body, Shapes::ShapeRef.new(shape: __string, location_name: "templateBody"))
    CreateApplicationVersionRequest.add_member(:template_url, Shapes::ShapeRef.new(shape: __string, location_name: "templateUrl"))
    CreateApplicationVersionRequest.struct_class = Types::CreateApplicationVersionRequest

    CreateApplicationVersionResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "applicationId"))
    CreateApplicationVersionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __string, location_name: "creationTime"))
    CreateApplicationVersionResponse.add_member(:parameter_definitions, Shapes::ShapeRef.new(shape: __listOfParameterDefinition, location_name: "parameterDefinitions"))
    CreateApplicationVersionResponse.add_member(:semantic_version, Shapes::ShapeRef.new(shape: __string, location_name: "semanticVersion"))
    CreateApplicationVersionResponse.add_member(:source_code_url, Shapes::ShapeRef.new(shape: __string, location_name: "sourceCodeUrl"))
    CreateApplicationVersionResponse.add_member(:template_url, Shapes::ShapeRef.new(shape: __string, location_name: "templateUrl"))
    CreateApplicationVersionResponse.struct_class = Types::CreateApplicationVersionResponse

    CreateCloudFormationChangeSetInput.add_member(:parameter_overrides, Shapes::ShapeRef.new(shape: __listOfParameterValue, location_name: "parameterOverrides"))
    CreateCloudFormationChangeSetInput.add_member(:semantic_version, Shapes::ShapeRef.new(shape: __string, location_name: "semanticVersion"))
    CreateCloudFormationChangeSetInput.add_member(:stack_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "stackName"))
    CreateCloudFormationChangeSetInput.struct_class = Types::CreateCloudFormationChangeSetInput

    CreateCloudFormationChangeSetRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "applicationId"))
    CreateCloudFormationChangeSetRequest.add_member(:parameter_overrides, Shapes::ShapeRef.new(shape: __listOfParameterValue, location_name: "parameterOverrides"))
    CreateCloudFormationChangeSetRequest.add_member(:semantic_version, Shapes::ShapeRef.new(shape: __string, location_name: "semanticVersion"))
    CreateCloudFormationChangeSetRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "stackName"))
    CreateCloudFormationChangeSetRequest.struct_class = Types::CreateCloudFormationChangeSetRequest

    CreateCloudFormationChangeSetResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "applicationId"))
    CreateCloudFormationChangeSetResponse.add_member(:change_set_id, Shapes::ShapeRef.new(shape: __string, location_name: "changeSetId"))
    CreateCloudFormationChangeSetResponse.add_member(:semantic_version, Shapes::ShapeRef.new(shape: __string, location_name: "semanticVersion"))
    CreateCloudFormationChangeSetResponse.add_member(:stack_id, Shapes::ShapeRef.new(shape: __string, location_name: "stackId"))
    CreateCloudFormationChangeSetResponse.struct_class = Types::CreateCloudFormationChangeSetResponse

    DeleteApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "applicationId"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    GetApplicationPolicyRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "applicationId"))
    GetApplicationPolicyRequest.struct_class = Types::GetApplicationPolicyRequest

    GetApplicationPolicyResponse.add_member(:statements, Shapes::ShapeRef.new(shape: __listOfApplicationPolicyStatement, location_name: "statements"))
    GetApplicationPolicyResponse.struct_class = Types::GetApplicationPolicyResponse

    GetApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "applicationId"))
    GetApplicationRequest.add_member(:semantic_version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "semanticVersion"))
    GetApplicationRequest.struct_class = Types::GetApplicationRequest

    GetApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "applicationId"))
    GetApplicationResponse.add_member(:author, Shapes::ShapeRef.new(shape: __string, location_name: "author"))
    GetApplicationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __string, location_name: "creationTime"))
    GetApplicationResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    GetApplicationResponse.add_member(:home_page_url, Shapes::ShapeRef.new(shape: __string, location_name: "homePageUrl"))
    GetApplicationResponse.add_member(:labels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "labels"))
    GetApplicationResponse.add_member(:license_url, Shapes::ShapeRef.new(shape: __string, location_name: "licenseUrl"))
    GetApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    GetApplicationResponse.add_member(:readme_url, Shapes::ShapeRef.new(shape: __string, location_name: "readmeUrl"))
    GetApplicationResponse.add_member(:spdx_license_id, Shapes::ShapeRef.new(shape: __string, location_name: "spdxLicenseId"))
    GetApplicationResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    GetApplicationResponse.struct_class = Types::GetApplicationResponse

    ListApplicationVersionsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "applicationId"))
    ListApplicationVersionsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "maxItems"))
    ListApplicationVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListApplicationVersionsRequest.struct_class = Types::ListApplicationVersionsRequest

    ListApplicationVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListApplicationVersionsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: __listOfVersionSummary, location_name: "versions"))
    ListApplicationVersionsResponse.struct_class = Types::ListApplicationVersionsResponse

    ListApplicationsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "maxItems"))
    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:applications, Shapes::ShapeRef.new(shape: __listOfApplicationSummary, location_name: "applications"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ParameterDefinition.add_member(:allowed_pattern, Shapes::ShapeRef.new(shape: __string, location_name: "allowedPattern"))
    ParameterDefinition.add_member(:allowed_values, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "allowedValues"))
    ParameterDefinition.add_member(:constraint_description, Shapes::ShapeRef.new(shape: __string, location_name: "constraintDescription"))
    ParameterDefinition.add_member(:default_value, Shapes::ShapeRef.new(shape: __string, location_name: "defaultValue"))
    ParameterDefinition.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    ParameterDefinition.add_member(:max_length, Shapes::ShapeRef.new(shape: __integer, location_name: "maxLength"))
    ParameterDefinition.add_member(:max_value, Shapes::ShapeRef.new(shape: __integer, location_name: "maxValue"))
    ParameterDefinition.add_member(:min_length, Shapes::ShapeRef.new(shape: __integer, location_name: "minLength"))
    ParameterDefinition.add_member(:min_value, Shapes::ShapeRef.new(shape: __integer, location_name: "minValue"))
    ParameterDefinition.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    ParameterDefinition.add_member(:no_echo, Shapes::ShapeRef.new(shape: __boolean, location_name: "noEcho"))
    ParameterDefinition.add_member(:referenced_by_resources, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "referencedByResources"))
    ParameterDefinition.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "type"))
    ParameterDefinition.struct_class = Types::ParameterDefinition

    ParameterValue.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    ParameterValue.add_member(:value, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "value"))
    ParameterValue.struct_class = Types::ParameterValue

    PutApplicationPolicyRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "applicationId"))
    PutApplicationPolicyRequest.add_member(:statements, Shapes::ShapeRef.new(shape: __listOfApplicationPolicyStatement, required: true, location_name: "statements"))
    PutApplicationPolicyRequest.struct_class = Types::PutApplicationPolicyRequest

    PutApplicationPolicyResponse.add_member(:statements, Shapes::ShapeRef.new(shape: __listOfApplicationPolicyStatement, location_name: "statements"))
    PutApplicationPolicyResponse.struct_class = Types::PutApplicationPolicyResponse

    UpdateApplicationInput.add_member(:author, Shapes::ShapeRef.new(shape: __string, location_name: "author"))
    UpdateApplicationInput.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateApplicationInput.add_member(:home_page_url, Shapes::ShapeRef.new(shape: __string, location_name: "homePageUrl"))
    UpdateApplicationInput.add_member(:labels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "labels"))
    UpdateApplicationInput.add_member(:readme_body, Shapes::ShapeRef.new(shape: __string, location_name: "readmeBody"))
    UpdateApplicationInput.add_member(:readme_url, Shapes::ShapeRef.new(shape: __string, location_name: "readmeUrl"))
    UpdateApplicationInput.struct_class = Types::UpdateApplicationInput

    UpdateApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "applicationId"))
    UpdateApplicationRequest.add_member(:author, Shapes::ShapeRef.new(shape: __string, location_name: "author"))
    UpdateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateApplicationRequest.add_member(:home_page_url, Shapes::ShapeRef.new(shape: __string, location_name: "homePageUrl"))
    UpdateApplicationRequest.add_member(:labels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "labels"))
    UpdateApplicationRequest.add_member(:readme_body, Shapes::ShapeRef.new(shape: __string, location_name: "readmeBody"))
    UpdateApplicationRequest.add_member(:readme_url, Shapes::ShapeRef.new(shape: __string, location_name: "readmeUrl"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, location_name: "applicationId"))
    UpdateApplicationResponse.add_member(:author, Shapes::ShapeRef.new(shape: __string, location_name: "author"))
    UpdateApplicationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __string, location_name: "creationTime"))
    UpdateApplicationResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateApplicationResponse.add_member(:home_page_url, Shapes::ShapeRef.new(shape: __string, location_name: "homePageUrl"))
    UpdateApplicationResponse.add_member(:labels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "labels"))
    UpdateApplicationResponse.add_member(:license_url, Shapes::ShapeRef.new(shape: __string, location_name: "licenseUrl"))
    UpdateApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateApplicationResponse.add_member(:readme_url, Shapes::ShapeRef.new(shape: __string, location_name: "readmeUrl"))
    UpdateApplicationResponse.add_member(:spdx_license_id, Shapes::ShapeRef.new(shape: __string, location_name: "spdxLicenseId"))
    UpdateApplicationResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    UpdateApplicationResponse.struct_class = Types::UpdateApplicationResponse

    Version.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "applicationId"))
    Version.add_member(:creation_time, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "creationTime"))
    Version.add_member(:parameter_definitions, Shapes::ShapeRef.new(shape: __listOfParameterDefinition, required: true, location_name: "parameterDefinitions"))
    Version.add_member(:semantic_version, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "semanticVersion"))
    Version.add_member(:source_code_url, Shapes::ShapeRef.new(shape: __string, location_name: "sourceCodeUrl"))
    Version.add_member(:template_url, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "templateUrl"))
    Version.struct_class = Types::Version

    VersionSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "applicationId"))
    VersionSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "creationTime"))
    VersionSummary.add_member(:semantic_version, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "semanticVersion"))
    VersionSummary.add_member(:source_code_url, Shapes::ShapeRef.new(shape: __string, location_name: "sourceCodeUrl"))
    VersionSummary.struct_class = Types::VersionSummary

    __listOfApplicationPolicyStatement.member = Shapes::ShapeRef.new(shape: ApplicationPolicyStatement)

    __listOfApplicationSummary.member = Shapes::ShapeRef.new(shape: ApplicationSummary)

    __listOfParameterDefinition.member = Shapes::ShapeRef.new(shape: ParameterDefinition)

    __listOfParameterValue.member = Shapes::ShapeRef.new(shape: ParameterValue)

    __listOfVersionSummary.member = Shapes::ShapeRef.new(shape: VersionSummary)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-09-08"

      api.metadata = {
        "apiVersion" => "2017-09-08",
        "endpointPrefix" => "serverlessrepo",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWSServerlessApplicationRepository",
        "serviceId" => "ServerlessApplicationRepository",
        "signatureVersion" => "v4",
        "signingName" => "serverlessrepo",
        "uid" => "serverlessrepo-2017-09-08",
      }

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:create_application_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplicationVersion"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{applicationId}/versions/{semanticVersion}"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:create_cloud_formation_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCloudFormationChangeSet"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/changesets"
        o.input = Shapes::ShapeRef.new(shape: CreateCloudFormationChangeSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCloudFormationChangeSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplication"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:get_application_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplicationPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:list_application_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplicationVersions"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "GET"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_application_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutApplicationPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{applicationId}/policy"
        o.input = Shapes::ShapeRef.new(shape: PutApplicationPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutApplicationPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "PATCH"
        o.http_request_uri = "/applications/{applicationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end

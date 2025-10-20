# frozen_string_literal: true

# This is generated code!

module Aws::AppConfigData
  # This module contains a schema composed of shapes used by the client.
  module Schema

    BadRequestDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appconfigdata#BadRequestDetails", name: "BadRequestDetails")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfigdata#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BadRequestReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfigdata#BadRequestReason", name: "BadRequestReason", traits: {"smithy.api#enum" => [{"value" => "InvalidParameters", "name" => "INVALID_PARAMETERS", "documentation" => "Indicates there was a problem with one or more of the parameters.\nSee InvalidParameters in the BadRequestDetails for more information."}]})
    GetLatestConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfigdata#GetLatestConfigurationInput", name: "GetLatestConfigurationInput")
    GetLatestConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfigdata#GetLatestConfigurationOutput", name: "GetLatestConfigurationOutput")
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfigdata#Identifier", name: "Identifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appconfigdata#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfigdata#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidParameterDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfigdata#InvalidParameterDetail", name: "InvalidParameterDetail")
    InvalidParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appconfigdata#InvalidParameterMap", name: "InvalidParameterMap")
    InvalidParameterProblem = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfigdata#InvalidParameterProblem", name: "InvalidParameterProblem", traits: {"smithy.api#enum" => [{"value" => "Corrupted", "name" => "CORRUPTED", "documentation" => "The parameter was corrupted and could not be understood by the service."}, {"value" => "Expired", "name" => "EXPIRED", "documentation" => "The parameter was expired and can no longer be used."}, {"value" => "PollIntervalNotSatisfied", "name" => "POLL_INTERVAL_NOT_SATISFIED", "documentation" => "The client called the service before the time specified in the poll interval."}]})
    OptionalPollSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appconfigdata#OptionalPollSeconds", name: "OptionalPollSeconds", traits: {"smithy.api#range" => {"min" => 15, "max" => 86400}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfigdata#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfigdata#ResourceType", name: "ResourceType", traits: {"smithy.api#enum" => [{"value" => "Application", "name" => "APPLICATION", "documentation" => "Resource type value for the Application resource."}, {"value" => "ConfigurationProfile", "name" => "CONFIGURATION_PROFILE", "documentation" => "Resource type value for the ConfigurationProfile resource."}, {"value" => "Deployment", "name" => "DEPLOYMENT", "documentation" => "Resource type value for the Deployment resource."}, {"value" => "Environment", "name" => "ENVIRONMENT", "documentation" => "Resource type value for the Environment resource."}, {"value" => "Configuration", "name" => "CONFIGURATION", "documentation" => "Resource type value for the Configuration resource."}]})
    SensitiveBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.appconfigdata#SensitiveBlob", name: "SensitiveBlob", traits: {"smithy.api#sensitive" => {}})
    StartConfigurationSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfigdata#StartConfigurationSessionInput", name: "StartConfigurationSessionInput")
    StartConfigurationSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfigdata#StartConfigurationSessionOutput", name: "StartConfigurationSessionOutput")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfigdata#String", name: "String")
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appconfigdata#StringMap", name: "StringMap")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfigdata#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfigdata#Token", name: "Token", traits: {"smithy.api#pattern" => "^\\S{1,8192}$"})

    BadRequestDetails.add_member(:invalid_parameters, Types::BadRequestDetails::InvalidParameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterMap, location_name: "InvalidParameters"))
    BadRequestDetails.add_member(:unknown, Types::BadRequestDetails::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    BadRequestDetails.type = Types::BadRequestDetails
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BadRequestException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestReason, location_name: "Reason"))
    BadRequestException.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestDetails, location_name: "Details"))
    BadRequestException.type = Types::BadRequestException
    GetLatestConfigurationInput.add_member(:configuration_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "ConfigurationToken", traits: {"smithy.api#httpQuery" => "configuration_token", "smithy.api#required" => {}}))
    GetLatestConfigurationInput.type = Types::GetLatestConfigurationInput
    GetLatestConfigurationOutput.add_member(:next_poll_configuration_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextPollConfigurationToken", traits: {"smithy.api#httpHeader" => "Next-Poll-Configuration-Token"}))
    GetLatestConfigurationOutput.add_member(:next_poll_interval_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "NextPollIntervalInSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Next-Poll-Interval-In-Seconds"}))
    GetLatestConfigurationOutput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetLatestConfigurationOutput.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveBlob, location_name: "Configuration", traits: {"smithy.api#httpPayload" => {}}))
    GetLatestConfigurationOutput.add_member(:version_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "VersionLabel", traits: {"smithy.api#httpHeader" => "Version-Label"}))
    GetLatestConfigurationOutput[:http_payload] = :configuration
    GetLatestConfigurationOutput[:http_payload_member] = GetLatestConfigurationOutput.member(:configuration)
    GetLatestConfigurationOutput.type = Types::GetLatestConfigurationOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.type = Types::InternalServerException
    InvalidParameterDetail.add_member(:problem, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterProblem, location_name: "Problem"))
    InvalidParameterDetail.type = Types::InvalidParameterDetail
    InvalidParameterMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    InvalidParameterMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterDetail)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:referenced_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: "ReferencedBy"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    StartConfigurationSessionInput.add_member(:application_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "ApplicationIdentifier", traits: {"smithy.api#required" => {}}))
    StartConfigurationSessionInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "EnvironmentIdentifier", traits: {"smithy.api#required" => {}}))
    StartConfigurationSessionInput.add_member(:configuration_profile_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "ConfigurationProfileIdentifier", traits: {"smithy.api#required" => {}}))
    StartConfigurationSessionInput.add_member(:required_minimum_poll_interval_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalPollSeconds, location_name: "RequiredMinimumPollIntervalInSeconds"))
    StartConfigurationSessionInput.type = Types::StartConfigurationSessionInput
    StartConfigurationSessionOutput.add_member(:initial_configuration_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "InitialConfigurationToken"))
    StartConfigurationSessionOutput.type = Types::StartConfigurationSessionOutput
    StringMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    StringMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.type = Types::ThrottlingException

    AppConfigData = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.appconfigdata#AppConfigData"
      service.name = "AppConfigData"
      service.version = "2021-11-11"
      service.traits = {"aws.api#dataPlane" => {}, "aws.api#service" => {"sdkId" => "AppConfigData", "arnNamespace" => "appconfigdata", "cloudFormationName" => "AppConfigData", "cloudTrailEventSource" => "appconfigdata.amazonaws.com", "endpointPrefix" => "appconfigdata"}, "aws.auth#sigv4" => {"name" => "appconfig"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS AppConfig Data"}
      service.add_operation(:get_latest_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfigdata#GetLatestConfiguration"
        operation.name = "GetLatestConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLatestConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLatestConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/configuration", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_configuration_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfigdata#StartConfigurationSession"
        operation.name = "StartConfigurationSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartConfigurationSessionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartConfigurationSessionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/configurationsessions", "code" => 201}}
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

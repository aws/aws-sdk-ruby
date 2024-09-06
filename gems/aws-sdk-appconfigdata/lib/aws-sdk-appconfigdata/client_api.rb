# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppConfigData
  # @api private
  module ClientApi

    include Seahorse::Model

    BadRequestDetails = Shapes::UnionShape.new(name: 'BadRequestDetails')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BadRequestReason = Shapes::StringShape.new(name: 'BadRequestReason')
    GetLatestConfigurationRequest = Shapes::StructureShape.new(name: 'GetLatestConfigurationRequest')
    GetLatestConfigurationResponse = Shapes::StructureShape.new(name: 'GetLatestConfigurationResponse')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidParameterDetail = Shapes::StructureShape.new(name: 'InvalidParameterDetail')
    InvalidParameterMap = Shapes::MapShape.new(name: 'InvalidParameterMap')
    InvalidParameterProblem = Shapes::StringShape.new(name: 'InvalidParameterProblem')
    OptionalPollSeconds = Shapes::IntegerShape.new(name: 'OptionalPollSeconds')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    SensitiveBlob = Shapes::BlobShape.new(name: 'SensitiveBlob')
    StartConfigurationSessionRequest = Shapes::StructureShape.new(name: 'StartConfigurationSessionRequest')
    StartConfigurationSessionResponse = Shapes::StructureShape.new(name: 'StartConfigurationSessionResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Token = Shapes::StringShape.new(name: 'Token')

    BadRequestDetails.add_member(:invalid_parameters, Shapes::ShapeRef.new(shape: InvalidParameterMap, location_name: "InvalidParameters"))
    BadRequestDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    BadRequestDetails.add_member_subclass(:invalid_parameters, Types::BadRequestDetails::InvalidParameters)
    BadRequestDetails.add_member_subclass(:unknown, Types::BadRequestDetails::Unknown)
    BadRequestDetails.struct_class = Types::BadRequestDetails

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BadRequestException.add_member(:reason, Shapes::ShapeRef.new(shape: BadRequestReason, location_name: "Reason"))
    BadRequestException.add_member(:details, Shapes::ShapeRef.new(shape: BadRequestDetails, location_name: "Details"))
    BadRequestException.struct_class = Types::BadRequestException

    GetLatestConfigurationRequest.add_member(:configuration_token, Shapes::ShapeRef.new(shape: Token, required: true, location: "querystring", location_name: "configuration_token"))
    GetLatestConfigurationRequest.struct_class = Types::GetLatestConfigurationRequest

    GetLatestConfigurationResponse.add_member(:next_poll_configuration_token, Shapes::ShapeRef.new(shape: Token, location: "header", location_name: "Next-Poll-Configuration-Token"))
    GetLatestConfigurationResponse.add_member(:next_poll_interval_in_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Next-Poll-Interval-In-Seconds"))
    GetLatestConfigurationResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    GetLatestConfigurationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: SensitiveBlob, location_name: "Configuration"))
    GetLatestConfigurationResponse.add_member(:version_label, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Version-Label"))
    GetLatestConfigurationResponse.struct_class = Types::GetLatestConfigurationResponse
    GetLatestConfigurationResponse[:payload] = :configuration
    GetLatestConfigurationResponse[:payload_member] = GetLatestConfigurationResponse.member(:configuration)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidParameterDetail.add_member(:problem, Shapes::ShapeRef.new(shape: InvalidParameterProblem, location_name: "Problem"))
    InvalidParameterDetail.struct_class = Types::InvalidParameterDetail

    InvalidParameterMap.key = Shapes::ShapeRef.new(shape: String)
    InvalidParameterMap.value = Shapes::ShapeRef.new(shape: InvalidParameterDetail)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:referenced_by, Shapes::ShapeRef.new(shape: StringMap, location_name: "ReferencedBy"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    StartConfigurationSessionRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "ApplicationIdentifier"))
    StartConfigurationSessionRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "EnvironmentIdentifier"))
    StartConfigurationSessionRequest.add_member(:configuration_profile_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "ConfigurationProfileIdentifier"))
    StartConfigurationSessionRequest.add_member(:required_minimum_poll_interval_in_seconds, Shapes::ShapeRef.new(shape: OptionalPollSeconds, location_name: "RequiredMinimumPollIntervalInSeconds"))
    StartConfigurationSessionRequest.struct_class = Types::StartConfigurationSessionRequest

    StartConfigurationSessionResponse.add_member(:initial_configuration_token, Shapes::ShapeRef.new(shape: Token, location_name: "InitialConfigurationToken"))
    StartConfigurationSessionResponse.struct_class = Types::StartConfigurationSessionResponse

    StringMap.key = Shapes::ShapeRef.new(shape: String)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-11-11"

      api.metadata = {
        "apiVersion" => "2021-11-11",
        "endpointPrefix" => "appconfigdata",
        "jsonVersion" => "1.0",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS AppConfig Data",
        "serviceId" => "AppConfigData",
        "signatureVersion" => "v4",
        "signingName" => "appconfig",
        "uid" => "appconfigdata-2021-11-11",
      }

      api.add_operation(:get_latest_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLatestConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/configuration"
        o.input = Shapes::ShapeRef.new(shape: GetLatestConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLatestConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_configuration_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartConfigurationSession"
        o.http_method = "POST"
        o.http_request_uri = "/configurationsessions"
        o.input = Shapes::ShapeRef.new(shape: StartConfigurationSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartConfigurationSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end

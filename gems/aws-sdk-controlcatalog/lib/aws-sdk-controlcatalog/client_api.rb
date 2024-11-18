# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ControlCatalog
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AssociatedDomainSummary = Shapes::StructureShape.new(name: 'AssociatedDomainSummary')
    AssociatedObjectiveSummary = Shapes::StructureShape.new(name: 'AssociatedObjectiveSummary')
    CommonControlArn = Shapes::StringShape.new(name: 'CommonControlArn')
    CommonControlFilter = Shapes::StructureShape.new(name: 'CommonControlFilter')
    CommonControlSummary = Shapes::StructureShape.new(name: 'CommonControlSummary')
    CommonControlSummaryList = Shapes::ListShape.new(name: 'CommonControlSummaryList')
    ControlArn = Shapes::StringShape.new(name: 'ControlArn')
    ControlBehavior = Shapes::StringShape.new(name: 'ControlBehavior')
    ControlParameter = Shapes::StructureShape.new(name: 'ControlParameter')
    ControlParameters = Shapes::ListShape.new(name: 'ControlParameters')
    ControlScope = Shapes::StringShape.new(name: 'ControlScope')
    ControlSummary = Shapes::StructureShape.new(name: 'ControlSummary')
    Controls = Shapes::ListShape.new(name: 'Controls')
    DeployableRegions = Shapes::ListShape.new(name: 'DeployableRegions')
    DomainArn = Shapes::StringShape.new(name: 'DomainArn')
    DomainResourceFilter = Shapes::StructureShape.new(name: 'DomainResourceFilter')
    DomainResourceFilterList = Shapes::ListShape.new(name: 'DomainResourceFilterList')
    DomainSummary = Shapes::StructureShape.new(name: 'DomainSummary')
    DomainSummaryList = Shapes::ListShape.new(name: 'DomainSummaryList')
    GetControlRequest = Shapes::StructureShape.new(name: 'GetControlRequest')
    GetControlResponse = Shapes::StructureShape.new(name: 'GetControlResponse')
    ImplementationDetails = Shapes::StructureShape.new(name: 'ImplementationDetails')
    ImplementationType = Shapes::StringShape.new(name: 'ImplementationType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListCommonControlsRequest = Shapes::StructureShape.new(name: 'ListCommonControlsRequest')
    ListCommonControlsResponse = Shapes::StructureShape.new(name: 'ListCommonControlsResponse')
    ListControlsRequest = Shapes::StructureShape.new(name: 'ListControlsRequest')
    ListControlsResponse = Shapes::StructureShape.new(name: 'ListControlsResponse')
    ListDomainsRequest = Shapes::StructureShape.new(name: 'ListDomainsRequest')
    ListDomainsResponse = Shapes::StructureShape.new(name: 'ListDomainsResponse')
    ListObjectivesRequest = Shapes::StructureShape.new(name: 'ListObjectivesRequest')
    ListObjectivesResponse = Shapes::StructureShape.new(name: 'ListObjectivesResponse')
    MaxListCommonControlsResults = Shapes::IntegerShape.new(name: 'MaxListCommonControlsResults')
    MaxListControlsResults = Shapes::IntegerShape.new(name: 'MaxListControlsResults')
    MaxListDomainsResults = Shapes::IntegerShape.new(name: 'MaxListDomainsResults')
    MaxListObjectivesResults = Shapes::IntegerShape.new(name: 'MaxListObjectivesResults')
    ObjectiveArn = Shapes::StringShape.new(name: 'ObjectiveArn')
    ObjectiveFilter = Shapes::StructureShape.new(name: 'ObjectiveFilter')
    ObjectiveResourceFilter = Shapes::StructureShape.new(name: 'ObjectiveResourceFilter')
    ObjectiveResourceFilterList = Shapes::ListShape.new(name: 'ObjectiveResourceFilterList')
    ObjectiveSummary = Shapes::StructureShape.new(name: 'ObjectiveSummary')
    ObjectiveSummaryList = Shapes::ListShape.new(name: 'ObjectiveSummaryList')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    RegionCode = Shapes::StringShape.new(name: 'RegionCode')
    RegionConfiguration = Shapes::StructureShape.new(name: 'RegionConfiguration')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociatedDomainSummary.add_member(:arn, Shapes::ShapeRef.new(shape: DomainArn, location_name: "Arn"))
    AssociatedDomainSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AssociatedDomainSummary.struct_class = Types::AssociatedDomainSummary

    AssociatedObjectiveSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ObjectiveArn, location_name: "Arn"))
    AssociatedObjectiveSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AssociatedObjectiveSummary.struct_class = Types::AssociatedObjectiveSummary

    CommonControlFilter.add_member(:objectives, Shapes::ShapeRef.new(shape: ObjectiveResourceFilterList, location_name: "Objectives"))
    CommonControlFilter.struct_class = Types::CommonControlFilter

    CommonControlSummary.add_member(:arn, Shapes::ShapeRef.new(shape: CommonControlArn, required: true, location_name: "Arn"))
    CommonControlSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    CommonControlSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CommonControlSummary.add_member(:domain, Shapes::ShapeRef.new(shape: AssociatedDomainSummary, required: true, location_name: "Domain"))
    CommonControlSummary.add_member(:objective, Shapes::ShapeRef.new(shape: AssociatedObjectiveSummary, required: true, location_name: "Objective"))
    CommonControlSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    CommonControlSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdateTime"))
    CommonControlSummary.struct_class = Types::CommonControlSummary

    CommonControlSummaryList.member = Shapes::ShapeRef.new(shape: CommonControlSummary)

    ControlParameter.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ControlParameter.struct_class = Types::ControlParameter

    ControlParameters.member = Shapes::ShapeRef.new(shape: ControlParameter)

    ControlSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ControlArn, required: true, location_name: "Arn"))
    ControlSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ControlSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    ControlSummary.struct_class = Types::ControlSummary

    Controls.member = Shapes::ShapeRef.new(shape: ControlSummary)

    DeployableRegions.member = Shapes::ShapeRef.new(shape: RegionCode)

    DomainResourceFilter.add_member(:arn, Shapes::ShapeRef.new(shape: DomainArn, location_name: "Arn"))
    DomainResourceFilter.struct_class = Types::DomainResourceFilter

    DomainResourceFilterList.member = Shapes::ShapeRef.new(shape: DomainResourceFilter)

    DomainSummary.add_member(:arn, Shapes::ShapeRef.new(shape: DomainArn, required: true, location_name: "Arn"))
    DomainSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    DomainSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    DomainSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    DomainSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdateTime"))
    DomainSummary.struct_class = Types::DomainSummary

    DomainSummaryList.member = Shapes::ShapeRef.new(shape: DomainSummary)

    GetControlRequest.add_member(:control_arn, Shapes::ShapeRef.new(shape: ControlArn, required: true, location_name: "ControlArn"))
    GetControlRequest.struct_class = Types::GetControlRequest

    GetControlResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ControlArn, required: true, location_name: "Arn"))
    GetControlResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    GetControlResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    GetControlResponse.add_member(:behavior, Shapes::ShapeRef.new(shape: ControlBehavior, required: true, location_name: "Behavior"))
    GetControlResponse.add_member(:region_configuration, Shapes::ShapeRef.new(shape: RegionConfiguration, required: true, location_name: "RegionConfiguration"))
    GetControlResponse.add_member(:implementation, Shapes::ShapeRef.new(shape: ImplementationDetails, location_name: "Implementation"))
    GetControlResponse.add_member(:parameters, Shapes::ShapeRef.new(shape: ControlParameters, location_name: "Parameters"))
    GetControlResponse.struct_class = Types::GetControlResponse

    ImplementationDetails.add_member(:type, Shapes::ShapeRef.new(shape: ImplementationType, required: true, location_name: "Type"))
    ImplementationDetails.struct_class = Types::ImplementationDetails

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListCommonControlsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxListCommonControlsResults, location: "querystring", location_name: "maxResults"))
    ListCommonControlsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListCommonControlsRequest.add_member(:common_control_filter, Shapes::ShapeRef.new(shape: CommonControlFilter, location_name: "CommonControlFilter"))
    ListCommonControlsRequest.struct_class = Types::ListCommonControlsRequest

    ListCommonControlsResponse.add_member(:common_controls, Shapes::ShapeRef.new(shape: CommonControlSummaryList, required: true, location_name: "CommonControls"))
    ListCommonControlsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListCommonControlsResponse.struct_class = Types::ListCommonControlsResponse

    ListControlsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListControlsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxListControlsResults, location: "querystring", location_name: "maxResults"))
    ListControlsRequest.struct_class = Types::ListControlsRequest

    ListControlsResponse.add_member(:controls, Shapes::ShapeRef.new(shape: Controls, required: true, location_name: "Controls"))
    ListControlsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListControlsResponse.struct_class = Types::ListControlsResponse

    ListDomainsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxListDomainsResults, location: "querystring", location_name: "maxResults"))
    ListDomainsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDomainsRequest.struct_class = Types::ListDomainsRequest

    ListDomainsResponse.add_member(:domains, Shapes::ShapeRef.new(shape: DomainSummaryList, required: true, location_name: "Domains"))
    ListDomainsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDomainsResponse.struct_class = Types::ListDomainsResponse

    ListObjectivesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxListObjectivesResults, location: "querystring", location_name: "maxResults"))
    ListObjectivesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListObjectivesRequest.add_member(:objective_filter, Shapes::ShapeRef.new(shape: ObjectiveFilter, location_name: "ObjectiveFilter"))
    ListObjectivesRequest.struct_class = Types::ListObjectivesRequest

    ListObjectivesResponse.add_member(:objectives, Shapes::ShapeRef.new(shape: ObjectiveSummaryList, required: true, location_name: "Objectives"))
    ListObjectivesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListObjectivesResponse.struct_class = Types::ListObjectivesResponse

    ObjectiveFilter.add_member(:domains, Shapes::ShapeRef.new(shape: DomainResourceFilterList, location_name: "Domains"))
    ObjectiveFilter.struct_class = Types::ObjectiveFilter

    ObjectiveResourceFilter.add_member(:arn, Shapes::ShapeRef.new(shape: ObjectiveArn, location_name: "Arn"))
    ObjectiveResourceFilter.struct_class = Types::ObjectiveResourceFilter

    ObjectiveResourceFilterList.member = Shapes::ShapeRef.new(shape: ObjectiveResourceFilter)

    ObjectiveSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ObjectiveArn, required: true, location_name: "Arn"))
    ObjectiveSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ObjectiveSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    ObjectiveSummary.add_member(:domain, Shapes::ShapeRef.new(shape: AssociatedDomainSummary, required: true, location_name: "Domain"))
    ObjectiveSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    ObjectiveSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdateTime"))
    ObjectiveSummary.struct_class = Types::ObjectiveSummary

    ObjectiveSummaryList.member = Shapes::ShapeRef.new(shape: ObjectiveSummary)

    RegionConfiguration.add_member(:scope, Shapes::ShapeRef.new(shape: ControlScope, required: true, location_name: "Scope"))
    RegionConfiguration.add_member(:deployable_regions, Shapes::ShapeRef.new(shape: DeployableRegions, location_name: "DeployableRegions"))
    RegionConfiguration.struct_class = Types::RegionConfiguration

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "controlcatalog",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Control Catalog",
        "serviceId" => "ControlCatalog",
        "signatureVersion" => "v4",
        "signingName" => "controlcatalog",
        "uid" => "controlcatalog-2018-05-10",
      }

      api.add_operation(:get_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetControl"
        o.http_method = "POST"
        o.http_request_uri = "/get-control"
        o.input = Shapes::ShapeRef.new(shape: GetControlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetControlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_common_controls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCommonControls"
        o.http_method = "POST"
        o.http_request_uri = "/common-controls"
        o.input = Shapes::ShapeRef.new(shape: ListCommonControlsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCommonControlsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_controls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListControls"
        o.http_method = "POST"
        o.http_request_uri = "/list-controls"
        o.input = Shapes::ShapeRef.new(shape: ListControlsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListControlsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomains"
        o.http_method = "POST"
        o.http_request_uri = "/domains"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_objectives, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListObjectives"
        o.http_method = "POST"
        o.http_request_uri = "/objectives"
        o.input = Shapes::ShapeRef.new(shape: ListObjectivesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListObjectivesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end

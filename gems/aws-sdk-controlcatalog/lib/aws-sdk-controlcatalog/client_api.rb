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
    DomainArn = Shapes::StringShape.new(name: 'DomainArn')
    DomainResourceFilter = Shapes::StructureShape.new(name: 'DomainResourceFilter')
    DomainResourceFilterList = Shapes::ListShape.new(name: 'DomainResourceFilterList')
    DomainSummary = Shapes::StructureShape.new(name: 'DomainSummary')
    DomainSummaryList = Shapes::ListShape.new(name: 'DomainSummaryList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListCommonControlsRequest = Shapes::StructureShape.new(name: 'ListCommonControlsRequest')
    ListCommonControlsResponse = Shapes::StructureShape.new(name: 'ListCommonControlsResponse')
    ListDomainsRequest = Shapes::StructureShape.new(name: 'ListDomainsRequest')
    ListDomainsResponse = Shapes::StructureShape.new(name: 'ListDomainsResponse')
    ListObjectivesRequest = Shapes::StructureShape.new(name: 'ListObjectivesRequest')
    ListObjectivesResponse = Shapes::StructureShape.new(name: 'ListObjectivesResponse')
    MaxListCommonControlsResults = Shapes::IntegerShape.new(name: 'MaxListCommonControlsResults')
    MaxListDomainsResults = Shapes::IntegerShape.new(name: 'MaxListDomainsResults')
    MaxListObjectivesResults = Shapes::IntegerShape.new(name: 'MaxListObjectivesResults')
    ObjectiveArn = Shapes::StringShape.new(name: 'ObjectiveArn')
    ObjectiveFilter = Shapes::StructureShape.new(name: 'ObjectiveFilter')
    ObjectiveResourceFilter = Shapes::StructureShape.new(name: 'ObjectiveResourceFilter')
    ObjectiveResourceFilterList = Shapes::ListShape.new(name: 'ObjectiveResourceFilterList')
    ObjectiveSummary = Shapes::StructureShape.new(name: 'ObjectiveSummary')
    ObjectiveSummaryList = Shapes::ListShape.new(name: 'ObjectiveSummaryList')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
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
    CommonControlSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    CommonControlSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CommonControlSummary.add_member(:domain, Shapes::ShapeRef.new(shape: AssociatedDomainSummary, required: true, location_name: "Domain"))
    CommonControlSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdateTime"))
    CommonControlSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    CommonControlSummary.add_member(:objective, Shapes::ShapeRef.new(shape: AssociatedObjectiveSummary, required: true, location_name: "Objective"))
    CommonControlSummary.struct_class = Types::CommonControlSummary

    CommonControlSummaryList.member = Shapes::ShapeRef.new(shape: CommonControlSummary)

    DomainResourceFilter.add_member(:arn, Shapes::ShapeRef.new(shape: DomainArn, location_name: "Arn"))
    DomainResourceFilter.struct_class = Types::DomainResourceFilter

    DomainResourceFilterList.member = Shapes::ShapeRef.new(shape: DomainResourceFilter)

    DomainSummary.add_member(:arn, Shapes::ShapeRef.new(shape: DomainArn, required: true, location_name: "Arn"))
    DomainSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    DomainSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    DomainSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdateTime"))
    DomainSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    DomainSummary.struct_class = Types::DomainSummary

    DomainSummaryList.member = Shapes::ShapeRef.new(shape: DomainSummary)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListCommonControlsRequest.add_member(:common_control_filter, Shapes::ShapeRef.new(shape: CommonControlFilter, location_name: "CommonControlFilter"))
    ListCommonControlsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxListCommonControlsResults, location: "querystring", location_name: "maxResults"))
    ListCommonControlsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListCommonControlsRequest.struct_class = Types::ListCommonControlsRequest

    ListCommonControlsResponse.add_member(:common_controls, Shapes::ShapeRef.new(shape: CommonControlSummaryList, required: true, location_name: "CommonControls"))
    ListCommonControlsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListCommonControlsResponse.struct_class = Types::ListCommonControlsResponse

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

    ListObjectivesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListObjectivesResponse.add_member(:objectives, Shapes::ShapeRef.new(shape: ObjectiveSummaryList, required: true, location_name: "Objectives"))
    ListObjectivesResponse.struct_class = Types::ListObjectivesResponse

    ObjectiveFilter.add_member(:domains, Shapes::ShapeRef.new(shape: DomainResourceFilterList, location_name: "Domains"))
    ObjectiveFilter.struct_class = Types::ObjectiveFilter

    ObjectiveResourceFilter.add_member(:arn, Shapes::ShapeRef.new(shape: ObjectiveArn, location_name: "Arn"))
    ObjectiveResourceFilter.struct_class = Types::ObjectiveResourceFilter

    ObjectiveResourceFilterList.member = Shapes::ShapeRef.new(shape: ObjectiveResourceFilter)

    ObjectiveSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ObjectiveArn, required: true, location_name: "Arn"))
    ObjectiveSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    ObjectiveSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    ObjectiveSummary.add_member(:domain, Shapes::ShapeRef.new(shape: AssociatedDomainSummary, required: true, location_name: "Domain"))
    ObjectiveSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdateTime"))
    ObjectiveSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ObjectiveSummary.struct_class = Types::ObjectiveSummary

    ObjectiveSummaryList.member = Shapes::ShapeRef.new(shape: ObjectiveSummary)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "endpointPrefix" => "controlcatalog",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Control Catalog",
        "serviceId" => "ControlCatalog",
        "signatureVersion" => "v4",
        "signingName" => "controlcatalog",
        "uid" => "controlcatalog-2018-05-10",
      }

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

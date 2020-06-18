# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Outposts
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    AvailabilityZoneId = Shapes::StringShape.new(name: 'AvailabilityZoneId')
    CreateOutpostInput = Shapes::StructureShape.new(name: 'CreateOutpostInput')
    CreateOutpostOutput = Shapes::StructureShape.new(name: 'CreateOutpostOutput')
    DeleteOutpostInput = Shapes::StructureShape.new(name: 'DeleteOutpostInput')
    DeleteOutpostOutput = Shapes::StructureShape.new(name: 'DeleteOutpostOutput')
    DeleteSiteInput = Shapes::StructureShape.new(name: 'DeleteSiteInput')
    DeleteSiteOutput = Shapes::StructureShape.new(name: 'DeleteSiteOutput')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetOutpostInput = Shapes::StructureShape.new(name: 'GetOutpostInput')
    GetOutpostInstanceTypesInput = Shapes::StructureShape.new(name: 'GetOutpostInstanceTypesInput')
    GetOutpostInstanceTypesOutput = Shapes::StructureShape.new(name: 'GetOutpostInstanceTypesOutput')
    GetOutpostOutput = Shapes::StructureShape.new(name: 'GetOutpostOutput')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InstanceTypeItem = Shapes::StructureShape.new(name: 'InstanceTypeItem')
    InstanceTypeListDefinition = Shapes::ListShape.new(name: 'InstanceTypeListDefinition')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LifeCycleStatus = Shapes::StringShape.new(name: 'LifeCycleStatus')
    ListOutpostsInput = Shapes::StructureShape.new(name: 'ListOutpostsInput')
    ListOutpostsOutput = Shapes::StructureShape.new(name: 'ListOutpostsOutput')
    ListSitesInput = Shapes::StructureShape.new(name: 'ListSitesInput')
    ListSitesOutput = Shapes::StructureShape.new(name: 'ListSitesOutput')
    MaxResults1000 = Shapes::IntegerShape.new(name: 'MaxResults1000')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Outpost = Shapes::StructureShape.new(name: 'Outpost')
    OutpostArn = Shapes::StringShape.new(name: 'OutpostArn')
    OutpostDescription = Shapes::StringShape.new(name: 'OutpostDescription')
    OutpostId = Shapes::StringShape.new(name: 'OutpostId')
    OutpostName = Shapes::StringShape.new(name: 'OutpostName')
    OwnerId = Shapes::StringShape.new(name: 'OwnerId')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Site = Shapes::StructureShape.new(name: 'Site')
    SiteDescription = Shapes::StringShape.new(name: 'SiteDescription')
    SiteId = Shapes::StringShape.new(name: 'SiteId')
    SiteName = Shapes::StringShape.new(name: 'SiteName')
    Token = Shapes::StringShape.new(name: 'Token')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    outpostListDefinition = Shapes::ListShape.new(name: 'outpostListDefinition')
    siteListDefinition = Shapes::ListShape.new(name: 'siteListDefinition')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CreateOutpostInput.add_member(:name, Shapes::ShapeRef.new(shape: OutpostName, location_name: "Name"))
    CreateOutpostInput.add_member(:description, Shapes::ShapeRef.new(shape: OutpostDescription, location_name: "Description"))
    CreateOutpostInput.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, required: true, location_name: "SiteId"))
    CreateOutpostInput.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    CreateOutpostInput.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "AvailabilityZoneId"))
    CreateOutpostInput.struct_class = Types::CreateOutpostInput

    CreateOutpostOutput.add_member(:outpost, Shapes::ShapeRef.new(shape: Outpost, location_name: "Outpost"))
    CreateOutpostOutput.struct_class = Types::CreateOutpostOutput

    DeleteOutpostInput.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, required: true, location: "uri", location_name: "OutpostId"))
    DeleteOutpostInput.struct_class = Types::DeleteOutpostInput

    DeleteOutpostOutput.struct_class = Types::DeleteOutpostOutput

    DeleteSiteInput.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, required: true, location: "uri", location_name: "SiteId"))
    DeleteSiteInput.struct_class = Types::DeleteSiteInput

    DeleteSiteOutput.struct_class = Types::DeleteSiteOutput

    GetOutpostInput.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, required: true, location: "uri", location_name: "OutpostId"))
    GetOutpostInput.struct_class = Types::GetOutpostInput

    GetOutpostInstanceTypesInput.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, required: true, location: "uri", location_name: "OutpostId"))
    GetOutpostInstanceTypesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    GetOutpostInstanceTypesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults1000, location: "querystring", location_name: "MaxResults"))
    GetOutpostInstanceTypesInput.struct_class = Types::GetOutpostInstanceTypesInput

    GetOutpostInstanceTypesOutput.add_member(:instance_types, Shapes::ShapeRef.new(shape: InstanceTypeListDefinition, location_name: "InstanceTypes"))
    GetOutpostInstanceTypesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetOutpostInstanceTypesOutput.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, location_name: "OutpostId"))
    GetOutpostInstanceTypesOutput.add_member(:outpost_arn, Shapes::ShapeRef.new(shape: OutpostArn, location_name: "OutpostArn"))
    GetOutpostInstanceTypesOutput.struct_class = Types::GetOutpostInstanceTypesOutput

    GetOutpostOutput.add_member(:outpost, Shapes::ShapeRef.new(shape: Outpost, location_name: "Outpost"))
    GetOutpostOutput.struct_class = Types::GetOutpostOutput

    InstanceTypeItem.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    InstanceTypeItem.struct_class = Types::InstanceTypeItem

    InstanceTypeListDefinition.member = Shapes::ShapeRef.new(shape: InstanceTypeItem)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListOutpostsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListOutpostsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults1000, location: "querystring", location_name: "MaxResults"))
    ListOutpostsInput.struct_class = Types::ListOutpostsInput

    ListOutpostsOutput.add_member(:outposts, Shapes::ShapeRef.new(shape: outpostListDefinition, location_name: "Outposts"))
    ListOutpostsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListOutpostsOutput.struct_class = Types::ListOutpostsOutput

    ListSitesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListSitesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults1000, location: "querystring", location_name: "MaxResults"))
    ListSitesInput.struct_class = Types::ListSitesInput

    ListSitesOutput.add_member(:sites, Shapes::ShapeRef.new(shape: siteListDefinition, location_name: "Sites"))
    ListSitesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListSitesOutput.struct_class = Types::ListSitesOutput

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    Outpost.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, location_name: "OutpostId"))
    Outpost.add_member(:owner_id, Shapes::ShapeRef.new(shape: OwnerId, location_name: "OwnerId"))
    Outpost.add_member(:outpost_arn, Shapes::ShapeRef.new(shape: OutpostArn, location_name: "OutpostArn"))
    Outpost.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, location_name: "SiteId"))
    Outpost.add_member(:name, Shapes::ShapeRef.new(shape: OutpostName, location_name: "Name"))
    Outpost.add_member(:description, Shapes::ShapeRef.new(shape: OutpostDescription, location_name: "Description"))
    Outpost.add_member(:life_cycle_status, Shapes::ShapeRef.new(shape: LifeCycleStatus, location_name: "LifeCycleStatus"))
    Outpost.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    Outpost.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "AvailabilityZoneId"))
    Outpost.struct_class = Types::Outpost

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Site.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, location_name: "SiteId"))
    Site.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    Site.add_member(:name, Shapes::ShapeRef.new(shape: SiteName, location_name: "Name"))
    Site.add_member(:description, Shapes::ShapeRef.new(shape: SiteDescription, location_name: "Description"))
    Site.struct_class = Types::Site

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    outpostListDefinition.member = Shapes::ShapeRef.new(shape: Outpost)

    siteListDefinition.member = Shapes::ShapeRef.new(shape: Site)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-12-03"

      api.metadata = {
        "apiVersion" => "2019-12-03",
        "endpointPrefix" => "outposts",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Outposts",
        "serviceFullName" => "AWS Outposts",
        "serviceId" => "Outposts",
        "signatureVersion" => "v4",
        "signingName" => "outposts",
        "uid" => "outposts-2019-12-03",
      }

      api.add_operation(:create_outpost, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOutpost"
        o.http_method = "POST"
        o.http_request_uri = "/outposts"
        o.input = Shapes::ShapeRef.new(shape: CreateOutpostInput)
        o.output = Shapes::ShapeRef.new(shape: CreateOutpostOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_outpost, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOutpost"
        o.http_method = "DELETE"
        o.http_request_uri = "/outposts/{OutpostId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteOutpostInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteOutpostOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSite"
        o.http_method = "DELETE"
        o.http_request_uri = "/sites/{SiteId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSiteInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteSiteOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_outpost, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOutpost"
        o.http_method = "GET"
        o.http_request_uri = "/outposts/{OutpostId}"
        o.input = Shapes::ShapeRef.new(shape: GetOutpostInput)
        o.output = Shapes::ShapeRef.new(shape: GetOutpostOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_outpost_instance_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOutpostInstanceTypes"
        o.http_method = "GET"
        o.http_request_uri = "/outposts/{OutpostId}/instanceTypes"
        o.input = Shapes::ShapeRef.new(shape: GetOutpostInstanceTypesInput)
        o.output = Shapes::ShapeRef.new(shape: GetOutpostInstanceTypesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_outposts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOutposts"
        o.http_method = "GET"
        o.http_request_uri = "/outposts"
        o.input = Shapes::ShapeRef.new(shape: ListOutpostsInput)
        o.output = Shapes::ShapeRef.new(shape: ListOutpostsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sites, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSites"
        o.http_method = "GET"
        o.http_request_uri = "/sites"
        o.input = Shapes::ShapeRef.new(shape: ListSitesInput)
        o.output = Shapes::ShapeRef.new(shape: ListSitesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

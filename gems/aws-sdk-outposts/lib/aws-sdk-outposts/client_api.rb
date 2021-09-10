# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Outposts
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    AvailabilityZoneId = Shapes::StringShape.new(name: 'AvailabilityZoneId')
    AvailabilityZoneIdList = Shapes::ListShape.new(name: 'AvailabilityZoneIdList')
    AvailabilityZoneList = Shapes::ListShape.new(name: 'AvailabilityZoneList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateOrderInput = Shapes::StructureShape.new(name: 'CreateOrderInput')
    CreateOrderOutput = Shapes::StructureShape.new(name: 'CreateOrderOutput')
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
    ISO8601Timestamp = Shapes::TimestampShape.new(name: 'ISO8601Timestamp')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InstanceTypeItem = Shapes::StructureShape.new(name: 'InstanceTypeItem')
    InstanceTypeListDefinition = Shapes::ListShape.new(name: 'InstanceTypeListDefinition')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LifeCycleStatus = Shapes::StringShape.new(name: 'LifeCycleStatus')
    LifeCycleStatusList = Shapes::ListShape.new(name: 'LifeCycleStatusList')
    LineItem = Shapes::StructureShape.new(name: 'LineItem')
    LineItemId = Shapes::StringShape.new(name: 'LineItemId')
    LineItemListDefinition = Shapes::ListShape.new(name: 'LineItemListDefinition')
    LineItemQuantity = Shapes::IntegerShape.new(name: 'LineItemQuantity')
    LineItemRequest = Shapes::StructureShape.new(name: 'LineItemRequest')
    LineItemRequestListDefinition = Shapes::ListShape.new(name: 'LineItemRequestListDefinition')
    ListOutpostsInput = Shapes::StructureShape.new(name: 'ListOutpostsInput')
    ListOutpostsOutput = Shapes::StructureShape.new(name: 'ListOutpostsOutput')
    ListSitesInput = Shapes::StructureShape.new(name: 'ListSitesInput')
    ListSitesOutput = Shapes::StructureShape.new(name: 'ListSitesOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults1000 = Shapes::IntegerShape.new(name: 'MaxResults1000')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Order = Shapes::StructureShape.new(name: 'Order')
    OrderId = Shapes::StringShape.new(name: 'OrderId')
    OrderStatus = Shapes::StringShape.new(name: 'OrderStatus')
    Outpost = Shapes::StructureShape.new(name: 'Outpost')
    OutpostArn = Shapes::StringShape.new(name: 'OutpostArn')
    OutpostDescription = Shapes::StringShape.new(name: 'OutpostDescription')
    OutpostId = Shapes::StringShape.new(name: 'OutpostId')
    OutpostIdOnly = Shapes::StringShape.new(name: 'OutpostIdOnly')
    OutpostIdentifier = Shapes::StringShape.new(name: 'OutpostIdentifier')
    OutpostName = Shapes::StringShape.new(name: 'OutpostName')
    OwnerId = Shapes::StringShape.new(name: 'OwnerId')
    PaymentOption = Shapes::StringShape.new(name: 'PaymentOption')
    PaymentTerm = Shapes::StringShape.new(name: 'PaymentTerm')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Site = Shapes::StructureShape.new(name: 'Site')
    SiteArn = Shapes::StringShape.new(name: 'SiteArn')
    SiteDescription = Shapes::StringShape.new(name: 'SiteDescription')
    SiteId = Shapes::StringShape.new(name: 'SiteId')
    SiteName = Shapes::StringShape.new(name: 'SiteName')
    SkuCode = Shapes::StringShape.new(name: 'SkuCode')
    Status = Shapes::StringShape.new(name: 'Status')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Token = Shapes::StringShape.new(name: 'Token')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    outpostListDefinition = Shapes::ListShape.new(name: 'outpostListDefinition')
    siteListDefinition = Shapes::ListShape.new(name: 'siteListDefinition')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AvailabilityZoneIdList.member = Shapes::ShapeRef.new(shape: AvailabilityZoneId)

    AvailabilityZoneList.member = Shapes::ShapeRef.new(shape: AvailabilityZone)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateOrderInput.add_member(:outpost_identifier, Shapes::ShapeRef.new(shape: OutpostIdentifier, required: true, location_name: "OutpostIdentifier"))
    CreateOrderInput.add_member(:line_items, Shapes::ShapeRef.new(shape: LineItemRequestListDefinition, required: true, location_name: "LineItems"))
    CreateOrderInput.add_member(:payment_option, Shapes::ShapeRef.new(shape: PaymentOption, required: true, location_name: "PaymentOption"))
    CreateOrderInput.add_member(:payment_term, Shapes::ShapeRef.new(shape: PaymentTerm, location_name: "PaymentTerm"))
    CreateOrderInput.struct_class = Types::CreateOrderInput

    CreateOrderOutput.add_member(:order, Shapes::ShapeRef.new(shape: Order, location_name: "Order"))
    CreateOrderOutput.struct_class = Types::CreateOrderOutput

    CreateOutpostInput.add_member(:name, Shapes::ShapeRef.new(shape: OutpostName, required: true, location_name: "Name"))
    CreateOutpostInput.add_member(:description, Shapes::ShapeRef.new(shape: OutpostDescription, location_name: "Description"))
    CreateOutpostInput.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, required: true, location_name: "SiteId"))
    CreateOutpostInput.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    CreateOutpostInput.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "AvailabilityZoneId"))
    CreateOutpostInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
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

    LifeCycleStatusList.member = Shapes::ShapeRef.new(shape: LifeCycleStatus)

    LineItem.add_member(:catalog_item_id, Shapes::ShapeRef.new(shape: SkuCode, location_name: "CatalogItemId"))
    LineItem.add_member(:line_item_id, Shapes::ShapeRef.new(shape: LineItemId, location_name: "LineItemId"))
    LineItem.add_member(:quantity, Shapes::ShapeRef.new(shape: LineItemQuantity, location_name: "Quantity"))
    LineItem.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    LineItem.struct_class = Types::LineItem

    LineItemListDefinition.member = Shapes::ShapeRef.new(shape: LineItem)

    LineItemRequest.add_member(:catalog_item_id, Shapes::ShapeRef.new(shape: SkuCode, location_name: "CatalogItemId"))
    LineItemRequest.add_member(:quantity, Shapes::ShapeRef.new(shape: LineItemQuantity, location_name: "Quantity"))
    LineItemRequest.struct_class = Types::LineItemRequest

    LineItemRequestListDefinition.member = Shapes::ShapeRef.new(shape: LineItemRequest)

    ListOutpostsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListOutpostsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults1000, location: "querystring", location_name: "MaxResults"))
    ListOutpostsInput.add_member(:life_cycle_status_filter, Shapes::ShapeRef.new(shape: LifeCycleStatusList, location: "querystring", location_name: "LifeCycleStatusFilter"))
    ListOutpostsInput.add_member(:availability_zone_filter, Shapes::ShapeRef.new(shape: AvailabilityZoneList, location: "querystring", location_name: "AvailabilityZoneFilter"))
    ListOutpostsInput.add_member(:availability_zone_id_filter, Shapes::ShapeRef.new(shape: AvailabilityZoneIdList, location: "querystring", location_name: "AvailabilityZoneIdFilter"))
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

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    Order.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostIdOnly, location_name: "OutpostId"))
    Order.add_member(:order_id, Shapes::ShapeRef.new(shape: OrderId, location_name: "OrderId"))
    Order.add_member(:status, Shapes::ShapeRef.new(shape: OrderStatus, location_name: "Status"))
    Order.add_member(:line_items, Shapes::ShapeRef.new(shape: LineItemListDefinition, location_name: "LineItems"))
    Order.add_member(:payment_option, Shapes::ShapeRef.new(shape: PaymentOption, location_name: "PaymentOption"))
    Order.add_member(:order_submission_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "OrderSubmissionDate"))
    Order.add_member(:order_fulfilled_date, Shapes::ShapeRef.new(shape: ISO8601Timestamp, location_name: "OrderFulfilledDate"))
    Order.struct_class = Types::Order

    Outpost.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, location_name: "OutpostId"))
    Outpost.add_member(:owner_id, Shapes::ShapeRef.new(shape: OwnerId, location_name: "OwnerId"))
    Outpost.add_member(:outpost_arn, Shapes::ShapeRef.new(shape: OutpostArn, location_name: "OutpostArn"))
    Outpost.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, location_name: "SiteId"))
    Outpost.add_member(:name, Shapes::ShapeRef.new(shape: OutpostName, location_name: "Name"))
    Outpost.add_member(:description, Shapes::ShapeRef.new(shape: OutpostDescription, location_name: "Description"))
    Outpost.add_member(:life_cycle_status, Shapes::ShapeRef.new(shape: LifeCycleStatus, location_name: "LifeCycleStatus"))
    Outpost.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    Outpost.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "AvailabilityZoneId"))
    Outpost.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Outpost.add_member(:site_arn, Shapes::ShapeRef.new(shape: SiteArn, location_name: "SiteArn"))
    Outpost.struct_class = Types::Outpost

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Site.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, location_name: "SiteId"))
    Site.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    Site.add_member(:name, Shapes::ShapeRef.new(shape: SiteName, location_name: "Name"))
    Site.add_member(:description, Shapes::ShapeRef.new(shape: SiteDescription, location_name: "Description"))
    Site.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Site.add_member(:site_arn, Shapes::ShapeRef.new(shape: SiteArn, location_name: "SiteArn"))
    Site.struct_class = Types::Site

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

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

      api.add_operation(:create_order, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOrder"
        o.http_method = "POST"
        o.http_request_uri = "/orders"
        o.input = Shapes::ShapeRef.new(shape: CreateOrderInput)
        o.output = Shapes::ShapeRef.new(shape: CreateOrderOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_outpost, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOutpost"
        o.http_method = "POST"
        o.http_request_uri = "/outposts"
        o.input = Shapes::ShapeRef.new(shape: CreateOutpostInput)
        o.output = Shapes::ShapeRef.new(shape: CreateOutpostOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)
    end

  end
end

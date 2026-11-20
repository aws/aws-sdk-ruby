# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::APIPortal
  # @api private
  module ClientApi

    include Seahorse::Model

    ACMManaged = Shapes::StructureShape.new(name: 'ACMManaged')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    ApiEndpoint = Shapes::StringShape.new(name: 'ApiEndpoint')
    ApiId = Shapes::StructureShape.new(name: 'ApiId')
    ApiInventoryFilters = Shapes::StructureShape.new(name: 'ApiInventoryFilters')
    ApiInventoryItem = Shapes::StructureShape.new(name: 'ApiInventoryItem')
    ApiInventoryItemDetail = Shapes::StructureShape.new(name: 'ApiInventoryItemDetail')
    ApiInventoryItemList = Shapes::ListShape.new(name: 'ApiInventoryItemList')
    ApiPageBody = Shapes::StringShape.new(name: 'ApiPageBody')
    ApiPageDisplayContent = Shapes::UnionShape.new(name: 'ApiPageDisplayContent')
    ApiPageDisplayContentResponse = Shapes::StructureShape.new(name: 'ApiPageDisplayContentResponse')
    ApiSelectionConfiguration = Shapes::StructureShape.new(name: 'ApiSelectionConfiguration')
    ApiSelectionMode = Shapes::StringShape.new(name: 'ApiSelectionMode')
    ApiSignature = Shapes::StructureShape.new(name: 'ApiSignature')
    ApiSignatureHostnameString = Shapes::StringShape.new(name: 'ApiSignatureHostnameString')
    ApiSignaturePathString = Shapes::StringShape.new(name: 'ApiSignaturePathString')
    ApiSignaturePortInteger = Shapes::IntegerShape.new(name: 'ApiSignaturePortInteger')
    AppClientId = Shapes::StringShape.new(name: 'AppClientId')
    AssociateManagedApisRequest = Shapes::StructureShape.new(name: 'AssociateManagedApisRequest')
    AssociateManagedApisResponse = Shapes::StructureShape.new(name: 'AssociateManagedApisResponse')
    Authorization = Shapes::StructureShape.new(name: 'Authorization')
    AuthorizationConfig = Shapes::UnionShape.new(name: 'AuthorizationConfig')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CertificateArn = Shapes::StringShape.new(name: 'CertificateArn')
    Classification = Shapes::StringShape.new(name: 'Classification')
    CognitoConfig = Shapes::StructureShape.new(name: 'CognitoConfig')
    Color = Shapes::StringShape.new(name: 'Color')
    Confidence = Shapes::StringShape.new(name: 'Confidence')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Contents = Shapes::ListShape.new(name: 'Contents')
    CreateManagedApiRequest = Shapes::StructureShape.new(name: 'CreateManagedApiRequest')
    CreateManagedApiResponse = Shapes::StructureShape.new(name: 'CreateManagedApiResponse')
    CreatePortalPreviewRequest = Shapes::StructureShape.new(name: 'CreatePortalPreviewRequest')
    CreatePortalRequest = Shapes::StructureShape.new(name: 'CreatePortalRequest')
    CreatePortalResponse = Shapes::StructureShape.new(name: 'CreatePortalResponse')
    CreateProductApiPageRequest = Shapes::StructureShape.new(name: 'CreateProductApiPageRequest')
    CreateProductApiPageResponse = Shapes::StructureShape.new(name: 'CreateProductApiPageResponse')
    CreateProductPageRequest = Shapes::StructureShape.new(name: 'CreateProductPageRequest')
    CreateProductPageResponse = Shapes::StructureShape.new(name: 'CreateProductPageResponse')
    CreateProductRequest = Shapes::StructureShape.new(name: 'CreateProductRequest')
    CreateProductResponse = Shapes::StructureShape.new(name: 'CreateProductResponse')
    CustomColors = Shapes::StructureShape.new(name: 'CustomColors')
    DeleteDiscoveryConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteDiscoveryConfigurationRequest')
    DeleteManagedApiRequest = Shapes::StructureShape.new(name: 'DeleteManagedApiRequest')
    DeleteManagedApiResponse = Shapes::StructureShape.new(name: 'DeleteManagedApiResponse')
    DeleteOrganizationDiscoveryConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteOrganizationDiscoveryConfigurationRequest')
    DeletePortalRequest = Shapes::StructureShape.new(name: 'DeletePortalRequest')
    DeleteProductApiPageRequest = Shapes::StructureShape.new(name: 'DeleteProductApiPageRequest')
    DeleteProductPageRequest = Shapes::StructureShape.new(name: 'DeleteProductPageRequest')
    DeleteProductRequest = Shapes::StructureShape.new(name: 'DeleteProductRequest')
    DeleteProductSharingPolicyRequest = Shapes::StructureShape.new(name: 'DeleteProductSharingPolicyRequest')
    DesiredPublishStatus = Shapes::StringShape.new(name: 'DesiredPublishStatus')
    DisassociateManagedApisRequest = Shapes::StructureShape.new(name: 'DisassociateManagedApisRequest')
    DisassociateManagedApisResponse = Shapes::StructureShape.new(name: 'DisassociateManagedApisResponse')
    DiscoveryConfigurationArn = Shapes::StringShape.new(name: 'DiscoveryConfigurationArn')
    DiscoveryConfigurationData = Shapes::StructureShape.new(name: 'DiscoveryConfigurationData')
    DiscoveryConfigurationStatus = Shapes::StringShape.new(name: 'DiscoveryConfigurationStatus')
    DiscoveryExclusionFilters = Shapes::StructureShape.new(name: 'DiscoveryExclusionFilters')
    DiscoveryFailureReason = Shapes::StringShape.new(name: 'DiscoveryFailureReason')
    DiscoveryFeature = Shapes::StringShape.new(name: 'DiscoveryFeature')
    DiscoveryFeatureList = Shapes::ListShape.new(name: 'DiscoveryFeatureList')
    DiscoveryInclusionFilters = Shapes::StructureShape.new(name: 'DiscoveryInclusionFilters')
    DiscoverySource = Shapes::StringShape.new(name: 'DiscoverySource')
    DiscoverySourceList = Shapes::ListShape.new(name: 'DiscoverySourceList')
    DiscoveryStatus = Shapes::StructureShape.new(name: 'DiscoveryStatus')
    DiscoveryStatusList = Shapes::ListShape.new(name: 'DiscoveryStatusList')
    DiscoveryStatusValue = Shapes::StringShape.new(name: 'DiscoveryStatusValue')
    DisplayContent = Shapes::StructureShape.new(name: 'DisplayContent')
    DisplayContentOverrides = Shapes::StructureShape.new(name: 'DisplayContentOverrides')
    DisplayContentOverridesApiUrlString = Shapes::StringShape.new(name: 'DisplayContentOverridesApiUrlString')
    DisplayOrder = Shapes::StructureShape.new(name: 'DisplayOrder')
    EndpointConfigurationRequest = Shapes::UnionShape.new(name: 'EndpointConfigurationRequest')
    EndpointConfigurationResponse = Shapes::StructureShape.new(name: 'EndpointConfigurationResponse')
    EventId = Shapes::StringShape.new(name: 'EventId')
    EventStatus = Shapes::StringShape.new(name: 'EventStatus')
    EventType = Shapes::StringShape.new(name: 'EventType')
    FailedItemErrorCode = Shapes::StringShape.new(name: 'FailedItemErrorCode')
    FailedManagedApiItem = Shapes::StructureShape.new(name: 'FailedManagedApiItem')
    FailedManagedApiItemErrorMessageString = Shapes::StringShape.new(name: 'FailedManagedApiItemErrorMessageString')
    FailedManagedApiItemList = Shapes::ListShape.new(name: 'FailedManagedApiItemList')
    FindingReason = Shapes::StringShape.new(name: 'FindingReason')
    FineGrainedAccessControl = Shapes::StringShape.new(name: 'FineGrainedAccessControl')
    GetApiInventoryItemRequest = Shapes::StructureShape.new(name: 'GetApiInventoryItemRequest')
    GetApiInventoryItemRequestPortInteger = Shapes::IntegerShape.new(name: 'GetApiInventoryItemRequestPortInteger')
    GetApiInventoryItemResponse = Shapes::StructureShape.new(name: 'GetApiInventoryItemResponse')
    GetDiscoveryConfigurationRequest = Shapes::StructureShape.new(name: 'GetDiscoveryConfigurationRequest')
    GetDiscoveryConfigurationResponse = Shapes::StructureShape.new(name: 'GetDiscoveryConfigurationResponse')
    GetManagedApiRequest = Shapes::StructureShape.new(name: 'GetManagedApiRequest')
    GetManagedApiResponse = Shapes::StructureShape.new(name: 'GetManagedApiResponse')
    GetOrganizationDiscoveryConfigurationRequest = Shapes::StructureShape.new(name: 'GetOrganizationDiscoveryConfigurationRequest')
    GetOrganizationDiscoveryConfigurationResponse = Shapes::StructureShape.new(name: 'GetOrganizationDiscoveryConfigurationResponse')
    GetPortalRequest = Shapes::StructureShape.new(name: 'GetPortalRequest')
    GetPortalResponse = Shapes::StructureShape.new(name: 'GetPortalResponse')
    GetProductApiPageRequest = Shapes::StructureShape.new(name: 'GetProductApiPageRequest')
    GetProductApiPageResponse = Shapes::StructureShape.new(name: 'GetProductApiPageResponse')
    GetProductPageRequest = Shapes::StructureShape.new(name: 'GetProductPageRequest')
    GetProductPageResponse = Shapes::StructureShape.new(name: 'GetProductPageResponse')
    GetProductRequest = Shapes::StructureShape.new(name: 'GetProductRequest')
    GetProductResponse = Shapes::StructureShape.new(name: 'GetProductResponse')
    GetProductSharingPolicyRequest = Shapes::StructureShape.new(name: 'GetProductSharingPolicyRequest')
    GetProductSharingPolicyResponse = Shapes::StructureShape.new(name: 'GetProductSharingPolicyResponse')
    Host = Shapes::StringShape.new(name: 'Host')
    HostedZoneId = Shapes::StringShape.new(name: 'HostedZoneId')
    HttpMethod = Shapes::StringShape.new(name: 'HttpMethod')
    IdentifierParts = Shapes::StructureShape.new(name: 'IdentifierParts')
    IdentityPoolId = Shapes::StringShape.new(name: 'IdentityPoolId')
    IncludedProductArns = Shapes::ListShape.new(name: 'IncludedProductArns')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListApiInventoryItemsRequest = Shapes::StructureShape.new(name: 'ListApiInventoryItemsRequest')
    ListApiInventoryItemsResponse = Shapes::StructureShape.new(name: 'ListApiInventoryItemsResponse')
    ListDiscoveryStatusesRequest = Shapes::StructureShape.new(name: 'ListDiscoveryStatusesRequest')
    ListDiscoveryStatusesResponse = Shapes::StructureShape.new(name: 'ListDiscoveryStatusesResponse')
    ListManagedApiEventsRequest = Shapes::StructureShape.new(name: 'ListManagedApiEventsRequest')
    ListManagedApiEventsResponse = Shapes::StructureShape.new(name: 'ListManagedApiEventsResponse')
    ListManagedApisRequest = Shapes::StructureShape.new(name: 'ListManagedApisRequest')
    ListManagedApisResponse = Shapes::StructureShape.new(name: 'ListManagedApisResponse')
    ListPortalsRequest = Shapes::StructureShape.new(name: 'ListPortalsRequest')
    ListPortalsResponse = Shapes::StructureShape.new(name: 'ListPortalsResponse')
    ListProductApiPagesRequest = Shapes::StructureShape.new(name: 'ListProductApiPagesRequest')
    ListProductApiPagesResponse = Shapes::StructureShape.new(name: 'ListProductApiPagesResponse')
    ListProductPagesRequest = Shapes::StructureShape.new(name: 'ListProductPagesRequest')
    ListProductPagesResponse = Shapes::StructureShape.new(name: 'ListProductPagesResponse')
    ListProductsRequest = Shapes::StructureShape.new(name: 'ListProductsRequest')
    ListProductsResponse = Shapes::StructureShape.new(name: 'ListProductsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogoUri = Shapes::StringShape.new(name: 'LogoUri')
    ManagedApiArn = Shapes::StringShape.new(name: 'ManagedApiArn')
    ManagedApiEventMaxResults = Shapes::IntegerShape.new(name: 'ManagedApiEventMaxResults')
    ManagedApiEventSummary = Shapes::StructureShape.new(name: 'ManagedApiEventSummary')
    ManagedApiEventSummaryList = Shapes::ListShape.new(name: 'ManagedApiEventSummaryList')
    ManagedApiFinding = Shapes::StructureShape.new(name: 'ManagedApiFinding')
    ManagedApiFindingList = Shapes::ListShape.new(name: 'ManagedApiFindingList')
    ManagedApiFindingPostureIdString = Shapes::StringShape.new(name: 'ManagedApiFindingPostureIdString')
    ManagedApiId = Shapes::StringShape.new(name: 'ManagedApiId')
    ManagedApiIdList = Shapes::ListShape.new(name: 'ManagedApiIdList')
    ManagedApiList = Shapes::ListShape.new(name: 'ManagedApiList')
    ManagedApiSummary = Shapes::StructureShape.new(name: 'ManagedApiSummary')
    ManagedBy = Shapes::StringShape.new(name: 'ManagedBy')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    Method = Shapes::StringShape.new(name: 'Method')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonEmptyDiscoverySourceList = Shapes::ListShape.new(name: 'NonEmptyDiscoverySourceList')
    None = Shapes::StructureShape.new(name: 'None')
    OperationName = Shapes::StringShape.new(name: 'OperationName')
    OrgDiscoveryConfigurationArn = Shapes::StringShape.new(name: 'OrgDiscoveryConfigurationArn')
    OrganizationDiscoveryConfigurationData = Shapes::StructureShape.new(name: 'OrganizationDiscoveryConfigurationData')
    OrganizationDiscoveryFilters = Shapes::UnionShape.new(name: 'OrganizationDiscoveryFilters')
    OrganizationalUnitId = Shapes::StringShape.new(name: 'OrganizationalUnitId')
    OrganizationalUnitIdList = Shapes::ListShape.new(name: 'OrganizationalUnitIdList')
    PageBody = Shapes::StringShape.new(name: 'PageBody')
    PageTitle = Shapes::StringShape.new(name: 'PageTitle')
    Path = Shapes::StringShape.new(name: 'Path')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PortalArn = Shapes::StringShape.new(name: 'PortalArn')
    PortalContent = Shapes::StructureShape.new(name: 'PortalContent')
    PortalDescription = Shapes::StringShape.new(name: 'PortalDescription')
    PortalDomainName = Shapes::StringShape.new(name: 'PortalDomainName')
    PortalId = Shapes::StringShape.new(name: 'PortalId')
    PortalList = Shapes::ListShape.new(name: 'PortalList')
    PortalName = Shapes::StringShape.new(name: 'PortalName')
    PortalStatusException = Shapes::StructureShape.new(name: 'PortalStatusException')
    PortalStatusExceptionType = Shapes::StringShape.new(name: 'PortalStatusExceptionType')
    PortalSummary = Shapes::StructureShape.new(name: 'PortalSummary')
    PortalTheme = Shapes::StructureShape.new(name: 'PortalTheme')
    PostureStatus = Shapes::StringShape.new(name: 'PostureStatus')
    Preview = Shapes::StructureShape.new(name: 'Preview')
    PreviewStatus = Shapes::StringShape.new(name: 'PreviewStatus')
    ProductApiPageArn = Shapes::StringShape.new(name: 'ProductApiPageArn')
    ProductApiPageArnList = Shapes::ListShape.new(name: 'ProductApiPageArnList')
    ProductApiPageId = Shapes::StringShape.new(name: 'ProductApiPageId')
    ProductApiPageList = Shapes::ListShape.new(name: 'ProductApiPageList')
    ProductApiPageStatusException = Shapes::StructureShape.new(name: 'ProductApiPageStatusException')
    ProductApiPageStatusExceptionType = Shapes::StringShape.new(name: 'ProductApiPageStatusExceptionType')
    ProductApiPageSummaryNoBody = Shapes::StructureShape.new(name: 'ProductApiPageSummaryNoBody')
    ProductArn = Shapes::StringShape.new(name: 'ProductArn')
    ProductDescription = Shapes::StringShape.new(name: 'ProductDescription')
    ProductFailureReason = Shapes::StringShape.new(name: 'ProductFailureReason')
    ProductId = Shapes::StringShape.new(name: 'ProductId')
    ProductList = Shapes::ListShape.new(name: 'ProductList')
    ProductName = Shapes::StringShape.new(name: 'ProductName')
    ProductPageArn = Shapes::StringShape.new(name: 'ProductPageArn')
    ProductPageArnList = Shapes::ListShape.new(name: 'ProductPageArnList')
    ProductPageId = Shapes::StringShape.new(name: 'ProductPageId')
    ProductPageList = Shapes::ListShape.new(name: 'ProductPageList')
    ProductPageSummaryNoBody = Shapes::StructureShape.new(name: 'ProductPageSummaryNoBody')
    ProductStatus = Shapes::StringShape.new(name: 'ProductStatus')
    ProductSummary = Shapes::StructureShape.new(name: 'ProductSummary')
    PublishDescription = Shapes::StringShape.new(name: 'PublishDescription')
    PublishStatus = Shapes::StringShape.new(name: 'PublishStatus')
    PutDiscoveryConfigurationRequest = Shapes::StructureShape.new(name: 'PutDiscoveryConfigurationRequest')
    PutDiscoveryConfigurationResponse = Shapes::StructureShape.new(name: 'PutDiscoveryConfigurationResponse')
    PutOrganizationDiscoveryConfigurationRequest = Shapes::StructureShape.new(name: 'PutOrganizationDiscoveryConfigurationRequest')
    PutOrganizationDiscoveryConfigurationResponse = Shapes::StructureShape.new(name: 'PutOrganizationDiscoveryConfigurationResponse')
    PutProductSharingPolicyRequest = Shapes::StructureShape.new(name: 'PutProductSharingPolicyRequest')
    RUMAppMonitorName = Shapes::StringShape.new(name: 'RUMAppMonitorName')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceArnList = Shapes::ListShape.new(name: 'ResourceArnList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceOwner = Shapes::StringShape.new(name: 'ResourceOwner')
    RuleFilter = Shapes::StructureShape.new(name: 'RuleFilter')
    RuleFilterKey = Shapes::StringShape.new(name: 'RuleFilterKey')
    RuleFilterList = Shapes::ListShape.new(name: 'RuleFilterList')
    RuleFilterValue = Shapes::StringShape.new(name: 'RuleFilterValue')
    RuleFilterValueList = Shapes::ListShape.new(name: 'RuleFilterValueList')
    Section = Shapes::StructureShape.new(name: 'Section')
    SectionSectionNameString = Shapes::StringShape.new(name: 'SectionSectionNameString')
    StartDiscoveryRequest = Shapes::StructureShape.new(name: 'StartDiscoveryRequest')
    Status = Shapes::StringShape.new(name: 'Status')
    StopDiscoveryRequest = Shapes::StructureShape.new(name: 'StopDiscoveryRequest')
    String = Shapes::StringShape.new(name: 'String')
    StringWithLengthBetween1And1600 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And1600')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    ThreatCategory = Shapes::StringShape.new(name: 'ThreatCategory')
    ThreatLabel = Shapes::StringShape.new(name: 'ThreatLabel')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TryItState = Shapes::StringShape.new(name: 'TryItState')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdatePortalPublishStatusRequest = Shapes::StructureShape.new(name: 'UpdatePortalPublishStatusRequest')
    UpdatePortalRequest = Shapes::StructureShape.new(name: 'UpdatePortalRequest')
    UpdatePortalResponse = Shapes::StructureShape.new(name: 'UpdatePortalResponse')
    UpdateProductApiPageRequest = Shapes::StructureShape.new(name: 'UpdateProductApiPageRequest')
    UpdateProductApiPageResponse = Shapes::StructureShape.new(name: 'UpdateProductApiPageResponse')
    UpdateProductPageRequest = Shapes::StructureShape.new(name: 'UpdateProductPageRequest')
    UpdateProductPageResponse = Shapes::StructureShape.new(name: 'UpdateProductPageResponse')
    UpdateProductRequest = Shapes::StructureShape.new(name: 'UpdateProductRequest')
    UpdateProductResponse = Shapes::StructureShape.new(name: 'UpdateProductResponse')
    UserPoolArn = Shapes::StringShape.new(name: 'UserPoolArn')
    UserPoolDomain = Shapes::StringShape.new(name: 'UserPoolDomain')
    Visibility = Shapes::StringShape.new(name: 'Visibility')
    WafApiSecurityEventDetail = Shapes::StructureShape.new(name: 'WafApiSecurityEventDetail')
    WafStatus = Shapes::StringShape.new(name: 'WafStatus')
    WebAclArn = Shapes::StringShape.new(name: 'WebAclArn')
    Workload = Shapes::StringShape.new(name: 'Workload')
    WorkloadList = Shapes::ListShape.new(name: 'WorkloadList')

    ACMManaged.add_member(:domain_name, Shapes::ShapeRef.new(shape: PortalDomainName, required: true, location_name: "domainName"))
    ACMManaged.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, required: true, location_name: "certificateArn"))
    ACMManaged.struct_class = Types::ACMManaged

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountIdList.member = Shapes::ShapeRef.new(shape: AccountId)

    ApiId.add_member(:identifier_parts, Shapes::ShapeRef.new(shape: IdentifierParts, location_name: "identifierParts"))
    ApiId.struct_class = Types::ApiId

    ApiInventoryFilters.add_member(:discovery_source, Shapes::ShapeRef.new(shape: DiscoverySource, location_name: "discoverySource"))
    ApiInventoryFilters.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    ApiInventoryFilters.struct_class = Types::ApiInventoryFilters

    ApiInventoryItem.add_member(:method, Shapes::ShapeRef.new(shape: HttpMethod, required: true, location_name: "method"))
    ApiInventoryItem.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "host"))
    ApiInventoryItem.add_member(:port, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "port"))
    ApiInventoryItem.add_member(:path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "path"))
    ApiInventoryItem.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    ApiInventoryItem.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    ApiInventoryItem.add_member(:region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "region"))
    ApiInventoryItem.add_member(:discovery_source, Shapes::ShapeRef.new(shape: DiscoverySource, required: true, location_name: "discoverySource"))
    ApiInventoryItem.add_member(:first_seen, Shapes::ShapeRef.new(shape: Timestamp, location_name: "firstSeen"))
    ApiInventoryItem.add_member(:last_seen, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastSeen"))
    ApiInventoryItem.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "visibility"))
    ApiInventoryItem.add_member(:waf_status, Shapes::ShapeRef.new(shape: WafStatus, location_name: "wafStatus"))
    ApiInventoryItem.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, location_name: "classification"))
    ApiInventoryItem.add_member(:managed_by, Shapes::ShapeRef.new(shape: ManagedBy, location_name: "managedBy"))
    ApiInventoryItem.add_member(:workloads, Shapes::ShapeRef.new(shape: WorkloadList, location_name: "workloads"))
    ApiInventoryItem.struct_class = Types::ApiInventoryItem

    ApiInventoryItemDetail.add_member(:method, Shapes::ShapeRef.new(shape: HttpMethod, required: true, location_name: "method"))
    ApiInventoryItemDetail.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "host"))
    ApiInventoryItemDetail.add_member(:port, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "port"))
    ApiInventoryItemDetail.add_member(:path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "path"))
    ApiInventoryItemDetail.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    ApiInventoryItemDetail.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    ApiInventoryItemDetail.add_member(:region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "region"))
    ApiInventoryItemDetail.add_member(:discovery_source, Shapes::ShapeRef.new(shape: DiscoverySource, required: true, location_name: "discoverySource"))
    ApiInventoryItemDetail.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "visibility"))
    ApiInventoryItemDetail.add_member(:waf_status, Shapes::ShapeRef.new(shape: WafStatus, location_name: "wafStatus"))
    ApiInventoryItemDetail.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, location_name: "classification"))
    ApiInventoryItemDetail.add_member(:managed_by, Shapes::ShapeRef.new(shape: ManagedBy, location_name: "managedBy"))
    ApiInventoryItemDetail.add_member(:workloads, Shapes::ShapeRef.new(shape: WorkloadList, location_name: "workloads"))
    ApiInventoryItemDetail.add_member(:managed_api_id, Shapes::ShapeRef.new(shape: ManagedApiId, location_name: "managedApiId"))
    ApiInventoryItemDetail.struct_class = Types::ApiInventoryItemDetail

    ApiInventoryItemList.member = Shapes::ShapeRef.new(shape: ApiInventoryItem)

    ApiPageDisplayContent.add_member(:none, Shapes::ShapeRef.new(shape: None, location_name: "none"))
    ApiPageDisplayContent.add_member(:overrides, Shapes::ShapeRef.new(shape: DisplayContentOverrides, location_name: "overrides"))
    ApiPageDisplayContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ApiPageDisplayContent.add_member_subclass(:none, Types::ApiPageDisplayContent::None)
    ApiPageDisplayContent.add_member_subclass(:overrides, Types::ApiPageDisplayContent::Overrides)
    ApiPageDisplayContent.add_member_subclass(:unknown, Types::ApiPageDisplayContent::Unknown)
    ApiPageDisplayContent.struct_class = Types::ApiPageDisplayContent

    ApiPageDisplayContentResponse.add_member(:operation_name, Shapes::ShapeRef.new(shape: OperationName, location_name: "operationName"))
    ApiPageDisplayContentResponse.add_member(:api_url, Shapes::ShapeRef.new(shape: ApiEndpoint, required: true, location_name: "apiUrl"))
    ApiPageDisplayContentResponse.add_member(:body, Shapes::ShapeRef.new(shape: ApiPageBody, location_name: "body"))
    ApiPageDisplayContentResponse.struct_class = Types::ApiPageDisplayContentResponse

    ApiSelectionConfiguration.add_member(:api_selection_mode, Shapes::ShapeRef.new(shape: ApiSelectionMode, required: true, location_name: "apiSelectionMode"))
    ApiSelectionConfiguration.add_member(:rule_filters, Shapes::ShapeRef.new(shape: RuleFilterList, location_name: "ruleFilters"))
    ApiSelectionConfiguration.struct_class = Types::ApiSelectionConfiguration

    ApiSignature.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    ApiSignature.add_member(:method, Shapes::ShapeRef.new(shape: HttpMethod, required: true, location_name: "method"))
    ApiSignature.add_member(:hostname, Shapes::ShapeRef.new(shape: ApiSignatureHostnameString, required: true, location_name: "hostname"))
    ApiSignature.add_member(:port, Shapes::ShapeRef.new(shape: ApiSignaturePortInteger, required: true, location_name: "port"))
    ApiSignature.add_member(:path, Shapes::ShapeRef.new(shape: ApiSignaturePathString, required: true, location_name: "path"))
    ApiSignature.struct_class = Types::ApiSignature

    AssociateManagedApisRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    AssociateManagedApisRequest.add_member(:managed_api_ids, Shapes::ShapeRef.new(shape: ManagedApiIdList, required: true, location_name: "managedApiIds"))
    AssociateManagedApisRequest.struct_class = Types::AssociateManagedApisRequest

    AssociateManagedApisResponse.add_member(:failed_items, Shapes::ShapeRef.new(shape: FailedManagedApiItemList, required: true, location_name: "failedItems"))
    AssociateManagedApisResponse.struct_class = Types::AssociateManagedApisResponse

    Authorization.add_member(:authorization_config, Shapes::ShapeRef.new(shape: AuthorizationConfig, required: true, location_name: "authorizationConfig"))
    Authorization.add_member(:fine_grained_access_control, Shapes::ShapeRef.new(shape: FineGrainedAccessControl, required: true, location_name: "fineGrainedAccessControl"))
    Authorization.struct_class = Types::Authorization

    AuthorizationConfig.add_member(:none, Shapes::ShapeRef.new(shape: None, location_name: "none"))
    AuthorizationConfig.add_member(:cognito_config, Shapes::ShapeRef.new(shape: CognitoConfig, location_name: "cognitoConfig"))
    AuthorizationConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AuthorizationConfig.add_member_subclass(:none, Types::AuthorizationConfig::None)
    AuthorizationConfig.add_member_subclass(:cognito_config, Types::AuthorizationConfig::CognitoConfig)
    AuthorizationConfig.add_member_subclass(:unknown, Types::AuthorizationConfig::Unknown)
    AuthorizationConfig.struct_class = Types::AuthorizationConfig

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    CognitoConfig.add_member(:user_pool_arn, Shapes::ShapeRef.new(shape: UserPoolArn, required: true, location_name: "userPoolArn"))
    CognitoConfig.add_member(:app_client_id, Shapes::ShapeRef.new(shape: AppClientId, required: true, location_name: "appClientId"))
    CognitoConfig.add_member(:user_pool_domain, Shapes::ShapeRef.new(shape: UserPoolDomain, required: true, location_name: "userPoolDomain"))
    CognitoConfig.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "identityPoolId"))
    CognitoConfig.struct_class = Types::CognitoConfig

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    Contents.member = Shapes::ShapeRef.new(shape: Section)

    CreateManagedApiRequest.add_member(:api_signature, Shapes::ShapeRef.new(shape: ApiSignature, required: true, location_name: "apiSignature"))
    CreateManagedApiRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateManagedApiRequest.struct_class = Types::CreateManagedApiRequest

    CreateManagedApiResponse.add_member(:managed_api_id, Shapes::ShapeRef.new(shape: ManagedApiId, required: true, location_name: "managedApiId"))
    CreateManagedApiResponse.add_member(:managed_api_arn, Shapes::ShapeRef.new(shape: ManagedApiArn, required: true, location_name: "managedApiArn"))
    CreateManagedApiResponse.add_member(:api_signature, Shapes::ShapeRef.new(shape: ApiSignature, required: true, location_name: "apiSignature"))
    CreateManagedApiResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateManagedApiResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    CreateManagedApiResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateManagedApiResponse.struct_class = Types::CreateManagedApiResponse

    CreatePortalPreviewRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: PortalId, required: true, location: "uri", location_name: "portalId"))
    CreatePortalPreviewRequest.struct_class = Types::CreatePortalPreviewRequest

    CreatePortalRequest.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, required: true, location_name: "portalContent"))
    CreatePortalRequest.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationRequest, required: true, location_name: "endpointConfiguration"))
    CreatePortalRequest.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, required: true, location_name: "authorization"))
    CreatePortalRequest.add_member(:included_product_arns, Shapes::ShapeRef.new(shape: IncludedProductArns, location_name: "includedProductArns"))
    CreatePortalRequest.add_member(:logo_uri, Shapes::ShapeRef.new(shape: LogoUri, location_name: "logoUri"))
    CreatePortalRequest.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: RUMAppMonitorName, location_name: "rumAppMonitorName"))
    CreatePortalRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePortalRequest.struct_class = Types::CreatePortalRequest

    CreatePortalResponse.add_member(:portal_id, Shapes::ShapeRef.new(shape: PortalId, required: true, location_name: "portalId"))
    CreatePortalResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: PortalArn, required: true, location_name: "portalArn"))
    CreatePortalResponse.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationResponse, required: true, location_name: "endpointConfiguration"))
    CreatePortalResponse.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, required: true, location_name: "authorization"))
    CreatePortalResponse.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, required: true, location_name: "portalContent"))
    CreatePortalResponse.add_member(:included_product_arns, Shapes::ShapeRef.new(shape: IncludedProductArns, required: true, location_name: "includedProductArns"))
    CreatePortalResponse.add_member(:publish_status, Shapes::ShapeRef.new(shape: PublishStatus, location_name: "publishStatus"))
    CreatePortalResponse.add_member(:status_exception, Shapes::ShapeRef.new(shape: PortalStatusException, location_name: "statusException"))
    CreatePortalResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    CreatePortalResponse.add_member(:published_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "publishedAt"))
    CreatePortalResponse.add_member(:publish_description, Shapes::ShapeRef.new(shape: PublishDescription, location_name: "publishDescription"))
    CreatePortalResponse.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: RUMAppMonitorName, location_name: "rumAppMonitorName"))
    CreatePortalResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePortalResponse.struct_class = Types::CreatePortalResponse

    CreateProductApiPageRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    CreateProductApiPageRequest.add_member(:managed_api_id, Shapes::ShapeRef.new(shape: ManagedApiId, required: true, location_name: "managedApiId"))
    CreateProductApiPageRequest.add_member(:display_content, Shapes::ShapeRef.new(shape: ApiPageDisplayContent, location_name: "displayContent"))
    CreateProductApiPageRequest.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, location_name: "tryItState"))
    CreateProductApiPageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateProductApiPageRequest.struct_class = Types::CreateProductApiPageRequest

    CreateProductApiPageResponse.add_member(:product_api_page_id, Shapes::ShapeRef.new(shape: ProductApiPageId, required: true, location_name: "productApiPageId"))
    CreateProductApiPageResponse.add_member(:product_api_page_arn, Shapes::ShapeRef.new(shape: ProductApiPageArn, required: true, location_name: "productApiPageArn"))
    CreateProductApiPageResponse.add_member(:api_id, Shapes::ShapeRef.new(shape: ApiId, required: true, location_name: "apiId"))
    CreateProductApiPageResponse.add_member(:display_content, Shapes::ShapeRef.new(shape: ApiPageDisplayContentResponse, required: true, location_name: "displayContent"))
    CreateProductApiPageResponse.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, required: true, location_name: "tryItState"))
    CreateProductApiPageResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    CreateProductApiPageResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    CreateProductApiPageResponse.add_member(:status_exception, Shapes::ShapeRef.new(shape: ProductApiPageStatusException, location_name: "statusException"))
    CreateProductApiPageResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateProductApiPageResponse.struct_class = Types::CreateProductApiPageResponse

    CreateProductPageRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    CreateProductPageRequest.add_member(:display_content, Shapes::ShapeRef.new(shape: DisplayContent, required: true, location_name: "displayContent"))
    CreateProductPageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateProductPageRequest.struct_class = Types::CreateProductPageRequest

    CreateProductPageResponse.add_member(:product_page_id, Shapes::ShapeRef.new(shape: ProductPageId, required: true, location_name: "productPageId"))
    CreateProductPageResponse.add_member(:product_page_arn, Shapes::ShapeRef.new(shape: ProductPageArn, required: true, location_name: "productPageArn"))
    CreateProductPageResponse.add_member(:display_content, Shapes::ShapeRef.new(shape: DisplayContent, location_name: "displayContent"))
    CreateProductPageResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    CreateProductPageResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateProductPageResponse.struct_class = Types::CreateProductPageResponse

    CreateProductRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ProductName, required: true, location_name: "displayName"))
    CreateProductRequest.add_member(:description, Shapes::ShapeRef.new(shape: ProductDescription, location_name: "description"))
    CreateProductRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateProductRequest.add_member(:api_selection_configuration, Shapes::ShapeRef.new(shape: ApiSelectionConfiguration, location_name: "apiSelectionConfiguration"))
    CreateProductRequest.struct_class = Types::CreateProductRequest

    CreateProductResponse.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location_name: "productId"))
    CreateProductResponse.add_member(:product_arn, Shapes::ShapeRef.new(shape: ProductArn, required: true, location_name: "productArn"))
    CreateProductResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ProductName, required: true, location_name: "displayName"))
    CreateProductResponse.add_member(:display_order, Shapes::ShapeRef.new(shape: DisplayOrder, location_name: "displayOrder"))
    CreateProductResponse.add_member(:description, Shapes::ShapeRef.new(shape: ProductDescription, location_name: "description"))
    CreateProductResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    CreateProductResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateProductResponse.add_member(:api_selection_configuration, Shapes::ShapeRef.new(shape: ApiSelectionConfiguration, location_name: "apiSelectionConfiguration"))
    CreateProductResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProductStatus, location_name: "status"))
    CreateProductResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: ProductFailureReason, location_name: "failureReason"))
    CreateProductResponse.struct_class = Types::CreateProductResponse

    CustomColors.add_member(:background_color, Shapes::ShapeRef.new(shape: Color, required: true, location_name: "backgroundColor"))
    CustomColors.add_member(:navigation_color, Shapes::ShapeRef.new(shape: Color, required: true, location_name: "navigationColor"))
    CustomColors.add_member(:header_color, Shapes::ShapeRef.new(shape: Color, required: true, location_name: "headerColor"))
    CustomColors.add_member(:text_color, Shapes::ShapeRef.new(shape: Color, required: true, location_name: "textColor"))
    CustomColors.add_member(:accent_color, Shapes::ShapeRef.new(shape: Color, required: true, location_name: "accentColor"))
    CustomColors.add_member(:error_validation_color, Shapes::ShapeRef.new(shape: Color, required: true, location_name: "errorValidationColor"))
    CustomColors.struct_class = Types::CustomColors

    DeleteDiscoveryConfigurationRequest.struct_class = Types::DeleteDiscoveryConfigurationRequest

    DeleteManagedApiRequest.add_member(:managed_api_id, Shapes::ShapeRef.new(shape: ManagedApiId, required: true, location: "uri", location_name: "managedApiId"))
    DeleteManagedApiRequest.struct_class = Types::DeleteManagedApiRequest

    DeleteManagedApiResponse.struct_class = Types::DeleteManagedApiResponse

    DeleteOrganizationDiscoveryConfigurationRequest.struct_class = Types::DeleteOrganizationDiscoveryConfigurationRequest

    DeletePortalRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: PortalId, required: true, location: "uri", location_name: "portalId"))
    DeletePortalRequest.struct_class = Types::DeletePortalRequest

    DeleteProductApiPageRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    DeleteProductApiPageRequest.add_member(:product_api_page_id, Shapes::ShapeRef.new(shape: ProductApiPageId, required: true, location: "uri", location_name: "productApiPageId"))
    DeleteProductApiPageRequest.struct_class = Types::DeleteProductApiPageRequest

    DeleteProductPageRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    DeleteProductPageRequest.add_member(:product_page_id, Shapes::ShapeRef.new(shape: ProductPageId, required: true, location: "uri", location_name: "productPageId"))
    DeleteProductPageRequest.struct_class = Types::DeleteProductPageRequest

    DeleteProductRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    DeleteProductRequest.struct_class = Types::DeleteProductRequest

    DeleteProductSharingPolicyRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    DeleteProductSharingPolicyRequest.struct_class = Types::DeleteProductSharingPolicyRequest

    DisassociateManagedApisRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    DisassociateManagedApisRequest.add_member(:managed_api_ids, Shapes::ShapeRef.new(shape: ManagedApiIdList, required: true, location_name: "managedApiIds"))
    DisassociateManagedApisRequest.struct_class = Types::DisassociateManagedApisRequest

    DisassociateManagedApisResponse.add_member(:failed_items, Shapes::ShapeRef.new(shape: FailedManagedApiItemList, required: true, location_name: "failedItems"))
    DisassociateManagedApisResponse.struct_class = Types::DisassociateManagedApisResponse

    DiscoveryConfigurationData.add_member(:arn, Shapes::ShapeRef.new(shape: DiscoveryConfigurationArn, required: true, location_name: "arn"))
    DiscoveryConfigurationData.add_member(:status, Shapes::ShapeRef.new(shape: DiscoveryConfigurationStatus, location_name: "status"))
    DiscoveryConfigurationData.add_member(:discovery_sources, Shapes::ShapeRef.new(shape: DiscoverySourceList, location_name: "discoverySources"))
    DiscoveryConfigurationData.add_member(:excluded_resources, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "excludedResources"))
    DiscoveryConfigurationData.add_member(:features, Shapes::ShapeRef.new(shape: DiscoveryFeatureList, location_name: "features"))
    DiscoveryConfigurationData.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    DiscoveryConfigurationData.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    DiscoveryConfigurationData.struct_class = Types::DiscoveryConfigurationData

    DiscoveryExclusionFilters.add_member(:organizational_unit_ids, Shapes::ShapeRef.new(shape: OrganizationalUnitIdList, location_name: "organizationalUnitIds"))
    DiscoveryExclusionFilters.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "accountIds"))
    DiscoveryExclusionFilters.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "resourceArns"))
    DiscoveryExclusionFilters.struct_class = Types::DiscoveryExclusionFilters

    DiscoveryFeatureList.member = Shapes::ShapeRef.new(shape: DiscoveryFeature)

    DiscoveryInclusionFilters.add_member(:organizational_unit_ids, Shapes::ShapeRef.new(shape: OrganizationalUnitIdList, location_name: "organizationalUnitIds"))
    DiscoveryInclusionFilters.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "accountIds"))
    DiscoveryInclusionFilters.struct_class = Types::DiscoveryInclusionFilters

    DiscoverySourceList.member = Shapes::ShapeRef.new(shape: DiscoverySource)

    DiscoveryStatus.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    DiscoveryStatus.add_member(:discovery_source, Shapes::ShapeRef.new(shape: DiscoverySource, required: true, location_name: "discoverySource"))
    DiscoveryStatus.add_member(:status, Shapes::ShapeRef.new(shape: DiscoveryStatusValue, required: true, location_name: "status"))
    DiscoveryStatus.add_member(:failure_reason, Shapes::ShapeRef.new(shape: DiscoveryFailureReason, location_name: "failureReason"))
    DiscoveryStatus.struct_class = Types::DiscoveryStatus

    DiscoveryStatusList.member = Shapes::ShapeRef.new(shape: DiscoveryStatus)

    DisplayContent.add_member(:title, Shapes::ShapeRef.new(shape: PageTitle, required: true, location_name: "title"))
    DisplayContent.add_member(:body, Shapes::ShapeRef.new(shape: PageBody, required: true, location_name: "body"))
    DisplayContent.struct_class = Types::DisplayContent

    DisplayContentOverrides.add_member(:operation_name, Shapes::ShapeRef.new(shape: OperationName, location_name: "operationName"))
    DisplayContentOverrides.add_member(:api_url, Shapes::ShapeRef.new(shape: DisplayContentOverridesApiUrlString, location_name: "apiUrl"))
    DisplayContentOverrides.add_member(:body, Shapes::ShapeRef.new(shape: ApiPageBody, location_name: "body"))
    DisplayContentOverrides.struct_class = Types::DisplayContentOverrides

    DisplayOrder.add_member(:overview_page_arn, Shapes::ShapeRef.new(shape: ProductPageArn, location_name: "overviewPageArn"))
    DisplayOrder.add_member(:product_page_arns, Shapes::ShapeRef.new(shape: ProductPageArnList, location_name: "productPageArns"))
    DisplayOrder.add_member(:contents, Shapes::ShapeRef.new(shape: Contents, location_name: "contents"))
    DisplayOrder.struct_class = Types::DisplayOrder

    EndpointConfigurationRequest.add_member(:none, Shapes::ShapeRef.new(shape: None, location_name: "none"))
    EndpointConfigurationRequest.add_member(:acm_managed, Shapes::ShapeRef.new(shape: ACMManaged, location_name: "acmManaged"))
    EndpointConfigurationRequest.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EndpointConfigurationRequest.add_member_subclass(:none, Types::EndpointConfigurationRequest::None)
    EndpointConfigurationRequest.add_member_subclass(:acm_managed, Types::EndpointConfigurationRequest::AcmManaged)
    EndpointConfigurationRequest.add_member_subclass(:unknown, Types::EndpointConfigurationRequest::Unknown)
    EndpointConfigurationRequest.struct_class = Types::EndpointConfigurationRequest

    EndpointConfigurationResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: PortalDomainName, location_name: "domainName"))
    EndpointConfigurationResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    EndpointConfigurationResponse.add_member(:portal_domain_hosted_zone_id, Shapes::ShapeRef.new(shape: HostedZoneId, required: true, location_name: "portalDomainHostedZoneId"))
    EndpointConfigurationResponse.add_member(:portal_default_domain_name, Shapes::ShapeRef.new(shape: PortalDomainName, required: true, location_name: "portalDefaultDomainName"))
    EndpointConfigurationResponse.struct_class = Types::EndpointConfigurationResponse

    FailedManagedApiItem.add_member(:managed_api_id, Shapes::ShapeRef.new(shape: ManagedApiId, required: true, location_name: "managedApiId"))
    FailedManagedApiItem.add_member(:error_code, Shapes::ShapeRef.new(shape: FailedItemErrorCode, required: true, location_name: "errorCode"))
    FailedManagedApiItem.add_member(:error_message, Shapes::ShapeRef.new(shape: FailedManagedApiItemErrorMessageString, required: true, location_name: "errorMessage"))
    FailedManagedApiItem.struct_class = Types::FailedManagedApiItem

    FailedManagedApiItemList.member = Shapes::ShapeRef.new(shape: FailedManagedApiItem)

    GetApiInventoryItemRequest.add_member(:method, Shapes::ShapeRef.new(shape: HttpMethod, required: true, location: "querystring", location_name: "method"))
    GetApiInventoryItemRequest.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location: "querystring", location_name: "host"))
    GetApiInventoryItemRequest.add_member(:port, Shapes::ShapeRef.new(shape: GetApiInventoryItemRequestPortInteger, required: true, location: "querystring", location_name: "port"))
    GetApiInventoryItemRequest.add_member(:path, Shapes::ShapeRef.new(shape: Path, required: true, location: "querystring", location_name: "path"))
    GetApiInventoryItemRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "querystring", location_name: "resourceArn"))
    GetApiInventoryItemRequest.struct_class = Types::GetApiInventoryItemRequest

    GetApiInventoryItemResponse.add_member(:item, Shapes::ShapeRef.new(shape: ApiInventoryItemDetail, required: true, location_name: "item"))
    GetApiInventoryItemResponse.struct_class = Types::GetApiInventoryItemResponse

    GetDiscoveryConfigurationRequest.struct_class = Types::GetDiscoveryConfigurationRequest

    GetDiscoveryConfigurationResponse.add_member(:discovery_configuration, Shapes::ShapeRef.new(shape: DiscoveryConfigurationData, required: true, location_name: "discoveryConfiguration"))
    GetDiscoveryConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetDiscoveryConfigurationResponse.struct_class = Types::GetDiscoveryConfigurationResponse

    GetManagedApiRequest.add_member(:managed_api_id, Shapes::ShapeRef.new(shape: ManagedApiId, required: true, location: "uri", location_name: "managedApiId"))
    GetManagedApiRequest.struct_class = Types::GetManagedApiRequest

    GetManagedApiResponse.add_member(:managed_api_id, Shapes::ShapeRef.new(shape: ManagedApiId, required: true, location_name: "managedApiId"))
    GetManagedApiResponse.add_member(:managed_api_arn, Shapes::ShapeRef.new(shape: ManagedApiArn, required: true, location_name: "managedApiArn"))
    GetManagedApiResponse.add_member(:api_signature, Shapes::ShapeRef.new(shape: ApiSignature, required: true, location_name: "apiSignature"))
    GetManagedApiResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetManagedApiResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetManagedApiResponse.add_member(:findings, Shapes::ShapeRef.new(shape: ManagedApiFindingList, location_name: "findings"))
    GetManagedApiResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetManagedApiResponse.struct_class = Types::GetManagedApiResponse

    GetOrganizationDiscoveryConfigurationRequest.struct_class = Types::GetOrganizationDiscoveryConfigurationRequest

    GetOrganizationDiscoveryConfigurationResponse.add_member(:discovery_configuration, Shapes::ShapeRef.new(shape: OrganizationDiscoveryConfigurationData, required: true, location_name: "discoveryConfiguration"))
    GetOrganizationDiscoveryConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetOrganizationDiscoveryConfigurationResponse.struct_class = Types::GetOrganizationDiscoveryConfigurationResponse

    GetPortalRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: PortalId, required: true, location: "uri", location_name: "portalId"))
    GetPortalRequest.struct_class = Types::GetPortalRequest

    GetPortalResponse.add_member(:portal_id, Shapes::ShapeRef.new(shape: PortalId, required: true, location_name: "portalId"))
    GetPortalResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: PortalArn, required: true, location_name: "portalArn"))
    GetPortalResponse.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationResponse, required: true, location_name: "endpointConfiguration"))
    GetPortalResponse.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, required: true, location_name: "authorization"))
    GetPortalResponse.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, required: true, location_name: "portalContent"))
    GetPortalResponse.add_member(:included_product_arns, Shapes::ShapeRef.new(shape: IncludedProductArns, required: true, location_name: "includedProductArns"))
    GetPortalResponse.add_member(:publish_status, Shapes::ShapeRef.new(shape: PublishStatus, location_name: "publishStatus"))
    GetPortalResponse.add_member(:status_exception, Shapes::ShapeRef.new(shape: PortalStatusException, location_name: "statusException"))
    GetPortalResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetPortalResponse.add_member(:published_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "publishedAt"))
    GetPortalResponse.add_member(:publish_description, Shapes::ShapeRef.new(shape: PublishDescription, location_name: "publishDescription"))
    GetPortalResponse.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: RUMAppMonitorName, location_name: "rumAppMonitorName"))
    GetPortalResponse.add_member(:preview, Shapes::ShapeRef.new(shape: Preview, location_name: "preview"))
    GetPortalResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetPortalResponse.struct_class = Types::GetPortalResponse

    GetProductApiPageRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    GetProductApiPageRequest.add_member(:product_api_page_id, Shapes::ShapeRef.new(shape: ProductApiPageId, required: true, location: "uri", location_name: "productApiPageId"))
    GetProductApiPageRequest.add_member(:resource_owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "resourceOwnerAccountId"))
    GetProductApiPageRequest.add_member(:include_raw_display_content, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "includeRawDisplayContent"))
    GetProductApiPageRequest.struct_class = Types::GetProductApiPageRequest

    GetProductApiPageResponse.add_member(:product_api_page_id, Shapes::ShapeRef.new(shape: ProductApiPageId, required: true, location_name: "productApiPageId"))
    GetProductApiPageResponse.add_member(:product_api_page_arn, Shapes::ShapeRef.new(shape: ProductApiPageArn, required: true, location_name: "productApiPageArn"))
    GetProductApiPageResponse.add_member(:api_id, Shapes::ShapeRef.new(shape: ApiId, required: true, location_name: "apiId"))
    GetProductApiPageResponse.add_member(:display_content, Shapes::ShapeRef.new(shape: ApiPageDisplayContentResponse, required: true, location_name: "displayContent"))
    GetProductApiPageResponse.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, required: true, location_name: "tryItState"))
    GetProductApiPageResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetProductApiPageResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    GetProductApiPageResponse.add_member(:raw_display_content, Shapes::ShapeRef.new(shape: String, location_name: "rawDisplayContent"))
    GetProductApiPageResponse.add_member(:status_exception, Shapes::ShapeRef.new(shape: ProductApiPageStatusException, location_name: "statusException"))
    GetProductApiPageResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetProductApiPageResponse.struct_class = Types::GetProductApiPageResponse

    GetProductPageRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    GetProductPageRequest.add_member(:product_page_id, Shapes::ShapeRef.new(shape: ProductPageId, required: true, location: "uri", location_name: "productPageId"))
    GetProductPageRequest.add_member(:resource_owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "resourceOwnerAccountId"))
    GetProductPageRequest.struct_class = Types::GetProductPageRequest

    GetProductPageResponse.add_member(:product_page_id, Shapes::ShapeRef.new(shape: ProductPageId, required: true, location_name: "productPageId"))
    GetProductPageResponse.add_member(:product_page_arn, Shapes::ShapeRef.new(shape: ProductPageArn, required: true, location_name: "productPageArn"))
    GetProductPageResponse.add_member(:display_content, Shapes::ShapeRef.new(shape: DisplayContent, required: true, location_name: "displayContent"))
    GetProductPageResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetProductPageResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetProductPageResponse.struct_class = Types::GetProductPageResponse

    GetProductRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    GetProductRequest.add_member(:resource_owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "resourceOwnerAccountId"))
    GetProductRequest.struct_class = Types::GetProductRequest

    GetProductResponse.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location_name: "productId"))
    GetProductResponse.add_member(:product_arn, Shapes::ShapeRef.new(shape: ProductArn, required: true, location_name: "productArn"))
    GetProductResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ProductName, required: true, location_name: "displayName"))
    GetProductResponse.add_member(:display_order, Shapes::ShapeRef.new(shape: DisplayOrder, required: true, location_name: "displayOrder"))
    GetProductResponse.add_member(:description, Shapes::ShapeRef.new(shape: ProductDescription, required: true, location_name: "description"))
    GetProductResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetProductResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetProductResponse.add_member(:api_selection_configuration, Shapes::ShapeRef.new(shape: ApiSelectionConfiguration, location_name: "apiSelectionConfiguration"))
    GetProductResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProductStatus, location_name: "status"))
    GetProductResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: ProductFailureReason, location_name: "failureReason"))
    GetProductResponse.struct_class = Types::GetProductResponse

    GetProductSharingPolicyRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    GetProductSharingPolicyRequest.struct_class = Types::GetProductSharingPolicyRequest

    GetProductSharingPolicyResponse.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location_name: "productId"))
    GetProductSharingPolicyResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "policyDocument"))
    GetProductSharingPolicyResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetProductSharingPolicyResponse.struct_class = Types::GetProductSharingPolicyResponse

    IdentifierParts.add_member(:path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "path"))
    IdentifierParts.add_member(:method, Shapes::ShapeRef.new(shape: Method, required: true, location_name: "method"))
    IdentifierParts.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    IdentifierParts.struct_class = Types::IdentifierParts

    IncludedProductArns.member = Shapes::ShapeRef.new(shape: ProductArn)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListApiInventoryItemsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ApiInventoryFilters, location_name: "filters"))
    ListApiInventoryItemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListApiInventoryItemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApiInventoryItemsRequest.struct_class = Types::ListApiInventoryItemsRequest

    ListApiInventoryItemsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ApiInventoryItemList, required: true, location_name: "items"))
    ListApiInventoryItemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApiInventoryItemsResponse.struct_class = Types::ListApiInventoryItemsResponse

    ListDiscoveryStatusesRequest.add_member(:discovery_source, Shapes::ShapeRef.new(shape: DiscoverySource, location: "querystring", location_name: "discoverySource"))
    ListDiscoveryStatusesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDiscoveryStatusesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDiscoveryStatusesRequest.struct_class = Types::ListDiscoveryStatusesRequest

    ListDiscoveryStatusesResponse.add_member(:items, Shapes::ShapeRef.new(shape: DiscoveryStatusList, required: true, location_name: "items"))
    ListDiscoveryStatusesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDiscoveryStatusesResponse.struct_class = Types::ListDiscoveryStatusesResponse

    ListManagedApiEventsRequest.add_member(:managed_api_id, Shapes::ShapeRef.new(shape: ManagedApiId, required: true, location: "uri", location_name: "managedApiId"))
    ListManagedApiEventsRequest.add_member(:started_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startedAfter"))
    ListManagedApiEventsRequest.add_member(:started_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startedBefore"))
    ListManagedApiEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ManagedApiEventMaxResults, location: "querystring", location_name: "maxResults"))
    ListManagedApiEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListManagedApiEventsRequest.struct_class = Types::ListManagedApiEventsRequest

    ListManagedApiEventsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ManagedApiEventSummaryList, required: true, location_name: "items"))
    ListManagedApiEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListManagedApiEventsResponse.struct_class = Types::ListManagedApiEventsResponse

    ListManagedApisRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListManagedApisRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListManagedApisRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, location: "querystring", location_name: "productId"))
    ListManagedApisRequest.struct_class = Types::ListManagedApisRequest

    ListManagedApisResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListManagedApisResponse.add_member(:items, Shapes::ShapeRef.new(shape: ManagedApiList, required: true, location_name: "items"))
    ListManagedApisResponse.struct_class = Types::ListManagedApisResponse

    ListPortalsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPortalsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPortalsRequest.struct_class = Types::ListPortalsRequest

    ListPortalsResponse.add_member(:items, Shapes::ShapeRef.new(shape: PortalList, location_name: "items"))
    ListPortalsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPortalsResponse.struct_class = Types::ListPortalsResponse

    ListProductApiPagesRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    ListProductApiPagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListProductApiPagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProductApiPagesRequest.add_member(:resource_owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "resourceOwnerAccountId"))
    ListProductApiPagesRequest.struct_class = Types::ListProductApiPagesRequest

    ListProductApiPagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProductApiPagesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProductApiPageList, required: true, location_name: "items"))
    ListProductApiPagesResponse.struct_class = Types::ListProductApiPagesResponse

    ListProductPagesRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    ListProductPagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListProductPagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProductPagesRequest.add_member(:resource_owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "resourceOwnerAccountId"))
    ListProductPagesRequest.struct_class = Types::ListProductPagesRequest

    ListProductPagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProductPagesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProductPageList, required: true, location_name: "items"))
    ListProductPagesResponse.struct_class = Types::ListProductPagesResponse

    ListProductsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProductsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListProductsRequest.add_member(:resource_owner, Shapes::ShapeRef.new(shape: ResourceOwner, location: "querystring", location_name: "resourceOwner"))
    ListProductsRequest.add_member(:managed_api_id, Shapes::ShapeRef.new(shape: ManagedApiId, location: "querystring", location_name: "managedApiId"))
    ListProductsRequest.struct_class = Types::ListProductsRequest

    ListProductsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProductsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProductList, location_name: "items"))
    ListProductsResponse.struct_class = Types::ListProductsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ManagedApiEventSummary.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    ManagedApiEventSummary.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, location_name: "eventType"))
    ManagedApiEventSummary.add_member(:status, Shapes::ShapeRef.new(shape: EventStatus, location_name: "status"))
    ManagedApiEventSummary.add_member(:waf_api_security_event_detail, Shapes::ShapeRef.new(shape: WafApiSecurityEventDetail, location_name: "wafApiSecurityEventDetail"))
    ManagedApiEventSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    ManagedApiEventSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endedAt"))
    ManagedApiEventSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    ManagedApiEventSummary.struct_class = Types::ManagedApiEventSummary

    ManagedApiEventSummaryList.member = Shapes::ShapeRef.new(shape: ManagedApiEventSummary)

    ManagedApiFinding.add_member(:posture_id, Shapes::ShapeRef.new(shape: ManagedApiFindingPostureIdString, location_name: "postureId"))
    ManagedApiFinding.add_member(:posture_status, Shapes::ShapeRef.new(shape: PostureStatus, location_name: "postureStatus"))
    ManagedApiFinding.add_member(:reason, Shapes::ShapeRef.new(shape: FindingReason, location_name: "reason"))
    ManagedApiFinding.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    ManagedApiFinding.struct_class = Types::ManagedApiFinding

    ManagedApiFindingList.member = Shapes::ShapeRef.new(shape: ManagedApiFinding)

    ManagedApiIdList.member = Shapes::ShapeRef.new(shape: ManagedApiId)

    ManagedApiList.member = Shapes::ShapeRef.new(shape: ManagedApiSummary)

    ManagedApiSummary.add_member(:managed_api_id, Shapes::ShapeRef.new(shape: ManagedApiId, required: true, location_name: "managedApiId"))
    ManagedApiSummary.add_member(:managed_api_arn, Shapes::ShapeRef.new(shape: ManagedApiArn, required: true, location_name: "managedApiArn"))
    ManagedApiSummary.add_member(:api_signature, Shapes::ShapeRef.new(shape: ApiSignature, required: true, location_name: "apiSignature"))
    ManagedApiSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ManagedApiSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    ManagedApiSummary.struct_class = Types::ManagedApiSummary

    NonEmptyDiscoverySourceList.member = Shapes::ShapeRef.new(shape: DiscoverySource)

    None.struct_class = Types::None

    OrganizationDiscoveryConfigurationData.add_member(:arn, Shapes::ShapeRef.new(shape: OrgDiscoveryConfigurationArn, required: true, location_name: "arn"))
    OrganizationDiscoveryConfigurationData.add_member(:status, Shapes::ShapeRef.new(shape: DiscoveryConfigurationStatus, location_name: "status"))
    OrganizationDiscoveryConfigurationData.add_member(:discovery_sources, Shapes::ShapeRef.new(shape: DiscoverySourceList, location_name: "discoverySources"))
    OrganizationDiscoveryConfigurationData.add_member(:exclusion_filters, Shapes::ShapeRef.new(shape: DiscoveryExclusionFilters, location_name: "exclusionFilters"))
    OrganizationDiscoveryConfigurationData.add_member(:discovery_filters, Shapes::ShapeRef.new(shape: OrganizationDiscoveryFilters, location_name: "discoveryFilters"))
    OrganizationDiscoveryConfigurationData.add_member(:features, Shapes::ShapeRef.new(shape: DiscoveryFeatureList, location_name: "features"))
    OrganizationDiscoveryConfigurationData.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    OrganizationDiscoveryConfigurationData.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    OrganizationDiscoveryConfigurationData.struct_class = Types::OrganizationDiscoveryConfigurationData

    OrganizationDiscoveryFilters.add_member(:exclusion_filters, Shapes::ShapeRef.new(shape: DiscoveryExclusionFilters, location_name: "exclusionFilters"))
    OrganizationDiscoveryFilters.add_member(:inclusion_filters, Shapes::ShapeRef.new(shape: DiscoveryInclusionFilters, location_name: "inclusionFilters"))
    OrganizationDiscoveryFilters.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OrganizationDiscoveryFilters.add_member_subclass(:exclusion_filters, Types::OrganizationDiscoveryFilters::ExclusionFilters)
    OrganizationDiscoveryFilters.add_member_subclass(:inclusion_filters, Types::OrganizationDiscoveryFilters::InclusionFilters)
    OrganizationDiscoveryFilters.add_member_subclass(:unknown, Types::OrganizationDiscoveryFilters::Unknown)
    OrganizationDiscoveryFilters.struct_class = Types::OrganizationDiscoveryFilters

    OrganizationalUnitIdList.member = Shapes::ShapeRef.new(shape: OrganizationalUnitId)

    PortalContent.add_member(:display_name, Shapes::ShapeRef.new(shape: PortalName, required: true, location_name: "displayName"))
    PortalContent.add_member(:description, Shapes::ShapeRef.new(shape: PortalDescription, location_name: "description"))
    PortalContent.add_member(:theme, Shapes::ShapeRef.new(shape: PortalTheme, required: true, location_name: "theme"))
    PortalContent.struct_class = Types::PortalContent

    PortalList.member = Shapes::ShapeRef.new(shape: PortalSummary)

    PortalStatusException.add_member(:exception, Shapes::ShapeRef.new(shape: PortalStatusExceptionType, location_name: "exception"))
    PortalStatusException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    PortalStatusException.struct_class = Types::PortalStatusException

    PortalSummary.add_member(:portal_id, Shapes::ShapeRef.new(shape: PortalId, required: true, location_name: "portalId"))
    PortalSummary.add_member(:portal_arn, Shapes::ShapeRef.new(shape: PortalArn, required: true, location_name: "portalArn"))
    PortalSummary.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationResponse, required: true, location_name: "endpointConfiguration"))
    PortalSummary.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, required: true, location_name: "authorization"))
    PortalSummary.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, required: true, location_name: "portalContent"))
    PortalSummary.add_member(:included_product_arns, Shapes::ShapeRef.new(shape: IncludedProductArns, required: true, location_name: "includedProductArns"))
    PortalSummary.add_member(:publish_status, Shapes::ShapeRef.new(shape: PublishStatus, location_name: "publishStatus"))
    PortalSummary.add_member(:status_exception, Shapes::ShapeRef.new(shape: PortalStatusException, location_name: "statusException"))
    PortalSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    PortalSummary.add_member(:published_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "publishedAt"))
    PortalSummary.add_member(:publish_description, Shapes::ShapeRef.new(shape: PublishDescription, location_name: "publishDescription"))
    PortalSummary.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: RUMAppMonitorName, location_name: "rumAppMonitorName"))
    PortalSummary.add_member(:preview, Shapes::ShapeRef.new(shape: Preview, location_name: "preview"))
    PortalSummary.struct_class = Types::PortalSummary

    PortalTheme.add_member(:custom_colors, Shapes::ShapeRef.new(shape: CustomColors, required: true, location_name: "customColors"))
    PortalTheme.add_member(:logo_uploaded_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "logoUploadedAt"))
    PortalTheme.struct_class = Types::PortalTheme

    Preview.add_member(:preview_status, Shapes::ShapeRef.new(shape: PreviewStatus, required: true, location_name: "previewStatus"))
    Preview.add_member(:status_exception, Shapes::ShapeRef.new(shape: PortalStatusException, location_name: "statusException"))
    Preview.add_member(:preview_url, Shapes::ShapeRef.new(shape: String, location_name: "previewUrl"))
    Preview.struct_class = Types::Preview

    ProductApiPageArnList.member = Shapes::ShapeRef.new(shape: ProductApiPageArn)

    ProductApiPageList.member = Shapes::ShapeRef.new(shape: ProductApiPageSummaryNoBody)

    ProductApiPageStatusException.add_member(:exception, Shapes::ShapeRef.new(shape: ProductApiPageStatusExceptionType, location_name: "exception"))
    ProductApiPageStatusException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    ProductApiPageStatusException.struct_class = Types::ProductApiPageStatusException

    ProductApiPageSummaryNoBody.add_member(:product_api_page_id, Shapes::ShapeRef.new(shape: ProductApiPageId, required: true, location_name: "productApiPageId"))
    ProductApiPageSummaryNoBody.add_member(:product_api_page_arn, Shapes::ShapeRef.new(shape: ProductApiPageArn, required: true, location_name: "productApiPageArn"))
    ProductApiPageSummaryNoBody.add_member(:api_id, Shapes::ShapeRef.new(shape: ApiId, required: true, location_name: "apiId"))
    ProductApiPageSummaryNoBody.add_member(:operation_name, Shapes::ShapeRef.new(shape: OperationName, location_name: "operationName"))
    ProductApiPageSummaryNoBody.add_member(:api_url, Shapes::ShapeRef.new(shape: ApiEndpoint, required: true, location_name: "apiUrl"))
    ProductApiPageSummaryNoBody.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, required: true, location_name: "tryItState"))
    ProductApiPageSummaryNoBody.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    ProductApiPageSummaryNoBody.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    ProductApiPageSummaryNoBody.add_member(:status_exception, Shapes::ShapeRef.new(shape: ProductApiPageStatusException, location_name: "statusException"))
    ProductApiPageSummaryNoBody.struct_class = Types::ProductApiPageSummaryNoBody

    ProductList.member = Shapes::ShapeRef.new(shape: ProductSummary)

    ProductPageArnList.member = Shapes::ShapeRef.new(shape: ProductPageArn)

    ProductPageList.member = Shapes::ShapeRef.new(shape: ProductPageSummaryNoBody)

    ProductPageSummaryNoBody.add_member(:product_page_id, Shapes::ShapeRef.new(shape: ProductPageId, required: true, location_name: "productPageId"))
    ProductPageSummaryNoBody.add_member(:product_page_arn, Shapes::ShapeRef.new(shape: ProductPageArn, required: true, location_name: "productPageArn"))
    ProductPageSummaryNoBody.add_member(:page_title, Shapes::ShapeRef.new(shape: PageTitle, required: true, location_name: "pageTitle"))
    ProductPageSummaryNoBody.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    ProductPageSummaryNoBody.struct_class = Types::ProductPageSummaryNoBody

    ProductSummary.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location_name: "productId"))
    ProductSummary.add_member(:product_arn, Shapes::ShapeRef.new(shape: ProductArn, required: true, location_name: "productArn"))
    ProductSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ProductName, required: true, location_name: "displayName"))
    ProductSummary.add_member(:description, Shapes::ShapeRef.new(shape: ProductDescription, required: true, location_name: "description"))
    ProductSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    ProductSummary.add_member(:api_selection_configuration, Shapes::ShapeRef.new(shape: ApiSelectionConfiguration, location_name: "apiSelectionConfiguration"))
    ProductSummary.add_member(:status, Shapes::ShapeRef.new(shape: ProductStatus, location_name: "status"))
    ProductSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: ProductFailureReason, location_name: "failureReason"))
    ProductSummary.struct_class = Types::ProductSummary

    PutDiscoveryConfigurationRequest.add_member(:discovery_sources, Shapes::ShapeRef.new(shape: NonEmptyDiscoverySourceList, location_name: "discoverySources"))
    PutDiscoveryConfigurationRequest.add_member(:excluded_resources, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "excludedResources"))
    PutDiscoveryConfigurationRequest.add_member(:features, Shapes::ShapeRef.new(shape: DiscoveryFeatureList, location_name: "features"))
    PutDiscoveryConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PutDiscoveryConfigurationRequest.struct_class = Types::PutDiscoveryConfigurationRequest

    PutDiscoveryConfigurationResponse.add_member(:discovery_configuration, Shapes::ShapeRef.new(shape: DiscoveryConfigurationData, required: true, location_name: "discoveryConfiguration"))
    PutDiscoveryConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PutDiscoveryConfigurationResponse.struct_class = Types::PutDiscoveryConfigurationResponse

    PutOrganizationDiscoveryConfigurationRequest.add_member(:discovery_sources, Shapes::ShapeRef.new(shape: NonEmptyDiscoverySourceList, location_name: "discoverySources"))
    PutOrganizationDiscoveryConfigurationRequest.add_member(:exclusion_filters, Shapes::ShapeRef.new(shape: DiscoveryExclusionFilters, location_name: "exclusionFilters"))
    PutOrganizationDiscoveryConfigurationRequest.add_member(:discovery_filters, Shapes::ShapeRef.new(shape: OrganizationDiscoveryFilters, location_name: "discoveryFilters"))
    PutOrganizationDiscoveryConfigurationRequest.add_member(:features, Shapes::ShapeRef.new(shape: DiscoveryFeatureList, location_name: "features"))
    PutOrganizationDiscoveryConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PutOrganizationDiscoveryConfigurationRequest.struct_class = Types::PutOrganizationDiscoveryConfigurationRequest

    PutOrganizationDiscoveryConfigurationResponse.add_member(:discovery_configuration, Shapes::ShapeRef.new(shape: OrganizationDiscoveryConfigurationData, required: true, location_name: "discoveryConfiguration"))
    PutOrganizationDiscoveryConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PutOrganizationDiscoveryConfigurationResponse.struct_class = Types::PutOrganizationDiscoveryConfigurationResponse

    PutProductSharingPolicyRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    PutProductSharingPolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "policyDocument"))
    PutProductSharingPolicyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PutProductSharingPolicyRequest.struct_class = Types::PutProductSharingPolicyRequest

    ResourceArnList.member = Shapes::ShapeRef.new(shape: ResourceArn)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RuleFilter.add_member(:key, Shapes::ShapeRef.new(shape: RuleFilterKey, required: true, location_name: "key"))
    RuleFilter.add_member(:values, Shapes::ShapeRef.new(shape: RuleFilterValueList, required: true, location_name: "values"))
    RuleFilter.struct_class = Types::RuleFilter

    RuleFilterList.member = Shapes::ShapeRef.new(shape: RuleFilter)

    RuleFilterValueList.member = Shapes::ShapeRef.new(shape: RuleFilterValue)

    Section.add_member(:section_name, Shapes::ShapeRef.new(shape: SectionSectionNameString, location_name: "sectionName"))
    Section.add_member(:product_api_page_arns, Shapes::ShapeRef.new(shape: ProductApiPageArnList, location_name: "productApiPageArns"))
    Section.struct_class = Types::Section

    StartDiscoveryRequest.add_member(:id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1600, required: true, location: "querystring", location_name: "id"))
    StartDiscoveryRequest.struct_class = Types::StartDiscoveryRequest

    StopDiscoveryRequest.add_member(:id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1600, required: true, location: "querystring", location_name: "id"))
    StopDiscoveryRequest.struct_class = Types::StopDiscoveryRequest

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdatePortalPublishStatusRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: PortalId, required: true, location: "uri", location_name: "portalId"))
    UpdatePortalPublishStatusRequest.add_member(:status, Shapes::ShapeRef.new(shape: DesiredPublishStatus, required: true, location_name: "status"))
    UpdatePortalPublishStatusRequest.add_member(:description, Shapes::ShapeRef.new(shape: PublishDescription, location_name: "description"))
    UpdatePortalPublishStatusRequest.struct_class = Types::UpdatePortalPublishStatusRequest

    UpdatePortalRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: PortalId, required: true, location: "uri", location_name: "portalId"))
    UpdatePortalRequest.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, location_name: "portalContent"))
    UpdatePortalRequest.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationRequest, location_name: "endpointConfiguration"))
    UpdatePortalRequest.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, location_name: "authorization"))
    UpdatePortalRequest.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: RUMAppMonitorName, location_name: "rumAppMonitorName"))
    UpdatePortalRequest.add_member(:included_product_arns, Shapes::ShapeRef.new(shape: IncludedProductArns, location_name: "includedProductArns"))
    UpdatePortalRequest.add_member(:logo_uri, Shapes::ShapeRef.new(shape: LogoUri, location_name: "logoUri"))
    UpdatePortalRequest.struct_class = Types::UpdatePortalRequest

    UpdatePortalResponse.add_member(:portal_id, Shapes::ShapeRef.new(shape: PortalId, required: true, location_name: "portalId"))
    UpdatePortalResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: PortalArn, required: true, location_name: "portalArn"))
    UpdatePortalResponse.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationResponse, required: true, location_name: "endpointConfiguration"))
    UpdatePortalResponse.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, required: true, location_name: "authorization"))
    UpdatePortalResponse.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, required: true, location_name: "portalContent"))
    UpdatePortalResponse.add_member(:included_product_arns, Shapes::ShapeRef.new(shape: IncludedProductArns, required: true, location_name: "includedProductArns"))
    UpdatePortalResponse.add_member(:publish_status, Shapes::ShapeRef.new(shape: PublishStatus, location_name: "publishStatus"))
    UpdatePortalResponse.add_member(:status_exception, Shapes::ShapeRef.new(shape: PortalStatusException, location_name: "statusException"))
    UpdatePortalResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdatePortalResponse.add_member(:published_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "publishedAt"))
    UpdatePortalResponse.add_member(:publish_description, Shapes::ShapeRef.new(shape: PublishDescription, location_name: "publishDescription"))
    UpdatePortalResponse.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: RUMAppMonitorName, location_name: "rumAppMonitorName"))
    UpdatePortalResponse.add_member(:preview, Shapes::ShapeRef.new(shape: Preview, location_name: "preview"))
    UpdatePortalResponse.struct_class = Types::UpdatePortalResponse

    UpdateProductApiPageRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    UpdateProductApiPageRequest.add_member(:product_api_page_id, Shapes::ShapeRef.new(shape: ProductApiPageId, required: true, location: "uri", location_name: "productApiPageId"))
    UpdateProductApiPageRequest.add_member(:display_content, Shapes::ShapeRef.new(shape: ApiPageDisplayContent, location_name: "displayContent"))
    UpdateProductApiPageRequest.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, location_name: "tryItState"))
    UpdateProductApiPageRequest.struct_class = Types::UpdateProductApiPageRequest

    UpdateProductApiPageResponse.add_member(:product_api_page_id, Shapes::ShapeRef.new(shape: ProductApiPageId, required: true, location_name: "productApiPageId"))
    UpdateProductApiPageResponse.add_member(:product_api_page_arn, Shapes::ShapeRef.new(shape: ProductApiPageArn, required: true, location_name: "productApiPageArn"))
    UpdateProductApiPageResponse.add_member(:api_id, Shapes::ShapeRef.new(shape: ApiId, required: true, location_name: "apiId"))
    UpdateProductApiPageResponse.add_member(:display_content, Shapes::ShapeRef.new(shape: ApiPageDisplayContentResponse, required: true, location_name: "displayContent"))
    UpdateProductApiPageResponse.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, required: true, location_name: "tryItState"))
    UpdateProductApiPageResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateProductApiPageResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    UpdateProductApiPageResponse.add_member(:status_exception, Shapes::ShapeRef.new(shape: ProductApiPageStatusException, location_name: "statusException"))
    UpdateProductApiPageResponse.struct_class = Types::UpdateProductApiPageResponse

    UpdateProductPageRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    UpdateProductPageRequest.add_member(:product_page_id, Shapes::ShapeRef.new(shape: ProductPageId, required: true, location: "uri", location_name: "productPageId"))
    UpdateProductPageRequest.add_member(:display_content, Shapes::ShapeRef.new(shape: DisplayContent, location_name: "displayContent"))
    UpdateProductPageRequest.struct_class = Types::UpdateProductPageRequest

    UpdateProductPageResponse.add_member(:product_page_id, Shapes::ShapeRef.new(shape: ProductPageId, required: true, location_name: "productPageId"))
    UpdateProductPageResponse.add_member(:product_page_arn, Shapes::ShapeRef.new(shape: ProductPageArn, required: true, location_name: "productPageArn"))
    UpdateProductPageResponse.add_member(:display_content, Shapes::ShapeRef.new(shape: DisplayContent, location_name: "displayContent"))
    UpdateProductPageResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateProductPageResponse.struct_class = Types::UpdateProductPageResponse

    UpdateProductRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location: "uri", location_name: "productId"))
    UpdateProductRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ProductName, location_name: "displayName"))
    UpdateProductRequest.add_member(:description, Shapes::ShapeRef.new(shape: ProductDescription, location_name: "description"))
    UpdateProductRequest.add_member(:display_order, Shapes::ShapeRef.new(shape: DisplayOrder, location_name: "displayOrder"))
    UpdateProductRequest.add_member(:api_selection_configuration, Shapes::ShapeRef.new(shape: ApiSelectionConfiguration, location_name: "apiSelectionConfiguration"))
    UpdateProductRequest.struct_class = Types::UpdateProductRequest

    UpdateProductResponse.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location_name: "productId"))
    UpdateProductResponse.add_member(:product_arn, Shapes::ShapeRef.new(shape: ProductArn, required: true, location_name: "productArn"))
    UpdateProductResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ProductName, required: true, location_name: "displayName"))
    UpdateProductResponse.add_member(:display_order, Shapes::ShapeRef.new(shape: DisplayOrder, location_name: "displayOrder"))
    UpdateProductResponse.add_member(:description, Shapes::ShapeRef.new(shape: ProductDescription, location_name: "description"))
    UpdateProductResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateProductResponse.add_member(:api_selection_configuration, Shapes::ShapeRef.new(shape: ApiSelectionConfiguration, location_name: "apiSelectionConfiguration"))
    UpdateProductResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProductStatus, location_name: "status"))
    UpdateProductResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: ProductFailureReason, location_name: "failureReason"))
    UpdateProductResponse.struct_class = Types::UpdateProductResponse

    WafApiSecurityEventDetail.add_member(:label, Shapes::ShapeRef.new(shape: ThreatLabel, location_name: "label"))
    WafApiSecurityEventDetail.add_member(:category, Shapes::ShapeRef.new(shape: ThreatCategory, location_name: "category"))
    WafApiSecurityEventDetail.add_member(:confidence, Shapes::ShapeRef.new(shape: Confidence, location_name: "confidence"))
    WafApiSecurityEventDetail.add_member(:web_acl_arn, Shapes::ShapeRef.new(shape: WebAclArn, location_name: "webAclArn"))
    WafApiSecurityEventDetail.struct_class = Types::WafApiSecurityEventDetail

    WorkloadList.member = Shapes::ShapeRef.new(shape: Workload)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2026-04-30"

      api.metadata = {
        "apiVersion" => "2026-04-30",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "apiportal",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "APIPortal",
        "serviceId" => "APIPortal",
        "signatureVersion" => "v4",
        "signingName" => "apiportal",
        "uid" => "apiportal-2026-04-30",
      }

      api.add_operation(:associate_managed_apis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateManagedApis"
        o.http_method = "POST"
        o.http_request_uri = "/products/{productId}/associate"
        o.input = Shapes::ShapeRef.new(shape: AssociateManagedApisRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateManagedApisResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_managed_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateManagedApi"
        o.http_method = "POST"
        o.http_request_uri = "/managedapis"
        o.input = Shapes::ShapeRef.new(shape: CreateManagedApiRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateManagedApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePortal"
        o.http_method = "POST"
        o.http_request_uri = "/portals"
        o.input = Shapes::ShapeRef.new(shape: CreatePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_portal_preview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePortalPreview"
        o.http_method = "POST"
        o.http_request_uri = "/portals/{portalId}/preview"
        o.input = Shapes::ShapeRef.new(shape: CreatePortalPreviewRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProduct"
        o.http_method = "POST"
        o.http_request_uri = "/products"
        o.input = Shapes::ShapeRef.new(shape: CreateProductRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProductResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_product_api_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProductApiPage"
        o.http_method = "POST"
        o.http_request_uri = "/products/{productId}/apipages"
        o.input = Shapes::ShapeRef.new(shape: CreateProductApiPageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProductApiPageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_product_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProductPage"
        o.http_method = "POST"
        o.http_request_uri = "/products/{productId}/productpages"
        o.input = Shapes::ShapeRef.new(shape: CreateProductPageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProductPageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_discovery_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDiscoveryConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/discovery-configuration"
        o.input = Shapes::ShapeRef.new(shape: DeleteDiscoveryConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_managed_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteManagedApi"
        o.http_method = "DELETE"
        o.http_request_uri = "/managedapis/{managedApiId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteManagedApiRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteManagedApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_organization_discovery_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOrganizationDiscoveryConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/org-discovery-configuration"
        o.input = Shapes::ShapeRef.new(shape: DeleteOrganizationDiscoveryConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePortal"
        o.http_method = "DELETE"
        o.http_request_uri = "/portals/{portalId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProduct"
        o.http_method = "DELETE"
        o.http_request_uri = "/products/{productId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProductRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_product_api_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProductApiPage"
        o.http_method = "DELETE"
        o.http_request_uri = "/products/{productId}/apipages/{productApiPageId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProductApiPageRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_product_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProductPage"
        o.http_method = "DELETE"
        o.http_request_uri = "/products/{productId}/productpages/{productPageId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProductPageRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_product_sharing_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProductSharingPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/products/{productId}/sharingpolicy"
        o.input = Shapes::ShapeRef.new(shape: DeleteProductSharingPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:disassociate_managed_apis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateManagedApis"
        o.http_method = "POST"
        o.http_request_uri = "/products/{productId}/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateManagedApisRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateManagedApisResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_api_inventory_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApiInventoryItem"
        o.http_method = "GET"
        o.http_request_uri = "/api-inventory/item"
        o.input = Shapes::ShapeRef.new(shape: GetApiInventoryItemRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApiInventoryItemResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_discovery_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDiscoveryConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/discovery-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetDiscoveryConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDiscoveryConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_managed_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetManagedApi"
        o.http_method = "GET"
        o.http_request_uri = "/managedapis/{managedApiId}"
        o.input = Shapes::ShapeRef.new(shape: GetManagedApiRequest)
        o.output = Shapes::ShapeRef.new(shape: GetManagedApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_organization_discovery_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOrganizationDiscoveryConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/org-discovery-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetOrganizationDiscoveryConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOrganizationDiscoveryConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPortal"
        o.http_method = "GET"
        o.http_request_uri = "/portals/{portalId}"
        o.input = Shapes::ShapeRef.new(shape: GetPortalRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProduct"
        o.http_method = "GET"
        o.http_request_uri = "/products/{productId}"
        o.input = Shapes::ShapeRef.new(shape: GetProductRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProductResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_product_api_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProductApiPage"
        o.http_method = "GET"
        o.http_request_uri = "/products/{productId}/apipages/{productApiPageId}"
        o.input = Shapes::ShapeRef.new(shape: GetProductApiPageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProductApiPageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_product_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProductPage"
        o.http_method = "GET"
        o.http_request_uri = "/products/{productId}/productpages/{productPageId}"
        o.input = Shapes::ShapeRef.new(shape: GetProductPageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProductPageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_product_sharing_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProductSharingPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/products/{productId}/sharingpolicy"
        o.input = Shapes::ShapeRef.new(shape: GetProductSharingPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProductSharingPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_api_inventory_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApiInventoryItems"
        o.http_method = "POST"
        o.http_request_uri = "/api-inventory"
        o.input = Shapes::ShapeRef.new(shape: ListApiInventoryItemsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApiInventoryItemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_discovery_statuses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDiscoveryStatuses"
        o.http_method = "GET"
        o.http_request_uri = "/discovery/statuses"
        o.input = Shapes::ShapeRef.new(shape: ListDiscoveryStatusesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDiscoveryStatusesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_api_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedApiEvents"
        o.http_method = "GET"
        o.http_request_uri = "/managedapis/{managedApiId}/events"
        o.input = Shapes::ShapeRef.new(shape: ListManagedApiEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedApiEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_apis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedApis"
        o.http_method = "GET"
        o.http_request_uri = "/managedapis"
        o.input = Shapes::ShapeRef.new(shape: ListManagedApisRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedApisResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_portals, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPortals"
        o.http_method = "GET"
        o.http_request_uri = "/portals"
        o.input = Shapes::ShapeRef.new(shape: ListPortalsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPortalsResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_product_api_pages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProductApiPages"
        o.http_method = "GET"
        o.http_request_uri = "/products/{productId}/apipages"
        o.input = Shapes::ShapeRef.new(shape: ListProductApiPagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProductApiPagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_product_pages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProductPages"
        o.http_method = "GET"
        o.http_request_uri = "/products/{productId}/productpages"
        o.input = Shapes::ShapeRef.new(shape: ListProductPagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProductPagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_products, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProducts"
        o.http_method = "GET"
        o.http_request_uri = "/products"
        o.input = Shapes::ShapeRef.new(shape: ListProductsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProductsResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_discovery_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDiscoveryConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/discovery-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutDiscoveryConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDiscoveryConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_organization_discovery_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutOrganizationDiscoveryConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/org-discovery-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutOrganizationDiscoveryConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutOrganizationDiscoveryConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_product_sharing_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutProductSharingPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/products/{productId}/sharingpolicy"
        o.input = Shapes::ShapeRef.new(shape: PutProductSharingPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_discovery, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDiscovery"
        o.http_method = "POST"
        o.http_request_uri = "/discovery/start"
        o.input = Shapes::ShapeRef.new(shape: StartDiscoveryRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_discovery, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDiscovery"
        o.http_method = "POST"
        o.http_request_uri = "/discovery/stop"
        o.input = Shapes::ShapeRef.new(shape: StopDiscoveryRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePortal"
        o.http_method = "PATCH"
        o.http_request_uri = "/portals/{portalId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_portal_publish_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePortalPublishStatus"
        o.http_method = "POST"
        o.http_request_uri = "/portals/{portalId}/publish"
        o.input = Shapes::ShapeRef.new(shape: UpdatePortalPublishStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProduct"
        o.http_method = "PATCH"
        o.http_request_uri = "/products/{productId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProductRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProductResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_product_api_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProductApiPage"
        o.http_method = "PATCH"
        o.http_request_uri = "/products/{productId}/apipages/{productApiPageId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProductApiPageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProductApiPageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_product_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProductPage"
        o.http_method = "PATCH"
        o.http_request_uri = "/products/{productId}/productpages/{productPageId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProductPageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProductPageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end

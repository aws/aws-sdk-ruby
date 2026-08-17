# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MarketplaceDiscovery
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AgreementResourceId = Shapes::StringShape.new(name: 'AgreementResourceId')
    AmazonMachineImageFulfillmentOption = Shapes::StructureShape.new(name: 'AmazonMachineImageFulfillmentOption')
    AmazonMachineImageOperatingSystem = Shapes::StructureShape.new(name: 'AmazonMachineImageOperatingSystem')
    AmazonMachineImageOperatingSystemList = Shapes::ListShape.new(name: 'AmazonMachineImageOperatingSystemList')
    AmazonMachineImageRecommendation = Shapes::StructureShape.new(name: 'AmazonMachineImageRecommendation')
    ApiFulfillmentOption = Shapes::StructureShape.new(name: 'ApiFulfillmentOption')
    AwsSupportedService = Shapes::StructureShape.new(name: 'AwsSupportedService')
    AwsSupportedServiceList = Shapes::ListShape.new(name: 'AwsSupportedServiceList')
    BillingPeriodType = Shapes::StringShape.new(name: 'BillingPeriodType')
    BoundedString = Shapes::StringShape.new(name: 'BoundedString')
    ByolPricingTerm = Shapes::StructureShape.new(name: 'ByolPricingTerm')
    Catalog = Shapes::StringShape.new(name: 'Catalog')
    Category = Shapes::StructureShape.new(name: 'Category')
    CategoryList = Shapes::ListShape.new(name: 'CategoryList')
    CloudFormationFulfillmentOption = Shapes::StructureShape.new(name: 'CloudFormationFulfillmentOption')
    ConfigurableUpfrontPricingTerm = Shapes::StructureShape.new(name: 'ConfigurableUpfrontPricingTerm')
    ConfigurableUpfrontRateCardItem = Shapes::StructureShape.new(name: 'ConfigurableUpfrontRateCardItem')
    ConfigurableUpfrontRateCardList = Shapes::ListShape.new(name: 'ConfigurableUpfrontRateCardList')
    Constraints = Shapes::StructureShape.new(name: 'Constraints')
    ContainerFulfillmentOption = Shapes::StructureShape.new(name: 'ContainerFulfillmentOption')
    ContainerOperatingSystem = Shapes::StructureShape.new(name: 'ContainerOperatingSystem')
    ContainerOperatingSystemList = Shapes::ListShape.new(name: 'ContainerOperatingSystemList')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    DataArtifact = Shapes::StructureShape.new(name: 'DataArtifact')
    DataArtifactList = Shapes::ListShape.new(name: 'DataArtifactList')
    DataExchangeFulfillmentOption = Shapes::StructureShape.new(name: 'DataExchangeFulfillmentOption')
    DeployedOnAwsStatus = Shapes::StringShape.new(name: 'DeployedOnAwsStatus')
    DimensionLabel = Shapes::StructureShape.new(name: 'DimensionLabel')
    DimensionLabelList = Shapes::ListShape.new(name: 'DimensionLabelList')
    DimensionLabelType = Shapes::StringShape.new(name: 'DimensionLabelType')
    DocumentItem = Shapes::StructureShape.new(name: 'DocumentItem')
    DocumentList = Shapes::ListShape.new(name: 'DocumentList')
    Ec2ImageBuilderComponentFulfillmentOption = Shapes::StructureShape.new(name: 'Ec2ImageBuilderComponentFulfillmentOption')
    EksAddOnFulfillmentOption = Shapes::StructureShape.new(name: 'EksAddOnFulfillmentOption')
    EksAddOnOperatingSystem = Shapes::StructureShape.new(name: 'EksAddOnOperatingSystem')
    EksAddOnOperatingSystemList = Shapes::ListShape.new(name: 'EksAddOnOperatingSystemList')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    FacetTypeList = Shapes::ListShape.new(name: 'FacetTypeList')
    FixedUpfrontPricingTerm = Shapes::StructureShape.new(name: 'FixedUpfrontPricingTerm')
    FreeTrialPricingTerm = Shapes::StructureShape.new(name: 'FreeTrialPricingTerm')
    FulfillmentOption = Shapes::UnionShape.new(name: 'FulfillmentOption')
    FulfillmentOptionSummary = Shapes::StructureShape.new(name: 'FulfillmentOptionSummary')
    FulfillmentOptionSummaryList = Shapes::ListShape.new(name: 'FulfillmentOptionSummaryList')
    FulfillmentOptionType = Shapes::StringShape.new(name: 'FulfillmentOptionType')
    FulfillmentOptionsList = Shapes::ListShape.new(name: 'FulfillmentOptionsList')
    GetListingInput = Shapes::StructureShape.new(name: 'GetListingInput')
    GetListingOutput = Shapes::StructureShape.new(name: 'GetListingOutput')
    GetListingOutputLongDescriptionString = Shapes::StringShape.new(name: 'GetListingOutputLongDescriptionString')
    GetOfferInput = Shapes::StructureShape.new(name: 'GetOfferInput')
    GetOfferOutput = Shapes::StructureShape.new(name: 'GetOfferOutput')
    GetOfferSetInput = Shapes::StructureShape.new(name: 'GetOfferSetInput')
    GetOfferSetOutput = Shapes::StructureShape.new(name: 'GetOfferSetOutput')
    GetOfferTermsInput = Shapes::StructureShape.new(name: 'GetOfferTermsInput')
    GetOfferTermsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'GetOfferTermsInputMaxResultsInteger')
    GetOfferTermsOutput = Shapes::StructureShape.new(name: 'GetOfferTermsOutput')
    GetProductInput = Shapes::StructureShape.new(name: 'GetProductInput')
    GetProductOutput = Shapes::StructureShape.new(name: 'GetProductOutput')
    GetProductOutputLongDescriptionString = Shapes::StringShape.new(name: 'GetProductOutputLongDescriptionString')
    GrantItem = Shapes::StructureShape.new(name: 'GrantItem')
    GrantList = Shapes::ListShape.new(name: 'GrantList')
    HelmFulfillmentOption = Shapes::StructureShape.new(name: 'HelmFulfillmentOption')
    HelmOperatingSystem = Shapes::StructureShape.new(name: 'HelmOperatingSystem')
    HelmOperatingSystemList = Shapes::ListShape.new(name: 'HelmOperatingSystemList')
    HighlightList = Shapes::ListShape.new(name: 'HighlightList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LegalDocumentType = Shapes::StringShape.new(name: 'LegalDocumentType')
    LegalTerm = Shapes::StructureShape.new(name: 'LegalTerm')
    ListFulfillmentOptionsInput = Shapes::StructureShape.new(name: 'ListFulfillmentOptionsInput')
    ListFulfillmentOptionsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListFulfillmentOptionsInputMaxResultsInteger')
    ListFulfillmentOptionsOutput = Shapes::StructureShape.new(name: 'ListFulfillmentOptionsOutput')
    ListPurchaseOptionsInput = Shapes::StructureShape.new(name: 'ListPurchaseOptionsInput')
    ListPurchaseOptionsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListPurchaseOptionsInputMaxResultsInteger')
    ListPurchaseOptionsOutput = Shapes::StructureShape.new(name: 'ListPurchaseOptionsOutput')
    ListingAssociatedEntity = Shapes::StructureShape.new(name: 'ListingAssociatedEntity')
    ListingAssociatedEntityList = Shapes::ListShape.new(name: 'ListingAssociatedEntityList')
    ListingBadge = Shapes::StructureShape.new(name: 'ListingBadge')
    ListingBadgeList = Shapes::ListShape.new(name: 'ListingBadgeList')
    ListingBadgeType = Shapes::StringShape.new(name: 'ListingBadgeType')
    ListingFacet = Shapes::StructureShape.new(name: 'ListingFacet')
    ListingFacetList = Shapes::ListShape.new(name: 'ListingFacetList')
    ListingId = Shapes::StringShape.new(name: 'ListingId')
    ListingSummary = Shapes::StructureShape.new(name: 'ListingSummary')
    ListingSummaryAssociatedEntity = Shapes::StructureShape.new(name: 'ListingSummaryAssociatedEntity')
    ListingSummaryAssociatedEntityList = Shapes::ListShape.new(name: 'ListingSummaryAssociatedEntityList')
    ListingSummaryList = Shapes::ListShape.new(name: 'ListingSummaryList')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NetPaymentTerm = Shapes::StructureShape.new(name: 'NetPaymentTerm')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonNegativeCount = Shapes::IntegerShape.new(name: 'NonNegativeCount')
    NullableString = Shapes::StringShape.new(name: 'NullableString')
    OfferAssociatedEntity = Shapes::StructureShape.new(name: 'OfferAssociatedEntity')
    OfferAssociatedEntityList = Shapes::ListShape.new(name: 'OfferAssociatedEntityList')
    OfferId = Shapes::StringShape.new(name: 'OfferId')
    OfferInformation = Shapes::StructureShape.new(name: 'OfferInformation')
    OfferSetAssociatedEntity = Shapes::StructureShape.new(name: 'OfferSetAssociatedEntity')
    OfferSetAssociatedEntityList = Shapes::ListShape.new(name: 'OfferSetAssociatedEntityList')
    OfferSetId = Shapes::StringShape.new(name: 'OfferSetId')
    OfferSetInformation = Shapes::StructureShape.new(name: 'OfferSetInformation')
    OfferTerm = Shapes::UnionShape.new(name: 'OfferTerm')
    OfferTermsList = Shapes::ListShape.new(name: 'OfferTermsList')
    PaymentScheduleTerm = Shapes::StructureShape.new(name: 'PaymentScheduleTerm')
    PricingModel = Shapes::StructureShape.new(name: 'PricingModel')
    PricingModelList = Shapes::ListShape.new(name: 'PricingModelList')
    PricingModelType = Shapes::StringShape.new(name: 'PricingModelType')
    PricingUnit = Shapes::StructureShape.new(name: 'PricingUnit')
    PricingUnitList = Shapes::ListShape.new(name: 'PricingUnitList')
    PricingUnitType = Shapes::StringShape.new(name: 'PricingUnitType')
    ProductId = Shapes::StringShape.new(name: 'ProductId')
    ProductInformation = Shapes::StructureShape.new(name: 'ProductInformation')
    ProfessionalServicesFulfillmentOption = Shapes::StructureShape.new(name: 'ProfessionalServicesFulfillmentOption')
    PromotionalEmbeddedImage = Shapes::StructureShape.new(name: 'PromotionalEmbeddedImage')
    PromotionalEmbeddedVideo = Shapes::StructureShape.new(name: 'PromotionalEmbeddedVideo')
    PromotionalMedia = Shapes::UnionShape.new(name: 'PromotionalMedia')
    PromotionalMediaList = Shapes::ListShape.new(name: 'PromotionalMediaList')
    PurchaseOptionAssociatedEntity = Shapes::StructureShape.new(name: 'PurchaseOptionAssociatedEntity')
    PurchaseOptionAssociatedEntityList = Shapes::ListShape.new(name: 'PurchaseOptionAssociatedEntityList')
    PurchaseOptionBadge = Shapes::StructureShape.new(name: 'PurchaseOptionBadge')
    PurchaseOptionBadgeList = Shapes::ListShape.new(name: 'PurchaseOptionBadgeList')
    PurchaseOptionBadgeType = Shapes::StringShape.new(name: 'PurchaseOptionBadgeType')
    PurchaseOptionFilter = Shapes::StructureShape.new(name: 'PurchaseOptionFilter')
    PurchaseOptionFilterList = Shapes::ListShape.new(name: 'PurchaseOptionFilterList')
    PurchaseOptionFilterType = Shapes::StringShape.new(name: 'PurchaseOptionFilterType')
    PurchaseOptionFilterValue = Shapes::StringShape.new(name: 'PurchaseOptionFilterValue')
    PurchaseOptionFilterValueList = Shapes::ListShape.new(name: 'PurchaseOptionFilterValueList')
    PurchaseOptionSummary = Shapes::StructureShape.new(name: 'PurchaseOptionSummary')
    PurchaseOptionSummaryList = Shapes::ListShape.new(name: 'PurchaseOptionSummaryList')
    PurchaseOptionType = Shapes::StringShape.new(name: 'PurchaseOptionType')
    RateCardConstraintType = Shapes::StringShape.new(name: 'RateCardConstraintType')
    RateCardItem = Shapes::StructureShape.new(name: 'RateCardItem')
    RateCardList = Shapes::ListShape.new(name: 'RateCardList')
    RecurringPaymentTerm = Shapes::StructureShape.new(name: 'RecurringPaymentTerm')
    RenewalTerm = Shapes::StructureShape.new(name: 'RenewalTerm')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceContentType = Shapes::StringShape.new(name: 'ResourceContentType')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ReviewSourceId = Shapes::StringShape.new(name: 'ReviewSourceId')
    ReviewSourceSummary = Shapes::StructureShape.new(name: 'ReviewSourceSummary')
    ReviewSourceSummaryList = Shapes::ListShape.new(name: 'ReviewSourceSummaryList')
    ReviewSummary = Shapes::StructureShape.new(name: 'ReviewSummary')
    SaasFulfillmentOption = Shapes::StructureShape.new(name: 'SaasFulfillmentOption')
    SageMakerAlgorithmFulfillmentOption = Shapes::StructureShape.new(name: 'SageMakerAlgorithmFulfillmentOption')
    SageMakerAlgorithmRecommendation = Shapes::StructureShape.new(name: 'SageMakerAlgorithmRecommendation')
    SageMakerModelFulfillmentOption = Shapes::StructureShape.new(name: 'SageMakerModelFulfillmentOption')
    SageMakerModelRecommendation = Shapes::StructureShape.new(name: 'SageMakerModelRecommendation')
    ScheduleItem = Shapes::StructureShape.new(name: 'ScheduleItem')
    ScheduleList = Shapes::ListShape.new(name: 'ScheduleList')
    SearchFacetType = Shapes::StringShape.new(name: 'SearchFacetType')
    SearchFacetsInput = Shapes::StructureShape.new(name: 'SearchFacetsInput')
    SearchFacetsOutput = Shapes::StructureShape.new(name: 'SearchFacetsOutput')
    SearchFilter = Shapes::StructureShape.new(name: 'SearchFilter')
    SearchFilterFilterValuesList = Shapes::ListShape.new(name: 'SearchFilterFilterValuesList')
    SearchFilterList = Shapes::ListShape.new(name: 'SearchFilterList')
    SearchFilterType = Shapes::StringShape.new(name: 'SearchFilterType')
    SearchFilterValue = Shapes::StringShape.new(name: 'SearchFilterValue')
    SearchListingsInput = Shapes::StructureShape.new(name: 'SearchListingsInput')
    SearchListingsOutput = Shapes::StructureShape.new(name: 'SearchListingsOutput')
    SearchListingsSortBy = Shapes::StringShape.new(name: 'SearchListingsSortBy')
    SearchListingsSortOrder = Shapes::StringShape.new(name: 'SearchListingsSortOrder')
    SearchText = Shapes::StringShape.new(name: 'SearchText')
    Selector = Shapes::StructureShape.new(name: 'Selector')
    SelectorType = Shapes::StringShape.new(name: 'SelectorType')
    SellerEngagement = Shapes::StructureShape.new(name: 'SellerEngagement')
    SellerEngagementContentType = Shapes::StringShape.new(name: 'SellerEngagementContentType')
    SellerEngagementList = Shapes::ListShape.new(name: 'SellerEngagementList')
    SellerEngagementType = Shapes::StringShape.new(name: 'SellerEngagementType')
    SellerInformation = Shapes::StructureShape.new(name: 'SellerInformation')
    SellerProfileId = Shapes::StringShape.new(name: 'SellerProfileId')
    String = Shapes::StringShape.new(name: 'String')
    SupportTerm = Shapes::StructureShape.new(name: 'SupportTerm')
    TermId = Shapes::StringShape.new(name: 'TermId')
    TermType = Shapes::StringShape.new(name: 'TermType')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TypeToFacetMap = Shapes::MapShape.new(name: 'TypeToFacetMap')
    URL = Shapes::StringShape.new(name: 'URL')
    UsageBasedPricingTerm = Shapes::StructureShape.new(name: 'UsageBasedPricingTerm')
    UsageBasedRateCardItem = Shapes::StructureShape.new(name: 'UsageBasedRateCardItem')
    UsageBasedRateCardList = Shapes::ListShape.new(name: 'UsageBasedRateCardList')
    UseCase = Shapes::StructureShape.new(name: 'UseCase')
    UseCaseEntry = Shapes::StructureShape.new(name: 'UseCaseEntry')
    UseCaseList = Shapes::ListShape.new(name: 'UseCaseList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    ValidityTerm = Shapes::StructureShape.new(name: 'ValidityTerm')
    VariablePaymentTerm = Shapes::StructureShape.new(name: 'VariablePaymentTerm')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AmazonMachineImageFulfillmentOption.add_member(:fulfillment_option_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionId"))
    AmazonMachineImageFulfillmentOption.add_member(:fulfillment_option_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionName"))
    AmazonMachineImageFulfillmentOption.add_member(:fulfillment_option_version, Shapes::ShapeRef.new(shape: String, location_name: "fulfillmentOptionVersion"))
    AmazonMachineImageFulfillmentOption.add_member(:fulfillment_option_type, Shapes::ShapeRef.new(shape: FulfillmentOptionType, required: true, location_name: "fulfillmentOptionType"))
    AmazonMachineImageFulfillmentOption.add_member(:fulfillment_option_display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionDisplayName"))
    AmazonMachineImageFulfillmentOption.add_member(:operating_systems, Shapes::ShapeRef.new(shape: AmazonMachineImageOperatingSystemList, required: true, location_name: "operatingSystems"))
    AmazonMachineImageFulfillmentOption.add_member(:recommendation, Shapes::ShapeRef.new(shape: AmazonMachineImageRecommendation, location_name: "recommendation"))
    AmazonMachineImageFulfillmentOption.add_member(:release_notes, Shapes::ShapeRef.new(shape: String, location_name: "releaseNotes"))
    AmazonMachineImageFulfillmentOption.add_member(:usage_instructions, Shapes::ShapeRef.new(shape: String, location_name: "usageInstructions"))
    AmazonMachineImageFulfillmentOption.struct_class = Types::AmazonMachineImageFulfillmentOption

    AmazonMachineImageOperatingSystem.add_member(:operating_system_family_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "operatingSystemFamilyName"))
    AmazonMachineImageOperatingSystem.add_member(:operating_system_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "operatingSystemName"))
    AmazonMachineImageOperatingSystem.add_member(:operating_system_version, Shapes::ShapeRef.new(shape: String, location_name: "operatingSystemVersion"))
    AmazonMachineImageOperatingSystem.struct_class = Types::AmazonMachineImageOperatingSystem

    AmazonMachineImageOperatingSystemList.member = Shapes::ShapeRef.new(shape: AmazonMachineImageOperatingSystem)

    AmazonMachineImageRecommendation.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "instanceType"))
    AmazonMachineImageRecommendation.struct_class = Types::AmazonMachineImageRecommendation

    ApiFulfillmentOption.add_member(:fulfillment_option_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionId"))
    ApiFulfillmentOption.add_member(:fulfillment_option_type, Shapes::ShapeRef.new(shape: FulfillmentOptionType, required: true, location_name: "fulfillmentOptionType"))
    ApiFulfillmentOption.add_member(:fulfillment_option_display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionDisplayName"))
    ApiFulfillmentOption.add_member(:usage_instructions, Shapes::ShapeRef.new(shape: String, location_name: "usageInstructions"))
    ApiFulfillmentOption.add_member(:aws_supported_services, Shapes::ShapeRef.new(shape: AwsSupportedServiceList, required: true, location_name: "awsSupportedServices"))
    ApiFulfillmentOption.struct_class = Types::ApiFulfillmentOption

    AwsSupportedService.add_member(:supported_service_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "supportedServiceType"))
    AwsSupportedService.add_member(:display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "displayName"))
    AwsSupportedService.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    AwsSupportedService.struct_class = Types::AwsSupportedService

    AwsSupportedServiceList.member = Shapes::ShapeRef.new(shape: AwsSupportedService)

    ByolPricingTerm.add_member(:id, Shapes::ShapeRef.new(shape: TermId, required: true, location_name: "id"))
    ByolPricingTerm.add_member(:type, Shapes::ShapeRef.new(shape: TermType, required: true, location_name: "type"))
    ByolPricingTerm.struct_class = Types::ByolPricingTerm

    Category.add_member(:category_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "categoryId"))
    Category.add_member(:display_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "displayName"))
    Category.struct_class = Types::Category

    CategoryList.member = Shapes::ShapeRef.new(shape: Category)

    CloudFormationFulfillmentOption.add_member(:fulfillment_option_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionId"))
    CloudFormationFulfillmentOption.add_member(:fulfillment_option_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionName"))
    CloudFormationFulfillmentOption.add_member(:fulfillment_option_type, Shapes::ShapeRef.new(shape: FulfillmentOptionType, required: true, location_name: "fulfillmentOptionType"))
    CloudFormationFulfillmentOption.add_member(:fulfillment_option_display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionDisplayName"))
    CloudFormationFulfillmentOption.add_member(:fulfillment_option_version, Shapes::ShapeRef.new(shape: String, location_name: "fulfillmentOptionVersion"))
    CloudFormationFulfillmentOption.add_member(:release_notes, Shapes::ShapeRef.new(shape: String, location_name: "releaseNotes"))
    CloudFormationFulfillmentOption.add_member(:usage_instructions, Shapes::ShapeRef.new(shape: String, location_name: "usageInstructions"))
    CloudFormationFulfillmentOption.struct_class = Types::CloudFormationFulfillmentOption

    ConfigurableUpfrontPricingTerm.add_member(:id, Shapes::ShapeRef.new(shape: TermId, required: true, location_name: "id"))
    ConfigurableUpfrontPricingTerm.add_member(:type, Shapes::ShapeRef.new(shape: TermType, required: true, location_name: "type"))
    ConfigurableUpfrontPricingTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "currencyCode"))
    ConfigurableUpfrontPricingTerm.add_member(:rate_cards, Shapes::ShapeRef.new(shape: ConfigurableUpfrontRateCardList, location_name: "rateCards"))
    ConfigurableUpfrontPricingTerm.struct_class = Types::ConfigurableUpfrontPricingTerm

    ConfigurableUpfrontRateCardItem.add_member(:selector, Shapes::ShapeRef.new(shape: Selector, required: true, location_name: "selector"))
    ConfigurableUpfrontRateCardItem.add_member(:constraints, Shapes::ShapeRef.new(shape: Constraints, required: true, location_name: "constraints"))
    ConfigurableUpfrontRateCardItem.add_member(:rate_card, Shapes::ShapeRef.new(shape: RateCardList, required: true, location_name: "rateCard"))
    ConfigurableUpfrontRateCardItem.struct_class = Types::ConfigurableUpfrontRateCardItem

    ConfigurableUpfrontRateCardList.member = Shapes::ShapeRef.new(shape: ConfigurableUpfrontRateCardItem)

    Constraints.add_member(:multiple_dimension_selection, Shapes::ShapeRef.new(shape: RateCardConstraintType, required: true, location_name: "multipleDimensionSelection"))
    Constraints.add_member(:quantity_configuration, Shapes::ShapeRef.new(shape: RateCardConstraintType, required: true, location_name: "quantityConfiguration"))
    Constraints.struct_class = Types::Constraints

    ContainerFulfillmentOption.add_member(:fulfillment_option_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionId"))
    ContainerFulfillmentOption.add_member(:fulfillment_option_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionName"))
    ContainerFulfillmentOption.add_member(:fulfillment_option_type, Shapes::ShapeRef.new(shape: FulfillmentOptionType, required: true, location_name: "fulfillmentOptionType"))
    ContainerFulfillmentOption.add_member(:fulfillment_option_display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionDisplayName"))
    ContainerFulfillmentOption.add_member(:fulfillment_option_version, Shapes::ShapeRef.new(shape: String, location_name: "fulfillmentOptionVersion"))
    ContainerFulfillmentOption.add_member(:operating_systems, Shapes::ShapeRef.new(shape: ContainerOperatingSystemList, location_name: "operatingSystems"))
    ContainerFulfillmentOption.add_member(:aws_supported_services, Shapes::ShapeRef.new(shape: AwsSupportedServiceList, location_name: "awsSupportedServices"))
    ContainerFulfillmentOption.add_member(:release_notes, Shapes::ShapeRef.new(shape: String, location_name: "releaseNotes"))
    ContainerFulfillmentOption.add_member(:usage_instructions, Shapes::ShapeRef.new(shape: String, location_name: "usageInstructions"))
    ContainerFulfillmentOption.struct_class = Types::ContainerFulfillmentOption

    ContainerOperatingSystem.add_member(:operating_system_family_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "operatingSystemFamilyName"))
    ContainerOperatingSystem.add_member(:operating_system_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "operatingSystemName"))
    ContainerOperatingSystem.struct_class = Types::ContainerOperatingSystem

    ContainerOperatingSystemList.member = Shapes::ShapeRef.new(shape: ContainerOperatingSystem)

    DataArtifact.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    DataArtifact.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "resourceArn"))
    DataArtifact.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    DataArtifact.add_member(:data_classification, Shapes::ShapeRef.new(shape: String, required: true, location_name: "dataClassification"))
    DataArtifact.struct_class = Types::DataArtifact

    DataArtifactList.member = Shapes::ShapeRef.new(shape: DataArtifact)

    DataExchangeFulfillmentOption.add_member(:fulfillment_option_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionId"))
    DataExchangeFulfillmentOption.add_member(:fulfillment_option_type, Shapes::ShapeRef.new(shape: FulfillmentOptionType, required: true, location_name: "fulfillmentOptionType"))
    DataExchangeFulfillmentOption.add_member(:fulfillment_option_display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionDisplayName"))
    DataExchangeFulfillmentOption.add_member(:data_artifacts, Shapes::ShapeRef.new(shape: DataArtifactList, location_name: "dataArtifacts"))
    DataExchangeFulfillmentOption.struct_class = Types::DataExchangeFulfillmentOption

    DimensionLabel.add_member(:label_type, Shapes::ShapeRef.new(shape: DimensionLabelType, required: true, location_name: "labelType"))
    DimensionLabel.add_member(:label_value, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "labelValue"))
    DimensionLabel.add_member(:display_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "displayName"))
    DimensionLabel.struct_class = Types::DimensionLabel

    DimensionLabelList.member = Shapes::ShapeRef.new(shape: DimensionLabel)

    DocumentItem.add_member(:type, Shapes::ShapeRef.new(shape: LegalDocumentType, required: true, location_name: "type"))
    DocumentItem.add_member(:url, Shapes::ShapeRef.new(shape: URL, required: true, location_name: "url"))
    DocumentItem.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    DocumentItem.struct_class = Types::DocumentItem

    DocumentList.member = Shapes::ShapeRef.new(shape: DocumentItem)

    Ec2ImageBuilderComponentFulfillmentOption.add_member(:fulfillment_option_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionId"))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:fulfillment_option_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionName"))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:fulfillment_option_type, Shapes::ShapeRef.new(shape: FulfillmentOptionType, required: true, location_name: "fulfillmentOptionType"))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:fulfillment_option_display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionDisplayName"))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:fulfillment_option_version, Shapes::ShapeRef.new(shape: String, location_name: "fulfillmentOptionVersion"))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:operating_systems, Shapes::ShapeRef.new(shape: ContainerOperatingSystemList, location_name: "operatingSystems"))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:aws_supported_services, Shapes::ShapeRef.new(shape: AwsSupportedServiceList, location_name: "awsSupportedServices"))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:release_notes, Shapes::ShapeRef.new(shape: String, location_name: "releaseNotes"))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:usage_instructions, Shapes::ShapeRef.new(shape: String, location_name: "usageInstructions"))
    Ec2ImageBuilderComponentFulfillmentOption.struct_class = Types::Ec2ImageBuilderComponentFulfillmentOption

    EksAddOnFulfillmentOption.add_member(:fulfillment_option_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionId"))
    EksAddOnFulfillmentOption.add_member(:fulfillment_option_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionName"))
    EksAddOnFulfillmentOption.add_member(:fulfillment_option_type, Shapes::ShapeRef.new(shape: FulfillmentOptionType, required: true, location_name: "fulfillmentOptionType"))
    EksAddOnFulfillmentOption.add_member(:fulfillment_option_display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionDisplayName"))
    EksAddOnFulfillmentOption.add_member(:fulfillment_option_version, Shapes::ShapeRef.new(shape: String, location_name: "fulfillmentOptionVersion"))
    EksAddOnFulfillmentOption.add_member(:operating_systems, Shapes::ShapeRef.new(shape: EksAddOnOperatingSystemList, location_name: "operatingSystems"))
    EksAddOnFulfillmentOption.add_member(:release_notes, Shapes::ShapeRef.new(shape: String, location_name: "releaseNotes"))
    EksAddOnFulfillmentOption.add_member(:usage_instructions, Shapes::ShapeRef.new(shape: String, location_name: "usageInstructions"))
    EksAddOnFulfillmentOption.add_member(:aws_supported_services, Shapes::ShapeRef.new(shape: AwsSupportedServiceList, location_name: "awsSupportedServices"))
    EksAddOnFulfillmentOption.struct_class = Types::EksAddOnFulfillmentOption

    EksAddOnOperatingSystem.add_member(:operating_system_family_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "operatingSystemFamilyName"))
    EksAddOnOperatingSystem.add_member(:operating_system_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "operatingSystemName"))
    EksAddOnOperatingSystem.struct_class = Types::EksAddOnOperatingSystem

    EksAddOnOperatingSystemList.member = Shapes::ShapeRef.new(shape: EksAddOnOperatingSystem)

    FacetTypeList.member = Shapes::ShapeRef.new(shape: SearchFacetType)

    FixedUpfrontPricingTerm.add_member(:id, Shapes::ShapeRef.new(shape: TermId, required: true, location_name: "id"))
    FixedUpfrontPricingTerm.add_member(:type, Shapes::ShapeRef.new(shape: TermType, required: true, location_name: "type"))
    FixedUpfrontPricingTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "currencyCode"))
    FixedUpfrontPricingTerm.add_member(:duration, Shapes::ShapeRef.new(shape: BoundedString, location_name: "duration"))
    FixedUpfrontPricingTerm.add_member(:price, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "price"))
    FixedUpfrontPricingTerm.add_member(:grants, Shapes::ShapeRef.new(shape: GrantList, required: true, location_name: "grants"))
    FixedUpfrontPricingTerm.struct_class = Types::FixedUpfrontPricingTerm

    FreeTrialPricingTerm.add_member(:id, Shapes::ShapeRef.new(shape: TermId, required: true, location_name: "id"))
    FreeTrialPricingTerm.add_member(:type, Shapes::ShapeRef.new(shape: TermType, required: true, location_name: "type"))
    FreeTrialPricingTerm.add_member(:duration, Shapes::ShapeRef.new(shape: BoundedString, location_name: "duration"))
    FreeTrialPricingTerm.add_member(:grants, Shapes::ShapeRef.new(shape: GrantList, required: true, location_name: "grants"))
    FreeTrialPricingTerm.struct_class = Types::FreeTrialPricingTerm

    FulfillmentOption.add_member(:amazon_machine_image_fulfillment_option, Shapes::ShapeRef.new(shape: AmazonMachineImageFulfillmentOption, location_name: "amazonMachineImageFulfillmentOption"))
    FulfillmentOption.add_member(:api_fulfillment_option, Shapes::ShapeRef.new(shape: ApiFulfillmentOption, location_name: "apiFulfillmentOption"))
    FulfillmentOption.add_member(:cloud_formation_fulfillment_option, Shapes::ShapeRef.new(shape: CloudFormationFulfillmentOption, location_name: "cloudFormationFulfillmentOption"))
    FulfillmentOption.add_member(:container_fulfillment_option, Shapes::ShapeRef.new(shape: ContainerFulfillmentOption, location_name: "containerFulfillmentOption"))
    FulfillmentOption.add_member(:helm_fulfillment_option, Shapes::ShapeRef.new(shape: HelmFulfillmentOption, location_name: "helmFulfillmentOption"))
    FulfillmentOption.add_member(:eks_add_on_fulfillment_option, Shapes::ShapeRef.new(shape: EksAddOnFulfillmentOption, location_name: "eksAddOnFulfillmentOption"))
    FulfillmentOption.add_member(:ec2_image_builder_component_fulfillment_option, Shapes::ShapeRef.new(shape: Ec2ImageBuilderComponentFulfillmentOption, location_name: "ec2ImageBuilderComponentFulfillmentOption"))
    FulfillmentOption.add_member(:data_exchange_fulfillment_option, Shapes::ShapeRef.new(shape: DataExchangeFulfillmentOption, location_name: "dataExchangeFulfillmentOption"))
    FulfillmentOption.add_member(:professional_services_fulfillment_option, Shapes::ShapeRef.new(shape: ProfessionalServicesFulfillmentOption, location_name: "professionalServicesFulfillmentOption"))
    FulfillmentOption.add_member(:saas_fulfillment_option, Shapes::ShapeRef.new(shape: SaasFulfillmentOption, location_name: "saasFulfillmentOption"))
    FulfillmentOption.add_member(:sage_maker_algorithm_fulfillment_option, Shapes::ShapeRef.new(shape: SageMakerAlgorithmFulfillmentOption, location_name: "sageMakerAlgorithmFulfillmentOption"))
    FulfillmentOption.add_member(:sage_maker_model_fulfillment_option, Shapes::ShapeRef.new(shape: SageMakerModelFulfillmentOption, location_name: "sageMakerModelFulfillmentOption"))
    FulfillmentOption.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FulfillmentOption.add_member_subclass(:amazon_machine_image_fulfillment_option, Types::FulfillmentOption::AmazonMachineImageFulfillmentOption)
    FulfillmentOption.add_member_subclass(:api_fulfillment_option, Types::FulfillmentOption::ApiFulfillmentOption)
    FulfillmentOption.add_member_subclass(:cloud_formation_fulfillment_option, Types::FulfillmentOption::CloudFormationFulfillmentOption)
    FulfillmentOption.add_member_subclass(:container_fulfillment_option, Types::FulfillmentOption::ContainerFulfillmentOption)
    FulfillmentOption.add_member_subclass(:helm_fulfillment_option, Types::FulfillmentOption::HelmFulfillmentOption)
    FulfillmentOption.add_member_subclass(:eks_add_on_fulfillment_option, Types::FulfillmentOption::EksAddOnFulfillmentOption)
    FulfillmentOption.add_member_subclass(:ec2_image_builder_component_fulfillment_option, Types::FulfillmentOption::Ec2ImageBuilderComponentFulfillmentOption)
    FulfillmentOption.add_member_subclass(:data_exchange_fulfillment_option, Types::FulfillmentOption::DataExchangeFulfillmentOption)
    FulfillmentOption.add_member_subclass(:professional_services_fulfillment_option, Types::FulfillmentOption::ProfessionalServicesFulfillmentOption)
    FulfillmentOption.add_member_subclass(:saas_fulfillment_option, Types::FulfillmentOption::SaasFulfillmentOption)
    FulfillmentOption.add_member_subclass(:sage_maker_algorithm_fulfillment_option, Types::FulfillmentOption::SageMakerAlgorithmFulfillmentOption)
    FulfillmentOption.add_member_subclass(:sage_maker_model_fulfillment_option, Types::FulfillmentOption::SageMakerModelFulfillmentOption)
    FulfillmentOption.add_member_subclass(:unknown, Types::FulfillmentOption::Unknown)
    FulfillmentOption.struct_class = Types::FulfillmentOption

    FulfillmentOptionSummary.add_member(:fulfillment_option_type, Shapes::ShapeRef.new(shape: FulfillmentOptionType, required: true, location_name: "fulfillmentOptionType"))
    FulfillmentOptionSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "displayName"))
    FulfillmentOptionSummary.struct_class = Types::FulfillmentOptionSummary

    FulfillmentOptionSummaryList.member = Shapes::ShapeRef.new(shape: FulfillmentOptionSummary)

    FulfillmentOptionsList.member = Shapes::ShapeRef.new(shape: FulfillmentOption)

    GetListingInput.add_member(:listing_id, Shapes::ShapeRef.new(shape: ListingId, required: true, location_name: "listingId"))
    GetListingInput.struct_class = Types::GetListingInput

    GetListingOutput.add_member(:associated_entities, Shapes::ShapeRef.new(shape: ListingAssociatedEntityList, required: true, location_name: "associatedEntities"))
    GetListingOutput.add_member(:badges, Shapes::ShapeRef.new(shape: ListingBadgeList, required: true, location_name: "badges"))
    GetListingOutput.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    GetListingOutput.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, required: true, location_name: "categories"))
    GetListingOutput.add_member(:fulfillment_option_summaries, Shapes::ShapeRef.new(shape: FulfillmentOptionSummaryList, required: true, location_name: "fulfillmentOptionSummaries"))
    GetListingOutput.add_member(:highlights, Shapes::ShapeRef.new(shape: HighlightList, required: true, location_name: "highlights"))
    GetListingOutput.add_member(:integration_guide, Shapes::ShapeRef.new(shape: NullableString, location_name: "integrationGuide"))
    GetListingOutput.add_member(:listing_id, Shapes::ShapeRef.new(shape: ListingId, required: true, location_name: "listingId"))
    GetListingOutput.add_member(:listing_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "listingName"))
    GetListingOutput.add_member(:logo_thumbnail_url, Shapes::ShapeRef.new(shape: URL, required: true, location_name: "logoThumbnailUrl"))
    GetListingOutput.add_member(:long_description, Shapes::ShapeRef.new(shape: GetListingOutputLongDescriptionString, required: true, location_name: "longDescription"))
    GetListingOutput.add_member(:pricing_models, Shapes::ShapeRef.new(shape: PricingModelList, required: true, location_name: "pricingModels"))
    GetListingOutput.add_member(:pricing_units, Shapes::ShapeRef.new(shape: PricingUnitList, required: true, location_name: "pricingUnits"))
    GetListingOutput.add_member(:promotional_media, Shapes::ShapeRef.new(shape: PromotionalMediaList, required: true, location_name: "promotionalMedia"))
    GetListingOutput.add_member(:publisher, Shapes::ShapeRef.new(shape: SellerInformation, required: true, location_name: "publisher"))
    GetListingOutput.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, required: true, location_name: "resources"))
    GetListingOutput.add_member(:review_summary, Shapes::ShapeRef.new(shape: ReviewSummary, location_name: "reviewSummary"))
    GetListingOutput.add_member(:seller_engagements, Shapes::ShapeRef.new(shape: SellerEngagementList, required: true, location_name: "sellerEngagements"))
    GetListingOutput.add_member(:short_description, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "shortDescription"))
    GetListingOutput.add_member(:use_cases, Shapes::ShapeRef.new(shape: UseCaseList, required: true, location_name: "useCases"))
    GetListingOutput.struct_class = Types::GetListingOutput

    GetOfferInput.add_member(:offer_id, Shapes::ShapeRef.new(shape: OfferId, required: true, location_name: "offerId"))
    GetOfferInput.struct_class = Types::GetOfferInput

    GetOfferOutput.add_member(:offer_id, Shapes::ShapeRef.new(shape: OfferId, required: true, location_name: "offerId"))
    GetOfferOutput.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    GetOfferOutput.add_member(:offer_name, Shapes::ShapeRef.new(shape: NullableString, location_name: "offerName"))
    GetOfferOutput.add_member(:expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expirationTime"))
    GetOfferOutput.add_member(:available_from_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "availableFromTime"))
    GetOfferOutput.add_member(:seller_of_record, Shapes::ShapeRef.new(shape: SellerInformation, required: true, location_name: "sellerOfRecord"))
    GetOfferOutput.add_member(:associated_entities, Shapes::ShapeRef.new(shape: OfferAssociatedEntityList, required: true, location_name: "associatedEntities"))
    GetOfferOutput.add_member(:agreement_proposal_id, Shapes::ShapeRef.new(shape: AgreementResourceId, required: true, location_name: "agreementProposalId"))
    GetOfferOutput.add_member(:replacement_agreement_id, Shapes::ShapeRef.new(shape: AgreementResourceId, location_name: "replacementAgreementId"))
    GetOfferOutput.add_member(:pricing_model, Shapes::ShapeRef.new(shape: PricingModel, required: true, location_name: "pricingModel"))
    GetOfferOutput.add_member(:badges, Shapes::ShapeRef.new(shape: PurchaseOptionBadgeList, required: true, location_name: "badges"))
    GetOfferOutput.struct_class = Types::GetOfferOutput

    GetOfferSetInput.add_member(:offer_set_id, Shapes::ShapeRef.new(shape: OfferSetId, required: true, location_name: "offerSetId"))
    GetOfferSetInput.struct_class = Types::GetOfferSetInput

    GetOfferSetOutput.add_member(:offer_set_id, Shapes::ShapeRef.new(shape: OfferSetId, required: true, location_name: "offerSetId"))
    GetOfferSetOutput.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    GetOfferSetOutput.add_member(:offer_set_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "offerSetName"))
    GetOfferSetOutput.add_member(:available_from_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "availableFromTime"))
    GetOfferSetOutput.add_member(:expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expirationTime"))
    GetOfferSetOutput.add_member(:buyer_notes, Shapes::ShapeRef.new(shape: NullableString, location_name: "buyerNotes"))
    GetOfferSetOutput.add_member(:seller_of_record, Shapes::ShapeRef.new(shape: SellerInformation, required: true, location_name: "sellerOfRecord"))
    GetOfferSetOutput.add_member(:badges, Shapes::ShapeRef.new(shape: PurchaseOptionBadgeList, required: true, location_name: "badges"))
    GetOfferSetOutput.add_member(:associated_entities, Shapes::ShapeRef.new(shape: OfferSetAssociatedEntityList, required: true, location_name: "associatedEntities"))
    GetOfferSetOutput.struct_class = Types::GetOfferSetOutput

    GetOfferTermsInput.add_member(:offer_id, Shapes::ShapeRef.new(shape: OfferId, required: true, location_name: "offerId"))
    GetOfferTermsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: GetOfferTermsInputMaxResultsInteger, location_name: "maxResults"))
    GetOfferTermsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetOfferTermsInput.struct_class = Types::GetOfferTermsInput

    GetOfferTermsOutput.add_member(:offer_terms, Shapes::ShapeRef.new(shape: OfferTermsList, required: true, location_name: "offerTerms"))
    GetOfferTermsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetOfferTermsOutput.struct_class = Types::GetOfferTermsOutput

    GetProductInput.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location_name: "productId"))
    GetProductInput.struct_class = Types::GetProductInput

    GetProductOutput.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location_name: "productId"))
    GetProductOutput.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    GetProductOutput.add_member(:product_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "productName"))
    GetProductOutput.add_member(:manufacturer, Shapes::ShapeRef.new(shape: SellerInformation, required: true, location_name: "manufacturer"))
    GetProductOutput.add_member(:deployed_on_aws, Shapes::ShapeRef.new(shape: DeployedOnAwsStatus, required: true, location_name: "deployedOnAws"))
    GetProductOutput.add_member(:short_description, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "shortDescription"))
    GetProductOutput.add_member(:long_description, Shapes::ShapeRef.new(shape: GetProductOutputLongDescriptionString, required: true, location_name: "longDescription"))
    GetProductOutput.add_member(:logo_thumbnail_url, Shapes::ShapeRef.new(shape: URL, required: true, location_name: "logoThumbnailUrl"))
    GetProductOutput.add_member(:fulfillment_option_summaries, Shapes::ShapeRef.new(shape: FulfillmentOptionSummaryList, required: true, location_name: "fulfillmentOptionSummaries"))
    GetProductOutput.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, required: true, location_name: "categories"))
    GetProductOutput.add_member(:highlights, Shapes::ShapeRef.new(shape: HighlightList, required: true, location_name: "highlights"))
    GetProductOutput.add_member(:promotional_media, Shapes::ShapeRef.new(shape: PromotionalMediaList, required: true, location_name: "promotionalMedia"))
    GetProductOutput.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, required: true, location_name: "resources"))
    GetProductOutput.add_member(:seller_engagements, Shapes::ShapeRef.new(shape: SellerEngagementList, required: true, location_name: "sellerEngagements"))
    GetProductOutput.struct_class = Types::GetProductOutput

    GrantItem.add_member(:dimension_key, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "dimensionKey"))
    GrantItem.add_member(:display_name, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "displayName"))
    GrantItem.add_member(:description, Shapes::ShapeRef.new(shape: BoundedString, location_name: "description"))
    GrantItem.add_member(:dimension_labels, Shapes::ShapeRef.new(shape: DimensionLabelList, location_name: "dimensionLabels"))
    GrantItem.add_member(:unit, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "unit"))
    GrantItem.add_member(:max_quantity, Shapes::ShapeRef.new(shape: Integer, location_name: "maxQuantity"))
    GrantItem.struct_class = Types::GrantItem

    GrantList.member = Shapes::ShapeRef.new(shape: GrantItem)

    HelmFulfillmentOption.add_member(:fulfillment_option_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionId"))
    HelmFulfillmentOption.add_member(:fulfillment_option_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionName"))
    HelmFulfillmentOption.add_member(:fulfillment_option_type, Shapes::ShapeRef.new(shape: FulfillmentOptionType, required: true, location_name: "fulfillmentOptionType"))
    HelmFulfillmentOption.add_member(:fulfillment_option_display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionDisplayName"))
    HelmFulfillmentOption.add_member(:fulfillment_option_version, Shapes::ShapeRef.new(shape: String, location_name: "fulfillmentOptionVersion"))
    HelmFulfillmentOption.add_member(:operating_systems, Shapes::ShapeRef.new(shape: HelmOperatingSystemList, location_name: "operatingSystems"))
    HelmFulfillmentOption.add_member(:release_notes, Shapes::ShapeRef.new(shape: String, location_name: "releaseNotes"))
    HelmFulfillmentOption.add_member(:aws_supported_services, Shapes::ShapeRef.new(shape: AwsSupportedServiceList, location_name: "awsSupportedServices"))
    HelmFulfillmentOption.add_member(:usage_instructions, Shapes::ShapeRef.new(shape: String, location_name: "usageInstructions"))
    HelmFulfillmentOption.struct_class = Types::HelmFulfillmentOption

    HelmOperatingSystem.add_member(:operating_system_family_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "operatingSystemFamilyName"))
    HelmOperatingSystem.add_member(:operating_system_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "operatingSystemName"))
    HelmOperatingSystem.struct_class = Types::HelmOperatingSystem

    HelmOperatingSystemList.member = Shapes::ShapeRef.new(shape: HelmOperatingSystem)

    HighlightList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    LegalTerm.add_member(:id, Shapes::ShapeRef.new(shape: TermId, required: true, location_name: "id"))
    LegalTerm.add_member(:type, Shapes::ShapeRef.new(shape: TermType, required: true, location_name: "type"))
    LegalTerm.add_member(:documents, Shapes::ShapeRef.new(shape: DocumentList, required: true, location_name: "documents"))
    LegalTerm.struct_class = Types::LegalTerm

    ListFulfillmentOptionsInput.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location_name: "productId"))
    ListFulfillmentOptionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListFulfillmentOptionsInputMaxResultsInteger, location_name: "maxResults"))
    ListFulfillmentOptionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFulfillmentOptionsInput.struct_class = Types::ListFulfillmentOptionsInput

    ListFulfillmentOptionsOutput.add_member(:fulfillment_options, Shapes::ShapeRef.new(shape: FulfillmentOptionsList, required: true, location_name: "fulfillmentOptions"))
    ListFulfillmentOptionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFulfillmentOptionsOutput.struct_class = Types::ListFulfillmentOptionsOutput

    ListPurchaseOptionsInput.add_member(:filters, Shapes::ShapeRef.new(shape: PurchaseOptionFilterList, location_name: "filters"))
    ListPurchaseOptionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListPurchaseOptionsInputMaxResultsInteger, location_name: "maxResults"))
    ListPurchaseOptionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPurchaseOptionsInput.struct_class = Types::ListPurchaseOptionsInput

    ListPurchaseOptionsOutput.add_member(:purchase_options, Shapes::ShapeRef.new(shape: PurchaseOptionSummaryList, location_name: "purchaseOptions"))
    ListPurchaseOptionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPurchaseOptionsOutput.struct_class = Types::ListPurchaseOptionsOutput

    ListingAssociatedEntity.add_member(:product, Shapes::ShapeRef.new(shape: ProductInformation, location_name: "product"))
    ListingAssociatedEntity.add_member(:offer, Shapes::ShapeRef.new(shape: OfferInformation, location_name: "offer"))
    ListingAssociatedEntity.struct_class = Types::ListingAssociatedEntity

    ListingAssociatedEntityList.member = Shapes::ShapeRef.new(shape: ListingAssociatedEntity)

    ListingBadge.add_member(:display_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "displayName"))
    ListingBadge.add_member(:badge_type, Shapes::ShapeRef.new(shape: ListingBadgeType, required: true, location_name: "badgeType"))
    ListingBadge.struct_class = Types::ListingBadge

    ListingBadgeList.member = Shapes::ShapeRef.new(shape: ListingBadge)

    ListingFacet.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "value"))
    ListingFacet.add_member(:display_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "displayName"))
    ListingFacet.add_member(:parent, Shapes::ShapeRef.new(shape: NullableString, location_name: "parent"))
    ListingFacet.add_member(:count, Shapes::ShapeRef.new(shape: NonNegativeCount, required: true, location_name: "count"))
    ListingFacet.struct_class = Types::ListingFacet

    ListingFacetList.member = Shapes::ShapeRef.new(shape: ListingFacet)

    ListingSummary.add_member(:listing_id, Shapes::ShapeRef.new(shape: ListingId, required: true, location_name: "listingId"))
    ListingSummary.add_member(:listing_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "listingName"))
    ListingSummary.add_member(:publisher, Shapes::ShapeRef.new(shape: SellerInformation, required: true, location_name: "publisher"))
    ListingSummary.add_member(:fulfillment_option_summaries, Shapes::ShapeRef.new(shape: FulfillmentOptionSummaryList, required: true, location_name: "fulfillmentOptionSummaries"))
    ListingSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    ListingSummary.add_member(:short_description, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "shortDescription"))
    ListingSummary.add_member(:logo_thumbnail_url, Shapes::ShapeRef.new(shape: URL, required: true, location_name: "logoThumbnailUrl"))
    ListingSummary.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, required: true, location_name: "categories"))
    ListingSummary.add_member(:badges, Shapes::ShapeRef.new(shape: ListingBadgeList, required: true, location_name: "badges"))
    ListingSummary.add_member(:review_summary, Shapes::ShapeRef.new(shape: ReviewSummary, required: true, location_name: "reviewSummary"))
    ListingSummary.add_member(:pricing_models, Shapes::ShapeRef.new(shape: PricingModelList, required: true, location_name: "pricingModels"))
    ListingSummary.add_member(:pricing_units, Shapes::ShapeRef.new(shape: PricingUnitList, required: true, location_name: "pricingUnits"))
    ListingSummary.add_member(:associated_entities, Shapes::ShapeRef.new(shape: ListingSummaryAssociatedEntityList, required: true, location_name: "associatedEntities"))
    ListingSummary.struct_class = Types::ListingSummary

    ListingSummaryAssociatedEntity.add_member(:product, Shapes::ShapeRef.new(shape: ProductInformation, location_name: "product"))
    ListingSummaryAssociatedEntity.struct_class = Types::ListingSummaryAssociatedEntity

    ListingSummaryAssociatedEntityList.member = Shapes::ShapeRef.new(shape: ListingSummaryAssociatedEntity)

    ListingSummaryList.member = Shapes::ShapeRef.new(shape: ListingSummary)

    NetPaymentTerm.add_member(:id, Shapes::ShapeRef.new(shape: TermId, required: true, location_name: "id"))
    NetPaymentTerm.add_member(:type, Shapes::ShapeRef.new(shape: TermType, required: true, location_name: "type"))
    NetPaymentTerm.add_member(:payment_due_period, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "paymentDuePeriod"))
    NetPaymentTerm.struct_class = Types::NetPaymentTerm

    OfferAssociatedEntity.add_member(:product, Shapes::ShapeRef.new(shape: ProductInformation, required: true, location_name: "product"))
    OfferAssociatedEntity.add_member(:offer_set, Shapes::ShapeRef.new(shape: OfferSetInformation, location_name: "offerSet"))
    OfferAssociatedEntity.struct_class = Types::OfferAssociatedEntity

    OfferAssociatedEntityList.member = Shapes::ShapeRef.new(shape: OfferAssociatedEntity)

    OfferInformation.add_member(:offer_id, Shapes::ShapeRef.new(shape: OfferId, required: true, location_name: "offerId"))
    OfferInformation.add_member(:offer_name, Shapes::ShapeRef.new(shape: NullableString, location_name: "offerName"))
    OfferInformation.add_member(:seller_of_record, Shapes::ShapeRef.new(shape: SellerInformation, required: true, location_name: "sellerOfRecord"))
    OfferInformation.struct_class = Types::OfferInformation

    OfferSetAssociatedEntity.add_member(:product, Shapes::ShapeRef.new(shape: ProductInformation, required: true, location_name: "product"))
    OfferSetAssociatedEntity.add_member(:offer, Shapes::ShapeRef.new(shape: OfferInformation, required: true, location_name: "offer"))
    OfferSetAssociatedEntity.struct_class = Types::OfferSetAssociatedEntity

    OfferSetAssociatedEntityList.member = Shapes::ShapeRef.new(shape: OfferSetAssociatedEntity)

    OfferSetInformation.add_member(:offer_set_id, Shapes::ShapeRef.new(shape: OfferSetId, required: true, location_name: "offerSetId"))
    OfferSetInformation.add_member(:seller_of_record, Shapes::ShapeRef.new(shape: SellerInformation, required: true, location_name: "sellerOfRecord"))
    OfferSetInformation.struct_class = Types::OfferSetInformation

    OfferTerm.add_member(:byol_pricing_term, Shapes::ShapeRef.new(shape: ByolPricingTerm, location_name: "byolPricingTerm"))
    OfferTerm.add_member(:configurable_upfront_pricing_term, Shapes::ShapeRef.new(shape: ConfigurableUpfrontPricingTerm, location_name: "configurableUpfrontPricingTerm"))
    OfferTerm.add_member(:fixed_upfront_pricing_term, Shapes::ShapeRef.new(shape: FixedUpfrontPricingTerm, location_name: "fixedUpfrontPricingTerm"))
    OfferTerm.add_member(:free_trial_pricing_term, Shapes::ShapeRef.new(shape: FreeTrialPricingTerm, location_name: "freeTrialPricingTerm"))
    OfferTerm.add_member(:legal_term, Shapes::ShapeRef.new(shape: LegalTerm, location_name: "legalTerm"))
    OfferTerm.add_member(:payment_schedule_term, Shapes::ShapeRef.new(shape: PaymentScheduleTerm, location_name: "paymentScheduleTerm"))
    OfferTerm.add_member(:recurring_payment_term, Shapes::ShapeRef.new(shape: RecurringPaymentTerm, location_name: "recurringPaymentTerm"))
    OfferTerm.add_member(:renewal_term, Shapes::ShapeRef.new(shape: RenewalTerm, location_name: "renewalTerm"))
    OfferTerm.add_member(:support_term, Shapes::ShapeRef.new(shape: SupportTerm, location_name: "supportTerm"))
    OfferTerm.add_member(:usage_based_pricing_term, Shapes::ShapeRef.new(shape: UsageBasedPricingTerm, location_name: "usageBasedPricingTerm"))
    OfferTerm.add_member(:validity_term, Shapes::ShapeRef.new(shape: ValidityTerm, location_name: "validityTerm"))
    OfferTerm.add_member(:variable_payment_term, Shapes::ShapeRef.new(shape: VariablePaymentTerm, location_name: "variablePaymentTerm"))
    OfferTerm.add_member(:net_payment_term, Shapes::ShapeRef.new(shape: NetPaymentTerm, location_name: "netPaymentTerm"))
    OfferTerm.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OfferTerm.add_member_subclass(:byol_pricing_term, Types::OfferTerm::ByolPricingTerm)
    OfferTerm.add_member_subclass(:configurable_upfront_pricing_term, Types::OfferTerm::ConfigurableUpfrontPricingTerm)
    OfferTerm.add_member_subclass(:fixed_upfront_pricing_term, Types::OfferTerm::FixedUpfrontPricingTerm)
    OfferTerm.add_member_subclass(:free_trial_pricing_term, Types::OfferTerm::FreeTrialPricingTerm)
    OfferTerm.add_member_subclass(:legal_term, Types::OfferTerm::LegalTerm)
    OfferTerm.add_member_subclass(:payment_schedule_term, Types::OfferTerm::PaymentScheduleTerm)
    OfferTerm.add_member_subclass(:recurring_payment_term, Types::OfferTerm::RecurringPaymentTerm)
    OfferTerm.add_member_subclass(:renewal_term, Types::OfferTerm::RenewalTerm)
    OfferTerm.add_member_subclass(:support_term, Types::OfferTerm::SupportTerm)
    OfferTerm.add_member_subclass(:usage_based_pricing_term, Types::OfferTerm::UsageBasedPricingTerm)
    OfferTerm.add_member_subclass(:validity_term, Types::OfferTerm::ValidityTerm)
    OfferTerm.add_member_subclass(:variable_payment_term, Types::OfferTerm::VariablePaymentTerm)
    OfferTerm.add_member_subclass(:net_payment_term, Types::OfferTerm::NetPaymentTerm)
    OfferTerm.add_member_subclass(:unknown, Types::OfferTerm::Unknown)
    OfferTerm.struct_class = Types::OfferTerm

    OfferTermsList.member = Shapes::ShapeRef.new(shape: OfferTerm)

    PaymentScheduleTerm.add_member(:id, Shapes::ShapeRef.new(shape: TermId, required: true, location_name: "id"))
    PaymentScheduleTerm.add_member(:type, Shapes::ShapeRef.new(shape: TermType, required: true, location_name: "type"))
    PaymentScheduleTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "currencyCode"))
    PaymentScheduleTerm.add_member(:schedule, Shapes::ShapeRef.new(shape: ScheduleList, required: true, location_name: "schedule"))
    PaymentScheduleTerm.struct_class = Types::PaymentScheduleTerm

    PricingModel.add_member(:pricing_model_type, Shapes::ShapeRef.new(shape: PricingModelType, required: true, location_name: "pricingModelType"))
    PricingModel.add_member(:display_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "displayName"))
    PricingModel.struct_class = Types::PricingModel

    PricingModelList.member = Shapes::ShapeRef.new(shape: PricingModel)

    PricingUnit.add_member(:pricing_unit_type, Shapes::ShapeRef.new(shape: PricingUnitType, required: true, location_name: "pricingUnitType"))
    PricingUnit.add_member(:display_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "displayName"))
    PricingUnit.struct_class = Types::PricingUnit

    PricingUnitList.member = Shapes::ShapeRef.new(shape: PricingUnit)

    ProductInformation.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location_name: "productId"))
    ProductInformation.add_member(:product_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "productName"))
    ProductInformation.add_member(:manufacturer, Shapes::ShapeRef.new(shape: SellerInformation, required: true, location_name: "manufacturer"))
    ProductInformation.struct_class = Types::ProductInformation

    ProfessionalServicesFulfillmentOption.add_member(:fulfillment_option_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionId"))
    ProfessionalServicesFulfillmentOption.add_member(:fulfillment_option_type, Shapes::ShapeRef.new(shape: FulfillmentOptionType, required: true, location_name: "fulfillmentOptionType"))
    ProfessionalServicesFulfillmentOption.add_member(:fulfillment_option_display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionDisplayName"))
    ProfessionalServicesFulfillmentOption.struct_class = Types::ProfessionalServicesFulfillmentOption

    PromotionalEmbeddedImage.add_member(:title, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "title"))
    PromotionalEmbeddedImage.add_member(:url, Shapes::ShapeRef.new(shape: URL, required: true, location_name: "url"))
    PromotionalEmbeddedImage.add_member(:description, Shapes::ShapeRef.new(shape: NullableString, location_name: "description"))
    PromotionalEmbeddedImage.struct_class = Types::PromotionalEmbeddedImage

    PromotionalEmbeddedVideo.add_member(:title, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "title"))
    PromotionalEmbeddedVideo.add_member(:url, Shapes::ShapeRef.new(shape: URL, required: true, location_name: "url"))
    PromotionalEmbeddedVideo.add_member(:preview, Shapes::ShapeRef.new(shape: URL, required: true, location_name: "preview"))
    PromotionalEmbeddedVideo.add_member(:thumbnail, Shapes::ShapeRef.new(shape: URL, required: true, location_name: "thumbnail"))
    PromotionalEmbeddedVideo.add_member(:description, Shapes::ShapeRef.new(shape: NullableString, location_name: "description"))
    PromotionalEmbeddedVideo.struct_class = Types::PromotionalEmbeddedVideo

    PromotionalMedia.add_member(:embedded_image, Shapes::ShapeRef.new(shape: PromotionalEmbeddedImage, location_name: "embeddedImage"))
    PromotionalMedia.add_member(:embedded_video, Shapes::ShapeRef.new(shape: PromotionalEmbeddedVideo, location_name: "embeddedVideo"))
    PromotionalMedia.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PromotionalMedia.add_member_subclass(:embedded_image, Types::PromotionalMedia::EmbeddedImage)
    PromotionalMedia.add_member_subclass(:embedded_video, Types::PromotionalMedia::EmbeddedVideo)
    PromotionalMedia.add_member_subclass(:unknown, Types::PromotionalMedia::Unknown)
    PromotionalMedia.struct_class = Types::PromotionalMedia

    PromotionalMediaList.member = Shapes::ShapeRef.new(shape: PromotionalMedia)

    PurchaseOptionAssociatedEntity.add_member(:product, Shapes::ShapeRef.new(shape: ProductInformation, required: true, location_name: "product"))
    PurchaseOptionAssociatedEntity.add_member(:offer, Shapes::ShapeRef.new(shape: OfferInformation, required: true, location_name: "offer"))
    PurchaseOptionAssociatedEntity.add_member(:offer_set, Shapes::ShapeRef.new(shape: OfferSetInformation, location_name: "offerSet"))
    PurchaseOptionAssociatedEntity.struct_class = Types::PurchaseOptionAssociatedEntity

    PurchaseOptionAssociatedEntityList.member = Shapes::ShapeRef.new(shape: PurchaseOptionAssociatedEntity)

    PurchaseOptionBadge.add_member(:display_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "displayName"))
    PurchaseOptionBadge.add_member(:badge_type, Shapes::ShapeRef.new(shape: PurchaseOptionBadgeType, required: true, location_name: "badgeType"))
    PurchaseOptionBadge.struct_class = Types::PurchaseOptionBadge

    PurchaseOptionBadgeList.member = Shapes::ShapeRef.new(shape: PurchaseOptionBadge)

    PurchaseOptionFilter.add_member(:filter_type, Shapes::ShapeRef.new(shape: PurchaseOptionFilterType, required: true, location_name: "filterType"))
    PurchaseOptionFilter.add_member(:filter_values, Shapes::ShapeRef.new(shape: PurchaseOptionFilterValueList, required: true, location_name: "filterValues"))
    PurchaseOptionFilter.struct_class = Types::PurchaseOptionFilter

    PurchaseOptionFilterList.member = Shapes::ShapeRef.new(shape: PurchaseOptionFilter)

    PurchaseOptionFilterValueList.member = Shapes::ShapeRef.new(shape: PurchaseOptionFilterValue)

    PurchaseOptionSummary.add_member(:purchase_option_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "purchaseOptionId"))
    PurchaseOptionSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    PurchaseOptionSummary.add_member(:purchase_option_type, Shapes::ShapeRef.new(shape: PurchaseOptionType, required: true, location_name: "purchaseOptionType"))
    PurchaseOptionSummary.add_member(:purchase_option_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "purchaseOptionName"))
    PurchaseOptionSummary.add_member(:available_from_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "availableFromTime"))
    PurchaseOptionSummary.add_member(:expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expirationTime"))
    PurchaseOptionSummary.add_member(:seller_of_record, Shapes::ShapeRef.new(shape: SellerInformation, required: true, location_name: "sellerOfRecord"))
    PurchaseOptionSummary.add_member(:badges, Shapes::ShapeRef.new(shape: PurchaseOptionBadgeList, location_name: "badges"))
    PurchaseOptionSummary.add_member(:associated_entities, Shapes::ShapeRef.new(shape: PurchaseOptionAssociatedEntityList, required: true, location_name: "associatedEntities"))
    PurchaseOptionSummary.struct_class = Types::PurchaseOptionSummary

    PurchaseOptionSummaryList.member = Shapes::ShapeRef.new(shape: PurchaseOptionSummary)

    RateCardItem.add_member(:dimension_key, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "dimensionKey"))
    RateCardItem.add_member(:display_name, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "displayName"))
    RateCardItem.add_member(:description, Shapes::ShapeRef.new(shape: BoundedString, location_name: "description"))
    RateCardItem.add_member(:dimension_labels, Shapes::ShapeRef.new(shape: DimensionLabelList, location_name: "dimensionLabels"))
    RateCardItem.add_member(:unit, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "unit"))
    RateCardItem.add_member(:price, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "price"))
    RateCardItem.struct_class = Types::RateCardItem

    RateCardList.member = Shapes::ShapeRef.new(shape: RateCardItem)

    RecurringPaymentTerm.add_member(:id, Shapes::ShapeRef.new(shape: TermId, required: true, location_name: "id"))
    RecurringPaymentTerm.add_member(:type, Shapes::ShapeRef.new(shape: TermType, required: true, location_name: "type"))
    RecurringPaymentTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "currencyCode"))
    RecurringPaymentTerm.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriodType, required: true, location_name: "billingPeriod"))
    RecurringPaymentTerm.add_member(:price, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "price"))
    RecurringPaymentTerm.struct_class = Types::RecurringPaymentTerm

    RenewalTerm.add_member(:id, Shapes::ShapeRef.new(shape: TermId, required: true, location_name: "id"))
    RenewalTerm.add_member(:type, Shapes::ShapeRef.new(shape: TermType, required: true, location_name: "type"))
    RenewalTerm.struct_class = Types::RenewalTerm

    Resource.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    Resource.add_member(:content_type, Shapes::ShapeRef.new(shape: ResourceContentType, required: true, location_name: "contentType"))
    Resource.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "value"))
    Resource.add_member(:display_name, Shapes::ShapeRef.new(shape: NullableString, location_name: "displayName"))
    Resource.struct_class = Types::Resource

    ResourceList.member = Shapes::ShapeRef.new(shape: Resource)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ReviewSourceSummary.add_member(:source_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "sourceName"))
    ReviewSourceSummary.add_member(:source_id, Shapes::ShapeRef.new(shape: ReviewSourceId, required: true, location_name: "sourceId"))
    ReviewSourceSummary.add_member(:source_url, Shapes::ShapeRef.new(shape: URL, location_name: "sourceUrl"))
    ReviewSourceSummary.add_member(:average_rating, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "averageRating"))
    ReviewSourceSummary.add_member(:total_reviews, Shapes::ShapeRef.new(shape: NonNegativeCount, required: true, location_name: "totalReviews"))
    ReviewSourceSummary.struct_class = Types::ReviewSourceSummary

    ReviewSourceSummaryList.member = Shapes::ShapeRef.new(shape: ReviewSourceSummary)

    ReviewSummary.add_member(:review_source_summaries, Shapes::ShapeRef.new(shape: ReviewSourceSummaryList, required: true, location_name: "reviewSourceSummaries"))
    ReviewSummary.struct_class = Types::ReviewSummary

    SaasFulfillmentOption.add_member(:fulfillment_option_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionId"))
    SaasFulfillmentOption.add_member(:fulfillment_option_type, Shapes::ShapeRef.new(shape: FulfillmentOptionType, required: true, location_name: "fulfillmentOptionType"))
    SaasFulfillmentOption.add_member(:fulfillment_option_display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionDisplayName"))
    SaasFulfillmentOption.add_member(:fulfillment_url, Shapes::ShapeRef.new(shape: String, location_name: "fulfillmentUrl"))
    SaasFulfillmentOption.add_member(:usage_instructions, Shapes::ShapeRef.new(shape: String, location_name: "usageInstructions"))
    SaasFulfillmentOption.struct_class = Types::SaasFulfillmentOption

    SageMakerAlgorithmFulfillmentOption.add_member(:fulfillment_option_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionId"))
    SageMakerAlgorithmFulfillmentOption.add_member(:fulfillment_option_type, Shapes::ShapeRef.new(shape: FulfillmentOptionType, required: true, location_name: "fulfillmentOptionType"))
    SageMakerAlgorithmFulfillmentOption.add_member(:fulfillment_option_display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionDisplayName"))
    SageMakerAlgorithmFulfillmentOption.add_member(:fulfillment_option_version, Shapes::ShapeRef.new(shape: String, location_name: "fulfillmentOptionVersion"))
    SageMakerAlgorithmFulfillmentOption.add_member(:release_notes, Shapes::ShapeRef.new(shape: String, location_name: "releaseNotes"))
    SageMakerAlgorithmFulfillmentOption.add_member(:usage_instructions, Shapes::ShapeRef.new(shape: String, location_name: "usageInstructions"))
    SageMakerAlgorithmFulfillmentOption.add_member(:recommendation, Shapes::ShapeRef.new(shape: SageMakerAlgorithmRecommendation, location_name: "recommendation"))
    SageMakerAlgorithmFulfillmentOption.struct_class = Types::SageMakerAlgorithmFulfillmentOption

    SageMakerAlgorithmRecommendation.add_member(:recommended_batch_transform_instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "recommendedBatchTransformInstanceType"))
    SageMakerAlgorithmRecommendation.add_member(:recommended_realtime_inference_instance_type, Shapes::ShapeRef.new(shape: String, location_name: "recommendedRealtimeInferenceInstanceType"))
    SageMakerAlgorithmRecommendation.add_member(:recommended_training_instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "recommendedTrainingInstanceType"))
    SageMakerAlgorithmRecommendation.struct_class = Types::SageMakerAlgorithmRecommendation

    SageMakerModelFulfillmentOption.add_member(:fulfillment_option_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionId"))
    SageMakerModelFulfillmentOption.add_member(:fulfillment_option_type, Shapes::ShapeRef.new(shape: FulfillmentOptionType, required: true, location_name: "fulfillmentOptionType"))
    SageMakerModelFulfillmentOption.add_member(:fulfillment_option_display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fulfillmentOptionDisplayName"))
    SageMakerModelFulfillmentOption.add_member(:fulfillment_option_version, Shapes::ShapeRef.new(shape: String, location_name: "fulfillmentOptionVersion"))
    SageMakerModelFulfillmentOption.add_member(:release_notes, Shapes::ShapeRef.new(shape: String, location_name: "releaseNotes"))
    SageMakerModelFulfillmentOption.add_member(:usage_instructions, Shapes::ShapeRef.new(shape: String, location_name: "usageInstructions"))
    SageMakerModelFulfillmentOption.add_member(:recommendation, Shapes::ShapeRef.new(shape: SageMakerModelRecommendation, location_name: "recommendation"))
    SageMakerModelFulfillmentOption.struct_class = Types::SageMakerModelFulfillmentOption

    SageMakerModelRecommendation.add_member(:recommended_batch_transform_instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "recommendedBatchTransformInstanceType"))
    SageMakerModelRecommendation.add_member(:recommended_realtime_inference_instance_type, Shapes::ShapeRef.new(shape: String, location_name: "recommendedRealtimeInferenceInstanceType"))
    SageMakerModelRecommendation.struct_class = Types::SageMakerModelRecommendation

    ScheduleItem.add_member(:charge_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "chargeDate"))
    ScheduleItem.add_member(:charge_amount, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "chargeAmount"))
    ScheduleItem.struct_class = Types::ScheduleItem

    ScheduleList.member = Shapes::ShapeRef.new(shape: ScheduleItem)

    SearchFacetsInput.add_member(:search_text, Shapes::ShapeRef.new(shape: SearchText, location_name: "searchText"))
    SearchFacetsInput.add_member(:filters, Shapes::ShapeRef.new(shape: SearchFilterList, location_name: "filters"))
    SearchFacetsInput.add_member(:facet_types, Shapes::ShapeRef.new(shape: FacetTypeList, location_name: "facetTypes"))
    SearchFacetsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchFacetsInput.struct_class = Types::SearchFacetsInput

    SearchFacetsOutput.add_member(:total_results, Shapes::ShapeRef.new(shape: NonNegativeCount, required: true, location_name: "totalResults"))
    SearchFacetsOutput.add_member(:listing_facets, Shapes::ShapeRef.new(shape: TypeToFacetMap, required: true, location_name: "listingFacets"))
    SearchFacetsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchFacetsOutput.struct_class = Types::SearchFacetsOutput

    SearchFilter.add_member(:filter_type, Shapes::ShapeRef.new(shape: SearchFilterType, required: true, location_name: "filterType"))
    SearchFilter.add_member(:filter_values, Shapes::ShapeRef.new(shape: SearchFilterFilterValuesList, required: true, location_name: "filterValues"))
    SearchFilter.struct_class = Types::SearchFilter

    SearchFilterFilterValuesList.member = Shapes::ShapeRef.new(shape: SearchFilterValue)

    SearchFilterList.member = Shapes::ShapeRef.new(shape: SearchFilter)

    SearchListingsInput.add_member(:search_text, Shapes::ShapeRef.new(shape: SearchText, location_name: "searchText"))
    SearchListingsInput.add_member(:filters, Shapes::ShapeRef.new(shape: SearchFilterList, location_name: "filters"))
    SearchListingsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchListingsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: SearchListingsSortBy, location_name: "sortBy"))
    SearchListingsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SearchListingsSortOrder, location_name: "sortOrder"))
    SearchListingsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchListingsInput.struct_class = Types::SearchListingsInput

    SearchListingsOutput.add_member(:total_results, Shapes::ShapeRef.new(shape: NonNegativeCount, required: true, location_name: "totalResults"))
    SearchListingsOutput.add_member(:listing_summaries, Shapes::ShapeRef.new(shape: ListingSummaryList, required: true, location_name: "listingSummaries"))
    SearchListingsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchListingsOutput.struct_class = Types::SearchListingsOutput

    Selector.add_member(:type, Shapes::ShapeRef.new(shape: SelectorType, required: true, location_name: "type"))
    Selector.add_member(:value, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "value"))
    Selector.struct_class = Types::Selector

    SellerEngagement.add_member(:engagement_type, Shapes::ShapeRef.new(shape: SellerEngagementType, required: true, location_name: "engagementType"))
    SellerEngagement.add_member(:content_type, Shapes::ShapeRef.new(shape: SellerEngagementContentType, required: true, location_name: "contentType"))
    SellerEngagement.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "value"))
    SellerEngagement.struct_class = Types::SellerEngagement

    SellerEngagementList.member = Shapes::ShapeRef.new(shape: SellerEngagement)

    SellerInformation.add_member(:seller_profile_id, Shapes::ShapeRef.new(shape: SellerProfileId, required: true, location_name: "sellerProfileId"))
    SellerInformation.add_member(:display_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "displayName"))
    SellerInformation.struct_class = Types::SellerInformation

    SupportTerm.add_member(:id, Shapes::ShapeRef.new(shape: TermId, required: true, location_name: "id"))
    SupportTerm.add_member(:type, Shapes::ShapeRef.new(shape: TermType, required: true, location_name: "type"))
    SupportTerm.add_member(:refund_policy, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "refundPolicy"))
    SupportTerm.struct_class = Types::SupportTerm

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TypeToFacetMap.key = Shapes::ShapeRef.new(shape: SearchFacetType)
    TypeToFacetMap.value = Shapes::ShapeRef.new(shape: ListingFacetList)

    UsageBasedPricingTerm.add_member(:id, Shapes::ShapeRef.new(shape: TermId, required: true, location_name: "id"))
    UsageBasedPricingTerm.add_member(:type, Shapes::ShapeRef.new(shape: TermType, required: true, location_name: "type"))
    UsageBasedPricingTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "currencyCode"))
    UsageBasedPricingTerm.add_member(:rate_cards, Shapes::ShapeRef.new(shape: UsageBasedRateCardList, required: true, location_name: "rateCards"))
    UsageBasedPricingTerm.struct_class = Types::UsageBasedPricingTerm

    UsageBasedRateCardItem.add_member(:rate_card, Shapes::ShapeRef.new(shape: RateCardList, required: true, location_name: "rateCard"))
    UsageBasedRateCardItem.struct_class = Types::UsageBasedRateCardItem

    UsageBasedRateCardList.member = Shapes::ShapeRef.new(shape: UsageBasedRateCardItem)

    UseCase.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "description"))
    UseCase.add_member(:display_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "displayName"))
    UseCase.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "value"))
    UseCase.struct_class = Types::UseCase

    UseCaseEntry.add_member(:use_case, Shapes::ShapeRef.new(shape: UseCase, required: true, location_name: "useCase"))
    UseCaseEntry.struct_class = Types::UseCaseEntry

    UseCaseList.member = Shapes::ShapeRef.new(shape: UseCaseEntry)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidityTerm.add_member(:id, Shapes::ShapeRef.new(shape: TermId, required: true, location_name: "id"))
    ValidityTerm.add_member(:type, Shapes::ShapeRef.new(shape: TermType, required: true, location_name: "type"))
    ValidityTerm.add_member(:agreement_duration, Shapes::ShapeRef.new(shape: BoundedString, location_name: "agreementDuration"))
    ValidityTerm.add_member(:agreement_end_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "agreementEndDate"))
    ValidityTerm.add_member(:agreement_start_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "agreementStartDate"))
    ValidityTerm.struct_class = Types::ValidityTerm

    VariablePaymentTerm.add_member(:id, Shapes::ShapeRef.new(shape: TermId, required: true, location_name: "id"))
    VariablePaymentTerm.add_member(:type, Shapes::ShapeRef.new(shape: TermType, required: true, location_name: "type"))
    VariablePaymentTerm.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "currencyCode"))
    VariablePaymentTerm.add_member(:max_total_charge_amount, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "maxTotalChargeAmount"))
    VariablePaymentTerm.struct_class = Types::VariablePaymentTerm


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2026-02-05"

      api.metadata = {
        "apiVersion" => "2026-02-05",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "discovery-marketplace",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "Marketplace Discovery",
        "serviceFullName" => "AWS Marketplace Discovery",
        "serviceId" => "Marketplace Discovery",
        "signatureVersion" => "v4",
        "signingName" => "aws-marketplace",
        "uid" => "marketplace-discovery-2026-02-05",
      }

      api.add_operation(:get_listing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetListing"
        o.http_method = "POST"
        o.http_request_uri = "/2026-02-05/getListing"
        o.input = Shapes::ShapeRef.new(shape: GetListingInput)
        o.output = Shapes::ShapeRef.new(shape: GetListingOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_offer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOffer"
        o.http_method = "POST"
        o.http_request_uri = "/2026-02-05/getOffer"
        o.input = Shapes::ShapeRef.new(shape: GetOfferInput)
        o.output = Shapes::ShapeRef.new(shape: GetOfferOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_offer_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOfferSet"
        o.http_method = "POST"
        o.http_request_uri = "/2026-02-05/getOfferSet"
        o.input = Shapes::ShapeRef.new(shape: GetOfferSetInput)
        o.output = Shapes::ShapeRef.new(shape: GetOfferSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_offer_terms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOfferTerms"
        o.http_method = "POST"
        o.http_request_uri = "/2026-02-05/getOfferTerms"
        o.input = Shapes::ShapeRef.new(shape: GetOfferTermsInput)
        o.output = Shapes::ShapeRef.new(shape: GetOfferTermsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProduct"
        o.http_method = "POST"
        o.http_request_uri = "/2026-02-05/getProduct"
        o.input = Shapes::ShapeRef.new(shape: GetProductInput)
        o.output = Shapes::ShapeRef.new(shape: GetProductOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_fulfillment_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFulfillmentOptions"
        o.http_method = "POST"
        o.http_request_uri = "/2026-02-05/listFulfillmentOptions"
        o.input = Shapes::ShapeRef.new(shape: ListFulfillmentOptionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListFulfillmentOptionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_purchase_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPurchaseOptions"
        o.http_method = "POST"
        o.http_request_uri = "/2026-02-05/listPurchaseOptions"
        o.input = Shapes::ShapeRef.new(shape: ListPurchaseOptionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListPurchaseOptionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_facets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchFacets"
        o.http_method = "POST"
        o.http_request_uri = "/2026-02-05/searchFacets"
        o.input = Shapes::ShapeRef.new(shape: SearchFacetsInput)
        o.output = Shapes::ShapeRef.new(shape: SearchFacetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_listings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchListings"
        o.http_method = "POST"
        o.http_request_uri = "/2026-02-05/searchListings"
        o.input = Shapes::ShapeRef.new(shape: SearchListingsInput)
        o.output = Shapes::ShapeRef.new(shape: SearchListingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

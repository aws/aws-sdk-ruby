# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceDiscovery
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AgreementResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#AgreementResourceId", name: "AgreementResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_/-]+$"})
    AmazonMachineImageCidrIpAddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#AmazonMachineImageCidrIpAddressList", name: "AmazonMachineImageCidrIpAddressList")
    AmazonMachineImageEbsVolume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#AmazonMachineImageEbsVolume", name: "AmazonMachineImageEbsVolume")
    AmazonMachineImageEbsVolumeTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#AmazonMachineImageEbsVolumeTypeList", name: "AmazonMachineImageEbsVolumeTypeList", traits: {"smithy.api#length" => {"max" => 20}})
    AmazonMachineImageFulfillmentOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#AmazonMachineImageFulfillmentOption", name: "AmazonMachineImageFulfillmentOption")
    AmazonMachineImageOperatingSystem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#AmazonMachineImageOperatingSystem", name: "AmazonMachineImageOperatingSystem")
    AmazonMachineImageOperatingSystemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#AmazonMachineImageOperatingSystemList", name: "AmazonMachineImageOperatingSystemList")
    AmazonMachineImageRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#AmazonMachineImageRecommendation", name: "AmazonMachineImageRecommendation")
    AmazonMachineImageSecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#AmazonMachineImageSecurityGroup", name: "AmazonMachineImageSecurityGroup")
    AmazonMachineImageSecurityGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#AmazonMachineImageSecurityGroupList", name: "AmazonMachineImageSecurityGroupList")
    ApiFulfillmentOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ApiFulfillmentOption", name: "ApiFulfillmentOption")
    AwsSupportedService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#AwsSupportedService", name: "AwsSupportedService")
    AwsSupportedServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#AwsSupportedServiceList", name: "AwsSupportedServiceList")
    BillingPeriodType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#BillingPeriodType", name: "BillingPeriodType")
    BoundedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#BoundedString", name: "BoundedString", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^(.)+$"})
    ByolPricingTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ByolPricingTerm", name: "ByolPricingTerm")
    Catalog = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#Catalog", name: "Catalog", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w\\-]+$"})
    Category = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#Category", name: "Category")
    CategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#CategoryList", name: "CategoryList", traits: {"smithy.api#length" => {"max" => 30}})
    CloudFormationFulfillmentOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#CloudFormationFulfillmentOption", name: "CloudFormationFulfillmentOption")
    ConfigurableUpfrontPricingTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ConfigurableUpfrontPricingTerm", name: "ConfigurableUpfrontPricingTerm")
    ConfigurableUpfrontRateCardItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ConfigurableUpfrontRateCardItem", name: "ConfigurableUpfrontRateCardItem")
    ConfigurableUpfrontRateCardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#ConfigurableUpfrontRateCardList", name: "ConfigurableUpfrontRateCardList")
    Constraints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#Constraints", name: "Constraints")
    ContainerFulfillmentOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ContainerFulfillmentOption", name: "ContainerFulfillmentOption")
    ContainerOperatingSystem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ContainerOperatingSystem", name: "ContainerOperatingSystem")
    ContainerOperatingSystemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#ContainerOperatingSystemList", name: "ContainerOperatingSystemList")
    CurrencyCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#CurrencyCode", name: "CurrencyCode", traits: {"smithy.api#length" => {"min" => 3, "max" => 3}, "smithy.api#pattern" => "^[A-Z]+$"})
    DataArtifact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#DataArtifact", name: "DataArtifact")
    DataArtifactList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#DataArtifactList", name: "DataArtifactList")
    DataExchangeFulfillmentOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#DataExchangeFulfillmentOption", name: "DataExchangeFulfillmentOption")
    DeployedOnAwsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#DeployedOnAwsStatus", name: "DeployedOnAwsStatus")
    DimensionLabel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#DimensionLabel", name: "DimensionLabel")
    DimensionLabelList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#DimensionLabelList", name: "DimensionLabelList")
    DimensionLabelType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#DimensionLabelType", name: "DimensionLabelType")
    DocumentItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#DocumentItem", name: "DocumentItem")
    DocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#DocumentList", name: "DocumentList")
    Ec2ImageBuilderComponentFulfillmentOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#Ec2ImageBuilderComponentFulfillmentOption", name: "Ec2ImageBuilderComponentFulfillmentOption")
    EksAddOnFulfillmentOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#EksAddOnFulfillmentOption", name: "EksAddOnFulfillmentOption")
    EksAddOnOperatingSystem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#EksAddOnOperatingSystem", name: "EksAddOnOperatingSystem")
    EksAddOnOperatingSystemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#EksAddOnOperatingSystemList", name: "EksAddOnOperatingSystemList")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#ExceptionMessage", name: "ExceptionMessage")
    FacetTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#FacetTypeList", name: "FacetTypeList", traits: {"smithy.api#length" => {"max" => 30}})
    FixedPercentage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#FixedPercentage", name: "FixedPercentage")
    FixedUpfrontPricingTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#FixedUpfrontPricingTerm", name: "FixedUpfrontPricingTerm")
    FreeTrialPricingTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#FreeTrialPricingTerm", name: "FreeTrialPricingTerm")
    FulfillmentOption = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.marketplacediscovery#FulfillmentOption", name: "FulfillmentOption")
    FulfillmentOptionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#FulfillmentOptionSummary", name: "FulfillmentOptionSummary")
    FulfillmentOptionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#FulfillmentOptionSummaryList", name: "FulfillmentOptionSummaryList", traits: {"smithy.api#length" => {"max" => 20}})
    FulfillmentOptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#FulfillmentOptionType", name: "FulfillmentOptionType")
    FulfillmentOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#FulfillmentOptionsList", name: "FulfillmentOptionsList")
    GetListingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#GetListingInput", name: "GetListingInput")
    GetListingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#GetListingOutput", name: "GetListingOutput")
    GetOfferInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#GetOfferInput", name: "GetOfferInput")
    GetOfferOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#GetOfferOutput", name: "GetOfferOutput")
    GetOfferSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#GetOfferSetInput", name: "GetOfferSetInput")
    GetOfferSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#GetOfferSetOutput", name: "GetOfferSetOutput")
    GetOfferTermsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#GetOfferTermsInput", name: "GetOfferTermsInput")
    GetOfferTermsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#GetOfferTermsOutput", name: "GetOfferTermsOutput")
    GetProductInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#GetProductInput", name: "GetProductInput")
    GetProductOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#GetProductOutput", name: "GetProductOutput")
    GrantItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#GrantItem", name: "GrantItem")
    GrantList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#GrantList", name: "GrantList")
    HelmFulfillmentOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#HelmFulfillmentOption", name: "HelmFulfillmentOption")
    HelmOperatingSystem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#HelmOperatingSystem", name: "HelmOperatingSystem")
    HelmOperatingSystemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#HelmOperatingSystemList", name: "HelmOperatingSystemList")
    HighlightList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#HighlightList", name: "HighlightList", traits: {"smithy.api#length" => {"max" => 10}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LegalDocumentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#LegalDocumentType", name: "LegalDocumentType")
    LegalTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#LegalTerm", name: "LegalTerm")
    ListFulfillmentOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ListFulfillmentOptionsInput", name: "ListFulfillmentOptionsInput")
    ListFulfillmentOptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ListFulfillmentOptionsOutput", name: "ListFulfillmentOptionsOutput")
    ListPurchaseOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ListPurchaseOptionsInput", name: "ListPurchaseOptionsInput")
    ListPurchaseOptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ListPurchaseOptionsOutput", name: "ListPurchaseOptionsOutput")
    ListingAssociatedEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ListingAssociatedEntity", name: "ListingAssociatedEntity")
    ListingAssociatedEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#ListingAssociatedEntityList", name: "ListingAssociatedEntityList", traits: {"smithy.api#length" => {"max" => 100}})
    ListingBadge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ListingBadge", name: "ListingBadge")
    ListingBadgeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#ListingBadgeList", name: "ListingBadgeList", traits: {"smithy.api#length" => {"max" => 20}})
    ListingBadgeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#ListingBadgeType", name: "ListingBadgeType")
    ListingFacet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ListingFacet", name: "ListingFacet")
    ListingFacetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#ListingFacetList", name: "ListingFacetList", traits: {"smithy.api#length" => {"max" => 100}})
    ListingId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#ListingId", name: "ListingId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w\\-]+$"})
    ListingSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ListingSummary", name: "ListingSummary")
    ListingSummaryAssociatedEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ListingSummaryAssociatedEntity", name: "ListingSummaryAssociatedEntity")
    ListingSummaryAssociatedEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#ListingSummaryAssociatedEntityList", name: "ListingSummaryAssociatedEntityList", traits: {"smithy.api#length" => {"max" => 50}})
    ListingSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#ListingSummaryList", name: "ListingSummaryList")
    Locale = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#Locale", name: "Locale", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^;,]+(\\s*,\\s*[^;,]+){0,1}$"})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.marketplacediscovery#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 25, "smithy.api#range" => {"min" => 1, "max" => 100}})
    NetPaymentTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#NetPaymentTerm", name: "NetPaymentTerm")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^[a-zA-Z0-9+/=]+$"})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*\\S.*$"})
    NonNegativeCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.marketplacediscovery#NonNegativeCount", name: "NonNegativeCount", traits: {"smithy.api#range" => {"min" => 0}})
    NullableString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#NullableString", name: "NullableString", traits: {"smithy.api#length" => {"max" => 255}})
    OfferAssociatedEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#OfferAssociatedEntity", name: "OfferAssociatedEntity")
    OfferAssociatedEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#OfferAssociatedEntityList", name: "OfferAssociatedEntityList", traits: {"smithy.api#length" => {"max" => 100}})
    OfferId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#OfferId", name: "OfferId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w\\-]+$"})
    OfferInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#OfferInformation", name: "OfferInformation")
    OfferSetAssociatedEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#OfferSetAssociatedEntity", name: "OfferSetAssociatedEntity")
    OfferSetAssociatedEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#OfferSetAssociatedEntityList", name: "OfferSetAssociatedEntityList", traits: {"smithy.api#length" => {"max" => 100}})
    OfferSetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#OfferSetId", name: "OfferSetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w\\-]+$"})
    OfferSetInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#OfferSetInformation", name: "OfferSetInformation")
    OfferTerm = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.marketplacediscovery#OfferTerm", name: "OfferTerm")
    OfferTermsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#OfferTermsList", name: "OfferTermsList")
    PaymentScheduleEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#PaymentScheduleEntry", name: "PaymentScheduleEntry")
    PaymentScheduleEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#PaymentScheduleEntryList", name: "PaymentScheduleEntryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    PaymentScheduleTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#PaymentScheduleTerm", name: "PaymentScheduleTerm")
    PaymentScheduleTermTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#PaymentScheduleTermTemplate", name: "PaymentScheduleTermTemplate")
    PercentageRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#PercentageRange", name: "PercentageRange")
    PriceIncrease = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.marketplacediscovery#PriceIncrease", name: "PriceIncrease")
    PricingModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#PricingModel", name: "PricingModel")
    PricingModelList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#PricingModelList", name: "PricingModelList", traits: {"smithy.api#length" => {"max" => 20}})
    PricingModelType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#PricingModelType", name: "PricingModelType")
    PricingUnit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#PricingUnit", name: "PricingUnit")
    PricingUnitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#PricingUnitList", name: "PricingUnitList", traits: {"smithy.api#length" => {"max" => 20}})
    PricingUnitType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#PricingUnitType", name: "PricingUnitType")
    ProductId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#ProductId", name: "ProductId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w\\-]+$"})
    ProductInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ProductInformation", name: "ProductInformation")
    ProfessionalServicesFulfillmentOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ProfessionalServicesFulfillmentOption", name: "ProfessionalServicesFulfillmentOption")
    PromotionalEmbeddedImage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#PromotionalEmbeddedImage", name: "PromotionalEmbeddedImage")
    PromotionalEmbeddedVideo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#PromotionalEmbeddedVideo", name: "PromotionalEmbeddedVideo")
    PromotionalMedia = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.marketplacediscovery#PromotionalMedia", name: "PromotionalMedia")
    PromotionalMediaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#PromotionalMediaList", name: "PromotionalMediaList", traits: {"smithy.api#length" => {"max" => 100}})
    PurchaseOptionAssociatedEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#PurchaseOptionAssociatedEntity", name: "PurchaseOptionAssociatedEntity")
    PurchaseOptionAssociatedEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#PurchaseOptionAssociatedEntityList", name: "PurchaseOptionAssociatedEntityList", traits: {"smithy.api#length" => {"max" => 100}})
    PurchaseOptionBadge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#PurchaseOptionBadge", name: "PurchaseOptionBadge")
    PurchaseOptionBadgeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#PurchaseOptionBadgeList", name: "PurchaseOptionBadgeList", traits: {"smithy.api#length" => {"max" => 20}})
    PurchaseOptionBadgeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#PurchaseOptionBadgeType", name: "PurchaseOptionBadgeType")
    PurchaseOptionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#PurchaseOptionFilter", name: "PurchaseOptionFilter")
    PurchaseOptionFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#PurchaseOptionFilterList", name: "PurchaseOptionFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PurchaseOptionFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#PurchaseOptionFilterType", name: "PurchaseOptionFilterType")
    PurchaseOptionFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#PurchaseOptionFilterValue", name: "PurchaseOptionFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w\\-]+$"})
    PurchaseOptionFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#PurchaseOptionFilterValueList", name: "PurchaseOptionFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PurchaseOptionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#PurchaseOptionSummary", name: "PurchaseOptionSummary")
    PurchaseOptionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#PurchaseOptionSummaryList", name: "PurchaseOptionSummaryList", traits: {"smithy.api#length" => {"max" => 100}})
    PurchaseOptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#PurchaseOptionType", name: "PurchaseOptionType")
    RateCardConstraintType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#RateCardConstraintType", name: "RateCardConstraintType")
    RateCardItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#RateCardItem", name: "RateCardItem")
    RateCardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#RateCardList", name: "RateCardList")
    RecurringPaymentTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#RecurringPaymentTerm", name: "RecurringPaymentTerm")
    RenewalTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#RenewalTerm", name: "RenewalTerm")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#Resource", name: "Resource")
    ResourceContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#ResourceContentType", name: "ResourceContentType")
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#ResourceList", name: "ResourceList", traits: {"smithy.api#length" => {"max" => 100}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#ResourceType", name: "ResourceType")
    ReviewSourceId = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#ReviewSourceId", name: "ReviewSourceId")
    ReviewSourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ReviewSourceSummary", name: "ReviewSourceSummary")
    ReviewSourceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#ReviewSourceSummaryList", name: "ReviewSourceSummaryList", traits: {"smithy.api#length" => {"max" => 10}})
    ReviewSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ReviewSummary", name: "ReviewSummary")
    SaasFulfillmentOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#SaasFulfillmentOption", name: "SaasFulfillmentOption")
    SaasQuickLaunchStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#SaasQuickLaunchStatus", name: "SaasQuickLaunchStatus")
    SageMakerAlgorithmFulfillmentOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#SageMakerAlgorithmFulfillmentOption", name: "SageMakerAlgorithmFulfillmentOption")
    SageMakerAlgorithmRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#SageMakerAlgorithmRecommendation", name: "SageMakerAlgorithmRecommendation")
    SageMakerModelContentTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#SageMakerModelContentTypeList", name: "SageMakerModelContentTypeList", traits: {"smithy.api#length" => {"max" => 50}})
    SageMakerModelFulfillmentOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#SageMakerModelFulfillmentOption", name: "SageMakerModelFulfillmentOption")
    SageMakerModelRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#SageMakerModelRecommendation", name: "SageMakerModelRecommendation")
    SageMakerModelResponseMimeTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#SageMakerModelResponseMimeTypeList", name: "SageMakerModelResponseMimeTypeList", traits: {"smithy.api#length" => {"max" => 50}})
    ScheduleItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ScheduleItem", name: "ScheduleItem")
    ScheduleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#ScheduleList", name: "ScheduleList")
    SearchFacetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#SearchFacetType", name: "SearchFacetType")
    SearchFacetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#SearchFacetsInput", name: "SearchFacetsInput")
    SearchFacetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#SearchFacetsOutput", name: "SearchFacetsOutput")
    SearchFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#SearchFilter", name: "SearchFilter")
    SearchFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#SearchFilterList", name: "SearchFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    SearchFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#SearchFilterType", name: "SearchFilterType")
    SearchFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#SearchFilterValue", name: "SearchFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w\\-\\.]+$"})
    SearchFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#SearchFilterValueList", name: "SearchFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    SearchListingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#SearchListingsInput", name: "SearchListingsInput")
    SearchListingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#SearchListingsOutput", name: "SearchListingsOutput")
    SearchListingsSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#SearchListingsSortBy", name: "SearchListingsSortBy")
    SearchListingsSortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#SearchListingsSortOrder", name: "SearchListingsSortOrder")
    SearchText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#SearchText", name: "SearchText", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "[^\n]*"})
    Selector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#Selector", name: "Selector")
    SelectorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#SelectorType", name: "SelectorType")
    SellerEngagement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#SellerEngagement", name: "SellerEngagement")
    SellerEngagementContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#SellerEngagementContentType", name: "SellerEngagementContentType")
    SellerEngagementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#SellerEngagementList", name: "SellerEngagementList", traits: {"smithy.api#length" => {"max" => 100}})
    SellerEngagementType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#SellerEngagementType", name: "SellerEngagementType")
    SellerInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#SellerInformation", name: "SellerInformation")
    SellerProfileId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#SellerProfileId", name: "SellerProfileId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w\\-]+$"})
    SupportTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#SupportTerm", name: "SupportTerm")
    TermId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#TermId", name: "TermId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9+=;,.@\\-_]+$"})
    TermTemplate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.marketplacediscovery#TermTemplate", name: "TermTemplate")
    TermTemplateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#TermTemplateList", name: "TermTemplateList", traits: {"smithy.api#length" => {"max" => 10}})
    TermType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#TermType", name: "TermType")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TypeToFacetMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.marketplacediscovery#TypeToFacetMap", name: "TypeToFacetMap")
    URL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacediscovery#URL", name: "URL", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^https?://.*$"})
    UsageBasedPricingTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#UsageBasedPricingTerm", name: "UsageBasedPricingTerm")
    UsageBasedRateCardItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#UsageBasedRateCardItem", name: "UsageBasedRateCardItem")
    UsageBasedRateCardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#UsageBasedRateCardList", name: "UsageBasedRateCardList")
    UseCase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#UseCase", name: "UseCase")
    UseCaseEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#UseCaseEntry", name: "UseCaseEntry")
    UseCaseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacediscovery#UseCaseList", name: "UseCaseList", traits: {"smithy.api#length" => {"max" => 100}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.marketplacediscovery#ValidationExceptionReason", name: "ValidationExceptionReason")
    ValidityTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#ValidityTerm", name: "ValidityTerm")
    VariablePaymentTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacediscovery#VariablePaymentTerm", name: "VariablePaymentTerm")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AmazonMachineImageCidrIpAddressList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    AmazonMachineImageEbsVolume.add_member(:volume_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonMachineImageEbsVolumeTypeList, name: "volumeTypes", traits: {"smithy.api#required" => {}}))
    AmazonMachineImageEbsVolume.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "iops", traits: {"smithy.api#range" => {"min" => 0}}))
    AmazonMachineImageEbsVolume.type = Types::AmazonMachineImageEbsVolume
    AmazonMachineImageEbsVolumeTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#length" => {"max" => 256}}))
    AmazonMachineImageFulfillmentOption.add_member(:fulfillment_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionId", traits: {"smithy.api#required" => {}}))
    AmazonMachineImageFulfillmentOption.add_member(:fulfillment_option_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionName", traits: {"smithy.api#required" => {}}))
    AmazonMachineImageFulfillmentOption.add_member(:fulfillment_option_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionVersion"))
    AmazonMachineImageFulfillmentOption.add_member(:fulfillment_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionType, name: "fulfillmentOptionType", traits: {"smithy.api#required" => {}}))
    AmazonMachineImageFulfillmentOption.add_member(:fulfillment_option_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionDisplayName", traits: {"smithy.api#required" => {}}))
    AmazonMachineImageFulfillmentOption.add_member(:operating_systems, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonMachineImageOperatingSystemList, name: "operatingSystems", traits: {"smithy.api#required" => {}}))
    AmazonMachineImageFulfillmentOption.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonMachineImageRecommendation, name: "recommendation"))
    AmazonMachineImageFulfillmentOption.add_member(:release_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "releaseNotes"))
    AmazonMachineImageFulfillmentOption.add_member(:usage_instructions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageInstructions"))
    AmazonMachineImageFulfillmentOption.add_member(:available_from_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "availableFromTime"))
    AmazonMachineImageFulfillmentOption.add_member(:access_url_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accessUrlTemplate", traits: {"smithy.api#length" => {"max" => 1024}}))
    AmazonMachineImageFulfillmentOption.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "architecture", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#required" => {}}))
    AmazonMachineImageFulfillmentOption.add_member(:ami_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "amiAlias", traits: {"smithy.api#length" => {"max" => 1024}}))
    AmazonMachineImageFulfillmentOption.add_member(:ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonMachineImageEbsVolume, name: "ebsVolume"))
    AmazonMachineImageFulfillmentOption.add_member(:short_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shortDescription", traits: {"smithy.api#length" => {"max" => 4096}}))
    AmazonMachineImageFulfillmentOption.type = Types::AmazonMachineImageFulfillmentOption
    AmazonMachineImageOperatingSystem.add_member(:operating_system_family_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operatingSystemFamilyName", traits: {"smithy.api#required" => {}}))
    AmazonMachineImageOperatingSystem.add_member(:operating_system_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operatingSystemName", traits: {"smithy.api#required" => {}}))
    AmazonMachineImageOperatingSystem.add_member(:operating_system_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operatingSystemVersion"))
    AmazonMachineImageOperatingSystem.type = Types::AmazonMachineImageOperatingSystem
    AmazonMachineImageOperatingSystemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonMachineImageOperatingSystem, name: "member"))
    AmazonMachineImageRecommendation.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceType", traits: {"smithy.api#required" => {}}))
    AmazonMachineImageRecommendation.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonMachineImageSecurityGroupList, name: "securityGroups"))
    AmazonMachineImageRecommendation.type = Types::AmazonMachineImageRecommendation
    AmazonMachineImageSecurityGroup.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "protocol", traits: {"smithy.api#required" => {}}))
    AmazonMachineImageSecurityGroup.add_member(:from_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "fromPort", traits: {"smithy.api#required" => {}}))
    AmazonMachineImageSecurityGroup.add_member(:to_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "toPort", traits: {"smithy.api#required" => {}}))
    AmazonMachineImageSecurityGroup.add_member(:cidr_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonMachineImageCidrIpAddressList, name: "cidrIpAddresses", traits: {"smithy.api#required" => {}}))
    AmazonMachineImageSecurityGroup.type = Types::AmazonMachineImageSecurityGroup
    AmazonMachineImageSecurityGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonMachineImageSecurityGroup, name: "member"))
    ApiFulfillmentOption.add_member(:fulfillment_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionId", traits: {"smithy.api#required" => {}}))
    ApiFulfillmentOption.add_member(:fulfillment_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionType, name: "fulfillmentOptionType", traits: {"smithy.api#required" => {}}))
    ApiFulfillmentOption.add_member(:fulfillment_option_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionDisplayName", traits: {"smithy.api#required" => {}}))
    ApiFulfillmentOption.add_member(:usage_instructions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageInstructions"))
    ApiFulfillmentOption.add_member(:aws_supported_services, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsSupportedServiceList, name: "awsSupportedServices", traits: {"smithy.api#required" => {}}))
    ApiFulfillmentOption.type = Types::ApiFulfillmentOption
    AwsSupportedService.add_member(:supported_service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "supportedServiceType", traits: {"smithy.api#required" => {}}))
    AwsSupportedService.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName", traits: {"smithy.api#required" => {}}))
    AwsSupportedService.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#required" => {}}))
    AwsSupportedService.type = Types::AwsSupportedService
    AwsSupportedServiceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsSupportedService, name: "member"))
    BillingPeriodType.add_member(:monthly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY", traits: {"smithy.api#enumValue" => "Monthly"}))
    ByolPricingTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id", traits: {"smithy.api#required" => {}}))
    ByolPricingTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TermType, name: "type", traits: {"smithy.api#required" => {}}))
    ByolPricingTerm.type = Types::ByolPricingTerm
    Category.add_member(:category_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "categoryId", traits: {"smithy.api#required" => {}}))
    Category.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "displayName", traits: {"smithy.api#required" => {}}))
    Category.type = Types::Category
    CategoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Category, name: "member"))
    CloudFormationFulfillmentOption.add_member(:fulfillment_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionId", traits: {"smithy.api#required" => {}}))
    CloudFormationFulfillmentOption.add_member(:fulfillment_option_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionName", traits: {"smithy.api#required" => {}}))
    CloudFormationFulfillmentOption.add_member(:fulfillment_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionType, name: "fulfillmentOptionType", traits: {"smithy.api#required" => {}}))
    CloudFormationFulfillmentOption.add_member(:fulfillment_option_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionDisplayName", traits: {"smithy.api#required" => {}}))
    CloudFormationFulfillmentOption.add_member(:fulfillment_option_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionVersion"))
    CloudFormationFulfillmentOption.add_member(:release_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "releaseNotes"))
    CloudFormationFulfillmentOption.add_member(:usage_instructions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageInstructions"))
    CloudFormationFulfillmentOption.add_member(:available_from_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "availableFromTime"))
    CloudFormationFulfillmentOption.add_member(:short_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shortDescription", traits: {"smithy.api#length" => {"max" => 4096}}))
    CloudFormationFulfillmentOption.add_member(:long_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "longDescription", traits: {"smithy.api#length" => {"max" => 8192}}))
    CloudFormationFulfillmentOption.type = Types::CloudFormationFulfillmentOption
    ConfigurableUpfrontPricingTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id", traits: {"smithy.api#required" => {}}))
    ConfigurableUpfrontPricingTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TermType, name: "type", traits: {"smithy.api#required" => {}}))
    ConfigurableUpfrontPricingTerm.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode", traits: {"smithy.api#required" => {}}))
    ConfigurableUpfrontPricingTerm.add_member(:rate_cards, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurableUpfrontRateCardList, name: "rateCards"))
    ConfigurableUpfrontPricingTerm.type = Types::ConfigurableUpfrontPricingTerm
    ConfigurableUpfrontRateCardItem.add_member(:selector, ::Smithy::Schema::Shapes::MemberShape.new(target: Selector, name: "selector", traits: {"smithy.api#required" => {}}))
    ConfigurableUpfrontRateCardItem.add_member(:constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: Constraints, name: "constraints", traits: {"smithy.api#required" => {}}))
    ConfigurableUpfrontRateCardItem.add_member(:rate_card, ::Smithy::Schema::Shapes::MemberShape.new(target: RateCardList, name: "rateCard", traits: {"smithy.api#required" => {}}))
    ConfigurableUpfrontRateCardItem.type = Types::ConfigurableUpfrontRateCardItem
    ConfigurableUpfrontRateCardList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurableUpfrontRateCardItem, name: "member"))
    Constraints.add_member(:multiple_dimension_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: RateCardConstraintType, name: "multipleDimensionSelection", traits: {"smithy.api#required" => {}}))
    Constraints.add_member(:quantity_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RateCardConstraintType, name: "quantityConfiguration", traits: {"smithy.api#required" => {}}))
    Constraints.type = Types::Constraints
    ContainerFulfillmentOption.add_member(:fulfillment_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionId", traits: {"smithy.api#required" => {}}))
    ContainerFulfillmentOption.add_member(:fulfillment_option_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionName", traits: {"smithy.api#required" => {}}))
    ContainerFulfillmentOption.add_member(:fulfillment_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionType, name: "fulfillmentOptionType", traits: {"smithy.api#required" => {}}))
    ContainerFulfillmentOption.add_member(:fulfillment_option_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionDisplayName", traits: {"smithy.api#required" => {}}))
    ContainerFulfillmentOption.add_member(:fulfillment_option_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionVersion"))
    ContainerFulfillmentOption.add_member(:operating_systems, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerOperatingSystemList, name: "operatingSystems"))
    ContainerFulfillmentOption.add_member(:aws_supported_services, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsSupportedServiceList, name: "awsSupportedServices"))
    ContainerFulfillmentOption.add_member(:release_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "releaseNotes"))
    ContainerFulfillmentOption.add_member(:usage_instructions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageInstructions"))
    ContainerFulfillmentOption.type = Types::ContainerFulfillmentOption
    ContainerOperatingSystem.add_member(:operating_system_family_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operatingSystemFamilyName", traits: {"smithy.api#required" => {}}))
    ContainerOperatingSystem.add_member(:operating_system_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operatingSystemName", traits: {"smithy.api#required" => {}}))
    ContainerOperatingSystem.type = Types::ContainerOperatingSystem
    ContainerOperatingSystemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerOperatingSystem, name: "member"))
    DataArtifact.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    DataArtifact.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn"))
    DataArtifact.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    DataArtifact.add_member(:data_classification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dataClassification", traits: {"smithy.api#required" => {}}))
    DataArtifact.type = Types::DataArtifact
    DataArtifactList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataArtifact, name: "member"))
    DataExchangeFulfillmentOption.add_member(:fulfillment_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionId", traits: {"smithy.api#required" => {}}))
    DataExchangeFulfillmentOption.add_member(:fulfillment_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionType, name: "fulfillmentOptionType", traits: {"smithy.api#required" => {}}))
    DataExchangeFulfillmentOption.add_member(:fulfillment_option_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionDisplayName", traits: {"smithy.api#required" => {}}))
    DataExchangeFulfillmentOption.add_member(:data_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: DataArtifactList, name: "dataArtifacts"))
    DataExchangeFulfillmentOption.type = Types::DataExchangeFulfillmentOption
    DeployedOnAwsStatus.add_member(:deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYED", traits: {"smithy.api#enumValue" => "DEPLOYED"}))
    DeployedOnAwsStatus.add_member(:not_deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_DEPLOYED", traits: {"smithy.api#enumValue" => "NOT_DEPLOYED"}))
    DeployedOnAwsStatus.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    DimensionLabel.add_member(:label_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionLabelType, name: "labelType", traits: {"smithy.api#required" => {}}))
    DimensionLabel.add_member(:label_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "labelValue", traits: {"smithy.api#required" => {}}))
    DimensionLabel.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "displayName"))
    DimensionLabel.type = Types::DimensionLabel
    DimensionLabelList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionLabel, name: "member"))
    DimensionLabelType.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGION", traits: {"smithy.api#enumValue" => "Region"}))
    DimensionLabelType.add_member(:sagemaker_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAGEMAKER_OPTION", traits: {"smithy.api#enumValue" => "SagemakerOption"}))
    DocumentItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LegalDocumentType, name: "type", traits: {"smithy.api#required" => {}}))
    DocumentItem.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: URL, name: "url", traits: {"smithy.api#required" => {}}))
    DocumentItem.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "version"))
    DocumentItem.type = Types::DocumentItem
    DocumentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentItem, name: "member"))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:fulfillment_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionId", traits: {"smithy.api#required" => {}}))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:fulfillment_option_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionName", traits: {"smithy.api#required" => {}}))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:fulfillment_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionType, name: "fulfillmentOptionType", traits: {"smithy.api#required" => {}}))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:fulfillment_option_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionDisplayName", traits: {"smithy.api#required" => {}}))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:fulfillment_option_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionVersion"))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:operating_systems, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerOperatingSystemList, name: "operatingSystems"))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:aws_supported_services, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsSupportedServiceList, name: "awsSupportedServices"))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:release_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "releaseNotes"))
    Ec2ImageBuilderComponentFulfillmentOption.add_member(:usage_instructions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageInstructions"))
    Ec2ImageBuilderComponentFulfillmentOption.type = Types::Ec2ImageBuilderComponentFulfillmentOption
    EksAddOnFulfillmentOption.add_member(:fulfillment_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionId", traits: {"smithy.api#required" => {}}))
    EksAddOnFulfillmentOption.add_member(:fulfillment_option_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionName", traits: {"smithy.api#required" => {}}))
    EksAddOnFulfillmentOption.add_member(:fulfillment_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionType, name: "fulfillmentOptionType", traits: {"smithy.api#required" => {}}))
    EksAddOnFulfillmentOption.add_member(:fulfillment_option_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionDisplayName", traits: {"smithy.api#required" => {}}))
    EksAddOnFulfillmentOption.add_member(:fulfillment_option_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionVersion"))
    EksAddOnFulfillmentOption.add_member(:operating_systems, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAddOnOperatingSystemList, name: "operatingSystems"))
    EksAddOnFulfillmentOption.add_member(:release_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "releaseNotes"))
    EksAddOnFulfillmentOption.add_member(:usage_instructions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageInstructions"))
    EksAddOnFulfillmentOption.add_member(:aws_supported_services, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsSupportedServiceList, name: "awsSupportedServices"))
    EksAddOnFulfillmentOption.type = Types::EksAddOnFulfillmentOption
    EksAddOnOperatingSystem.add_member(:operating_system_family_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operatingSystemFamilyName", traits: {"smithy.api#required" => {}}))
    EksAddOnOperatingSystem.add_member(:operating_system_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operatingSystemName", traits: {"smithy.api#required" => {}}))
    EksAddOnOperatingSystem.type = Types::EksAddOnOperatingSystem
    EksAddOnOperatingSystemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAddOnOperatingSystem, name: "member"))
    FacetTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFacetType, name: "member"))
    FixedPercentage.add_member(:percentage_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "percentageValue", traits: {"smithy.api#required" => {}}))
    FixedPercentage.type = Types::FixedPercentage
    FixedUpfrontPricingTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id", traits: {"smithy.api#required" => {}}))
    FixedUpfrontPricingTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TermType, name: "type", traits: {"smithy.api#required" => {}}))
    FixedUpfrontPricingTerm.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode", traits: {"smithy.api#required" => {}}))
    FixedUpfrontPricingTerm.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "duration"))
    FixedUpfrontPricingTerm.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "price", traits: {"smithy.api#required" => {}}))
    FixedUpfrontPricingTerm.add_member(:grants, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantList, name: "grants", traits: {"smithy.api#required" => {}}))
    FixedUpfrontPricingTerm.type = Types::FixedUpfrontPricingTerm
    FreeTrialPricingTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id", traits: {"smithy.api#required" => {}}))
    FreeTrialPricingTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TermType, name: "type", traits: {"smithy.api#required" => {}}))
    FreeTrialPricingTerm.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "duration"))
    FreeTrialPricingTerm.add_member(:grants, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantList, name: "grants", traits: {"smithy.api#required" => {}}))
    FreeTrialPricingTerm.type = Types::FreeTrialPricingTerm
    FulfillmentOption.add_member(:amazon_machine_image_fulfillment_option, Types::FulfillmentOption::AmazonMachineImageFulfillmentOption, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonMachineImageFulfillmentOption, name: "amazonMachineImageFulfillmentOption"))
    FulfillmentOption.add_member(:api_fulfillment_option, Types::FulfillmentOption::ApiFulfillmentOption, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiFulfillmentOption, name: "apiFulfillmentOption"))
    FulfillmentOption.add_member(:cloud_formation_fulfillment_option, Types::FulfillmentOption::CloudFormationFulfillmentOption, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFormationFulfillmentOption, name: "cloudFormationFulfillmentOption"))
    FulfillmentOption.add_member(:container_fulfillment_option, Types::FulfillmentOption::ContainerFulfillmentOption, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerFulfillmentOption, name: "containerFulfillmentOption"))
    FulfillmentOption.add_member(:helm_fulfillment_option, Types::FulfillmentOption::HelmFulfillmentOption, ::Smithy::Schema::Shapes::MemberShape.new(target: HelmFulfillmentOption, name: "helmFulfillmentOption"))
    FulfillmentOption.add_member(:eks_add_on_fulfillment_option, Types::FulfillmentOption::EksAddOnFulfillmentOption, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAddOnFulfillmentOption, name: "eksAddOnFulfillmentOption"))
    FulfillmentOption.add_member(:ec2_image_builder_component_fulfillment_option, Types::FulfillmentOption::Ec2ImageBuilderComponentFulfillmentOption, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2ImageBuilderComponentFulfillmentOption, name: "ec2ImageBuilderComponentFulfillmentOption"))
    FulfillmentOption.add_member(:data_exchange_fulfillment_option, Types::FulfillmentOption::DataExchangeFulfillmentOption, ::Smithy::Schema::Shapes::MemberShape.new(target: DataExchangeFulfillmentOption, name: "dataExchangeFulfillmentOption"))
    FulfillmentOption.add_member(:professional_services_fulfillment_option, Types::FulfillmentOption::ProfessionalServicesFulfillmentOption, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfessionalServicesFulfillmentOption, name: "professionalServicesFulfillmentOption"))
    FulfillmentOption.add_member(:saas_fulfillment_option, Types::FulfillmentOption::SaasFulfillmentOption, ::Smithy::Schema::Shapes::MemberShape.new(target: SaasFulfillmentOption, name: "saasFulfillmentOption"))
    FulfillmentOption.add_member(:sage_maker_algorithm_fulfillment_option, Types::FulfillmentOption::SageMakerAlgorithmFulfillmentOption, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerAlgorithmFulfillmentOption, name: "sageMakerAlgorithmFulfillmentOption"))
    FulfillmentOption.add_member(:sage_maker_model_fulfillment_option, Types::FulfillmentOption::SageMakerModelFulfillmentOption, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerModelFulfillmentOption, name: "sageMakerModelFulfillmentOption"))
    FulfillmentOption.add_member(:unknown, Types::FulfillmentOption::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FulfillmentOption.type = Types::FulfillmentOption
    FulfillmentOptionSummary.add_member(:fulfillment_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionType, name: "fulfillmentOptionType", traits: {"smithy.api#required" => {}}))
    FulfillmentOptionSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "displayName", traits: {"smithy.api#required" => {}}))
    FulfillmentOptionSummary.type = Types::FulfillmentOptionSummary
    FulfillmentOptionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionSummary, name: "member"))
    FulfillmentOptionType.add_member(:amazon_machine_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_MACHINE_IMAGE", traits: {"smithy.api#enumValue" => "AMAZON_MACHINE_IMAGE"}))
    FulfillmentOptionType.add_member(:api, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API", traits: {"smithy.api#enumValue" => "API"}))
    FulfillmentOptionType.add_member(:cloudformation_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDFORMATION_TEMPLATE", traits: {"smithy.api#enumValue" => "CLOUDFORMATION_TEMPLATE"}))
    FulfillmentOptionType.add_member(:container, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINER", traits: {"smithy.api#enumValue" => "CONTAINER"}))
    FulfillmentOptionType.add_member(:helm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HELM", traits: {"smithy.api#enumValue" => "HELM"}))
    FulfillmentOptionType.add_member(:eks_add_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_ADD_ON", traits: {"smithy.api#enumValue" => "EKS_ADD_ON"}))
    FulfillmentOptionType.add_member(:ec2_image_builder_component, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_IMAGE_BUILDER_COMPONENT", traits: {"smithy.api#enumValue" => "EC2_IMAGE_BUILDER_COMPONENT"}))
    FulfillmentOptionType.add_member(:data_exchange, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_EXCHANGE", traits: {"smithy.api#enumValue" => "DATA_EXCHANGE"}))
    FulfillmentOptionType.add_member(:professional_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFESSIONAL_SERVICES", traits: {"smithy.api#enumValue" => "PROFESSIONAL_SERVICES"}))
    FulfillmentOptionType.add_member(:saas, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAAS", traits: {"smithy.api#enumValue" => "SAAS"}))
    FulfillmentOptionType.add_member(:sagemaker_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAGEMAKER_ALGORITHM", traits: {"smithy.api#enumValue" => "SAGEMAKER_ALGORITHM"}))
    FulfillmentOptionType.add_member(:sagemaker_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAGEMAKER_MODEL", traits: {"smithy.api#enumValue" => "SAGEMAKER_MODEL"}))
    FulfillmentOptionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOption, name: "member"))
    GetListingInput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    GetListingInput.add_member(:listing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingId, name: "listingId", traits: {"smithy.api#required" => {}}))
    GetListingInput.type = Types::GetListingInput
    GetListingOutput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    GetListingOutput.add_member(:associated_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingAssociatedEntityList, name: "associatedEntities", traits: {"smithy.api#required" => {}}))
    GetListingOutput.add_member(:badges, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingBadgeList, name: "badges", traits: {"smithy.api#required" => {}}))
    GetListingOutput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    GetListingOutput.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "categories", traits: {"smithy.api#required" => {}}))
    GetListingOutput.add_member(:fulfillment_option_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionSummaryList, name: "fulfillmentOptionSummaries", traits: {"smithy.api#required" => {}}))
    GetListingOutput.add_member(:highlights, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "highlights", traits: {"smithy.api#required" => {}}))
    GetListingOutput.add_member(:integration_guide, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableString, name: "integrationGuide"))
    GetListingOutput.add_member(:listing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingId, name: "listingId", traits: {"smithy.api#required" => {}}))
    GetListingOutput.add_member(:listing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "listingName", traits: {"smithy.api#required" => {}}))
    GetListingOutput.add_member(:logo_thumbnail_url, ::Smithy::Schema::Shapes::MemberShape.new(target: URL, name: "logoThumbnailUrl", traits: {"smithy.api#required" => {}}))
    GetListingOutput.add_member(:long_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "longDescription", traits: {"smithy.api#length" => {"max" => 32768}, "smithy.api#required" => {}}))
    GetListingOutput.add_member(:pricing_models, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingModelList, name: "pricingModels", traits: {"smithy.api#required" => {}}))
    GetListingOutput.add_member(:pricing_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingUnitList, name: "pricingUnits", traits: {"smithy.api#required" => {}}))
    GetListingOutput.add_member(:promotional_media, ::Smithy::Schema::Shapes::MemberShape.new(target: PromotionalMediaList, name: "promotionalMedia", traits: {"smithy.api#required" => {}}))
    GetListingOutput.add_member(:publisher, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerInformation, name: "publisher", traits: {"smithy.api#required" => {}}))
    GetListingOutput.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "resources", traits: {"smithy.api#required" => {}}))
    GetListingOutput.add_member(:review_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewSummary, name: "reviewSummary"))
    GetListingOutput.add_member(:seller_engagements, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerEngagementList, name: "sellerEngagements", traits: {"smithy.api#required" => {}}))
    GetListingOutput.add_member(:short_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "shortDescription", traits: {"smithy.api#required" => {}}))
    GetListingOutput.add_member(:use_cases, ::Smithy::Schema::Shapes::MemberShape.new(target: UseCaseList, name: "useCases", traits: {"smithy.api#required" => {}}))
    GetListingOutput.type = Types::GetListingOutput
    GetOfferInput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    GetOfferInput.add_member(:offer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferId, name: "offerId", traits: {"smithy.api#required" => {}}))
    GetOfferInput.type = Types::GetOfferInput
    GetOfferOutput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    GetOfferOutput.add_member(:offer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferId, name: "offerId", traits: {"smithy.api#required" => {}}))
    GetOfferOutput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    GetOfferOutput.add_member(:offer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableString, name: "offerName"))
    GetOfferOutput.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "expirationTime"))
    GetOfferOutput.add_member(:available_from_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "availableFromTime"))
    GetOfferOutput.add_member(:seller_of_record, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerInformation, name: "sellerOfRecord", traits: {"smithy.api#required" => {}}))
    GetOfferOutput.add_member(:associated_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferAssociatedEntityList, name: "associatedEntities", traits: {"smithy.api#required" => {}}))
    GetOfferOutput.add_member(:agreement_proposal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementResourceId, name: "agreementProposalId", traits: {"smithy.api#required" => {}}))
    GetOfferOutput.add_member(:replacement_agreement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementResourceId, name: "replacementAgreementId"))
    GetOfferOutput.add_member(:pricing_model, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingModel, name: "pricingModel", traits: {"smithy.api#required" => {}}))
    GetOfferOutput.add_member(:badges, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOptionBadgeList, name: "badges", traits: {"smithy.api#required" => {}}))
    GetOfferOutput.type = Types::GetOfferOutput
    GetOfferSetInput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    GetOfferSetInput.add_member(:offer_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferSetId, name: "offerSetId", traits: {"smithy.api#required" => {}}))
    GetOfferSetInput.type = Types::GetOfferSetInput
    GetOfferSetOutput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    GetOfferSetOutput.add_member(:offer_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferSetId, name: "offerSetId", traits: {"smithy.api#required" => {}}))
    GetOfferSetOutput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    GetOfferSetOutput.add_member(:offer_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "offerSetName"))
    GetOfferSetOutput.add_member(:available_from_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "availableFromTime"))
    GetOfferSetOutput.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "expirationTime"))
    GetOfferSetOutput.add_member(:buyer_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableString, name: "buyerNotes"))
    GetOfferSetOutput.add_member(:seller_of_record, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerInformation, name: "sellerOfRecord", traits: {"smithy.api#required" => {}}))
    GetOfferSetOutput.add_member(:badges, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOptionBadgeList, name: "badges", traits: {"smithy.api#required" => {}}))
    GetOfferSetOutput.add_member(:associated_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferSetAssociatedEntityList, name: "associatedEntities", traits: {"smithy.api#required" => {}}))
    GetOfferSetOutput.type = Types::GetOfferSetOutput
    GetOfferTermsInput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    GetOfferTermsInput.add_member(:offer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferId, name: "offerId", traits: {"smithy.api#required" => {}}))
    GetOfferTermsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 25}}))
    GetOfferTermsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetOfferTermsInput.type = Types::GetOfferTermsInput
    GetOfferTermsOutput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    GetOfferTermsOutput.add_member(:offer_terms, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferTermsList, name: "offerTerms", traits: {"smithy.api#required" => {}}))
    GetOfferTermsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetOfferTermsOutput.type = Types::GetOfferTermsOutput
    GetProductInput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    GetProductInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductId, name: "productId", traits: {"smithy.api#required" => {}}))
    GetProductInput.type = Types::GetProductInput
    GetProductOutput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    GetProductOutput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductId, name: "productId", traits: {"smithy.api#required" => {}}))
    GetProductOutput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    GetProductOutput.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "productName", traits: {"smithy.api#required" => {}}))
    GetProductOutput.add_member(:manufacturer, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerInformation, name: "manufacturer", traits: {"smithy.api#required" => {}}))
    GetProductOutput.add_member(:deployed_on_aws, ::Smithy::Schema::Shapes::MemberShape.new(target: DeployedOnAwsStatus, name: "deployedOnAws", traits: {"smithy.api#required" => {}}))
    GetProductOutput.add_member(:short_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "shortDescription", traits: {"smithy.api#required" => {}}))
    GetProductOutput.add_member(:long_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "longDescription", traits: {"smithy.api#length" => {"max" => 32768}, "smithy.api#required" => {}}))
    GetProductOutput.add_member(:logo_thumbnail_url, ::Smithy::Schema::Shapes::MemberShape.new(target: URL, name: "logoThumbnailUrl", traits: {"smithy.api#required" => {}}))
    GetProductOutput.add_member(:fulfillment_option_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionSummaryList, name: "fulfillmentOptionSummaries", traits: {"smithy.api#required" => {}}))
    GetProductOutput.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "categories", traits: {"smithy.api#required" => {}}))
    GetProductOutput.add_member(:highlights, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "highlights", traits: {"smithy.api#required" => {}}))
    GetProductOutput.add_member(:promotional_media, ::Smithy::Schema::Shapes::MemberShape.new(target: PromotionalMediaList, name: "promotionalMedia", traits: {"smithy.api#required" => {}}))
    GetProductOutput.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "resources", traits: {"smithy.api#required" => {}}))
    GetProductOutput.add_member(:seller_engagements, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerEngagementList, name: "sellerEngagements", traits: {"smithy.api#required" => {}}))
    GetProductOutput.add_member(:listing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingId, name: "listingId", traits: {"smithy.api#required" => {}}))
    GetProductOutput.type = Types::GetProductOutput
    GrantItem.add_member(:dimension_key, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "dimensionKey", traits: {"smithy.api#required" => {}}))
    GrantItem.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "displayName", traits: {"smithy.api#required" => {}}))
    GrantItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "description"))
    GrantItem.add_member(:dimension_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionLabelList, name: "dimensionLabels"))
    GrantItem.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "unit", traits: {"smithy.api#required" => {}}))
    GrantItem.add_member(:max_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxQuantity"))
    GrantItem.type = Types::GrantItem
    GrantList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantItem, name: "member"))
    HelmFulfillmentOption.add_member(:fulfillment_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionId", traits: {"smithy.api#required" => {}}))
    HelmFulfillmentOption.add_member(:fulfillment_option_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionName", traits: {"smithy.api#required" => {}}))
    HelmFulfillmentOption.add_member(:fulfillment_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionType, name: "fulfillmentOptionType", traits: {"smithy.api#required" => {}}))
    HelmFulfillmentOption.add_member(:fulfillment_option_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionDisplayName", traits: {"smithy.api#required" => {}}))
    HelmFulfillmentOption.add_member(:fulfillment_option_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionVersion"))
    HelmFulfillmentOption.add_member(:operating_systems, ::Smithy::Schema::Shapes::MemberShape.new(target: HelmOperatingSystemList, name: "operatingSystems"))
    HelmFulfillmentOption.add_member(:release_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "releaseNotes"))
    HelmFulfillmentOption.add_member(:aws_supported_services, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsSupportedServiceList, name: "awsSupportedServices"))
    HelmFulfillmentOption.add_member(:usage_instructions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageInstructions"))
    HelmFulfillmentOption.type = Types::HelmFulfillmentOption
    HelmOperatingSystem.add_member(:operating_system_family_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operatingSystemFamilyName", traits: {"smithy.api#required" => {}}))
    HelmOperatingSystem.add_member(:operating_system_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operatingSystemName", traits: {"smithy.api#required" => {}}))
    HelmOperatingSystem.type = Types::HelmOperatingSystem
    HelmOperatingSystemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HelmOperatingSystem, name: "member"))
    HighlightList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InternalServerException.type = Types::InternalServerException
    LegalDocumentType.add_member(:custom_eula, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_EULA", traits: {"smithy.api#enumValue" => "CustomEula"}))
    LegalDocumentType.add_member(:custom_dsa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_DSA", traits: {"smithy.api#enumValue" => "CustomDsa"}))
    LegalDocumentType.add_member(:enterprise_eula, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTERPRISE_EULA", traits: {"smithy.api#enumValue" => "EnterpriseEula"}))
    LegalDocumentType.add_member(:standard_eula, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD_EULA", traits: {"smithy.api#enumValue" => "StandardEula"}))
    LegalDocumentType.add_member(:standard_dsa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD_DSA", traits: {"smithy.api#enumValue" => "StandardDsa"}))
    LegalTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id", traits: {"smithy.api#required" => {}}))
    LegalTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TermType, name: "type", traits: {"smithy.api#required" => {}}))
    LegalTerm.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentList, name: "documents", traits: {"smithy.api#required" => {}}))
    LegalTerm.type = Types::LegalTerm
    ListFulfillmentOptionsInput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    ListFulfillmentOptionsInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductId, name: "productId", traits: {"smithy.api#required" => {}}))
    ListFulfillmentOptionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 25, "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListFulfillmentOptionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFulfillmentOptionsInput.type = Types::ListFulfillmentOptionsInput
    ListFulfillmentOptionsOutput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    ListFulfillmentOptionsOutput.add_member(:fulfillment_options, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionsList, name: "fulfillmentOptions", traits: {"smithy.api#required" => {}}))
    ListFulfillmentOptionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFulfillmentOptionsOutput.type = Types::ListFulfillmentOptionsOutput
    ListPurchaseOptionsInput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    ListPurchaseOptionsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOptionFilterList, name: "filters"))
    ListPurchaseOptionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 25, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListPurchaseOptionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPurchaseOptionsInput.type = Types::ListPurchaseOptionsInput
    ListPurchaseOptionsOutput.add_member(:purchase_options, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOptionSummaryList, name: "purchaseOptions"))
    ListPurchaseOptionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPurchaseOptionsOutput.type = Types::ListPurchaseOptionsOutput
    ListingAssociatedEntity.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductInformation, name: "product"))
    ListingAssociatedEntity.add_member(:offer, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferInformation, name: "offer"))
    ListingAssociatedEntity.type = Types::ListingAssociatedEntity
    ListingAssociatedEntityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingAssociatedEntity, name: "member"))
    ListingBadge.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "displayName", traits: {"smithy.api#required" => {}}))
    ListingBadge.add_member(:badge_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingBadgeType, name: "badgeType", traits: {"smithy.api#required" => {}}))
    ListingBadge.type = Types::ListingBadge
    ListingBadgeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingBadge, name: "member"))
    ListingBadgeType.add_member(:aws_free_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_FREE_TIER", traits: {"smithy.api#enumValue" => "AWS_FREE_TIER"}))
    ListingBadgeType.add_member(:free_trial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FREE_TRIAL", traits: {"smithy.api#enumValue" => "FREE_TRIAL"}))
    ListingBadgeType.add_member(:deployed_on_aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYED_ON_AWS", traits: {"smithy.api#enumValue" => "DEPLOYED_ON_AWS"}))
    ListingBadgeType.add_member(:quick_launch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUICK_LAUNCH", traits: {"smithy.api#enumValue" => "QUICK_LAUNCH"}))
    ListingBadgeType.add_member(:multi_product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_PRODUCT", traits: {"smithy.api#enumValue" => "MULTI_PRODUCT"}))
    ListingFacet.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value", traits: {"smithy.api#required" => {}}))
    ListingFacet.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "displayName", traits: {"smithy.api#required" => {}}))
    ListingFacet.add_member(:parent, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableString, name: "parent"))
    ListingFacet.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeCount, name: "count", traits: {"smithy.api#required" => {}}))
    ListingFacet.type = Types::ListingFacet
    ListingFacetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingFacet, name: "member"))
    ListingSummary.add_member(:listing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingId, name: "listingId", traits: {"smithy.api#required" => {}}))
    ListingSummary.add_member(:listing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "listingName", traits: {"smithy.api#required" => {}}))
    ListingSummary.add_member(:publisher, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerInformation, name: "publisher", traits: {"smithy.api#required" => {}}))
    ListingSummary.add_member(:fulfillment_option_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionSummaryList, name: "fulfillmentOptionSummaries", traits: {"smithy.api#required" => {}}))
    ListingSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    ListingSummary.add_member(:short_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "shortDescription", traits: {"smithy.api#required" => {}}))
    ListingSummary.add_member(:logo_thumbnail_url, ::Smithy::Schema::Shapes::MemberShape.new(target: URL, name: "logoThumbnailUrl", traits: {"smithy.api#required" => {}}))
    ListingSummary.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "categories", traits: {"smithy.api#required" => {}}))
    ListingSummary.add_member(:badges, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingBadgeList, name: "badges", traits: {"smithy.api#required" => {}}))
    ListingSummary.add_member(:review_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewSummary, name: "reviewSummary", traits: {"smithy.api#required" => {}}))
    ListingSummary.add_member(:pricing_models, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingModelList, name: "pricingModels", traits: {"smithy.api#required" => {}}))
    ListingSummary.add_member(:pricing_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingUnitList, name: "pricingUnits", traits: {"smithy.api#required" => {}}))
    ListingSummary.add_member(:associated_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingSummaryAssociatedEntityList, name: "associatedEntities", traits: {"smithy.api#required" => {}}))
    ListingSummary.type = Types::ListingSummary
    ListingSummaryAssociatedEntity.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductInformation, name: "product"))
    ListingSummaryAssociatedEntity.type = Types::ListingSummaryAssociatedEntity
    ListingSummaryAssociatedEntityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingSummaryAssociatedEntity, name: "member"))
    ListingSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingSummary, name: "member"))
    NetPaymentTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id", traits: {"smithy.api#required" => {}}))
    NetPaymentTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TermType, name: "type", traits: {"smithy.api#required" => {}}))
    NetPaymentTerm.add_member(:payment_due_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "paymentDuePeriod", traits: {"smithy.api#required" => {}}))
    NetPaymentTerm.type = Types::NetPaymentTerm
    OfferAssociatedEntity.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductInformation, name: "product", traits: {"smithy.api#required" => {}}))
    OfferAssociatedEntity.add_member(:offer_set, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferSetInformation, name: "offerSet"))
    OfferAssociatedEntity.type = Types::OfferAssociatedEntity
    OfferAssociatedEntityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferAssociatedEntity, name: "member"))
    OfferInformation.add_member(:offer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferId, name: "offerId", traits: {"smithy.api#required" => {}}))
    OfferInformation.add_member(:offer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableString, name: "offerName"))
    OfferInformation.add_member(:seller_of_record, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerInformation, name: "sellerOfRecord", traits: {"smithy.api#required" => {}}))
    OfferInformation.type = Types::OfferInformation
    OfferSetAssociatedEntity.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductInformation, name: "product", traits: {"smithy.api#required" => {}}))
    OfferSetAssociatedEntity.add_member(:offer, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferInformation, name: "offer", traits: {"smithy.api#required" => {}}))
    OfferSetAssociatedEntity.type = Types::OfferSetAssociatedEntity
    OfferSetAssociatedEntityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferSetAssociatedEntity, name: "member"))
    OfferSetInformation.add_member(:offer_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferSetId, name: "offerSetId", traits: {"smithy.api#required" => {}}))
    OfferSetInformation.add_member(:seller_of_record, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerInformation, name: "sellerOfRecord", traits: {"smithy.api#required" => {}}))
    OfferSetInformation.type = Types::OfferSetInformation
    OfferTerm.add_member(:byol_pricing_term, Types::OfferTerm::ByolPricingTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: ByolPricingTerm, name: "byolPricingTerm"))
    OfferTerm.add_member(:configurable_upfront_pricing_term, Types::OfferTerm::ConfigurableUpfrontPricingTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurableUpfrontPricingTerm, name: "configurableUpfrontPricingTerm"))
    OfferTerm.add_member(:fixed_upfront_pricing_term, Types::OfferTerm::FixedUpfrontPricingTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: FixedUpfrontPricingTerm, name: "fixedUpfrontPricingTerm"))
    OfferTerm.add_member(:free_trial_pricing_term, Types::OfferTerm::FreeTrialPricingTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTrialPricingTerm, name: "freeTrialPricingTerm"))
    OfferTerm.add_member(:legal_term, Types::OfferTerm::LegalTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: LegalTerm, name: "legalTerm"))
    OfferTerm.add_member(:payment_schedule_term, Types::OfferTerm::PaymentScheduleTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentScheduleTerm, name: "paymentScheduleTerm"))
    OfferTerm.add_member(:recurring_payment_term, Types::OfferTerm::RecurringPaymentTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringPaymentTerm, name: "recurringPaymentTerm"))
    OfferTerm.add_member(:renewal_term, Types::OfferTerm::RenewalTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewalTerm, name: "renewalTerm"))
    OfferTerm.add_member(:support_term, Types::OfferTerm::SupportTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportTerm, name: "supportTerm"))
    OfferTerm.add_member(:usage_based_pricing_term, Types::OfferTerm::UsageBasedPricingTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageBasedPricingTerm, name: "usageBasedPricingTerm"))
    OfferTerm.add_member(:validity_term, Types::OfferTerm::ValidityTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidityTerm, name: "validityTerm"))
    OfferTerm.add_member(:variable_payment_term, Types::OfferTerm::VariablePaymentTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: VariablePaymentTerm, name: "variablePaymentTerm"))
    OfferTerm.add_member(:net_payment_term, Types::OfferTerm::NetPaymentTerm, ::Smithy::Schema::Shapes::MemberShape.new(target: NetPaymentTerm, name: "netPaymentTerm"))
    OfferTerm.add_member(:unknown, Types::OfferTerm::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OfferTerm.type = Types::OfferTerm
    OfferTermsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferTerm, name: "member"))
    PaymentScheduleEntry.add_member(:charge_date_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "chargeDateOffset", traits: {"smithy.api#required" => {}}))
    PaymentScheduleEntry.add_member(:charge_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "chargePercentage", traits: {"smithy.api#required" => {}}))
    PaymentScheduleEntry.add_member(:day_of_month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dayOfMonth", traits: {"smithy.api#range" => {"min" => 1, "max" => 31}}))
    PaymentScheduleEntry.type = Types::PaymentScheduleEntry
    PaymentScheduleEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentScheduleEntry, name: "member"))
    PaymentScheduleTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id", traits: {"smithy.api#required" => {}}))
    PaymentScheduleTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TermType, name: "type", traits: {"smithy.api#required" => {}}))
    PaymentScheduleTerm.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode", traits: {"smithy.api#required" => {}}))
    PaymentScheduleTerm.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleList, name: "schedule", traits: {"smithy.api#required" => {}}))
    PaymentScheduleTerm.type = Types::PaymentScheduleTerm
    PaymentScheduleTermTemplate.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentScheduleEntryList, name: "schedule", traits: {"smithy.api#required" => {}}))
    PaymentScheduleTermTemplate.type = Types::PaymentScheduleTermTemplate
    PercentageRange.add_member(:minimum_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "minimumValue", traits: {"smithy.api#required" => {}}))
    PercentageRange.add_member(:maximum_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "maximumValue", traits: {"smithy.api#required" => {}}))
    PercentageRange.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "defaultValue", traits: {"smithy.api#required" => {}}))
    PercentageRange.type = Types::PercentageRange
    PriceIncrease.add_member(:fixed_percentage, Types::PriceIncrease::FixedPercentage, ::Smithy::Schema::Shapes::MemberShape.new(target: FixedPercentage, name: "fixedPercentage"))
    PriceIncrease.add_member(:percentage_range, Types::PriceIncrease::PercentageRange, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentageRange, name: "percentageRange"))
    PriceIncrease.add_member(:unknown, Types::PriceIncrease::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PriceIncrease.type = Types::PriceIncrease
    PricingModel.add_member(:pricing_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingModelType, name: "pricingModelType", traits: {"smithy.api#required" => {}}))
    PricingModel.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "displayName", traits: {"smithy.api#required" => {}}))
    PricingModel.type = Types::PricingModel
    PricingModelList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingModel, name: "member"))
    PricingModelType.add_member(:usage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USAGE", traits: {"smithy.api#enumValue" => "USAGE"}))
    PricingModelType.add_member(:contract, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTRACT", traits: {"smithy.api#enumValue" => "CONTRACT"}))
    PricingModelType.add_member(:byol, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYOL", traits: {"smithy.api#enumValue" => "BYOL"}))
    PricingModelType.add_member(:free, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FREE", traits: {"smithy.api#enumValue" => "FREE"}))
    PricingUnit.add_member(:pricing_unit_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingUnitType, name: "pricingUnitType", traits: {"smithy.api#required" => {}}))
    PricingUnit.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "displayName", traits: {"smithy.api#required" => {}}))
    PricingUnit.type = Types::PricingUnit
    PricingUnitList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingUnit, name: "member"))
    PricingUnitType.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USERS", traits: {"smithy.api#enumValue" => "USERS"}))
    PricingUnitType.add_member(:hosts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOSTS", traits: {"smithy.api#enumValue" => "HOSTS"}))
    PricingUnitType.add_member(:bandwidth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BANDWIDTH", traits: {"smithy.api#enumValue" => "BANDWIDTH"}))
    PricingUnitType.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA", traits: {"smithy.api#enumValue" => "DATA"}))
    PricingUnitType.add_member(:tiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIERS", traits: {"smithy.api#enumValue" => "TIERS"}))
    PricingUnitType.add_member(:requests, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUESTS", traits: {"smithy.api#enumValue" => "REQUESTS"}))
    PricingUnitType.add_member(:units, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNITS", traits: {"smithy.api#enumValue" => "UNITS"}))
    ProductInformation.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductId, name: "productId", traits: {"smithy.api#required" => {}}))
    ProductInformation.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "productName", traits: {"smithy.api#required" => {}}))
    ProductInformation.add_member(:manufacturer, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerInformation, name: "manufacturer", traits: {"smithy.api#required" => {}}))
    ProductInformation.type = Types::ProductInformation
    ProfessionalServicesFulfillmentOption.add_member(:fulfillment_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionId", traits: {"smithy.api#required" => {}}))
    ProfessionalServicesFulfillmentOption.add_member(:fulfillment_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionType, name: "fulfillmentOptionType", traits: {"smithy.api#required" => {}}))
    ProfessionalServicesFulfillmentOption.add_member(:fulfillment_option_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionDisplayName", traits: {"smithy.api#required" => {}}))
    ProfessionalServicesFulfillmentOption.type = Types::ProfessionalServicesFulfillmentOption
    PromotionalEmbeddedImage.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "title", traits: {"smithy.api#required" => {}}))
    PromotionalEmbeddedImage.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: URL, name: "url", traits: {"smithy.api#required" => {}}))
    PromotionalEmbeddedImage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableString, name: "description"))
    PromotionalEmbeddedImage.type = Types::PromotionalEmbeddedImage
    PromotionalEmbeddedVideo.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "title", traits: {"smithy.api#required" => {}}))
    PromotionalEmbeddedVideo.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: URL, name: "url", traits: {"smithy.api#required" => {}}))
    PromotionalEmbeddedVideo.add_member(:preview, ::Smithy::Schema::Shapes::MemberShape.new(target: URL, name: "preview", traits: {"smithy.api#required" => {}}))
    PromotionalEmbeddedVideo.add_member(:thumbnail, ::Smithy::Schema::Shapes::MemberShape.new(target: URL, name: "thumbnail", traits: {"smithy.api#required" => {}}))
    PromotionalEmbeddedVideo.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableString, name: "description"))
    PromotionalEmbeddedVideo.type = Types::PromotionalEmbeddedVideo
    PromotionalMedia.add_member(:embedded_image, Types::PromotionalMedia::EmbeddedImage, ::Smithy::Schema::Shapes::MemberShape.new(target: PromotionalEmbeddedImage, name: "embeddedImage"))
    PromotionalMedia.add_member(:embedded_video, Types::PromotionalMedia::EmbeddedVideo, ::Smithy::Schema::Shapes::MemberShape.new(target: PromotionalEmbeddedVideo, name: "embeddedVideo"))
    PromotionalMedia.add_member(:unknown, Types::PromotionalMedia::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PromotionalMedia.type = Types::PromotionalMedia
    PromotionalMediaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PromotionalMedia, name: "member"))
    PurchaseOptionAssociatedEntity.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductInformation, name: "product", traits: {"smithy.api#required" => {}}))
    PurchaseOptionAssociatedEntity.add_member(:offer, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferInformation, name: "offer", traits: {"smithy.api#required" => {}}))
    PurchaseOptionAssociatedEntity.add_member(:offer_set, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferSetInformation, name: "offerSet"))
    PurchaseOptionAssociatedEntity.type = Types::PurchaseOptionAssociatedEntity
    PurchaseOptionAssociatedEntityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOptionAssociatedEntity, name: "member"))
    PurchaseOptionBadge.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "displayName", traits: {"smithy.api#required" => {}}))
    PurchaseOptionBadge.add_member(:badge_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOptionBadgeType, name: "badgeType", traits: {"smithy.api#required" => {}}))
    PurchaseOptionBadge.type = Types::PurchaseOptionBadge
    PurchaseOptionBadgeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOptionBadge, name: "member"))
    PurchaseOptionBadgeType.add_member(:private_pricing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE_PRICING", traits: {"smithy.api#enumValue" => "PRIVATE_PRICING"}))
    PurchaseOptionBadgeType.add_member(:future_dated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FUTURE_DATED", traits: {"smithy.api#enumValue" => "FUTURE_DATED"}))
    PurchaseOptionBadgeType.add_member(:replacement_offer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACEMENT_OFFER", traits: {"smithy.api#enumValue" => "REPLACEMENT_OFFER"}))
    PurchaseOptionBadgeType.add_member(:auto_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_RENEW", traits: {"smithy.api#enumValue" => "AUTO_RENEW"}))
    PurchaseOptionFilter.add_member(:filter_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOptionFilterType, name: "filterType", traits: {"smithy.api#required" => {}}))
    PurchaseOptionFilter.add_member(:filter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOptionFilterValueList, name: "filterValues", traits: {"smithy.api#required" => {}}))
    PurchaseOptionFilter.type = Types::PurchaseOptionFilter
    PurchaseOptionFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOptionFilter, name: "member"))
    PurchaseOptionFilterType.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRODUCT_ID", traits: {"smithy.api#enumValue" => "PRODUCT_ID"}))
    PurchaseOptionFilterType.add_member(:seller_of_record_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELLER_OF_RECORD_PROFILE_ID", traits: {"smithy.api#enumValue" => "SELLER_OF_RECORD_PROFILE_ID"}))
    PurchaseOptionFilterType.add_member(:purchase_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PURCHASE_OPTION_TYPE", traits: {"smithy.api#enumValue" => "PURCHASE_OPTION_TYPE"}))
    PurchaseOptionFilterType.add_member(:visibility_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VISIBILITY_SCOPE", traits: {"smithy.api#enumValue" => "VISIBILITY_SCOPE"}))
    PurchaseOptionFilterType.add_member(:availability_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABILITY_STATUS", traits: {"smithy.api#enumValue" => "AVAILABILITY_STATUS"}))
    PurchaseOptionFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOptionFilterValue, name: "member"))
    PurchaseOptionSummary.add_member(:purchase_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "purchaseOptionId", traits: {"smithy.api#required" => {}}))
    PurchaseOptionSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    PurchaseOptionSummary.add_member(:purchase_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOptionType, name: "purchaseOptionType", traits: {"smithy.api#required" => {}}))
    PurchaseOptionSummary.add_member(:purchase_option_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "purchaseOptionName"))
    PurchaseOptionSummary.add_member(:available_from_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "availableFromTime"))
    PurchaseOptionSummary.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "expirationTime"))
    PurchaseOptionSummary.add_member(:seller_of_record, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerInformation, name: "sellerOfRecord", traits: {"smithy.api#required" => {}}))
    PurchaseOptionSummary.add_member(:badges, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOptionBadgeList, name: "badges"))
    PurchaseOptionSummary.add_member(:associated_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOptionAssociatedEntityList, name: "associatedEntities", traits: {"smithy.api#required" => {}}))
    PurchaseOptionSummary.type = Types::PurchaseOptionSummary
    PurchaseOptionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOptionSummary, name: "member"))
    PurchaseOptionType.add_member(:offer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFFER", traits: {"smithy.api#enumValue" => "OFFER"}))
    PurchaseOptionType.add_member(:offerset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFFERSET", traits: {"smithy.api#enumValue" => "OFFERSET"}))
    RateCardConstraintType.add_member(:allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOWED", traits: {"smithy.api#enumValue" => "Allowed"}))
    RateCardConstraintType.add_member(:disallowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISALLOWED", traits: {"smithy.api#enumValue" => "Disallowed"}))
    RateCardItem.add_member(:dimension_key, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "dimensionKey", traits: {"smithy.api#required" => {}}))
    RateCardItem.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "displayName", traits: {"smithy.api#required" => {}}))
    RateCardItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "description"))
    RateCardItem.add_member(:dimension_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionLabelList, name: "dimensionLabels"))
    RateCardItem.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "unit", traits: {"smithy.api#required" => {}}))
    RateCardItem.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "price", traits: {"smithy.api#required" => {}}))
    RateCardItem.type = Types::RateCardItem
    RateCardList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RateCardItem, name: "member"))
    RecurringPaymentTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id", traits: {"smithy.api#required" => {}}))
    RecurringPaymentTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TermType, name: "type", traits: {"smithy.api#required" => {}}))
    RecurringPaymentTerm.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode", traits: {"smithy.api#required" => {}}))
    RecurringPaymentTerm.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriodType, name: "billingPeriod", traits: {"smithy.api#required" => {}}))
    RecurringPaymentTerm.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "price", traits: {"smithy.api#required" => {}}))
    RecurringPaymentTerm.type = Types::RecurringPaymentTerm
    RenewalTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id", traits: {"smithy.api#required" => {}}))
    RenewalTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TermType, name: "type", traits: {"smithy.api#required" => {}}))
    RenewalTerm.add_member(:max_renewals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxRenewals", traits: {"smithy.api#range" => {"min" => 1}}))
    RenewalTerm.add_member(:lockout_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "lockoutPeriod"))
    RenewalTerm.add_member(:adjustment_deadline, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "adjustmentDeadline"))
    RenewalTerm.add_member(:price_increase, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceIncrease, name: "priceIncrease"))
    RenewalTerm.add_member(:term_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TermTemplateList, name: "termTemplates"))
    RenewalTerm.type = Types::RenewalTerm
    Resource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    Resource.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceContentType, name: "contentType", traits: {"smithy.api#required" => {}}))
    Resource.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value", traits: {"smithy.api#required" => {}}))
    Resource.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableString, name: "displayName"))
    Resource.type = Types::Resource
    ResourceContentType.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL", traits: {"smithy.api#enumValue" => "EMAIL"}))
    ResourceContentType.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHONE_NUMBER", traits: {"smithy.api#enumValue" => "PHONE_NUMBER"}))
    ResourceContentType.add_member(:link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINK", traits: {"smithy.api#enumValue" => "LINK"}))
    ResourceContentType.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    ResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:manufacturer_support, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANUFACTURER_SUPPORT", traits: {"smithy.api#enumValue" => "MANUFACTURER_SUPPORT"}))
    ResourceType.add_member(:manufacturer_instructions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANUFACTURER_INSTRUCTIONS", traits: {"smithy.api#enumValue" => "MANUFACTURER_INSTRUCTIONS"}))
    ReviewSourceId.add_member(:aws_marketplace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MARKETPLACE", traits: {"smithy.api#enumValue" => "AWS_MARKETPLACE"}))
    ReviewSourceSummary.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "sourceName", traits: {"smithy.api#required" => {}}))
    ReviewSourceSummary.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewSourceId, name: "sourceId", traits: {"smithy.api#required" => {}}))
    ReviewSourceSummary.add_member(:source_url, ::Smithy::Schema::Shapes::MemberShape.new(target: URL, name: "sourceUrl"))
    ReviewSourceSummary.add_member(:average_rating, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "averageRating", traits: {"smithy.api#required" => {}}))
    ReviewSourceSummary.add_member(:total_reviews, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeCount, name: "totalReviews", traits: {"smithy.api#required" => {}}))
    ReviewSourceSummary.type = Types::ReviewSourceSummary
    ReviewSourceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewSourceSummary, name: "member"))
    ReviewSummary.add_member(:review_source_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewSourceSummaryList, name: "reviewSourceSummaries", traits: {"smithy.api#required" => {}}))
    ReviewSummary.type = Types::ReviewSummary
    SaasFulfillmentOption.add_member(:fulfillment_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionId", traits: {"smithy.api#required" => {}}))
    SaasFulfillmentOption.add_member(:fulfillment_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionType, name: "fulfillmentOptionType", traits: {"smithy.api#required" => {}}))
    SaasFulfillmentOption.add_member(:fulfillment_option_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionDisplayName", traits: {"smithy.api#required" => {}}))
    SaasFulfillmentOption.add_member(:fulfillment_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentUrl"))
    SaasFulfillmentOption.add_member(:usage_instructions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageInstructions"))
    SaasFulfillmentOption.add_member(:available_from_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "availableFromTime"))
    SaasFulfillmentOption.add_member(:launch_url, ::Smithy::Schema::Shapes::MemberShape.new(target: URL, name: "launchUrl"))
    SaasFulfillmentOption.add_member(:quick_launch, ::Smithy::Schema::Shapes::MemberShape.new(target: SaasQuickLaunchStatus, name: "quickLaunch", traits: {"smithy.api#required" => {}}))
    SaasFulfillmentOption.type = Types::SaasFulfillmentOption
    SaasQuickLaunchStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    SaasQuickLaunchStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    SageMakerAlgorithmFulfillmentOption.add_member(:fulfillment_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionId", traits: {"smithy.api#required" => {}}))
    SageMakerAlgorithmFulfillmentOption.add_member(:fulfillment_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionType, name: "fulfillmentOptionType", traits: {"smithy.api#required" => {}}))
    SageMakerAlgorithmFulfillmentOption.add_member(:fulfillment_option_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionDisplayName", traits: {"smithy.api#required" => {}}))
    SageMakerAlgorithmFulfillmentOption.add_member(:fulfillment_option_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionVersion"))
    SageMakerAlgorithmFulfillmentOption.add_member(:release_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "releaseNotes"))
    SageMakerAlgorithmFulfillmentOption.add_member(:usage_instructions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageInstructions"))
    SageMakerAlgorithmFulfillmentOption.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerAlgorithmRecommendation, name: "recommendation"))
    SageMakerAlgorithmFulfillmentOption.type = Types::SageMakerAlgorithmFulfillmentOption
    SageMakerAlgorithmRecommendation.add_member(:recommended_batch_transform_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendedBatchTransformInstanceType", traits: {"smithy.api#required" => {}}))
    SageMakerAlgorithmRecommendation.add_member(:recommended_realtime_inference_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendedRealtimeInferenceInstanceType"))
    SageMakerAlgorithmRecommendation.add_member(:recommended_training_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendedTrainingInstanceType", traits: {"smithy.api#required" => {}}))
    SageMakerAlgorithmRecommendation.type = Types::SageMakerAlgorithmRecommendation
    SageMakerModelContentTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#length" => {"max" => 256}}))
    SageMakerModelFulfillmentOption.add_member(:fulfillment_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionId", traits: {"smithy.api#required" => {}}))
    SageMakerModelFulfillmentOption.add_member(:fulfillment_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentOptionType, name: "fulfillmentOptionType", traits: {"smithy.api#required" => {}}))
    SageMakerModelFulfillmentOption.add_member(:fulfillment_option_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionDisplayName", traits: {"smithy.api#required" => {}}))
    SageMakerModelFulfillmentOption.add_member(:fulfillment_option_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fulfillmentOptionVersion"))
    SageMakerModelFulfillmentOption.add_member(:release_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "releaseNotes"))
    SageMakerModelFulfillmentOption.add_member(:usage_instructions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageInstructions"))
    SageMakerModelFulfillmentOption.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerModelRecommendation, name: "recommendation"))
    SageMakerModelFulfillmentOption.add_member(:supported_content_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerModelContentTypeList, name: "supportedContentTypes"))
    SageMakerModelFulfillmentOption.add_member(:supported_response_mime_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerModelResponseMimeTypeList, name: "supportedResponseMimeTypes"))
    SageMakerModelFulfillmentOption.type = Types::SageMakerModelFulfillmentOption
    SageMakerModelRecommendation.add_member(:recommended_batch_transform_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendedBatchTransformInstanceType", traits: {"smithy.api#required" => {}}))
    SageMakerModelRecommendation.add_member(:recommended_realtime_inference_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendedRealtimeInferenceInstanceType"))
    SageMakerModelRecommendation.type = Types::SageMakerModelRecommendation
    SageMakerModelResponseMimeTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#length" => {"max" => 256}}))
    ScheduleItem.add_member(:charge_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "chargeDate", traits: {"smithy.api#required" => {}}))
    ScheduleItem.add_member(:charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "chargeAmount", traits: {"smithy.api#required" => {}}))
    ScheduleItem.type = Types::ScheduleItem
    ScheduleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleItem, name: "member"))
    SearchFacetType.add_member(:average_customer_rating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVERAGE_CUSTOMER_RATING", traits: {"smithy.api#enumValue" => "AVERAGE_CUSTOMER_RATING"}))
    SearchFacetType.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CATEGORY", traits: {"smithy.api#enumValue" => "CATEGORY"}))
    SearchFacetType.add_member(:publisher, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLISHER", traits: {"smithy.api#enumValue" => "PUBLISHER"}))
    SearchFacetType.add_member(:fulfillment_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULFILLMENT_OPTION_TYPE", traits: {"smithy.api#enumValue" => "FULFILLMENT_OPTION_TYPE"}))
    SearchFacetType.add_member(:pricing_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRICING_MODEL", traits: {"smithy.api#enumValue" => "PRICING_MODEL"}))
    SearchFacetType.add_member(:pricing_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRICING_UNIT", traits: {"smithy.api#enumValue" => "PRICING_UNIT"}))
    SearchFacetType.add_member(:deployed_on_aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYED_ON_AWS", traits: {"smithy.api#enumValue" => "DEPLOYED_ON_AWS"}))
    SearchFacetType.add_member(:number_of_products, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER_OF_PRODUCTS", traits: {"smithy.api#enumValue" => "NUMBER_OF_PRODUCTS"}))
    SearchFacetsInput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    SearchFacetsInput.add_member(:search_text, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchText, name: "searchText"))
    SearchFacetsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilterList, name: "filters"))
    SearchFacetsInput.add_member(:facet_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetTypeList, name: "facetTypes"))
    SearchFacetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchFacetsInput.type = Types::SearchFacetsInput
    SearchFacetsOutput.add_member(:total_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeCount, name: "totalResults", traits: {"smithy.api#required" => {}}))
    SearchFacetsOutput.add_member(:listing_facets, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeToFacetMap, name: "listingFacets", traits: {"smithy.api#required" => {}}))
    SearchFacetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchFacetsOutput.type = Types::SearchFacetsOutput
    SearchFilter.add_member(:filter_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilterType, name: "filterType", traits: {"smithy.api#required" => {}}))
    SearchFilter.add_member(:filter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilterValueList, name: "filterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#required" => {}}))
    SearchFilter.type = Types::SearchFilter
    SearchFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilter, name: "member"))
    SearchFilterType.add_member(:min_average_customer_rating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIN_AVERAGE_CUSTOMER_RATING", traits: {"smithy.api#enumValue" => "MIN_AVERAGE_CUSTOMER_RATING"}))
    SearchFilterType.add_member(:max_average_customer_rating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_AVERAGE_CUSTOMER_RATING", traits: {"smithy.api#enumValue" => "MAX_AVERAGE_CUSTOMER_RATING"}))
    SearchFilterType.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CATEGORY", traits: {"smithy.api#enumValue" => "CATEGORY"}))
    SearchFilterType.add_member(:publisher, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLISHER", traits: {"smithy.api#enumValue" => "PUBLISHER"}))
    SearchFilterType.add_member(:fulfillment_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULFILLMENT_OPTION_TYPE", traits: {"smithy.api#enumValue" => "FULFILLMENT_OPTION_TYPE"}))
    SearchFilterType.add_member(:pricing_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRICING_MODEL", traits: {"smithy.api#enumValue" => "PRICING_MODEL"}))
    SearchFilterType.add_member(:pricing_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRICING_UNIT", traits: {"smithy.api#enumValue" => "PRICING_UNIT"}))
    SearchFilterType.add_member(:deployed_on_aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYED_ON_AWS", traits: {"smithy.api#enumValue" => "DEPLOYED_ON_AWS"}))
    SearchFilterType.add_member(:number_of_products, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER_OF_PRODUCTS", traits: {"smithy.api#enumValue" => "NUMBER_OF_PRODUCTS"}))
    SearchFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilterValue, name: "member"))
    SearchListingsInput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    SearchListingsInput.add_member(:search_text, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchText, name: "searchText"))
    SearchListingsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilterList, name: "filters"))
    SearchListingsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 25}))
    SearchListingsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchListingsSortBy, name: "sortBy", traits: {"smithy.api#default" => "RELEVANCE"}))
    SearchListingsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchListingsSortOrder, name: "sortOrder", traits: {"smithy.api#default" => "DESCENDING"}))
    SearchListingsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchListingsInput.type = Types::SearchListingsInput
    SearchListingsOutput.add_member(:total_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeCount, name: "totalResults", traits: {"smithy.api#required" => {}}))
    SearchListingsOutput.add_member(:listing_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingSummaryList, name: "listingSummaries", traits: {"smithy.api#required" => {}}))
    SearchListingsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchListingsOutput.type = Types::SearchListingsOutput
    SearchListingsSortBy.add_member(:relevance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELEVANCE", traits: {"smithy.api#enumValue" => "RELEVANCE"}))
    SearchListingsSortBy.add_member(:average_customer_rating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVERAGE_CUSTOMER_RATING", traits: {"smithy.api#enumValue" => "AVERAGE_CUSTOMER_RATING"}))
    SearchListingsSortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    SearchListingsSortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    Selector.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectorType, name: "type", traits: {"smithy.api#required" => {}}))
    Selector.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "value", traits: {"smithy.api#required" => {}}))
    Selector.type = Types::Selector
    SelectorType.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DURATION", traits: {"smithy.api#enumValue" => "Duration"}))
    SellerEngagement.add_member(:engagement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerEngagementType, name: "engagementType", traits: {"smithy.api#required" => {}}))
    SellerEngagement.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerEngagementContentType, name: "contentType", traits: {"smithy.api#required" => {}}))
    SellerEngagement.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value", traits: {"smithy.api#required" => {}}))
    SellerEngagement.type = Types::SellerEngagement
    SellerEngagementContentType.add_member(:link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINK", traits: {"smithy.api#enumValue" => "LINK"}))
    SellerEngagementList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerEngagement, name: "member"))
    SellerEngagementType.add_member(:request_for_private_offer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST_FOR_PRIVATE_OFFER", traits: {"smithy.api#enumValue" => "REQUEST_FOR_PRIVATE_OFFER"}))
    SellerEngagementType.add_member(:request_for_demo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST_FOR_DEMO", traits: {"smithy.api#enumValue" => "REQUEST_FOR_DEMO"}))
    SellerInformation.add_member(:seller_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerProfileId, name: "sellerProfileId", traits: {"smithy.api#required" => {}}))
    SellerInformation.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "displayName", traits: {"smithy.api#required" => {}}))
    SellerInformation.type = Types::SellerInformation
    SupportTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id", traits: {"smithy.api#required" => {}}))
    SupportTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TermType, name: "type", traits: {"smithy.api#required" => {}}))
    SupportTerm.add_member(:refund_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "refundPolicy", traits: {"smithy.api#required" => {}}))
    SupportTerm.type = Types::SupportTerm
    TermTemplate.add_member(:payment_schedule_term_template, Types::TermTemplate::PaymentScheduleTermTemplate, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentScheduleTermTemplate, name: "paymentScheduleTermTemplate"))
    TermTemplate.add_member(:unknown, Types::TermTemplate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TermTemplate.type = Types::TermTemplate
    TermTemplateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TermTemplate, name: "member"))
    TermType.add_member(:byol_pricing_term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYOL_PRICING_TERM", traits: {"smithy.api#enumValue" => "ByolPricingTerm"}))
    TermType.add_member(:configurable_upfront_pricing_term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURABLE_UPFRONT_PRICING_TERM", traits: {"smithy.api#enumValue" => "ConfigurableUpfrontPricingTerm"}))
    TermType.add_member(:fixed_upfront_pricing_term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIXED_UPFRONT_PRICING_TERM", traits: {"smithy.api#enumValue" => "FixedUpfrontPricingTerm"}))
    TermType.add_member(:usage_based_pricing_term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USAGE_BASED_PRICING_TERM", traits: {"smithy.api#enumValue" => "UsageBasedPricingTerm"}))
    TermType.add_member(:free_trial_pricing_term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FREE_TRIAL_PRICING_TERM", traits: {"smithy.api#enumValue" => "FreeTrialPricingTerm"}))
    TermType.add_member(:legal_term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEGAL_TERM", traits: {"smithy.api#enumValue" => "LegalTerm"}))
    TermType.add_member(:payment_schedule_term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAYMENT_SCHEDULE_TERM", traits: {"smithy.api#enumValue" => "PaymentScheduleTerm"}))
    TermType.add_member(:recurring_payment_term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECURRING_PAYMENT_TERM", traits: {"smithy.api#enumValue" => "RecurringPaymentTerm"}))
    TermType.add_member(:renewal_term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RENEWAL_TERM", traits: {"smithy.api#enumValue" => "RenewalTerm"}))
    TermType.add_member(:support_term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPPORT_TERM", traits: {"smithy.api#enumValue" => "SupportTerm"}))
    TermType.add_member(:validity_term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDITY_TERM", traits: {"smithy.api#enumValue" => "ValidityTerm"}))
    TermType.add_member(:variable_payment_term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VARIABLE_PAYMENT_TERM", traits: {"smithy.api#enumValue" => "VariablePaymentTerm"}))
    TermType.add_member(:net_payment_term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NET_PAYMENT_TERM", traits: {"smithy.api#enumValue" => "NetPaymentTerm"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TypeToFacetMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFacetType, name: "key"))
    TypeToFacetMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingFacetList, name: "value"))
    UsageBasedPricingTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id", traits: {"smithy.api#required" => {}}))
    UsageBasedPricingTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TermType, name: "type", traits: {"smithy.api#required" => {}}))
    UsageBasedPricingTerm.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode", traits: {"smithy.api#required" => {}}))
    UsageBasedPricingTerm.add_member(:rate_cards, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageBasedRateCardList, name: "rateCards", traits: {"smithy.api#required" => {}}))
    UsageBasedPricingTerm.type = Types::UsageBasedPricingTerm
    UsageBasedRateCardItem.add_member(:rate_card, ::Smithy::Schema::Shapes::MemberShape.new(target: RateCardList, name: "rateCard", traits: {"smithy.api#required" => {}}))
    UsageBasedRateCardItem.type = Types::UsageBasedRateCardItem
    UsageBasedRateCardList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageBasedRateCardItem, name: "member"))
    UseCase.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description", traits: {"smithy.api#required" => {}}))
    UseCase.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "displayName", traits: {"smithy.api#required" => {}}))
    UseCase.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value", traits: {"smithy.api#required" => {}}))
    UseCase.type = Types::UseCase
    UseCaseEntry.add_member(:use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: UseCase, name: "useCase", traits: {"smithy.api#required" => {}}))
    UseCaseEntry.type = Types::UseCaseEntry
    UseCaseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UseCaseEntry, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:invalid_pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PAGINATION_TOKEN", traits: {"smithy.api#enumValue" => "INVALID_PAGINATION_TOKEN"}))
    ValidationExceptionReason.add_member(:malformed_request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MALFORMED_REQUEST_PARAMETERS", traits: {"smithy.api#enumValue" => "MALFORMED_REQUEST_PARAMETERS"}))
    ValidationExceptionReason.add_member(:pagination_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAGINATION_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "PAGINATION_LIMIT_EXCEEDED"}))
    ValidityTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id", traits: {"smithy.api#required" => {}}))
    ValidityTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TermType, name: "type", traits: {"smithy.api#required" => {}}))
    ValidityTerm.add_member(:agreement_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "agreementDuration"))
    ValidityTerm.add_member(:agreement_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "agreementEndDate"))
    ValidityTerm.add_member(:agreement_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "agreementStartDate"))
    ValidityTerm.type = Types::ValidityTerm
    VariablePaymentTerm.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermId, name: "id", traits: {"smithy.api#required" => {}}))
    VariablePaymentTerm.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TermType, name: "type", traits: {"smithy.api#required" => {}}))
    VariablePaymentTerm.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode", traits: {"smithy.api#required" => {}}))
    VariablePaymentTerm.add_member(:max_total_charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "maxTotalChargeAmount", traits: {"smithy.api#required" => {}}))
    VariablePaymentTerm.type = Types::VariablePaymentTerm

    AWSMarketplaceDiscovery = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.marketplacediscovery#AWSMarketplaceDiscovery"
      service.name = "AWSMarketplaceDiscovery"
      service.version = "2026-02-05"
      service.traits = {"aws.api#service" => {"sdkId" => "Marketplace Discovery", "arnNamespace" => "aws-marketplace", "endpointPrefix" => "discovery-marketplace"}, "aws.auth#sigv4" => {"name" => "aws-marketplace"}, "aws.auth#sigv4a" => {"name" => "aws-marketplace"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4", "aws.auth#sigv4a"], "smithy.api#title" => "AWS Marketplace Discovery", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://discovery-marketplace-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://discovery-marketplace.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:get_listing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacediscovery#GetListing"
        operation.name = "GetListing"
        operation.input = GetListingInput
        operation.output = GetListingOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/2026-02-05/getListing"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetListingFailure", "params" => {"listingId" => "non-existent-listing-id"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.marketplacediscovery#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_offer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacediscovery#GetOffer"
        operation.name = "GetOffer"
        operation.input = GetOfferInput
        operation.output = GetOfferOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/2026-02-05/getOffer"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetOfferFailure", "params" => {"offerId" => "non-existent-offer-id"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.marketplacediscovery#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_offer_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacediscovery#GetOfferSet"
        operation.name = "GetOfferSet"
        operation.input = GetOfferSetInput
        operation.output = GetOfferSetOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/2026-02-05/getOfferSet"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetOfferSetFailure", "params" => {"offerSetId" => "non-existent-offerset-id"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.marketplacediscovery#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_offer_terms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacediscovery#GetOfferTerms"
        operation.name = "GetOfferTerms"
        operation.input = GetOfferTermsInput
        operation.output = GetOfferTermsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/2026-02-05/getOfferTerms"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetOfferTermsFailure", "params" => {"offerId" => "non-existent-offer-id"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.marketplacediscovery#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::GetOfferTerms.new
      end)
      service.add_operation(:get_product, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacediscovery#GetProduct"
        operation.name = "GetProduct"
        operation.input = GetProductInput
        operation.output = GetProductOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/2026-02-05/getProduct"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetProductFailure", "params" => {"productId" => "non-existent-product-id"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.marketplacediscovery#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:list_fulfillment_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacediscovery#ListFulfillmentOptions"
        operation.name = "ListFulfillmentOptions"
        operation.input = ListFulfillmentOptionsInput
        operation.output = ListFulfillmentOptionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/2026-02-05/listFulfillmentOptions"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListFulfillmentOptionsFailure", "params" => {"productId" => "non-existent-product-id"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.marketplacediscovery#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListFulfillmentOptions.new
      end)
      service.add_operation(:list_purchase_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacediscovery#ListPurchaseOptions"
        operation.name = "ListPurchaseOptions"
        operation.input = ListPurchaseOptionsInput
        operation.output = ListPurchaseOptionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/2026-02-05/listPurchaseOptions"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListPurchaseOptionsSuccess", "params" => {"filters" => [{"filterType" => "PRODUCT_ID", "filterValues" => ["non-existent-product-id"]}]}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListPurchaseOptions.new
      end)
      service.add_operation(:search_facets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacediscovery#SearchFacets"
        operation.name = "SearchFacets"
        operation.input = SearchFacetsInput
        operation.output = SearchFacetsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/2026-02-05/searchFacets"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "SearchFacetsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::SearchFacets.new
      end)
      service.add_operation(:search_listings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacediscovery#SearchListings"
        operation.name = "SearchListings"
        operation.input = SearchListingsInput
        operation.output = SearchListingsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/2026-02-05/searchListings"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "SearchListingsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::SearchListings.new
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

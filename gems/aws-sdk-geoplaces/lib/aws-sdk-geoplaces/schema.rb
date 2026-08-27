# frozen_string_literal: true

# This is generated code!

module Aws::GeoPlaces
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#AccessPoint", name: "AccessPoint")
    AccessPointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#AccessPointList", name: "AccessPointList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AccessRestriction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#AccessRestriction", name: "AccessRestriction")
    AccessRestrictionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#AccessRestrictionList", name: "AccessRestrictionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Address = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#Address", name: "Address")
    AddressComponentMatchScores = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#AddressComponentMatchScores", name: "AddressComponentMatchScores")
    AddressComponentPhonemes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#AddressComponentPhonemes", name: "AddressComponentPhonemes")
    ApiKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#ApiKey", name: "ApiKey", traits: {"smithy.api#externalDocumentation" => {"Implementation Guide" => "https://github.com/paseto-standard/paseto-spec/blob/master/docs/02-Implementation-Guide/03-Algorithm-Lucidity.md"}, "smithy.api#length" => {"max" => 1000}, "smithy.api#sensitive" => {}})
    AutocompleteAdditionalFeature = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#AutocompleteAdditionalFeature", name: "AutocompleteAdditionalFeature", traits: {"smithy.api#enum" => [{"name" => "CORE", "value" => "Core"}]})
    AutocompleteAdditionalFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#AutocompleteAdditionalFeatureList", name: "AutocompleteAdditionalFeatureList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#uniqueItems" => {}})
    AutocompleteAddressHighlights = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#AutocompleteAddressHighlights", name: "AutocompleteAddressHighlights")
    AutocompleteFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#AutocompleteFilter", name: "AutocompleteFilter")
    AutocompleteFilterPlaceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#AutocompleteFilterPlaceType", name: "AutocompleteFilterPlaceType", traits: {"smithy.api#enum" => [{"name" => "LOCALITY", "value" => "Locality"}, {"name" => "POSTAL_CODE", "value" => "PostalCode"}]})
    AutocompleteFilterPlaceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#AutocompleteFilterPlaceTypeList", name: "AutocompleteFilterPlaceTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    AutocompleteHighlights = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#AutocompleteHighlights", name: "AutocompleteHighlights")
    AutocompleteIntendedUse = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#AutocompleteIntendedUse", name: "AutocompleteIntendedUse", traits: {"smithy.api#enum" => [{"name" => "SINGLE_USE", "value" => "SingleUse", "documentation" => "Indicates that results of the operation are for single use, e.g., displaying results on a map or presenting options to users."}]})
    AutocompleteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#AutocompleteRequest", name: "AutocompleteRequest")
    AutocompleteResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#AutocompleteResponse", name: "AutocompleteResponse")
    AutocompleteResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#AutocompleteResultItem", name: "AutocompleteResultItem")
    AutocompleteResultItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#AutocompleteResultItemList", name: "AutocompleteResultItemList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    BoundingBox = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#BoundingBox", name: "BoundingBox", traits: {"smithy.api#externalDocumentation" => {"Documentation" => "https://tools.ietf.org/html/rfc7946#section-5"}, "smithy.api#length" => {"min" => 4, "max" => 4}, "smithy.api#sensitive" => {}})
    BusinessChain = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#BusinessChain", name: "BusinessChain")
    BusinessChainList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#BusinessChainList", name: "BusinessChainList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Category = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#Category", name: "Category")
    CategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#CategoryList", name: "CategoryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ComponentMatchScores = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#ComponentMatchScores", name: "ComponentMatchScores")
    ContactDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#ContactDetails", name: "ContactDetails")
    ContactDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#ContactDetailsList", name: "ContactDetailsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Contacts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#Contacts", name: "Contacts")
    Country = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#Country", name: "Country")
    CountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#CountryCode", name: "CountryCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 3}, "smithy.api#pattern" => "^([A-Z]{2}|[A-Z]{3})$", "smithy.api#sensitive" => {}})
    CountryCode2 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#CountryCode2", name: "CountryCode2", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[A-Z]{2}$", "smithy.api#sensitive" => {}})
    CountryCode3 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#CountryCode3", name: "CountryCode3", traits: {"smithy.api#length" => {"min" => 3, "max" => 3}, "smithy.api#pattern" => "^[A-Z]{3}$", "smithy.api#sensitive" => {}})
    CountryCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#CountryCodeList", name: "CountryCodeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#uniqueItems" => {}})
    CountryHighlights = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#CountryHighlights", name: "CountryHighlights")
    DistanceMeters = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.geoplaces#DistanceMeters", name: "DistanceMeters", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 4294967295}, "smithy.api#sensitive" => {}})
    DurationSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.geoplaces#DurationSeconds", name: "DurationSeconds", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 4294967295}, "smithy.api#sensitive" => {}})
    FilterBusinessChainList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#FilterBusinessChainList", name: "FilterBusinessChainList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FilterCategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#FilterCategoryList", name: "FilterCategoryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FilterCircle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#FilterCircle", name: "FilterCircle", traits: {"smithy.api#sensitive" => {}})
    FilterFoodTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#FilterFoodTypeList", name: "FilterFoodTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FoodType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#FoodType", name: "FoodType")
    FoodTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#FoodTypeList", name: "FoodTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    GeocodeAdditionalFeature = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#GeocodeAdditionalFeature", name: "GeocodeAdditionalFeature", traits: {"smithy.api#enum" => [{"name" => "TIME_ZONE", "value" => "TimeZone"}, {"name" => "ACCESS", "value" => "Access"}, {"name" => "SECONDARY_ADDRESSES", "value" => "SecondaryAddresses"}, {"name" => "INTERSECTIONS", "value" => "Intersections"}]})
    GeocodeAdditionalFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#GeocodeAdditionalFeatureList", name: "GeocodeAdditionalFeatureList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    GeocodeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#GeocodeFilter", name: "GeocodeFilter")
    GeocodeFilterPlaceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#GeocodeFilterPlaceType", name: "GeocodeFilterPlaceType", traits: {"smithy.api#enum" => [{"name" => "LOCALITY", "value" => "Locality"}, {"name" => "POSTAL_CODE", "value" => "PostalCode"}, {"name" => "INTERSECTION", "value" => "Intersection"}, {"name" => "STREET", "value" => "Street"}, {"name" => "POINT_ADDRESS", "value" => "PointAddress"}, {"name" => "INTERPOLATED_ADDRESS", "value" => "InterpolatedAddress"}], "smithy.api#sensitive" => {}})
    GeocodeFilterPlaceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#GeocodeFilterPlaceTypeList", name: "GeocodeFilterPlaceTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}, "smithy.api#uniqueItems" => {}})
    GeocodeIntendedUse = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#GeocodeIntendedUse", name: "GeocodeIntendedUse", traits: {"smithy.api#enum" => [{"name" => "SINGLE_USE", "value" => "SingleUse", "documentation" => "Indicates that results of the operation are for single use, e.g., displaying results on a map or presenting options to users."}, {"name" => "STORAGE", "value" => "Storage", "documentation" => "Indicates that results of the operation may be stored locally."}]})
    GeocodeParsedQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#GeocodeParsedQuery", name: "GeocodeParsedQuery")
    GeocodeParsedQueryAddressComponents = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#GeocodeParsedQueryAddressComponents", name: "GeocodeParsedQueryAddressComponents")
    GeocodeQueryComponents = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#GeocodeQueryComponents", name: "GeocodeQueryComponents")
    GeocodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#GeocodeRequest", name: "GeocodeRequest")
    GeocodeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#GeocodeResponse", name: "GeocodeResponse")
    GeocodeResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#GeocodeResultItem", name: "GeocodeResultItem")
    GeocodeResultItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#GeocodeResultItemList", name: "GeocodeResultItemList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    GetPlaceAdditionalFeature = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#GetPlaceAdditionalFeature", name: "GetPlaceAdditionalFeature", traits: {"smithy.api#enum" => [{"name" => "TIME_ZONE", "value" => "TimeZone"}, {"name" => "PHONEMES", "value" => "Phonemes"}, {"name" => "ACCESS", "value" => "Access"}, {"name" => "CONTACT", "value" => "Contact"}, {"name" => "SECONDARY_ADDRESSES", "value" => "SecondaryAddresses"}]})
    GetPlaceAdditionalFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#GetPlaceAdditionalFeatureList", name: "GetPlaceAdditionalFeatureList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#uniqueItems" => {}})
    GetPlaceIntendedUse = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#GetPlaceIntendedUse", name: "GetPlaceIntendedUse", traits: {"smithy.api#enum" => [{"name" => "SINGLE_USE", "value" => "SingleUse", "documentation" => "Indicates that results of the operation are for single use, e.g., displaying results on a map or presenting options to users."}, {"name" => "STORAGE", "value" => "Storage", "documentation" => "Indicates that results of the operation may be stored locally."}]})
    GetPlaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#GetPlaceRequest", name: "GetPlaceRequest")
    GetPlaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#GetPlaceResponse", name: "GetPlaceResponse")
    Highlight = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#Highlight", name: "Highlight")
    HighlightList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#HighlightList", name: "HighlightList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    Intersection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#Intersection", name: "Intersection")
    IntersectionHighlightsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#IntersectionHighlightsList", name: "IntersectionHighlightsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    IntersectionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#IntersectionList", name: "IntersectionList", traits: {"smithy.api#length" => {"min" => 1}})
    IntersectionStreet = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#IntersectionStreet", name: "IntersectionStreet", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    IntersectionStreetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#IntersectionStreetList", name: "IntersectionStreetList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    LanguageTag = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#LanguageTag", name: "LanguageTag", traits: {"smithy.api#length" => {"min" => 2, "max" => 35}})
    MatchScore = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.geoplaces#MatchScore", name: "MatchScore", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    MatchScoreDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#MatchScoreDetails", name: "MatchScoreDetails")
    MatchScoreList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#MatchScoreList", name: "MatchScoreList")
    OpeningHours = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#OpeningHours", name: "OpeningHours")
    OpeningHoursComponents = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#OpeningHoursComponents", name: "OpeningHoursComponents")
    OpeningHoursComponentsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#OpeningHoursComponentsList", name: "OpeningHoursComponentsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    OpeningHoursDisplay = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#OpeningHoursDisplay", name: "OpeningHoursDisplay", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#sensitive" => {}})
    OpeningHoursDisplayList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#OpeningHoursDisplayList", name: "OpeningHoursDisplayList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    OpeningHoursList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#OpeningHoursList", name: "OpeningHoursList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ParsedQueryComponent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#ParsedQueryComponent", name: "ParsedQueryComponent")
    ParsedQueryComponentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#ParsedQueryComponentList", name: "ParsedQueryComponentList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ParsedQuerySecondaryAddressComponent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#ParsedQuerySecondaryAddressComponent", name: "ParsedQuerySecondaryAddressComponent")
    ParsedQuerySecondaryAddressComponentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#ParsedQuerySecondaryAddressComponentList", name: "ParsedQuerySecondaryAddressComponentList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    PhonemeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#PhonemeDetails", name: "PhonemeDetails")
    PhonemeTranscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#PhonemeTranscription", name: "PhonemeTranscription")
    PhonemeTranscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#PhonemeTranscriptionList", name: "PhonemeTranscriptionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    PlaceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#PlaceType", name: "PlaceType", traits: {"smithy.api#enum" => [{"name" => "COUNTRY", "value" => "Country"}, {"name" => "REGION", "value" => "Region"}, {"name" => "SUB_REGION", "value" => "SubRegion"}, {"name" => "LOCALITY", "value" => "Locality"}, {"name" => "DISTRICT", "value" => "District"}, {"name" => "SUB_DISTRICT", "value" => "SubDistrict"}, {"name" => "POSTAL_CODE", "value" => "PostalCode"}, {"name" => "BLOCK", "value" => "Block"}, {"name" => "SUB_BLOCK", "value" => "SubBlock"}, {"name" => "INTERSECTION", "value" => "Intersection"}, {"name" => "STREET", "value" => "Street"}, {"name" => "POINT_OF_INTEREST", "value" => "PointOfInterest"}, {"name" => "POINT_ADDRESS", "value" => "PointAddress"}, {"name" => "INTERPOLATED_ADDRESS", "value" => "InterpolatedAddress"}, {"name" => "SECONDARY_ADDRESS", "value" => "SecondaryAddress"}], "smithy.api#sensitive" => {}})
    Position = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#Position", name: "Position", traits: {"smithy.api#externalDocumentation" => {"Documentation" => "https://tools.ietf.org/html/rfc7946#section-3.1.1"}, "smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#sensitive" => {}})
    PostalAuthority = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#PostalAuthority", name: "PostalAuthority", traits: {"smithy.api#enum" => [{"name" => "USPS", "value" => "Usps"}], "smithy.api#sensitive" => {}})
    PostalCodeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#PostalCodeDetails", name: "PostalCodeDetails")
    PostalCodeDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#PostalCodeDetailsList", name: "PostalCodeDetailsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    PostalCodeMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#PostalCodeMode", name: "PostalCodeMode", traits: {"smithy.api#enum" => [{"name" => "MERGE_ALL_SPANNED_LOCALITIES", "value" => "MergeAllSpannedLocalities"}, {"name" => "ENUMERATE_SPANNED_LOCALITIES", "value" => "EnumerateSpannedLocalities"}]})
    PostalCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#PostalCodeType", name: "PostalCodeType", traits: {"smithy.api#enum" => [{"name" => "USPS_ZIP", "value" => "UspsZip"}, {"name" => "USPS_ZIP_PLUS_4", "value" => "UspsZipPlus4"}], "smithy.api#sensitive" => {}})
    QueryRefinement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#QueryRefinement", name: "QueryRefinement")
    QueryRefinementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#QueryRefinementList", name: "QueryRefinementList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    QueryType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#QueryType", name: "QueryType", traits: {"smithy.api#enum" => [{"name" => "CATEGORY", "value" => "Category"}, {"name" => "BUSINESS_CHAIN", "value" => "BusinessChain"}]})
    RecordTypeCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#RecordTypeCode", name: "RecordTypeCode", traits: {"smithy.api#enum" => [{"name" => "FIRM", "value" => "Firm"}, {"name" => "GENERAL", "value" => "General"}, {"name" => "HIGH_RISE", "value" => "HighRise"}, {"name" => "POST_OFFICE_BOX", "value" => "PostOfficeBox"}, {"name" => "RURAL", "value" => "Rural"}, {"name" => "STREET", "value" => "Street"}], "smithy.api#sensitive" => {}})
    Region = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#Region", name: "Region")
    RegionHighlights = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#RegionHighlights", name: "RegionHighlights")
    RelatedPlace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#RelatedPlace", name: "RelatedPlace")
    RelatedPlaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#RelatedPlaceList", name: "RelatedPlaceList", traits: {"smithy.api#length" => {"min" => 1}})
    ReverseGeocodeAdditionalFeature = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#ReverseGeocodeAdditionalFeature", name: "ReverseGeocodeAdditionalFeature", traits: {"smithy.api#enum" => [{"name" => "TIME_ZONE", "value" => "TimeZone"}, {"name" => "ACCESS", "value" => "Access"}, {"name" => "INTERSECTIONS", "value" => "Intersections"}]})
    ReverseGeocodeAdditionalFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#ReverseGeocodeAdditionalFeatureList", name: "ReverseGeocodeAdditionalFeatureList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    ReverseGeocodeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#ReverseGeocodeFilter", name: "ReverseGeocodeFilter")
    ReverseGeocodeFilterPlaceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#ReverseGeocodeFilterPlaceType", name: "ReverseGeocodeFilterPlaceType", traits: {"smithy.api#enum" => [{"name" => "LOCALITY", "value" => "Locality"}, {"name" => "INTERSECTION", "value" => "Intersection"}, {"name" => "STREET", "value" => "Street"}, {"name" => "POINT_ADDRESS", "value" => "PointAddress"}, {"name" => "INTERPOLATED_ADDRESS", "value" => "InterpolatedAddress"}]})
    ReverseGeocodeFilterPlaceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#ReverseGeocodeFilterPlaceTypeList", name: "ReverseGeocodeFilterPlaceTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    ReverseGeocodeIntendedUse = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#ReverseGeocodeIntendedUse", name: "ReverseGeocodeIntendedUse", traits: {"smithy.api#enum" => [{"name" => "SINGLE_USE", "value" => "SingleUse", "documentation" => "Indicates that results of the operation are for single use, e.g., displaying results on a map or presenting options to users."}, {"name" => "STORAGE", "value" => "Storage", "documentation" => "Indicates that results of the operation may be stored locally."}]})
    ReverseGeocodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#ReverseGeocodeRequest", name: "ReverseGeocodeRequest")
    ReverseGeocodeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#ReverseGeocodeResponse", name: "ReverseGeocodeResponse")
    ReverseGeocodeResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#ReverseGeocodeResultItem", name: "ReverseGeocodeResultItem")
    ReverseGeocodeResultItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#ReverseGeocodeResultItemList", name: "ReverseGeocodeResultItemList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SearchNearbyAdditionalFeature = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#SearchNearbyAdditionalFeature", name: "SearchNearbyAdditionalFeature", traits: {"smithy.api#enum" => [{"name" => "TIME_ZONE", "value" => "TimeZone"}, {"name" => "PHONEMES", "value" => "Phonemes"}, {"name" => "ACCESS", "value" => "Access"}, {"name" => "CONTACT", "value" => "Contact"}]})
    SearchNearbyAdditionalFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#SearchNearbyAdditionalFeatureList", name: "SearchNearbyAdditionalFeatureList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#uniqueItems" => {}})
    SearchNearbyFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SearchNearbyFilter", name: "SearchNearbyFilter")
    SearchNearbyIntendedUse = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#SearchNearbyIntendedUse", name: "SearchNearbyIntendedUse", traits: {"smithy.api#enum" => [{"name" => "SINGLE_USE", "value" => "SingleUse", "documentation" => "Indicates that results of the operation are for single use, e.g., displaying results on a map or presenting options to users."}, {"name" => "STORAGE", "value" => "Storage", "documentation" => "Indicates that results of the operation may be stored locally."}]})
    SearchNearbyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SearchNearbyRequest", name: "SearchNearbyRequest")
    SearchNearbyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SearchNearbyResponse", name: "SearchNearbyResponse")
    SearchNearbyResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SearchNearbyResultItem", name: "SearchNearbyResultItem")
    SearchNearbyResultItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#SearchNearbyResultItemList", name: "SearchNearbyResultItemList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SearchTextAdditionalFeature = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#SearchTextAdditionalFeature", name: "SearchTextAdditionalFeature", traits: {"smithy.api#enum" => [{"name" => "TIME_ZONE", "value" => "TimeZone"}, {"name" => "PHONEMES", "value" => "Phonemes"}, {"name" => "ACCESS", "value" => "Access"}, {"name" => "CONTACT", "value" => "Contact"}]})
    SearchTextAdditionalFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#SearchTextAdditionalFeatureList", name: "SearchTextAdditionalFeatureList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#uniqueItems" => {}})
    SearchTextFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SearchTextFilter", name: "SearchTextFilter")
    SearchTextIntendedUse = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#SearchTextIntendedUse", name: "SearchTextIntendedUse", traits: {"smithy.api#enum" => [{"name" => "SINGLE_USE", "value" => "SingleUse", "documentation" => "Indicates that results of the operation are for single use, e.g., displaying results on a map or presenting options to users."}, {"name" => "STORAGE", "value" => "Storage", "documentation" => "Indicates that results of the operation may be stored locally."}]})
    SearchTextRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SearchTextRequest", name: "SearchTextRequest")
    SearchTextResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SearchTextResponse", name: "SearchTextResponse")
    SearchTextResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SearchTextResultItem", name: "SearchTextResultItem")
    SearchTextResultItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#SearchTextResultItemList", name: "SearchTextResultItemList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SecondaryAddressComponent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SecondaryAddressComponent", name: "SecondaryAddressComponent")
    SecondaryAddressComponentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#SecondaryAddressComponentList", name: "SecondaryAddressComponentList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    SecondaryAddressComponentMatchScore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SecondaryAddressComponentMatchScore", name: "SecondaryAddressComponentMatchScore")
    SecondaryAddressComponentMatchScoreList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#SecondaryAddressComponentMatchScoreList", name: "SecondaryAddressComponentMatchScoreList")
    SensitiveBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.geoplaces#SensitiveBoolean", name: "SensitiveBoolean", traits: {"smithy.api#sensitive" => {}})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    StreetComponents = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#StreetComponents", name: "StreetComponents")
    StreetComponentsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#StreetComponentsList", name: "StreetComponentsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SubRegion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SubRegion", name: "SubRegion")
    SubRegionHighlights = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SubRegionHighlights", name: "SubRegionHighlights")
    SuggestAdditionalFeature = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#SuggestAdditionalFeature", name: "SuggestAdditionalFeature", traits: {"smithy.api#enum" => [{"name" => "CORE", "value" => "Core"}, {"name" => "TIME_ZONE", "value" => "TimeZone"}, {"name" => "PHONEMES", "value" => "Phonemes"}, {"name" => "ACCESS", "value" => "Access"}]})
    SuggestAdditionalFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#SuggestAdditionalFeatureList", name: "SuggestAdditionalFeatureList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#uniqueItems" => {}})
    SuggestAddressHighlights = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SuggestAddressHighlights", name: "SuggestAddressHighlights")
    SuggestFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SuggestFilter", name: "SuggestFilter")
    SuggestHighlights = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SuggestHighlights", name: "SuggestHighlights")
    SuggestIntendedUse = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#SuggestIntendedUse", name: "SuggestIntendedUse", traits: {"smithy.api#enum" => [{"name" => "SINGLE_USE", "value" => "SingleUse", "documentation" => "Indicates that results of the operation are for single use, e.g., displaying results on a map or presenting options to users."}]})
    SuggestPlaceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SuggestPlaceResult", name: "SuggestPlaceResult")
    SuggestQueryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SuggestQueryResult", name: "SuggestQueryResult")
    SuggestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SuggestRequest", name: "SuggestRequest")
    SuggestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SuggestResponse", name: "SuggestResponse")
    SuggestResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#SuggestResultItem", name: "SuggestResultItem")
    SuggestResultItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#SuggestResultItemList", name: "SuggestResultItemList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SuggestResultItemType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#SuggestResultItemType", name: "SuggestResultItemType", traits: {"smithy.api#enum" => [{"name" => "PLACE", "value" => "Place"}, {"name" => "QUERY", "value" => "Query"}]})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TimeZone = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#TimeZone", name: "TimeZone")
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#Token", name: "Token", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    TypePlacement = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#TypePlacement", name: "TypePlacement", traits: {"smithy.api#enum" => [{"name" => "BEFORE_BASE_NAME", "value" => "BeforeBaseName"}, {"name" => "AFTER_BASE_NAME", "value" => "AfterBaseName"}]})
    TypeSeparator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#TypeSeparator", name: "TypeSeparator", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}, "smithy.api#pattern" => "^$|^ $"})
    UspsZip = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#UspsZip", name: "UspsZip")
    UspsZipPlus4 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#UspsZipPlus4", name: "UspsZipPlus4")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geoplaces#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geoplaces#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"name" => "UNKNOWN_OPERATION", "value" => "UnknownOperation", "documentation" => "No such operation is supported."}, {"name" => "MISSING", "value" => "Missing", "documentation" => "The required input is missing."}, {"name" => "CANNOT_PARSE", "value" => "CannotParse", "documentation" => "    The input cannot be parsed. For example a required JSON document, ARN identifier,\n    date value, or numeric field cannot be parsed.\n"}, {"name" => "FIELD_VALIDATION_FAILED", "value" => "FieldValidationFailed", "documentation" => "    The input is present and parsable, but it is otherwise invalid. For example, a\n    required numeric argument is outside the allowed range.\n"}, {"name" => "OTHER", "value" => "Other", "documentation" => "The input is invalid but no more specific reason is applicable."}, {"name" => "UNKNOWN_FIELD", "value" => "UnknownField", "documentation" => "No such field is supported."}]})
    ZipClassificationCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geoplaces#ZipClassificationCode", name: "ZipClassificationCode", traits: {"smithy.api#enum" => [{"name" => "MILITARY", "value" => "Military"}, {"name" => "POST_OFFICE_BOXES", "value" => "PostOfficeBoxes"}, {"name" => "UNIQUE", "value" => "Unique"}], "smithy.api#sensitive" => {}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessPoint.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "Position"))
    AccessPoint.type = Types::AccessPoint
    AccessPointList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPoint, name: "member")
    AccessRestriction.add_member(:restricted, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBoolean, name: "Restricted"))
    AccessRestriction.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "Categories"))
    AccessRestriction.type = Types::AccessRestriction
    AccessRestrictionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccessRestriction, name: "member")
    Address.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Label", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    Address.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: Country, name: "Country"))
    Address.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "Region"))
    Address.add_member(:sub_region, ::Smithy::Schema::Shapes::MemberShape.new(target: SubRegion, name: "SubRegion"))
    Address.add_member(:locality, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Locality", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    Address.add_member(:district, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "District", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    Address.add_member(:sub_district, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "SubDistrict", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    Address.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PostalCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}}))
    Address.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Block", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    Address.add_member(:sub_block, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "SubBlock", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    Address.add_member(:intersection, ::Smithy::Schema::Shapes::MemberShape.new(target: IntersectionStreetList, name: "Intersection"))
    Address.add_member(:street, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Street", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    Address.add_member(:street_components, ::Smithy::Schema::Shapes::MemberShape.new(target: StreetComponentsList, name: "StreetComponents"))
    Address.add_member(:address_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "AddressNumber", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}}))
    Address.add_member(:building, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Building", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    Address.add_member(:secondary_address_components, ::Smithy::Schema::Shapes::MemberShape.new(target: SecondaryAddressComponentList, name: "SecondaryAddressComponents"))
    Address.type = Types::Address
    AddressComponentMatchScores.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScore, name: "Country", traits: {"smithy.api#default" => 0}))
    AddressComponentMatchScores.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScore, name: "Region", traits: {"smithy.api#default" => 0}))
    AddressComponentMatchScores.add_member(:sub_region, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScore, name: "SubRegion", traits: {"smithy.api#default" => 0}))
    AddressComponentMatchScores.add_member(:locality, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScore, name: "Locality", traits: {"smithy.api#default" => 0}))
    AddressComponentMatchScores.add_member(:district, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScore, name: "District", traits: {"smithy.api#default" => 0}))
    AddressComponentMatchScores.add_member(:sub_district, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScore, name: "SubDistrict", traits: {"smithy.api#default" => 0}))
    AddressComponentMatchScores.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScore, name: "PostalCode", traits: {"smithy.api#default" => 0}))
    AddressComponentMatchScores.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScore, name: "Block", traits: {"smithy.api#default" => 0}))
    AddressComponentMatchScores.add_member(:sub_block, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScore, name: "SubBlock", traits: {"smithy.api#default" => 0}))
    AddressComponentMatchScores.add_member(:intersection, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScoreList, name: "Intersection", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}}))
    AddressComponentMatchScores.add_member(:address_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScore, name: "AddressNumber", traits: {"smithy.api#default" => 0}))
    AddressComponentMatchScores.add_member(:building, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScore, name: "Building", traits: {"smithy.api#default" => 0}))
    AddressComponentMatchScores.add_member(:secondary_address_components, ::Smithy::Schema::Shapes::MemberShape.new(target: SecondaryAddressComponentMatchScoreList, name: "SecondaryAddressComponents"))
    AddressComponentMatchScores.type = Types::AddressComponentMatchScores
    AddressComponentPhonemes.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: PhonemeTranscriptionList, name: "Country"))
    AddressComponentPhonemes.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: PhonemeTranscriptionList, name: "Region"))
    AddressComponentPhonemes.add_member(:sub_region, ::Smithy::Schema::Shapes::MemberShape.new(target: PhonemeTranscriptionList, name: "SubRegion"))
    AddressComponentPhonemes.add_member(:locality, ::Smithy::Schema::Shapes::MemberShape.new(target: PhonemeTranscriptionList, name: "Locality"))
    AddressComponentPhonemes.add_member(:district, ::Smithy::Schema::Shapes::MemberShape.new(target: PhonemeTranscriptionList, name: "District"))
    AddressComponentPhonemes.add_member(:sub_district, ::Smithy::Schema::Shapes::MemberShape.new(target: PhonemeTranscriptionList, name: "SubDistrict"))
    AddressComponentPhonemes.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: PhonemeTranscriptionList, name: "Block"))
    AddressComponentPhonemes.add_member(:sub_block, ::Smithy::Schema::Shapes::MemberShape.new(target: PhonemeTranscriptionList, name: "SubBlock"))
    AddressComponentPhonemes.add_member(:street, ::Smithy::Schema::Shapes::MemberShape.new(target: PhonemeTranscriptionList, name: "Street"))
    AddressComponentPhonemes.type = Types::AddressComponentPhonemes
    AutocompleteAdditionalFeatureList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutocompleteAdditionalFeature, name: "member")
    AutocompleteAddressHighlights.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "Label"))
    AutocompleteAddressHighlights.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryHighlights, name: "Country"))
    AutocompleteAddressHighlights.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionHighlights, name: "Region"))
    AutocompleteAddressHighlights.add_member(:sub_region, ::Smithy::Schema::Shapes::MemberShape.new(target: SubRegionHighlights, name: "SubRegion"))
    AutocompleteAddressHighlights.add_member(:locality, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "Locality"))
    AutocompleteAddressHighlights.add_member(:district, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "District"))
    AutocompleteAddressHighlights.add_member(:sub_district, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "SubDistrict"))
    AutocompleteAddressHighlights.add_member(:street, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "Street"))
    AutocompleteAddressHighlights.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "Block"))
    AutocompleteAddressHighlights.add_member(:sub_block, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "SubBlock"))
    AutocompleteAddressHighlights.add_member(:intersection, ::Smithy::Schema::Shapes::MemberShape.new(target: IntersectionHighlightsList, name: "Intersection"))
    AutocompleteAddressHighlights.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "PostalCode"))
    AutocompleteAddressHighlights.add_member(:address_number, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "AddressNumber"))
    AutocompleteAddressHighlights.add_member(:building, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "Building"))
    AutocompleteAddressHighlights.type = Types::AutocompleteAddressHighlights
    AutocompleteFilter.add_member(:bounding_box, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundingBox, name: "BoundingBox"))
    AutocompleteFilter.add_member(:circle, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCircle, name: "Circle"))
    AutocompleteFilter.add_member(:include_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCodeList, name: "IncludeCountries"))
    AutocompleteFilter.add_member(:include_place_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AutocompleteFilterPlaceTypeList, name: "IncludePlaceTypes"))
    AutocompleteFilter.type = Types::AutocompleteFilter
    AutocompleteFilterPlaceTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutocompleteFilterPlaceType, name: "member")
    AutocompleteHighlights.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "Title"))
    AutocompleteHighlights.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: AutocompleteAddressHighlights, name: "Address"))
    AutocompleteHighlights.type = Types::AutocompleteHighlights
    AutocompleteRequest.add_member(:query_text, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "QueryText", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#required" => {}}))
    AutocompleteRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 20}}))
    AutocompleteRequest.add_member(:bias_position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "BiasPosition"))
    AutocompleteRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AutocompleteFilter, name: "Filter"))
    AutocompleteRequest.add_member(:postal_code_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PostalCodeMode, name: "PostalCodeMode"))
    AutocompleteRequest.add_member(:additional_features, ::Smithy::Schema::Shapes::MemberShape.new(target: AutocompleteAdditionalFeatureList, name: "AdditionalFeatures"))
    AutocompleteRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageTag, name: "Language"))
    AutocompleteRequest.add_member(:political_view, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "PoliticalView"))
    AutocompleteRequest.add_member(:intended_use, ::Smithy::Schema::Shapes::MemberShape.new(target: AutocompleteIntendedUse, name: "IntendedUse"))
    AutocompleteRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, name: "Key", traits: {"smithy.api#httpQuery" => "key"}))
    AutocompleteRequest.type = Types::AutocompleteRequest
    AutocompleteResponse.add_member(:pricing_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PricingBucket", traits: {"smithy.api#httpHeader" => "x-amz-geo-pricing-bucket", "smithy.api#required" => {}}))
    AutocompleteResponse.add_member(:result_items, ::Smithy::Schema::Shapes::MemberShape.new(target: AutocompleteResultItemList, name: "ResultItems"))
    AutocompleteResponse.type = Types::AutocompleteResponse
    AutocompleteResultItem.add_member(:place_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PlaceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#required" => {}}))
    AutocompleteResultItem.add_member(:place_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlaceType, name: "PlaceType", traits: {"smithy.api#required" => {}}))
    AutocompleteResultItem.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Title", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#required" => {}}))
    AutocompleteResultItem.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address"))
    AutocompleteResultItem.add_member(:distance, ::Smithy::Schema::Shapes::MemberShape.new(target: DistanceMeters, name: "Distance", traits: {"smithy.api#default" => 0}))
    AutocompleteResultItem.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageTag, name: "Language"))
    AutocompleteResultItem.add_member(:political_view, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode3, name: "PoliticalView"))
    AutocompleteResultItem.add_member(:highlights, ::Smithy::Schema::Shapes::MemberShape.new(target: AutocompleteHighlights, name: "Highlights"))
    AutocompleteResultItem.type = Types::AutocompleteResultItem
    AutocompleteResultItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutocompleteResultItem, name: "member")
    BoundingBox.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "member")
    BusinessChain.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}}))
    BusinessChain.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Id", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}}))
    BusinessChain.type = Types::BusinessChain
    BusinessChainList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessChain, name: "member")
    Category.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Id", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    Category.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    Category.add_member(:localized_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "LocalizedName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}}))
    Category.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBoolean, name: "Primary"))
    Category.type = Types::Category
    CategoryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Category, name: "member")
    ComponentMatchScores.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScore, name: "Title", traits: {"smithy.api#default" => 0}))
    ComponentMatchScores.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressComponentMatchScores, name: "Address"))
    ComponentMatchScores.type = Types::ComponentMatchScores
    ContactDetails.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Label", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    ContactDetails.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Value", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    ContactDetails.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "Categories"))
    ContactDetails.type = Types::ContactDetails
    ContactDetailsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetails, name: "member")
    Contacts.add_member(:phones, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetailsList, name: "Phones"))
    Contacts.add_member(:faxes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetailsList, name: "Faxes"))
    Contacts.add_member(:websites, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetailsList, name: "Websites"))
    Contacts.add_member(:emails, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetailsList, name: "Emails"))
    Contacts.type = Types::Contacts
    Country.add_member(:code2, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode2, name: "Code2"))
    Country.add_member(:code3, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode3, name: "Code3"))
    Country.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Name", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}}))
    Country.type = Types::Country
    CountryCodeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "member")
    CountryHighlights.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "Code"))
    CountryHighlights.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "Name"))
    CountryHighlights.type = Types::CountryHighlights
    FilterBusinessChainList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "member", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    FilterCategoryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "member", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    FilterCircle.add_member(:center, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "Center", traits: {"smithy.api#required" => {}}))
    FilterCircle.add_member(:radius, ::Smithy::Schema::Shapes::MemberShape.new(target: DistanceMeters, name: "Radius", traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 21000000}, "smithy.api#required" => {}}))
    FilterCircle.type = Types::FilterCircle
    FilterFoodTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "member", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    FoodType.add_member(:localized_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "LocalizedName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    FoodType.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Id", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}}))
    FoodType.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBoolean, name: "Primary"))
    FoodType.type = Types::FoodType
    FoodTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FoodType, name: "member")
    GeocodeAdditionalFeatureList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GeocodeAdditionalFeature, name: "member")
    GeocodeFilter.add_member(:include_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCodeList, name: "IncludeCountries"))
    GeocodeFilter.add_member(:include_place_types, ::Smithy::Schema::Shapes::MemberShape.new(target: GeocodeFilterPlaceTypeList, name: "IncludePlaceTypes"))
    GeocodeFilter.type = Types::GeocodeFilter
    GeocodeFilterPlaceTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GeocodeFilterPlaceType, name: "member")
    GeocodeParsedQuery.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedQueryComponentList, name: "Title"))
    GeocodeParsedQuery.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: GeocodeParsedQueryAddressComponents, name: "Address"))
    GeocodeParsedQuery.type = Types::GeocodeParsedQuery
    GeocodeParsedQueryAddressComponents.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedQueryComponentList, name: "Country"))
    GeocodeParsedQueryAddressComponents.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedQueryComponentList, name: "Region"))
    GeocodeParsedQueryAddressComponents.add_member(:sub_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedQueryComponentList, name: "SubRegion"))
    GeocodeParsedQueryAddressComponents.add_member(:locality, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedQueryComponentList, name: "Locality"))
    GeocodeParsedQueryAddressComponents.add_member(:district, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedQueryComponentList, name: "District"))
    GeocodeParsedQueryAddressComponents.add_member(:sub_district, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedQueryComponentList, name: "SubDistrict"))
    GeocodeParsedQueryAddressComponents.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedQueryComponentList, name: "PostalCode"))
    GeocodeParsedQueryAddressComponents.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedQueryComponentList, name: "Block"))
    GeocodeParsedQueryAddressComponents.add_member(:sub_block, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedQueryComponentList, name: "SubBlock"))
    GeocodeParsedQueryAddressComponents.add_member(:street, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedQueryComponentList, name: "Street"))
    GeocodeParsedQueryAddressComponents.add_member(:address_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedQueryComponentList, name: "AddressNumber"))
    GeocodeParsedQueryAddressComponents.add_member(:building, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedQueryComponentList, name: "Building"))
    GeocodeParsedQueryAddressComponents.add_member(:secondary_address_components, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedQuerySecondaryAddressComponentList, name: "SecondaryAddressComponents"))
    GeocodeParsedQueryAddressComponents.type = Types::GeocodeParsedQueryAddressComponents
    GeocodeQueryComponents.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Country", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[^;]+$"}))
    GeocodeQueryComponents.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Region", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[^;]+$"}))
    GeocodeQueryComponents.add_member(:sub_region, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "SubRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[^;]+$"}))
    GeocodeQueryComponents.add_member(:locality, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Locality", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[^;]+$"}))
    GeocodeQueryComponents.add_member(:district, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "District", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[^;]+$"}))
    GeocodeQueryComponents.add_member(:street, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Street", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[^;]+$"}))
    GeocodeQueryComponents.add_member(:address_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "AddressNumber", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[^;]+$"}))
    GeocodeQueryComponents.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PostalCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[^;]+$"}))
    GeocodeQueryComponents.type = Types::GeocodeQueryComponents
    GeocodeRequest.add_member(:query_text, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "QueryText", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}}))
    GeocodeRequest.add_member(:query_components, ::Smithy::Schema::Shapes::MemberShape.new(target: GeocodeQueryComponents, name: "QueryComponents"))
    GeocodeRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    GeocodeRequest.add_member(:bias_position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "BiasPosition"))
    GeocodeRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: GeocodeFilter, name: "Filter"))
    GeocodeRequest.add_member(:additional_features, ::Smithy::Schema::Shapes::MemberShape.new(target: GeocodeAdditionalFeatureList, name: "AdditionalFeatures"))
    GeocodeRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageTag, name: "Language"))
    GeocodeRequest.add_member(:political_view, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "PoliticalView"))
    GeocodeRequest.add_member(:intended_use, ::Smithy::Schema::Shapes::MemberShape.new(target: GeocodeIntendedUse, name: "IntendedUse"))
    GeocodeRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, name: "Key", traits: {"smithy.api#httpQuery" => "key"}))
    GeocodeRequest.type = Types::GeocodeRequest
    GeocodeResponse.add_member(:pricing_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PricingBucket", traits: {"smithy.api#httpHeader" => "x-amz-geo-pricing-bucket", "smithy.api#required" => {}}))
    GeocodeResponse.add_member(:result_items, ::Smithy::Schema::Shapes::MemberShape.new(target: GeocodeResultItemList, name: "ResultItems"))
    GeocodeResponse.type = Types::GeocodeResponse
    GeocodeResultItem.add_member(:place_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PlaceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#required" => {}}))
    GeocodeResultItem.add_member(:place_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlaceType, name: "PlaceType", traits: {"smithy.api#required" => {}}))
    GeocodeResultItem.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Title", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#required" => {}}))
    GeocodeResultItem.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address"))
    GeocodeResultItem.add_member(:address_number_corrected, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBoolean, name: "AddressNumberCorrected"))
    GeocodeResultItem.add_member(:postal_code_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PostalCodeDetailsList, name: "PostalCodeDetails"))
    GeocodeResultItem.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "Position"))
    GeocodeResultItem.add_member(:distance, ::Smithy::Schema::Shapes::MemberShape.new(target: DistanceMeters, name: "Distance", traits: {"smithy.api#default" => 0}))
    GeocodeResultItem.add_member(:map_view, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundingBox, name: "MapView"))
    GeocodeResultItem.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "Categories"))
    GeocodeResultItem.add_member(:food_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FoodTypeList, name: "FoodTypes"))
    GeocodeResultItem.add_member(:access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointList, name: "AccessPoints"))
    GeocodeResultItem.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeZone, name: "TimeZone"))
    GeocodeResultItem.add_member(:political_view, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode3, name: "PoliticalView"))
    GeocodeResultItem.add_member(:match_scores, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScoreDetails, name: "MatchScores"))
    GeocodeResultItem.add_member(:parsed_query, ::Smithy::Schema::Shapes::MemberShape.new(target: GeocodeParsedQuery, name: "ParsedQuery"))
    GeocodeResultItem.add_member(:intersections, ::Smithy::Schema::Shapes::MemberShape.new(target: IntersectionList, name: "Intersections"))
    GeocodeResultItem.add_member(:main_address, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedPlace, name: "MainAddress"))
    GeocodeResultItem.add_member(:secondary_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedPlaceList, name: "SecondaryAddresses"))
    GeocodeResultItem.type = Types::GeocodeResultItem
    GeocodeResultItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GeocodeResultItem, name: "member")
    GetPlaceAdditionalFeatureList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GetPlaceAdditionalFeature, name: "member")
    GetPlaceRequest.add_member(:place_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PlaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#length" => {"max" => 500}, "smithy.api#required" => {}}))
    GetPlaceRequest.add_member(:additional_features, ::Smithy::Schema::Shapes::MemberShape.new(target: GetPlaceAdditionalFeatureList, name: "AdditionalFeatures", traits: {"smithy.api#httpQuery" => "additional-features"}))
    GetPlaceRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageTag, name: "Language", traits: {"smithy.api#httpQuery" => "language"}))
    GetPlaceRequest.add_member(:political_view, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "PoliticalView", traits: {"smithy.api#httpQuery" => "political-view"}))
    GetPlaceRequest.add_member(:intended_use, ::Smithy::Schema::Shapes::MemberShape.new(target: GetPlaceIntendedUse, name: "IntendedUse", traits: {"smithy.api#httpQuery" => "intended-use"}))
    GetPlaceRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, name: "Key", traits: {"smithy.api#httpQuery" => "key"}))
    GetPlaceRequest.type = Types::GetPlaceRequest
    GetPlaceResponse.add_member(:place_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PlaceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#required" => {}}))
    GetPlaceResponse.add_member(:place_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlaceType, name: "PlaceType", traits: {"smithy.api#required" => {}}))
    GetPlaceResponse.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Title", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#required" => {}}))
    GetPlaceResponse.add_member(:pricing_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PricingBucket", traits: {"smithy.api#httpHeader" => "x-amz-geo-pricing-bucket", "smithy.api#required" => {}}))
    GetPlaceResponse.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address"))
    GetPlaceResponse.add_member(:address_number_corrected, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBoolean, name: "AddressNumberCorrected"))
    GetPlaceResponse.add_member(:postal_code_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PostalCodeDetailsList, name: "PostalCodeDetails"))
    GetPlaceResponse.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "Position"))
    GetPlaceResponse.add_member(:map_view, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundingBox, name: "MapView"))
    GetPlaceResponse.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "Categories"))
    GetPlaceResponse.add_member(:food_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FoodTypeList, name: "FoodTypes"))
    GetPlaceResponse.add_member(:business_chains, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessChainList, name: "BusinessChains"))
    GetPlaceResponse.add_member(:contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: Contacts, name: "Contacts"))
    GetPlaceResponse.add_member(:opening_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: OpeningHoursList, name: "OpeningHours"))
    GetPlaceResponse.add_member(:access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointList, name: "AccessPoints"))
    GetPlaceResponse.add_member(:access_restrictions, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessRestrictionList, name: "AccessRestrictions"))
    GetPlaceResponse.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeZone, name: "TimeZone"))
    GetPlaceResponse.add_member(:political_view, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode3, name: "PoliticalView"))
    GetPlaceResponse.add_member(:phonemes, ::Smithy::Schema::Shapes::MemberShape.new(target: PhonemeDetails, name: "Phonemes"))
    GetPlaceResponse.add_member(:main_address, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedPlace, name: "MainAddress"))
    GetPlaceResponse.add_member(:secondary_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedPlaceList, name: "SecondaryAddresses"))
    GetPlaceResponse.type = Types::GetPlaceResponse
    Highlight.add_member(:start_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "StartIndex", traits: {"smithy.api#range" => {"min" => 0}}))
    Highlight.add_member(:end_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "EndIndex", traits: {"smithy.api#range" => {"min" => 0}}))
    Highlight.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Value", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    Highlight.type = Types::Highlight
    HighlightList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Highlight, name: "member")
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    Intersection.add_member(:place_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PlaceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#required" => {}}))
    Intersection.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Title", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#required" => {}}))
    Intersection.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address"))
    Intersection.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "Position"))
    Intersection.add_member(:distance, ::Smithy::Schema::Shapes::MemberShape.new(target: DistanceMeters, name: "Distance", traits: {"smithy.api#default" => nil}))
    Intersection.add_member(:route_distance, ::Smithy::Schema::Shapes::MemberShape.new(target: DistanceMeters, name: "RouteDistance", traits: {"smithy.api#default" => nil}))
    Intersection.add_member(:map_view, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundingBox, name: "MapView"))
    Intersection.add_member(:access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointList, name: "AccessPoints"))
    Intersection.type = Types::Intersection
    IntersectionHighlightsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "member")
    IntersectionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Intersection, name: "member")
    IntersectionStreetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IntersectionStreet, name: "member")
    MatchScoreDetails.add_member(:overall, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScore, name: "Overall", traits: {"smithy.api#default" => 0}))
    MatchScoreDetails.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentMatchScores, name: "Components"))
    MatchScoreDetails.type = Types::MatchScoreDetails
    MatchScoreList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScore, name: "member")
    OpeningHours.add_member(:display, ::Smithy::Schema::Shapes::MemberShape.new(target: OpeningHoursDisplayList, name: "Display"))
    OpeningHours.add_member(:open_now, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBoolean, name: "OpenNow"))
    OpeningHours.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: OpeningHoursComponentsList, name: "Components"))
    OpeningHours.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "Categories"))
    OpeningHours.type = Types::OpeningHours
    OpeningHoursComponents.add_member(:open_time, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "OpenTime", traits: {"smithy.api#length" => {"min" => 0, "max" => 21}}))
    OpeningHoursComponents.add_member(:open_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "OpenDuration", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    OpeningHoursComponents.add_member(:recurrence, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Recurrence", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    OpeningHoursComponents.type = Types::OpeningHoursComponents
    OpeningHoursComponentsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OpeningHoursComponents, name: "member")
    OpeningHoursDisplayList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OpeningHoursDisplay, name: "member")
    OpeningHoursList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OpeningHours, name: "member")
    ParsedQueryComponent.add_member(:start_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "StartIndex", traits: {"smithy.api#range" => {"min" => 0}}))
    ParsedQueryComponent.add_member(:end_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "EndIndex", traits: {"smithy.api#range" => {"min" => 0}}))
    ParsedQueryComponent.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Value", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    ParsedQueryComponent.add_member(:query_component, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "QueryComponent", traits: {"smithy.api#length" => {"min" => 0, "max" => 11}}))
    ParsedQueryComponent.type = Types::ParsedQueryComponent
    ParsedQueryComponentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedQueryComponent, name: "member")
    ParsedQuerySecondaryAddressComponent.add_member(:start_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "StartIndex", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    ParsedQuerySecondaryAddressComponent.add_member(:end_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "EndIndex", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    ParsedQuerySecondaryAddressComponent.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Value", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#required" => {}}))
    ParsedQuerySecondaryAddressComponent.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Number", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}, "smithy.api#required" => {}}))
    ParsedQuerySecondaryAddressComponent.add_member(:designator, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Designator", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}, "smithy.api#required" => {}}))
    ParsedQuerySecondaryAddressComponent.type = Types::ParsedQuerySecondaryAddressComponent
    ParsedQuerySecondaryAddressComponentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedQuerySecondaryAddressComponent, name: "member")
    PhonemeDetails.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: PhonemeTranscriptionList, name: "Title"))
    PhonemeDetails.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressComponentPhonemes, name: "Address"))
    PhonemeDetails.type = Types::PhonemeDetails
    PhonemeTranscription.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Value", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}}))
    PhonemeTranscription.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageTag, name: "Language"))
    PhonemeTranscription.add_member(:preferred, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBoolean, name: "Preferred"))
    PhonemeTranscription.type = Types::PhonemeTranscription
    PhonemeTranscriptionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PhonemeTranscription, name: "member")
    Position.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "member")
    PostalCodeDetails.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PostalCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}}))
    PostalCodeDetails.add_member(:postal_authority, ::Smithy::Schema::Shapes::MemberShape.new(target: PostalAuthority, name: "PostalAuthority"))
    PostalCodeDetails.add_member(:postal_code_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PostalCodeType, name: "PostalCodeType"))
    PostalCodeDetails.add_member(:usps_zip, ::Smithy::Schema::Shapes::MemberShape.new(target: UspsZip, name: "UspsZip"))
    PostalCodeDetails.add_member(:usps_zip_plus4, ::Smithy::Schema::Shapes::MemberShape.new(target: UspsZipPlus4, name: "UspsZipPlus4"))
    PostalCodeDetails.type = Types::PostalCodeDetails
    PostalCodeDetailsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PostalCodeDetails, name: "member")
    QueryRefinement.add_member(:refined_term, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "RefinedTerm", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#required" => {}}))
    QueryRefinement.add_member(:original_term, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "OriginalTerm", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#required" => {}}))
    QueryRefinement.add_member(:start_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "StartIndex", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    QueryRefinement.add_member(:end_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "EndIndex", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    QueryRefinement.type = Types::QueryRefinement
    QueryRefinementList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueryRefinement, name: "member")
    Region.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Code", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}}))
    Region.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Name", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    Region.type = Types::Region
    RegionHighlights.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "Code"))
    RegionHighlights.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "Name"))
    RegionHighlights.type = Types::RegionHighlights
    RelatedPlace.add_member(:place_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PlaceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#required" => {}}))
    RelatedPlace.add_member(:place_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlaceType, name: "PlaceType", traits: {"smithy.api#required" => {}}))
    RelatedPlace.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Title", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#required" => {}}))
    RelatedPlace.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address"))
    RelatedPlace.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "Position"))
    RelatedPlace.add_member(:access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointList, name: "AccessPoints"))
    RelatedPlace.type = Types::RelatedPlace
    RelatedPlaceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedPlace, name: "member")
    ReverseGeocodeAdditionalFeatureList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseGeocodeAdditionalFeature, name: "member")
    ReverseGeocodeFilter.add_member(:include_place_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseGeocodeFilterPlaceTypeList, name: "IncludePlaceTypes"))
    ReverseGeocodeFilter.type = Types::ReverseGeocodeFilter
    ReverseGeocodeFilterPlaceTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseGeocodeFilterPlaceType, name: "member")
    ReverseGeocodeRequest.add_member(:query_position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "QueryPosition", traits: {"smithy.api#required" => {}}))
    ReverseGeocodeRequest.add_member(:query_radius, ::Smithy::Schema::Shapes::MemberShape.new(target: DistanceMeters, name: "QueryRadius", traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 21000000}}))
    ReverseGeocodeRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ReverseGeocodeRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseGeocodeFilter, name: "Filter"))
    ReverseGeocodeRequest.add_member(:additional_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseGeocodeAdditionalFeatureList, name: "AdditionalFeatures"))
    ReverseGeocodeRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageTag, name: "Language"))
    ReverseGeocodeRequest.add_member(:political_view, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "PoliticalView"))
    ReverseGeocodeRequest.add_member(:intended_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseGeocodeIntendedUse, name: "IntendedUse"))
    ReverseGeocodeRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, name: "Key", traits: {"smithy.api#httpQuery" => "key"}))
    ReverseGeocodeRequest.type = Types::ReverseGeocodeRequest
    ReverseGeocodeResponse.add_member(:pricing_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PricingBucket", traits: {"smithy.api#httpHeader" => "x-amz-geo-pricing-bucket", "smithy.api#required" => {}}))
    ReverseGeocodeResponse.add_member(:result_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseGeocodeResultItemList, name: "ResultItems"))
    ReverseGeocodeResponse.type = Types::ReverseGeocodeResponse
    ReverseGeocodeResultItem.add_member(:place_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PlaceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#required" => {}}))
    ReverseGeocodeResultItem.add_member(:place_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlaceType, name: "PlaceType", traits: {"smithy.api#required" => {}}))
    ReverseGeocodeResultItem.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Title", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#required" => {}}))
    ReverseGeocodeResultItem.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address"))
    ReverseGeocodeResultItem.add_member(:address_number_corrected, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBoolean, name: "AddressNumberCorrected"))
    ReverseGeocodeResultItem.add_member(:postal_code_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PostalCodeDetailsList, name: "PostalCodeDetails"))
    ReverseGeocodeResultItem.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "Position"))
    ReverseGeocodeResultItem.add_member(:distance, ::Smithy::Schema::Shapes::MemberShape.new(target: DistanceMeters, name: "Distance", traits: {"smithy.api#default" => 0}))
    ReverseGeocodeResultItem.add_member(:map_view, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundingBox, name: "MapView"))
    ReverseGeocodeResultItem.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "Categories"))
    ReverseGeocodeResultItem.add_member(:food_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FoodTypeList, name: "FoodTypes"))
    ReverseGeocodeResultItem.add_member(:access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointList, name: "AccessPoints"))
    ReverseGeocodeResultItem.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeZone, name: "TimeZone"))
    ReverseGeocodeResultItem.add_member(:political_view, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode3, name: "PoliticalView"))
    ReverseGeocodeResultItem.add_member(:intersections, ::Smithy::Schema::Shapes::MemberShape.new(target: IntersectionList, name: "Intersections"))
    ReverseGeocodeResultItem.type = Types::ReverseGeocodeResultItem
    ReverseGeocodeResultItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseGeocodeResultItem, name: "member")
    SearchNearbyAdditionalFeatureList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SearchNearbyAdditionalFeature, name: "member")
    SearchNearbyFilter.add_member(:bounding_box, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundingBox, name: "BoundingBox"))
    SearchNearbyFilter.add_member(:include_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCodeList, name: "IncludeCountries"))
    SearchNearbyFilter.add_member(:include_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCategoryList, name: "IncludeCategories"))
    SearchNearbyFilter.add_member(:exclude_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCategoryList, name: "ExcludeCategories"))
    SearchNearbyFilter.add_member(:include_business_chains, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterBusinessChainList, name: "IncludeBusinessChains"))
    SearchNearbyFilter.add_member(:exclude_business_chains, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterBusinessChainList, name: "ExcludeBusinessChains"))
    SearchNearbyFilter.add_member(:include_food_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterFoodTypeList, name: "IncludeFoodTypes"))
    SearchNearbyFilter.add_member(:exclude_food_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterFoodTypeList, name: "ExcludeFoodTypes"))
    SearchNearbyFilter.type = Types::SearchNearbyFilter
    SearchNearbyRequest.add_member(:query_position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "QueryPosition", traits: {"smithy.api#required" => {}}))
    SearchNearbyRequest.add_member(:query_radius, ::Smithy::Schema::Shapes::MemberShape.new(target: DistanceMeters, name: "QueryRadius", traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 21000000}}))
    SearchNearbyRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchNearbyRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchNearbyFilter, name: "Filter"))
    SearchNearbyRequest.add_member(:additional_features, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchNearbyAdditionalFeatureList, name: "AdditionalFeatures"))
    SearchNearbyRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageTag, name: "Language"))
    SearchNearbyRequest.add_member(:political_view, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "PoliticalView"))
    SearchNearbyRequest.add_member(:intended_use, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchNearbyIntendedUse, name: "IntendedUse"))
    SearchNearbyRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    SearchNearbyRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, name: "Key", traits: {"smithy.api#httpQuery" => "key"}))
    SearchNearbyRequest.type = Types::SearchNearbyRequest
    SearchNearbyResponse.add_member(:pricing_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PricingBucket", traits: {"smithy.api#httpHeader" => "x-amz-geo-pricing-bucket", "smithy.api#required" => {}}))
    SearchNearbyResponse.add_member(:result_items, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchNearbyResultItemList, name: "ResultItems"))
    SearchNearbyResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    SearchNearbyResponse.type = Types::SearchNearbyResponse
    SearchNearbyResultItem.add_member(:place_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PlaceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#required" => {}}))
    SearchNearbyResultItem.add_member(:place_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlaceType, name: "PlaceType", traits: {"smithy.api#required" => {}}))
    SearchNearbyResultItem.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Title", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#required" => {}}))
    SearchNearbyResultItem.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address"))
    SearchNearbyResultItem.add_member(:address_number_corrected, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBoolean, name: "AddressNumberCorrected"))
    SearchNearbyResultItem.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "Position"))
    SearchNearbyResultItem.add_member(:distance, ::Smithy::Schema::Shapes::MemberShape.new(target: DistanceMeters, name: "Distance", traits: {"smithy.api#default" => 0}))
    SearchNearbyResultItem.add_member(:map_view, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundingBox, name: "MapView"))
    SearchNearbyResultItem.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "Categories"))
    SearchNearbyResultItem.add_member(:food_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FoodTypeList, name: "FoodTypes"))
    SearchNearbyResultItem.add_member(:business_chains, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessChainList, name: "BusinessChains"))
    SearchNearbyResultItem.add_member(:contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: Contacts, name: "Contacts"))
    SearchNearbyResultItem.add_member(:opening_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: OpeningHoursList, name: "OpeningHours"))
    SearchNearbyResultItem.add_member(:access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointList, name: "AccessPoints"))
    SearchNearbyResultItem.add_member(:access_restrictions, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessRestrictionList, name: "AccessRestrictions"))
    SearchNearbyResultItem.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeZone, name: "TimeZone"))
    SearchNearbyResultItem.add_member(:political_view, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode3, name: "PoliticalView"))
    SearchNearbyResultItem.add_member(:phonemes, ::Smithy::Schema::Shapes::MemberShape.new(target: PhonemeDetails, name: "Phonemes"))
    SearchNearbyResultItem.type = Types::SearchNearbyResultItem
    SearchNearbyResultItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SearchNearbyResultItem, name: "member")
    SearchTextAdditionalFeatureList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SearchTextAdditionalFeature, name: "member")
    SearchTextFilter.add_member(:bounding_box, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundingBox, name: "BoundingBox"))
    SearchTextFilter.add_member(:circle, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCircle, name: "Circle"))
    SearchTextFilter.add_member(:include_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCodeList, name: "IncludeCountries"))
    SearchTextFilter.type = Types::SearchTextFilter
    SearchTextRequest.add_member(:query_text, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "QueryText", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}}))
    SearchTextRequest.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "QueryId", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}}))
    SearchTextRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchTextRequest.add_member(:bias_position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "BiasPosition"))
    SearchTextRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchTextFilter, name: "Filter"))
    SearchTextRequest.add_member(:additional_features, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchTextAdditionalFeatureList, name: "AdditionalFeatures"))
    SearchTextRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageTag, name: "Language"))
    SearchTextRequest.add_member(:political_view, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "PoliticalView"))
    SearchTextRequest.add_member(:intended_use, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchTextIntendedUse, name: "IntendedUse"))
    SearchTextRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    SearchTextRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, name: "Key", traits: {"smithy.api#httpQuery" => "key"}))
    SearchTextRequest.type = Types::SearchTextRequest
    SearchTextResponse.add_member(:pricing_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PricingBucket", traits: {"smithy.api#httpHeader" => "x-amz-geo-pricing-bucket", "smithy.api#required" => {}}))
    SearchTextResponse.add_member(:result_items, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchTextResultItemList, name: "ResultItems"))
    SearchTextResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    SearchTextResponse.type = Types::SearchTextResponse
    SearchTextResultItem.add_member(:place_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PlaceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#required" => {}}))
    SearchTextResultItem.add_member(:place_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlaceType, name: "PlaceType", traits: {"smithy.api#required" => {}}))
    SearchTextResultItem.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Title", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#required" => {}}))
    SearchTextResultItem.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address"))
    SearchTextResultItem.add_member(:address_number_corrected, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBoolean, name: "AddressNumberCorrected"))
    SearchTextResultItem.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "Position"))
    SearchTextResultItem.add_member(:distance, ::Smithy::Schema::Shapes::MemberShape.new(target: DistanceMeters, name: "Distance", traits: {"smithy.api#default" => 0}))
    SearchTextResultItem.add_member(:map_view, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundingBox, name: "MapView"))
    SearchTextResultItem.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "Categories"))
    SearchTextResultItem.add_member(:food_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FoodTypeList, name: "FoodTypes"))
    SearchTextResultItem.add_member(:business_chains, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessChainList, name: "BusinessChains"))
    SearchTextResultItem.add_member(:contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: Contacts, name: "Contacts"))
    SearchTextResultItem.add_member(:opening_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: OpeningHoursList, name: "OpeningHours"))
    SearchTextResultItem.add_member(:access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointList, name: "AccessPoints"))
    SearchTextResultItem.add_member(:access_restrictions, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessRestrictionList, name: "AccessRestrictions"))
    SearchTextResultItem.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeZone, name: "TimeZone"))
    SearchTextResultItem.add_member(:political_view, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode3, name: "PoliticalView"))
    SearchTextResultItem.add_member(:phonemes, ::Smithy::Schema::Shapes::MemberShape.new(target: PhonemeDetails, name: "Phonemes"))
    SearchTextResultItem.type = Types::SearchTextResultItem
    SearchTextResultItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SearchTextResultItem, name: "member")
    SecondaryAddressComponent.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Number", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}, "smithy.api#required" => {}}))
    SecondaryAddressComponent.type = Types::SecondaryAddressComponent
    SecondaryAddressComponentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SecondaryAddressComponent, name: "member")
    SecondaryAddressComponentMatchScore.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchScore, name: "Number", traits: {"smithy.api#default" => 0}))
    SecondaryAddressComponentMatchScore.type = Types::SecondaryAddressComponentMatchScore
    SecondaryAddressComponentMatchScoreList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SecondaryAddressComponentMatchScore, name: "member")
    StreetComponents.add_member(:base_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "BaseName", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    StreetComponents.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Type", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}}))
    StreetComponents.add_member(:type_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: TypePlacement, name: "TypePlacement"))
    StreetComponents.add_member(:type_separator, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeSeparator, name: "TypeSeparator"))
    StreetComponents.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Prefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}}))
    StreetComponents.add_member(:suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Suffix", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}}))
    StreetComponents.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Direction", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}}))
    StreetComponents.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageTag, name: "Language"))
    StreetComponents.type = Types::StreetComponents
    StreetComponentsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StreetComponents, name: "member")
    SubRegion.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Code", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}}))
    SubRegion.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Name", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}}))
    SubRegion.type = Types::SubRegion
    SubRegionHighlights.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "Code"))
    SubRegionHighlights.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "Name"))
    SubRegionHighlights.type = Types::SubRegionHighlights
    SuggestAdditionalFeatureList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestAdditionalFeature, name: "member")
    SuggestAddressHighlights.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "Label"))
    SuggestAddressHighlights.type = Types::SuggestAddressHighlights
    SuggestFilter.add_member(:bounding_box, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundingBox, name: "BoundingBox"))
    SuggestFilter.add_member(:circle, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCircle, name: "Circle"))
    SuggestFilter.add_member(:include_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCodeList, name: "IncludeCountries"))
    SuggestFilter.type = Types::SuggestFilter
    SuggestHighlights.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "Title"))
    SuggestHighlights.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestAddressHighlights, name: "Address"))
    SuggestHighlights.type = Types::SuggestHighlights
    SuggestPlaceResult.add_member(:place_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PlaceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}}))
    SuggestPlaceResult.add_member(:place_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlaceType, name: "PlaceType"))
    SuggestPlaceResult.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address"))
    SuggestPlaceResult.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "Position"))
    SuggestPlaceResult.add_member(:distance, ::Smithy::Schema::Shapes::MemberShape.new(target: DistanceMeters, name: "Distance", traits: {"smithy.api#default" => 0}))
    SuggestPlaceResult.add_member(:map_view, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundingBox, name: "MapView"))
    SuggestPlaceResult.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "Categories"))
    SuggestPlaceResult.add_member(:food_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FoodTypeList, name: "FoodTypes"))
    SuggestPlaceResult.add_member(:business_chains, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessChainList, name: "BusinessChains"))
    SuggestPlaceResult.add_member(:access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointList, name: "AccessPoints"))
    SuggestPlaceResult.add_member(:access_restrictions, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessRestrictionList, name: "AccessRestrictions"))
    SuggestPlaceResult.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeZone, name: "TimeZone"))
    SuggestPlaceResult.add_member(:political_view, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode3, name: "PoliticalView"))
    SuggestPlaceResult.add_member(:phonemes, ::Smithy::Schema::Shapes::MemberShape.new(target: PhonemeDetails, name: "Phonemes"))
    SuggestPlaceResult.type = Types::SuggestPlaceResult
    SuggestQueryResult.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "QueryId", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}}))
    SuggestQueryResult.add_member(:query_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryType, name: "QueryType"))
    SuggestQueryResult.type = Types::SuggestQueryResult
    SuggestRequest.add_member(:query_text, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "QueryText", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#required" => {}}))
    SuggestRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    SuggestRequest.add_member(:max_query_refinements, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxQueryRefinements", traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 10}}))
    SuggestRequest.add_member(:bias_position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "BiasPosition"))
    SuggestRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestFilter, name: "Filter"))
    SuggestRequest.add_member(:additional_features, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestAdditionalFeatureList, name: "AdditionalFeatures"))
    SuggestRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageTag, name: "Language"))
    SuggestRequest.add_member(:political_view, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "PoliticalView"))
    SuggestRequest.add_member(:intended_use, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestIntendedUse, name: "IntendedUse"))
    SuggestRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, name: "Key", traits: {"smithy.api#httpQuery" => "key"}))
    SuggestRequest.type = Types::SuggestRequest
    SuggestResponse.add_member(:pricing_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PricingBucket", traits: {"smithy.api#httpHeader" => "x-amz-geo-pricing-bucket", "smithy.api#required" => {}}))
    SuggestResponse.add_member(:result_items, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestResultItemList, name: "ResultItems"))
    SuggestResponse.add_member(:query_refinements, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryRefinementList, name: "QueryRefinements"))
    SuggestResponse.type = Types::SuggestResponse
    SuggestResultItem.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Title", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#required" => {}}))
    SuggestResultItem.add_member(:suggest_result_item_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestResultItemType, name: "SuggestResultItemType", traits: {"smithy.api#required" => {}}))
    SuggestResultItem.add_member(:place, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestPlaceResult, name: "Place"))
    SuggestResultItem.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestQueryResult, name: "Query"))
    SuggestResultItem.add_member(:highlights, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestHighlights, name: "Highlights"))
    SuggestResultItem.type = Types::SuggestResultItem
    SuggestResultItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestResultItem, name: "member")
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TimeZone.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Name", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#required" => {}}))
    TimeZone.add_member(:offset, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Offset", traits: {"smithy.api#length" => {"min" => 0, "max" => 6}}))
    TimeZone.add_member(:offset_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationSeconds, name: "OffsetSeconds", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}}))
    TimeZone.type = Types::TimeZone
    UspsZip.add_member(:zip_classification_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ZipClassificationCode, name: "ZipClassificationCode"))
    UspsZip.type = Types::UspsZip
    UspsZipPlus4.add_member(:record_type_code, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordTypeCode, name: "RecordTypeCode"))
    UspsZipPlus4.type = Types::UspsZipPlus4
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason", traits: {"smithy.api#jsonName" => "reason", "smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "FieldList", traits: {"smithy.api#jsonName" => "fieldList", "smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member")

    PlacesService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.geoplaces#PlacesService"
      service.name = "PlacesService"
      service.version = "2020-11-19"
      service.traits = {"aws.api#service" => {"sdkId" => "Geo Places", "arnNamespace" => "geo-places", "cloudTrailEventSource" => "geo-places.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "geo-places"}, "aws.endpoints#standardRegionalEndpoints" => {"partitionSpecialCases" => {"aws" => [{"endpoint" => "https://places.geo.{region}.{dnsSuffix}/v2"}, {"endpoint" => "https://places.geo-fips.{region}.{dualStackDnsSuffix}/v2", "fips" => true, "dualStack" => true}, {"endpoint" => "https://places.geo-fips.{region}.{dnsSuffix}/v2", "fips" => true, "dualStack" => false}, {"endpoint" => "https://places.geo.{region}.{dualStackDnsSuffix}/v2", "fips" => false, "dualStack" => true}], "aws-us-gov" => [{"endpoint" => "https://places.geo.{region}.{dnsSuffix}/v2"}, {"endpoint" => "https://places.geo-fips.{region}.{dualStackDnsSuffix}/v2", "fips" => true, "dualStack" => true}, {"endpoint" => "https://places.geo-fips.{region}.{dnsSuffix}/v2", "fips" => true, "dualStack" => false}, {"endpoint" => "https://places.geo.{region}.{dualStackDnsSuffix}/v2", "fips" => false, "dualStack" => true}]}}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["x-amz-content-sha256", "x-amz-user-agent", "content-type"]}, "smithy.api#title" => "Amazon Location Service Places V2"}
      service.add_operation(:autocomplete, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geoplaces#Autocomplete"
        operation.name = "Autocomplete"
        operation.input = AutocompleteRequest
        operation.output = AutocompleteResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/autocomplete", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "AutocompleteSuccess", "params" => {"QueryText" => "Star"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:geocode, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geoplaces#Geocode"
        operation.name = "Geocode"
        operation.input = GeocodeRequest
        operation.output = GeocodeResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/geocode", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GeocodeSuccess", "params" => {"QueryText" => "Starbucks"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_place, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geoplaces#GetPlace"
        operation.name = "GetPlace"
        operation.input = GetPlaceRequest
        operation.output = GetPlaceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/place/{PlaceId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:reverse_geocode, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geoplaces#ReverseGeocode"
        operation.name = "ReverseGeocode"
        operation.input = ReverseGeocodeRequest
        operation.output = ReverseGeocodeResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/reverse-geocode", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ReverseGeocodeSuccess", "params" => {"QueryPosition" => [2.2945, 48.85824]}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:search_nearby, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geoplaces#SearchNearby"
        operation.name = "SearchNearby"
        operation.input = SearchNearbyRequest
        operation.output = SearchNearbyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/search-nearby", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "SearchNearbySuccess", "params" => {"QueryPosition" => [2.2945, 48.85824]}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:search_text, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geoplaces#SearchText"
        operation.name = "SearchText"
        operation.input = SearchTextRequest
        operation.output = SearchTextResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/search-text", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "SearchTextSuccess", "params" => {"QueryText" => "Taj Mahal", "BiasPosition" => [78.0421, 27.1753]}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:suggest, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geoplaces#Suggest"
        operation.name = "Suggest"
        operation.input = SuggestRequest
        operation.output = SuggestResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/suggest", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "SuggestSuccess", "params" => {"QueryText" => "Taj Mahal", "BiasPosition" => [78.0421, 27.1753]}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
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

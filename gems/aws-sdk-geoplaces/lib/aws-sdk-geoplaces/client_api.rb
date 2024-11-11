# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::GeoPlaces
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessPoint = Shapes::StructureShape.new(name: 'AccessPoint')
    AccessPointList = Shapes::ListShape.new(name: 'AccessPointList')
    AccessRestriction = Shapes::StructureShape.new(name: 'AccessRestriction')
    AccessRestrictionList = Shapes::ListShape.new(name: 'AccessRestrictionList')
    Address = Shapes::StructureShape.new(name: 'Address')
    AddressAddressNumberString = Shapes::StringShape.new(name: 'AddressAddressNumberString')
    AddressBlockString = Shapes::StringShape.new(name: 'AddressBlockString')
    AddressBuildingString = Shapes::StringShape.new(name: 'AddressBuildingString')
    AddressComponentMatchScores = Shapes::StructureShape.new(name: 'AddressComponentMatchScores')
    AddressComponentMatchScoresIntersectionList = Shapes::ListShape.new(name: 'AddressComponentMatchScoresIntersectionList')
    AddressComponentPhonemes = Shapes::StructureShape.new(name: 'AddressComponentPhonemes')
    AddressDistrictString = Shapes::StringShape.new(name: 'AddressDistrictString')
    AddressLabelString = Shapes::StringShape.new(name: 'AddressLabelString')
    AddressLocalityString = Shapes::StringShape.new(name: 'AddressLocalityString')
    AddressPostalCodeString = Shapes::StringShape.new(name: 'AddressPostalCodeString')
    AddressStreetString = Shapes::StringShape.new(name: 'AddressStreetString')
    AddressSubBlockString = Shapes::StringShape.new(name: 'AddressSubBlockString')
    AddressSubDistrictString = Shapes::StringShape.new(name: 'AddressSubDistrictString')
    ApiKey = Shapes::StringShape.new(name: 'ApiKey')
    AutocompleteAdditionalFeature = Shapes::StringShape.new(name: 'AutocompleteAdditionalFeature')
    AutocompleteAdditionalFeatureList = Shapes::ListShape.new(name: 'AutocompleteAdditionalFeatureList')
    AutocompleteAddressHighlights = Shapes::StructureShape.new(name: 'AutocompleteAddressHighlights')
    AutocompleteFilter = Shapes::StructureShape.new(name: 'AutocompleteFilter')
    AutocompleteFilterPlaceType = Shapes::StringShape.new(name: 'AutocompleteFilterPlaceType')
    AutocompleteFilterPlaceTypeList = Shapes::ListShape.new(name: 'AutocompleteFilterPlaceTypeList')
    AutocompleteHighlights = Shapes::StructureShape.new(name: 'AutocompleteHighlights')
    AutocompleteIntendedUse = Shapes::StringShape.new(name: 'AutocompleteIntendedUse')
    AutocompleteRequest = Shapes::StructureShape.new(name: 'AutocompleteRequest')
    AutocompleteRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'AutocompleteRequestMaxResultsInteger')
    AutocompleteRequestQueryTextString = Shapes::StringShape.new(name: 'AutocompleteRequestQueryTextString')
    AutocompleteResponse = Shapes::StructureShape.new(name: 'AutocompleteResponse')
    AutocompleteResultItem = Shapes::StructureShape.new(name: 'AutocompleteResultItem')
    AutocompleteResultItemList = Shapes::ListShape.new(name: 'AutocompleteResultItemList')
    AutocompleteResultItemPlaceIdString = Shapes::StringShape.new(name: 'AutocompleteResultItemPlaceIdString')
    AutocompleteResultItemTitleString = Shapes::StringShape.new(name: 'AutocompleteResultItemTitleString')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoundingBox = Shapes::ListShape.new(name: 'BoundingBox')
    BusinessChain = Shapes::StructureShape.new(name: 'BusinessChain')
    BusinessChainIdString = Shapes::StringShape.new(name: 'BusinessChainIdString')
    BusinessChainList = Shapes::ListShape.new(name: 'BusinessChainList')
    BusinessChainNameString = Shapes::StringShape.new(name: 'BusinessChainNameString')
    Category = Shapes::StructureShape.new(name: 'Category')
    CategoryIdString = Shapes::StringShape.new(name: 'CategoryIdString')
    CategoryList = Shapes::ListShape.new(name: 'CategoryList')
    CategoryLocalizedNameString = Shapes::StringShape.new(name: 'CategoryLocalizedNameString')
    CategoryNameString = Shapes::StringShape.new(name: 'CategoryNameString')
    ComponentMatchScores = Shapes::StructureShape.new(name: 'ComponentMatchScores')
    ContactDetails = Shapes::StructureShape.new(name: 'ContactDetails')
    ContactDetailsLabelString = Shapes::StringShape.new(name: 'ContactDetailsLabelString')
    ContactDetailsList = Shapes::ListShape.new(name: 'ContactDetailsList')
    ContactDetailsValueString = Shapes::StringShape.new(name: 'ContactDetailsValueString')
    Contacts = Shapes::StructureShape.new(name: 'Contacts')
    Country = Shapes::StructureShape.new(name: 'Country')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    CountryCode2 = Shapes::StringShape.new(name: 'CountryCode2')
    CountryCode3 = Shapes::StringShape.new(name: 'CountryCode3')
    CountryCodeList = Shapes::ListShape.new(name: 'CountryCodeList')
    CountryHighlights = Shapes::StructureShape.new(name: 'CountryHighlights')
    CountryNameString = Shapes::StringShape.new(name: 'CountryNameString')
    DistanceMeters = Shapes::IntegerShape.new(name: 'DistanceMeters')
    Double = Shapes::FloatShape.new(name: 'Double')
    FilterBusinessChainList = Shapes::ListShape.new(name: 'FilterBusinessChainList')
    FilterBusinessChainListMemberString = Shapes::StringShape.new(name: 'FilterBusinessChainListMemberString')
    FilterCategoryList = Shapes::ListShape.new(name: 'FilterCategoryList')
    FilterCategoryListMemberString = Shapes::StringShape.new(name: 'FilterCategoryListMemberString')
    FilterCircle = Shapes::StructureShape.new(name: 'FilterCircle')
    FilterCircleRadiusLong = Shapes::IntegerShape.new(name: 'FilterCircleRadiusLong')
    FilterFoodTypeList = Shapes::ListShape.new(name: 'FilterFoodTypeList')
    FilterFoodTypeListMemberString = Shapes::StringShape.new(name: 'FilterFoodTypeListMemberString')
    FoodType = Shapes::StructureShape.new(name: 'FoodType')
    FoodTypeIdString = Shapes::StringShape.new(name: 'FoodTypeIdString')
    FoodTypeList = Shapes::ListShape.new(name: 'FoodTypeList')
    FoodTypeLocalizedNameString = Shapes::StringShape.new(name: 'FoodTypeLocalizedNameString')
    GeocodeAdditionalFeature = Shapes::StringShape.new(name: 'GeocodeAdditionalFeature')
    GeocodeAdditionalFeatureList = Shapes::ListShape.new(name: 'GeocodeAdditionalFeatureList')
    GeocodeFilter = Shapes::StructureShape.new(name: 'GeocodeFilter')
    GeocodeFilterPlaceType = Shapes::StringShape.new(name: 'GeocodeFilterPlaceType')
    GeocodeFilterPlaceTypeList = Shapes::ListShape.new(name: 'GeocodeFilterPlaceTypeList')
    GeocodeIntendedUse = Shapes::StringShape.new(name: 'GeocodeIntendedUse')
    GeocodeQueryComponents = Shapes::StructureShape.new(name: 'GeocodeQueryComponents')
    GeocodeQueryComponentsAddressNumberString = Shapes::StringShape.new(name: 'GeocodeQueryComponentsAddressNumberString')
    GeocodeQueryComponentsCountryString = Shapes::StringShape.new(name: 'GeocodeQueryComponentsCountryString')
    GeocodeQueryComponentsDistrictString = Shapes::StringShape.new(name: 'GeocodeQueryComponentsDistrictString')
    GeocodeQueryComponentsLocalityString = Shapes::StringShape.new(name: 'GeocodeQueryComponentsLocalityString')
    GeocodeQueryComponentsPostalCodeString = Shapes::StringShape.new(name: 'GeocodeQueryComponentsPostalCodeString')
    GeocodeQueryComponentsRegionString = Shapes::StringShape.new(name: 'GeocodeQueryComponentsRegionString')
    GeocodeQueryComponentsStreetString = Shapes::StringShape.new(name: 'GeocodeQueryComponentsStreetString')
    GeocodeQueryComponentsSubRegionString = Shapes::StringShape.new(name: 'GeocodeQueryComponentsSubRegionString')
    GeocodeRequest = Shapes::StructureShape.new(name: 'GeocodeRequest')
    GeocodeRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'GeocodeRequestMaxResultsInteger')
    GeocodeRequestQueryTextString = Shapes::StringShape.new(name: 'GeocodeRequestQueryTextString')
    GeocodeResponse = Shapes::StructureShape.new(name: 'GeocodeResponse')
    GeocodeResultItem = Shapes::StructureShape.new(name: 'GeocodeResultItem')
    GeocodeResultItemList = Shapes::ListShape.new(name: 'GeocodeResultItemList')
    GeocodeResultItemPlaceIdString = Shapes::StringShape.new(name: 'GeocodeResultItemPlaceIdString')
    GeocodeResultItemTitleString = Shapes::StringShape.new(name: 'GeocodeResultItemTitleString')
    GetPlaceAdditionalFeature = Shapes::StringShape.new(name: 'GetPlaceAdditionalFeature')
    GetPlaceAdditionalFeatureList = Shapes::ListShape.new(name: 'GetPlaceAdditionalFeatureList')
    GetPlaceIntendedUse = Shapes::StringShape.new(name: 'GetPlaceIntendedUse')
    GetPlaceRequest = Shapes::StructureShape.new(name: 'GetPlaceRequest')
    GetPlaceRequestPlaceIdString = Shapes::StringShape.new(name: 'GetPlaceRequestPlaceIdString')
    GetPlaceResponse = Shapes::StructureShape.new(name: 'GetPlaceResponse')
    GetPlaceResponsePlaceIdString = Shapes::StringShape.new(name: 'GetPlaceResponsePlaceIdString')
    GetPlaceResponseTitleString = Shapes::StringShape.new(name: 'GetPlaceResponseTitleString')
    Highlight = Shapes::StructureShape.new(name: 'Highlight')
    HighlightEndIndexInteger = Shapes::IntegerShape.new(name: 'HighlightEndIndexInteger')
    HighlightList = Shapes::ListShape.new(name: 'HighlightList')
    HighlightStartIndexInteger = Shapes::IntegerShape.new(name: 'HighlightStartIndexInteger')
    HighlightValueString = Shapes::StringShape.new(name: 'HighlightValueString')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IntersectionHighlightsList = Shapes::ListShape.new(name: 'IntersectionHighlightsList')
    IntersectionList = Shapes::ListShape.new(name: 'IntersectionList')
    IntersectionStreet = Shapes::StringShape.new(name: 'IntersectionStreet')
    LanguageTag = Shapes::StringShape.new(name: 'LanguageTag')
    MatchScore = Shapes::FloatShape.new(name: 'MatchScore')
    MatchScoreDetails = Shapes::StructureShape.new(name: 'MatchScoreDetails')
    OpeningHours = Shapes::StructureShape.new(name: 'OpeningHours')
    OpeningHoursComponents = Shapes::StructureShape.new(name: 'OpeningHoursComponents')
    OpeningHoursComponentsList = Shapes::ListShape.new(name: 'OpeningHoursComponentsList')
    OpeningHoursComponentsOpenDurationString = Shapes::StringShape.new(name: 'OpeningHoursComponentsOpenDurationString')
    OpeningHoursComponentsOpenTimeString = Shapes::StringShape.new(name: 'OpeningHoursComponentsOpenTimeString')
    OpeningHoursComponentsRecurrenceString = Shapes::StringShape.new(name: 'OpeningHoursComponentsRecurrenceString')
    OpeningHoursDisplay = Shapes::StringShape.new(name: 'OpeningHoursDisplay')
    OpeningHoursDisplayList = Shapes::ListShape.new(name: 'OpeningHoursDisplayList')
    OpeningHoursList = Shapes::ListShape.new(name: 'OpeningHoursList')
    PhonemeDetails = Shapes::StructureShape.new(name: 'PhonemeDetails')
    PhonemeTranscription = Shapes::StructureShape.new(name: 'PhonemeTranscription')
    PhonemeTranscriptionList = Shapes::ListShape.new(name: 'PhonemeTranscriptionList')
    PhonemeTranscriptionValueString = Shapes::StringShape.new(name: 'PhonemeTranscriptionValueString')
    PlaceType = Shapes::StringShape.new(name: 'PlaceType')
    Position = Shapes::ListShape.new(name: 'Position')
    PostalAuthority = Shapes::StringShape.new(name: 'PostalAuthority')
    PostalCodeDetails = Shapes::StructureShape.new(name: 'PostalCodeDetails')
    PostalCodeDetailsList = Shapes::ListShape.new(name: 'PostalCodeDetailsList')
    PostalCodeDetailsPostalCodeString = Shapes::StringShape.new(name: 'PostalCodeDetailsPostalCodeString')
    PostalCodeMode = Shapes::StringShape.new(name: 'PostalCodeMode')
    PostalCodeType = Shapes::StringShape.new(name: 'PostalCodeType')
    QueryRefinement = Shapes::StructureShape.new(name: 'QueryRefinement')
    QueryRefinementEndIndexInteger = Shapes::IntegerShape.new(name: 'QueryRefinementEndIndexInteger')
    QueryRefinementList = Shapes::ListShape.new(name: 'QueryRefinementList')
    QueryRefinementOriginalTermString = Shapes::StringShape.new(name: 'QueryRefinementOriginalTermString')
    QueryRefinementRefinedTermString = Shapes::StringShape.new(name: 'QueryRefinementRefinedTermString')
    QueryRefinementStartIndexInteger = Shapes::IntegerShape.new(name: 'QueryRefinementStartIndexInteger')
    QueryType = Shapes::StringShape.new(name: 'QueryType')
    RecordTypeCode = Shapes::StringShape.new(name: 'RecordTypeCode')
    Region = Shapes::StructureShape.new(name: 'Region')
    RegionCodeString = Shapes::StringShape.new(name: 'RegionCodeString')
    RegionHighlights = Shapes::StructureShape.new(name: 'RegionHighlights')
    RegionNameString = Shapes::StringShape.new(name: 'RegionNameString')
    ReverseGeocodeAdditionalFeature = Shapes::StringShape.new(name: 'ReverseGeocodeAdditionalFeature')
    ReverseGeocodeAdditionalFeatureList = Shapes::ListShape.new(name: 'ReverseGeocodeAdditionalFeatureList')
    ReverseGeocodeFilter = Shapes::StructureShape.new(name: 'ReverseGeocodeFilter')
    ReverseGeocodeFilterPlaceType = Shapes::StringShape.new(name: 'ReverseGeocodeFilterPlaceType')
    ReverseGeocodeFilterPlaceTypeList = Shapes::ListShape.new(name: 'ReverseGeocodeFilterPlaceTypeList')
    ReverseGeocodeIntendedUse = Shapes::StringShape.new(name: 'ReverseGeocodeIntendedUse')
    ReverseGeocodeRequest = Shapes::StructureShape.new(name: 'ReverseGeocodeRequest')
    ReverseGeocodeRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ReverseGeocodeRequestMaxResultsInteger')
    ReverseGeocodeRequestQueryRadiusLong = Shapes::IntegerShape.new(name: 'ReverseGeocodeRequestQueryRadiusLong')
    ReverseGeocodeResponse = Shapes::StructureShape.new(name: 'ReverseGeocodeResponse')
    ReverseGeocodeResultItem = Shapes::StructureShape.new(name: 'ReverseGeocodeResultItem')
    ReverseGeocodeResultItemList = Shapes::ListShape.new(name: 'ReverseGeocodeResultItemList')
    ReverseGeocodeResultItemPlaceIdString = Shapes::StringShape.new(name: 'ReverseGeocodeResultItemPlaceIdString')
    ReverseGeocodeResultItemTitleString = Shapes::StringShape.new(name: 'ReverseGeocodeResultItemTitleString')
    SearchNearbyAdditionalFeature = Shapes::StringShape.new(name: 'SearchNearbyAdditionalFeature')
    SearchNearbyAdditionalFeatureList = Shapes::ListShape.new(name: 'SearchNearbyAdditionalFeatureList')
    SearchNearbyFilter = Shapes::StructureShape.new(name: 'SearchNearbyFilter')
    SearchNearbyIntendedUse = Shapes::StringShape.new(name: 'SearchNearbyIntendedUse')
    SearchNearbyRequest = Shapes::StructureShape.new(name: 'SearchNearbyRequest')
    SearchNearbyRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchNearbyRequestMaxResultsInteger')
    SearchNearbyRequestQueryRadiusLong = Shapes::IntegerShape.new(name: 'SearchNearbyRequestQueryRadiusLong')
    SearchNearbyResponse = Shapes::StructureShape.new(name: 'SearchNearbyResponse')
    SearchNearbyResultItem = Shapes::StructureShape.new(name: 'SearchNearbyResultItem')
    SearchNearbyResultItemList = Shapes::ListShape.new(name: 'SearchNearbyResultItemList')
    SearchNearbyResultItemPlaceIdString = Shapes::StringShape.new(name: 'SearchNearbyResultItemPlaceIdString')
    SearchNearbyResultItemTitleString = Shapes::StringShape.new(name: 'SearchNearbyResultItemTitleString')
    SearchTextAdditionalFeature = Shapes::StringShape.new(name: 'SearchTextAdditionalFeature')
    SearchTextAdditionalFeatureList = Shapes::ListShape.new(name: 'SearchTextAdditionalFeatureList')
    SearchTextFilter = Shapes::StructureShape.new(name: 'SearchTextFilter')
    SearchTextIntendedUse = Shapes::StringShape.new(name: 'SearchTextIntendedUse')
    SearchTextRequest = Shapes::StructureShape.new(name: 'SearchTextRequest')
    SearchTextRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchTextRequestMaxResultsInteger')
    SearchTextRequestQueryIdString = Shapes::StringShape.new(name: 'SearchTextRequestQueryIdString')
    SearchTextRequestQueryTextString = Shapes::StringShape.new(name: 'SearchTextRequestQueryTextString')
    SearchTextResponse = Shapes::StructureShape.new(name: 'SearchTextResponse')
    SearchTextResultItem = Shapes::StructureShape.new(name: 'SearchTextResultItem')
    SearchTextResultItemList = Shapes::ListShape.new(name: 'SearchTextResultItemList')
    SearchTextResultItemPlaceIdString = Shapes::StringShape.new(name: 'SearchTextResultItemPlaceIdString')
    SearchTextResultItemTitleString = Shapes::StringShape.new(name: 'SearchTextResultItemTitleString')
    StreetComponents = Shapes::StructureShape.new(name: 'StreetComponents')
    StreetComponentsBaseNameString = Shapes::StringShape.new(name: 'StreetComponentsBaseNameString')
    StreetComponentsDirectionString = Shapes::StringShape.new(name: 'StreetComponentsDirectionString')
    StreetComponentsList = Shapes::ListShape.new(name: 'StreetComponentsList')
    StreetComponentsPrefixString = Shapes::StringShape.new(name: 'StreetComponentsPrefixString')
    StreetComponentsSuffixString = Shapes::StringShape.new(name: 'StreetComponentsSuffixString')
    StreetComponentsTypeString = Shapes::StringShape.new(name: 'StreetComponentsTypeString')
    String = Shapes::StringShape.new(name: 'String')
    SubRegion = Shapes::StructureShape.new(name: 'SubRegion')
    SubRegionCodeString = Shapes::StringShape.new(name: 'SubRegionCodeString')
    SubRegionHighlights = Shapes::StructureShape.new(name: 'SubRegionHighlights')
    SubRegionNameString = Shapes::StringShape.new(name: 'SubRegionNameString')
    SuggestAdditionalFeature = Shapes::StringShape.new(name: 'SuggestAdditionalFeature')
    SuggestAdditionalFeatureList = Shapes::ListShape.new(name: 'SuggestAdditionalFeatureList')
    SuggestAddressHighlights = Shapes::StructureShape.new(name: 'SuggestAddressHighlights')
    SuggestFilter = Shapes::StructureShape.new(name: 'SuggestFilter')
    SuggestHighlights = Shapes::StructureShape.new(name: 'SuggestHighlights')
    SuggestIntendedUse = Shapes::StringShape.new(name: 'SuggestIntendedUse')
    SuggestPlaceResult = Shapes::StructureShape.new(name: 'SuggestPlaceResult')
    SuggestPlaceResultPlaceIdString = Shapes::StringShape.new(name: 'SuggestPlaceResultPlaceIdString')
    SuggestQueryResult = Shapes::StructureShape.new(name: 'SuggestQueryResult')
    SuggestQueryResultQueryIdString = Shapes::StringShape.new(name: 'SuggestQueryResultQueryIdString')
    SuggestRequest = Shapes::StructureShape.new(name: 'SuggestRequest')
    SuggestRequestMaxQueryRefinementsInteger = Shapes::IntegerShape.new(name: 'SuggestRequestMaxQueryRefinementsInteger')
    SuggestRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SuggestRequestMaxResultsInteger')
    SuggestRequestQueryTextString = Shapes::StringShape.new(name: 'SuggestRequestQueryTextString')
    SuggestResponse = Shapes::StructureShape.new(name: 'SuggestResponse')
    SuggestResultItem = Shapes::StructureShape.new(name: 'SuggestResultItem')
    SuggestResultItemList = Shapes::ListShape.new(name: 'SuggestResultItemList')
    SuggestResultItemTitleString = Shapes::StringShape.new(name: 'SuggestResultItemTitleString')
    SuggestResultItemType = Shapes::StringShape.new(name: 'SuggestResultItemType')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeZone = Shapes::StructureShape.new(name: 'TimeZone')
    TimeZoneNameString = Shapes::StringShape.new(name: 'TimeZoneNameString')
    TimeZoneOffsetSecondsLong = Shapes::IntegerShape.new(name: 'TimeZoneOffsetSecondsLong')
    TimeZoneOffsetString = Shapes::StringShape.new(name: 'TimeZoneOffsetString')
    Token = Shapes::StringShape.new(name: 'Token')
    TypePlacement = Shapes::StringShape.new(name: 'TypePlacement')
    TypeSeparator = Shapes::StringShape.new(name: 'TypeSeparator')
    UspsZip = Shapes::StructureShape.new(name: 'UspsZip')
    UspsZipPlus4 = Shapes::StructureShape.new(name: 'UspsZipPlus4')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    ZipClassificationCode = Shapes::StringShape.new(name: 'ZipClassificationCode')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessPoint.add_member(:position, Shapes::ShapeRef.new(shape: Position, location_name: "Position"))
    AccessPoint.struct_class = Types::AccessPoint

    AccessPointList.member = Shapes::ShapeRef.new(shape: AccessPoint)

    AccessRestriction.add_member(:restricted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Restricted"))
    AccessRestriction.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, location_name: "Categories"))
    AccessRestriction.struct_class = Types::AccessRestriction

    AccessRestrictionList.member = Shapes::ShapeRef.new(shape: AccessRestriction)

    Address.add_member(:label, Shapes::ShapeRef.new(shape: AddressLabelString, location_name: "Label"))
    Address.add_member(:country, Shapes::ShapeRef.new(shape: Country, location_name: "Country"))
    Address.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    Address.add_member(:sub_region, Shapes::ShapeRef.new(shape: SubRegion, location_name: "SubRegion"))
    Address.add_member(:locality, Shapes::ShapeRef.new(shape: AddressLocalityString, location_name: "Locality"))
    Address.add_member(:district, Shapes::ShapeRef.new(shape: AddressDistrictString, location_name: "District"))
    Address.add_member(:sub_district, Shapes::ShapeRef.new(shape: AddressSubDistrictString, location_name: "SubDistrict"))
    Address.add_member(:postal_code, Shapes::ShapeRef.new(shape: AddressPostalCodeString, location_name: "PostalCode"))
    Address.add_member(:block, Shapes::ShapeRef.new(shape: AddressBlockString, location_name: "Block"))
    Address.add_member(:sub_block, Shapes::ShapeRef.new(shape: AddressSubBlockString, location_name: "SubBlock"))
    Address.add_member(:intersection, Shapes::ShapeRef.new(shape: IntersectionList, location_name: "Intersection"))
    Address.add_member(:street, Shapes::ShapeRef.new(shape: AddressStreetString, location_name: "Street"))
    Address.add_member(:street_components, Shapes::ShapeRef.new(shape: StreetComponentsList, location_name: "StreetComponents"))
    Address.add_member(:address_number, Shapes::ShapeRef.new(shape: AddressAddressNumberString, location_name: "AddressNumber"))
    Address.add_member(:building, Shapes::ShapeRef.new(shape: AddressBuildingString, location_name: "Building"))
    Address.struct_class = Types::Address

    AddressComponentMatchScores.add_member(:country, Shapes::ShapeRef.new(shape: MatchScore, location_name: "Country"))
    AddressComponentMatchScores.add_member(:region, Shapes::ShapeRef.new(shape: MatchScore, location_name: "Region"))
    AddressComponentMatchScores.add_member(:sub_region, Shapes::ShapeRef.new(shape: MatchScore, location_name: "SubRegion"))
    AddressComponentMatchScores.add_member(:locality, Shapes::ShapeRef.new(shape: MatchScore, location_name: "Locality"))
    AddressComponentMatchScores.add_member(:district, Shapes::ShapeRef.new(shape: MatchScore, location_name: "District"))
    AddressComponentMatchScores.add_member(:sub_district, Shapes::ShapeRef.new(shape: MatchScore, location_name: "SubDistrict"))
    AddressComponentMatchScores.add_member(:postal_code, Shapes::ShapeRef.new(shape: MatchScore, location_name: "PostalCode"))
    AddressComponentMatchScores.add_member(:block, Shapes::ShapeRef.new(shape: MatchScore, location_name: "Block"))
    AddressComponentMatchScores.add_member(:sub_block, Shapes::ShapeRef.new(shape: MatchScore, location_name: "SubBlock"))
    AddressComponentMatchScores.add_member(:intersection, Shapes::ShapeRef.new(shape: AddressComponentMatchScoresIntersectionList, location_name: "Intersection"))
    AddressComponentMatchScores.add_member(:address_number, Shapes::ShapeRef.new(shape: MatchScore, location_name: "AddressNumber"))
    AddressComponentMatchScores.add_member(:building, Shapes::ShapeRef.new(shape: MatchScore, location_name: "Building"))
    AddressComponentMatchScores.struct_class = Types::AddressComponentMatchScores

    AddressComponentMatchScoresIntersectionList.member = Shapes::ShapeRef.new(shape: MatchScore)

    AddressComponentPhonemes.add_member(:country, Shapes::ShapeRef.new(shape: PhonemeTranscriptionList, location_name: "Country"))
    AddressComponentPhonemes.add_member(:region, Shapes::ShapeRef.new(shape: PhonemeTranscriptionList, location_name: "Region"))
    AddressComponentPhonemes.add_member(:sub_region, Shapes::ShapeRef.new(shape: PhonemeTranscriptionList, location_name: "SubRegion"))
    AddressComponentPhonemes.add_member(:locality, Shapes::ShapeRef.new(shape: PhonemeTranscriptionList, location_name: "Locality"))
    AddressComponentPhonemes.add_member(:district, Shapes::ShapeRef.new(shape: PhonemeTranscriptionList, location_name: "District"))
    AddressComponentPhonemes.add_member(:sub_district, Shapes::ShapeRef.new(shape: PhonemeTranscriptionList, location_name: "SubDistrict"))
    AddressComponentPhonemes.add_member(:block, Shapes::ShapeRef.new(shape: PhonemeTranscriptionList, location_name: "Block"))
    AddressComponentPhonemes.add_member(:sub_block, Shapes::ShapeRef.new(shape: PhonemeTranscriptionList, location_name: "SubBlock"))
    AddressComponentPhonemes.add_member(:street, Shapes::ShapeRef.new(shape: PhonemeTranscriptionList, location_name: "Street"))
    AddressComponentPhonemes.struct_class = Types::AddressComponentPhonemes

    AutocompleteAdditionalFeatureList.member = Shapes::ShapeRef.new(shape: AutocompleteAdditionalFeature)

    AutocompleteAddressHighlights.add_member(:label, Shapes::ShapeRef.new(shape: HighlightList, location_name: "Label"))
    AutocompleteAddressHighlights.add_member(:country, Shapes::ShapeRef.new(shape: CountryHighlights, location_name: "Country"))
    AutocompleteAddressHighlights.add_member(:region, Shapes::ShapeRef.new(shape: RegionHighlights, location_name: "Region"))
    AutocompleteAddressHighlights.add_member(:sub_region, Shapes::ShapeRef.new(shape: SubRegionHighlights, location_name: "SubRegion"))
    AutocompleteAddressHighlights.add_member(:locality, Shapes::ShapeRef.new(shape: HighlightList, location_name: "Locality"))
    AutocompleteAddressHighlights.add_member(:district, Shapes::ShapeRef.new(shape: HighlightList, location_name: "District"))
    AutocompleteAddressHighlights.add_member(:sub_district, Shapes::ShapeRef.new(shape: HighlightList, location_name: "SubDistrict"))
    AutocompleteAddressHighlights.add_member(:street, Shapes::ShapeRef.new(shape: HighlightList, location_name: "Street"))
    AutocompleteAddressHighlights.add_member(:block, Shapes::ShapeRef.new(shape: HighlightList, location_name: "Block"))
    AutocompleteAddressHighlights.add_member(:sub_block, Shapes::ShapeRef.new(shape: HighlightList, location_name: "SubBlock"))
    AutocompleteAddressHighlights.add_member(:intersection, Shapes::ShapeRef.new(shape: IntersectionHighlightsList, location_name: "Intersection"))
    AutocompleteAddressHighlights.add_member(:postal_code, Shapes::ShapeRef.new(shape: HighlightList, location_name: "PostalCode"))
    AutocompleteAddressHighlights.add_member(:address_number, Shapes::ShapeRef.new(shape: HighlightList, location_name: "AddressNumber"))
    AutocompleteAddressHighlights.add_member(:building, Shapes::ShapeRef.new(shape: HighlightList, location_name: "Building"))
    AutocompleteAddressHighlights.struct_class = Types::AutocompleteAddressHighlights

    AutocompleteFilter.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    AutocompleteFilter.add_member(:circle, Shapes::ShapeRef.new(shape: FilterCircle, location_name: "Circle"))
    AutocompleteFilter.add_member(:include_countries, Shapes::ShapeRef.new(shape: CountryCodeList, location_name: "IncludeCountries"))
    AutocompleteFilter.add_member(:include_place_types, Shapes::ShapeRef.new(shape: AutocompleteFilterPlaceTypeList, location_name: "IncludePlaceTypes"))
    AutocompleteFilter.struct_class = Types::AutocompleteFilter

    AutocompleteFilterPlaceTypeList.member = Shapes::ShapeRef.new(shape: AutocompleteFilterPlaceType)

    AutocompleteHighlights.add_member(:title, Shapes::ShapeRef.new(shape: HighlightList, location_name: "Title"))
    AutocompleteHighlights.add_member(:address, Shapes::ShapeRef.new(shape: AutocompleteAddressHighlights, location_name: "Address"))
    AutocompleteHighlights.struct_class = Types::AutocompleteHighlights

    AutocompleteRequest.add_member(:query_text, Shapes::ShapeRef.new(shape: AutocompleteRequestQueryTextString, required: true, location_name: "QueryText"))
    AutocompleteRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: AutocompleteRequestMaxResultsInteger, location_name: "MaxResults"))
    AutocompleteRequest.add_member(:bias_position, Shapes::ShapeRef.new(shape: Position, location_name: "BiasPosition"))
    AutocompleteRequest.add_member(:filter, Shapes::ShapeRef.new(shape: AutocompleteFilter, location_name: "Filter"))
    AutocompleteRequest.add_member(:postal_code_mode, Shapes::ShapeRef.new(shape: PostalCodeMode, location_name: "PostalCodeMode"))
    AutocompleteRequest.add_member(:additional_features, Shapes::ShapeRef.new(shape: AutocompleteAdditionalFeatureList, location_name: "AdditionalFeatures"))
    AutocompleteRequest.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location_name: "Language"))
    AutocompleteRequest.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode, location_name: "PoliticalView"))
    AutocompleteRequest.add_member(:intended_use, Shapes::ShapeRef.new(shape: AutocompleteIntendedUse, location_name: "IntendedUse"))
    AutocompleteRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    AutocompleteRequest.struct_class = Types::AutocompleteRequest

    AutocompleteResponse.add_member(:pricing_bucket, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "x-amz-geo-pricing-bucket"))
    AutocompleteResponse.add_member(:result_items, Shapes::ShapeRef.new(shape: AutocompleteResultItemList, location_name: "ResultItems"))
    AutocompleteResponse.struct_class = Types::AutocompleteResponse

    AutocompleteResultItem.add_member(:place_id, Shapes::ShapeRef.new(shape: AutocompleteResultItemPlaceIdString, required: true, location_name: "PlaceId"))
    AutocompleteResultItem.add_member(:place_type, Shapes::ShapeRef.new(shape: PlaceType, required: true, location_name: "PlaceType"))
    AutocompleteResultItem.add_member(:title, Shapes::ShapeRef.new(shape: AutocompleteResultItemTitleString, required: true, location_name: "Title"))
    AutocompleteResultItem.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    AutocompleteResultItem.add_member(:distance, Shapes::ShapeRef.new(shape: DistanceMeters, location_name: "Distance"))
    AutocompleteResultItem.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location_name: "Language"))
    AutocompleteResultItem.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode3, location_name: "PoliticalView"))
    AutocompleteResultItem.add_member(:highlights, Shapes::ShapeRef.new(shape: AutocompleteHighlights, location_name: "Highlights"))
    AutocompleteResultItem.struct_class = Types::AutocompleteResultItem

    AutocompleteResultItemList.member = Shapes::ShapeRef.new(shape: AutocompleteResultItem)

    BoundingBox.member = Shapes::ShapeRef.new(shape: Double)

    BusinessChain.add_member(:name, Shapes::ShapeRef.new(shape: BusinessChainNameString, location_name: "Name"))
    BusinessChain.add_member(:id, Shapes::ShapeRef.new(shape: BusinessChainIdString, location_name: "Id"))
    BusinessChain.struct_class = Types::BusinessChain

    BusinessChainList.member = Shapes::ShapeRef.new(shape: BusinessChain)

    Category.add_member(:id, Shapes::ShapeRef.new(shape: CategoryIdString, required: true, location_name: "Id"))
    Category.add_member(:name, Shapes::ShapeRef.new(shape: CategoryNameString, required: true, location_name: "Name"))
    Category.add_member(:localized_name, Shapes::ShapeRef.new(shape: CategoryLocalizedNameString, location_name: "LocalizedName"))
    Category.add_member(:primary, Shapes::ShapeRef.new(shape: Boolean, location_name: "Primary"))
    Category.struct_class = Types::Category

    CategoryList.member = Shapes::ShapeRef.new(shape: Category)

    ComponentMatchScores.add_member(:title, Shapes::ShapeRef.new(shape: MatchScore, location_name: "Title"))
    ComponentMatchScores.add_member(:address, Shapes::ShapeRef.new(shape: AddressComponentMatchScores, location_name: "Address"))
    ComponentMatchScores.struct_class = Types::ComponentMatchScores

    ContactDetails.add_member(:label, Shapes::ShapeRef.new(shape: ContactDetailsLabelString, location_name: "Label"))
    ContactDetails.add_member(:value, Shapes::ShapeRef.new(shape: ContactDetailsValueString, location_name: "Value"))
    ContactDetails.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, location_name: "Categories"))
    ContactDetails.struct_class = Types::ContactDetails

    ContactDetailsList.member = Shapes::ShapeRef.new(shape: ContactDetails)

    Contacts.add_member(:phones, Shapes::ShapeRef.new(shape: ContactDetailsList, location_name: "Phones"))
    Contacts.add_member(:faxes, Shapes::ShapeRef.new(shape: ContactDetailsList, location_name: "Faxes"))
    Contacts.add_member(:websites, Shapes::ShapeRef.new(shape: ContactDetailsList, location_name: "Websites"))
    Contacts.add_member(:emails, Shapes::ShapeRef.new(shape: ContactDetailsList, location_name: "Emails"))
    Contacts.struct_class = Types::Contacts

    Country.add_member(:code_2, Shapes::ShapeRef.new(shape: CountryCode2, location_name: "Code2"))
    Country.add_member(:code_3, Shapes::ShapeRef.new(shape: CountryCode3, location_name: "Code3"))
    Country.add_member(:name, Shapes::ShapeRef.new(shape: CountryNameString, location_name: "Name"))
    Country.struct_class = Types::Country

    CountryCodeList.member = Shapes::ShapeRef.new(shape: CountryCode)

    CountryHighlights.add_member(:code, Shapes::ShapeRef.new(shape: HighlightList, location_name: "Code"))
    CountryHighlights.add_member(:name, Shapes::ShapeRef.new(shape: HighlightList, location_name: "Name"))
    CountryHighlights.struct_class = Types::CountryHighlights

    FilterBusinessChainList.member = Shapes::ShapeRef.new(shape: FilterBusinessChainListMemberString)

    FilterCategoryList.member = Shapes::ShapeRef.new(shape: FilterCategoryListMemberString)

    FilterCircle.add_member(:center, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "Center"))
    FilterCircle.add_member(:radius, Shapes::ShapeRef.new(shape: FilterCircleRadiusLong, required: true, location_name: "Radius", metadata: {"box"=>true}))
    FilterCircle.struct_class = Types::FilterCircle

    FilterFoodTypeList.member = Shapes::ShapeRef.new(shape: FilterFoodTypeListMemberString)

    FoodType.add_member(:localized_name, Shapes::ShapeRef.new(shape: FoodTypeLocalizedNameString, required: true, location_name: "LocalizedName"))
    FoodType.add_member(:id, Shapes::ShapeRef.new(shape: FoodTypeIdString, location_name: "Id"))
    FoodType.add_member(:primary, Shapes::ShapeRef.new(shape: Boolean, location_name: "Primary"))
    FoodType.struct_class = Types::FoodType

    FoodTypeList.member = Shapes::ShapeRef.new(shape: FoodType)

    GeocodeAdditionalFeatureList.member = Shapes::ShapeRef.new(shape: GeocodeAdditionalFeature)

    GeocodeFilter.add_member(:include_countries, Shapes::ShapeRef.new(shape: CountryCodeList, location_name: "IncludeCountries"))
    GeocodeFilter.add_member(:include_place_types, Shapes::ShapeRef.new(shape: GeocodeFilterPlaceTypeList, location_name: "IncludePlaceTypes"))
    GeocodeFilter.struct_class = Types::GeocodeFilter

    GeocodeFilterPlaceTypeList.member = Shapes::ShapeRef.new(shape: GeocodeFilterPlaceType)

    GeocodeQueryComponents.add_member(:country, Shapes::ShapeRef.new(shape: GeocodeQueryComponentsCountryString, location_name: "Country"))
    GeocodeQueryComponents.add_member(:region, Shapes::ShapeRef.new(shape: GeocodeQueryComponentsRegionString, location_name: "Region"))
    GeocodeQueryComponents.add_member(:sub_region, Shapes::ShapeRef.new(shape: GeocodeQueryComponentsSubRegionString, location_name: "SubRegion"))
    GeocodeQueryComponents.add_member(:locality, Shapes::ShapeRef.new(shape: GeocodeQueryComponentsLocalityString, location_name: "Locality"))
    GeocodeQueryComponents.add_member(:district, Shapes::ShapeRef.new(shape: GeocodeQueryComponentsDistrictString, location_name: "District"))
    GeocodeQueryComponents.add_member(:street, Shapes::ShapeRef.new(shape: GeocodeQueryComponentsStreetString, location_name: "Street"))
    GeocodeQueryComponents.add_member(:address_number, Shapes::ShapeRef.new(shape: GeocodeQueryComponentsAddressNumberString, location_name: "AddressNumber"))
    GeocodeQueryComponents.add_member(:postal_code, Shapes::ShapeRef.new(shape: GeocodeQueryComponentsPostalCodeString, location_name: "PostalCode"))
    GeocodeQueryComponents.struct_class = Types::GeocodeQueryComponents

    GeocodeRequest.add_member(:query_text, Shapes::ShapeRef.new(shape: GeocodeRequestQueryTextString, location_name: "QueryText"))
    GeocodeRequest.add_member(:query_components, Shapes::ShapeRef.new(shape: GeocodeQueryComponents, location_name: "QueryComponents"))
    GeocodeRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GeocodeRequestMaxResultsInteger, location_name: "MaxResults"))
    GeocodeRequest.add_member(:bias_position, Shapes::ShapeRef.new(shape: Position, location_name: "BiasPosition"))
    GeocodeRequest.add_member(:filter, Shapes::ShapeRef.new(shape: GeocodeFilter, location_name: "Filter"))
    GeocodeRequest.add_member(:additional_features, Shapes::ShapeRef.new(shape: GeocodeAdditionalFeatureList, location_name: "AdditionalFeatures"))
    GeocodeRequest.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location_name: "Language"))
    GeocodeRequest.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode, location_name: "PoliticalView"))
    GeocodeRequest.add_member(:intended_use, Shapes::ShapeRef.new(shape: GeocodeIntendedUse, location_name: "IntendedUse"))
    GeocodeRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    GeocodeRequest.struct_class = Types::GeocodeRequest

    GeocodeResponse.add_member(:pricing_bucket, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "x-amz-geo-pricing-bucket"))
    GeocodeResponse.add_member(:result_items, Shapes::ShapeRef.new(shape: GeocodeResultItemList, location_name: "ResultItems"))
    GeocodeResponse.struct_class = Types::GeocodeResponse

    GeocodeResultItem.add_member(:place_id, Shapes::ShapeRef.new(shape: GeocodeResultItemPlaceIdString, required: true, location_name: "PlaceId"))
    GeocodeResultItem.add_member(:place_type, Shapes::ShapeRef.new(shape: PlaceType, required: true, location_name: "PlaceType"))
    GeocodeResultItem.add_member(:title, Shapes::ShapeRef.new(shape: GeocodeResultItemTitleString, required: true, location_name: "Title"))
    GeocodeResultItem.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    GeocodeResultItem.add_member(:address_number_corrected, Shapes::ShapeRef.new(shape: Boolean, location_name: "AddressNumberCorrected"))
    GeocodeResultItem.add_member(:postal_code_details, Shapes::ShapeRef.new(shape: PostalCodeDetailsList, location_name: "PostalCodeDetails"))
    GeocodeResultItem.add_member(:position, Shapes::ShapeRef.new(shape: Position, location_name: "Position"))
    GeocodeResultItem.add_member(:distance, Shapes::ShapeRef.new(shape: DistanceMeters, location_name: "Distance"))
    GeocodeResultItem.add_member(:map_view, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "MapView"))
    GeocodeResultItem.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, location_name: "Categories"))
    GeocodeResultItem.add_member(:food_types, Shapes::ShapeRef.new(shape: FoodTypeList, location_name: "FoodTypes"))
    GeocodeResultItem.add_member(:access_points, Shapes::ShapeRef.new(shape: AccessPointList, location_name: "AccessPoints"))
    GeocodeResultItem.add_member(:time_zone, Shapes::ShapeRef.new(shape: TimeZone, location_name: "TimeZone"))
    GeocodeResultItem.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode3, location_name: "PoliticalView"))
    GeocodeResultItem.add_member(:match_scores, Shapes::ShapeRef.new(shape: MatchScoreDetails, location_name: "MatchScores"))
    GeocodeResultItem.struct_class = Types::GeocodeResultItem

    GeocodeResultItemList.member = Shapes::ShapeRef.new(shape: GeocodeResultItem)

    GetPlaceAdditionalFeatureList.member = Shapes::ShapeRef.new(shape: GetPlaceAdditionalFeature)

    GetPlaceRequest.add_member(:place_id, Shapes::ShapeRef.new(shape: GetPlaceRequestPlaceIdString, required: true, location: "uri", location_name: "PlaceId"))
    GetPlaceRequest.add_member(:additional_features, Shapes::ShapeRef.new(shape: GetPlaceAdditionalFeatureList, location: "querystring", location_name: "additional-features"))
    GetPlaceRequest.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location: "querystring", location_name: "language"))
    GetPlaceRequest.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode, location: "querystring", location_name: "political-view"))
    GetPlaceRequest.add_member(:intended_use, Shapes::ShapeRef.new(shape: GetPlaceIntendedUse, location: "querystring", location_name: "intended-use"))
    GetPlaceRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    GetPlaceRequest.struct_class = Types::GetPlaceRequest

    GetPlaceResponse.add_member(:place_id, Shapes::ShapeRef.new(shape: GetPlaceResponsePlaceIdString, required: true, location_name: "PlaceId"))
    GetPlaceResponse.add_member(:place_type, Shapes::ShapeRef.new(shape: PlaceType, required: true, location_name: "PlaceType"))
    GetPlaceResponse.add_member(:title, Shapes::ShapeRef.new(shape: GetPlaceResponseTitleString, required: true, location_name: "Title"))
    GetPlaceResponse.add_member(:pricing_bucket, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "x-amz-geo-pricing-bucket"))
    GetPlaceResponse.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    GetPlaceResponse.add_member(:address_number_corrected, Shapes::ShapeRef.new(shape: Boolean, location_name: "AddressNumberCorrected"))
    GetPlaceResponse.add_member(:postal_code_details, Shapes::ShapeRef.new(shape: PostalCodeDetailsList, location_name: "PostalCodeDetails"))
    GetPlaceResponse.add_member(:position, Shapes::ShapeRef.new(shape: Position, location_name: "Position"))
    GetPlaceResponse.add_member(:map_view, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "MapView"))
    GetPlaceResponse.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, location_name: "Categories"))
    GetPlaceResponse.add_member(:food_types, Shapes::ShapeRef.new(shape: FoodTypeList, location_name: "FoodTypes"))
    GetPlaceResponse.add_member(:business_chains, Shapes::ShapeRef.new(shape: BusinessChainList, location_name: "BusinessChains"))
    GetPlaceResponse.add_member(:contacts, Shapes::ShapeRef.new(shape: Contacts, location_name: "Contacts"))
    GetPlaceResponse.add_member(:opening_hours, Shapes::ShapeRef.new(shape: OpeningHoursList, location_name: "OpeningHours"))
    GetPlaceResponse.add_member(:access_points, Shapes::ShapeRef.new(shape: AccessPointList, location_name: "AccessPoints"))
    GetPlaceResponse.add_member(:access_restrictions, Shapes::ShapeRef.new(shape: AccessRestrictionList, location_name: "AccessRestrictions"))
    GetPlaceResponse.add_member(:time_zone, Shapes::ShapeRef.new(shape: TimeZone, location_name: "TimeZone"))
    GetPlaceResponse.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode3, location_name: "PoliticalView"))
    GetPlaceResponse.add_member(:phonemes, Shapes::ShapeRef.new(shape: PhonemeDetails, location_name: "Phonemes"))
    GetPlaceResponse.struct_class = Types::GetPlaceResponse

    Highlight.add_member(:start_index, Shapes::ShapeRef.new(shape: HighlightStartIndexInteger, location_name: "StartIndex"))
    Highlight.add_member(:end_index, Shapes::ShapeRef.new(shape: HighlightEndIndexInteger, location_name: "EndIndex"))
    Highlight.add_member(:value, Shapes::ShapeRef.new(shape: HighlightValueString, location_name: "Value"))
    Highlight.struct_class = Types::Highlight

    HighlightList.member = Shapes::ShapeRef.new(shape: Highlight)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    IntersectionHighlightsList.member = Shapes::ShapeRef.new(shape: HighlightList)

    IntersectionList.member = Shapes::ShapeRef.new(shape: IntersectionStreet)

    MatchScoreDetails.add_member(:overall, Shapes::ShapeRef.new(shape: MatchScore, location_name: "Overall"))
    MatchScoreDetails.add_member(:components, Shapes::ShapeRef.new(shape: ComponentMatchScores, location_name: "Components"))
    MatchScoreDetails.struct_class = Types::MatchScoreDetails

    OpeningHours.add_member(:display, Shapes::ShapeRef.new(shape: OpeningHoursDisplayList, location_name: "Display"))
    OpeningHours.add_member(:open_now, Shapes::ShapeRef.new(shape: Boolean, location_name: "OpenNow"))
    OpeningHours.add_member(:components, Shapes::ShapeRef.new(shape: OpeningHoursComponentsList, location_name: "Components"))
    OpeningHours.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, location_name: "Categories"))
    OpeningHours.struct_class = Types::OpeningHours

    OpeningHoursComponents.add_member(:open_time, Shapes::ShapeRef.new(shape: OpeningHoursComponentsOpenTimeString, location_name: "OpenTime"))
    OpeningHoursComponents.add_member(:open_duration, Shapes::ShapeRef.new(shape: OpeningHoursComponentsOpenDurationString, location_name: "OpenDuration"))
    OpeningHoursComponents.add_member(:recurrence, Shapes::ShapeRef.new(shape: OpeningHoursComponentsRecurrenceString, location_name: "Recurrence"))
    OpeningHoursComponents.struct_class = Types::OpeningHoursComponents

    OpeningHoursComponentsList.member = Shapes::ShapeRef.new(shape: OpeningHoursComponents)

    OpeningHoursDisplayList.member = Shapes::ShapeRef.new(shape: OpeningHoursDisplay)

    OpeningHoursList.member = Shapes::ShapeRef.new(shape: OpeningHours)

    PhonemeDetails.add_member(:title, Shapes::ShapeRef.new(shape: PhonemeTranscriptionList, location_name: "Title"))
    PhonemeDetails.add_member(:address, Shapes::ShapeRef.new(shape: AddressComponentPhonemes, location_name: "Address"))
    PhonemeDetails.struct_class = Types::PhonemeDetails

    PhonemeTranscription.add_member(:value, Shapes::ShapeRef.new(shape: PhonemeTranscriptionValueString, location_name: "Value"))
    PhonemeTranscription.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location_name: "Language"))
    PhonemeTranscription.add_member(:preferred, Shapes::ShapeRef.new(shape: Boolean, location_name: "Preferred"))
    PhonemeTranscription.struct_class = Types::PhonemeTranscription

    PhonemeTranscriptionList.member = Shapes::ShapeRef.new(shape: PhonemeTranscription)

    Position.member = Shapes::ShapeRef.new(shape: Double)

    PostalCodeDetails.add_member(:postal_code, Shapes::ShapeRef.new(shape: PostalCodeDetailsPostalCodeString, location_name: "PostalCode"))
    PostalCodeDetails.add_member(:postal_authority, Shapes::ShapeRef.new(shape: PostalAuthority, location_name: "PostalAuthority"))
    PostalCodeDetails.add_member(:postal_code_type, Shapes::ShapeRef.new(shape: PostalCodeType, location_name: "PostalCodeType"))
    PostalCodeDetails.add_member(:usps_zip, Shapes::ShapeRef.new(shape: UspsZip, location_name: "UspsZip"))
    PostalCodeDetails.add_member(:usps_zip_plus_4, Shapes::ShapeRef.new(shape: UspsZipPlus4, location_name: "UspsZipPlus4"))
    PostalCodeDetails.struct_class = Types::PostalCodeDetails

    PostalCodeDetailsList.member = Shapes::ShapeRef.new(shape: PostalCodeDetails)

    QueryRefinement.add_member(:refined_term, Shapes::ShapeRef.new(shape: QueryRefinementRefinedTermString, required: true, location_name: "RefinedTerm"))
    QueryRefinement.add_member(:original_term, Shapes::ShapeRef.new(shape: QueryRefinementOriginalTermString, required: true, location_name: "OriginalTerm"))
    QueryRefinement.add_member(:start_index, Shapes::ShapeRef.new(shape: QueryRefinementStartIndexInteger, required: true, location_name: "StartIndex"))
    QueryRefinement.add_member(:end_index, Shapes::ShapeRef.new(shape: QueryRefinementEndIndexInteger, required: true, location_name: "EndIndex"))
    QueryRefinement.struct_class = Types::QueryRefinement

    QueryRefinementList.member = Shapes::ShapeRef.new(shape: QueryRefinement)

    Region.add_member(:code, Shapes::ShapeRef.new(shape: RegionCodeString, location_name: "Code"))
    Region.add_member(:name, Shapes::ShapeRef.new(shape: RegionNameString, location_name: "Name"))
    Region.struct_class = Types::Region

    RegionHighlights.add_member(:code, Shapes::ShapeRef.new(shape: HighlightList, location_name: "Code"))
    RegionHighlights.add_member(:name, Shapes::ShapeRef.new(shape: HighlightList, location_name: "Name"))
    RegionHighlights.struct_class = Types::RegionHighlights

    ReverseGeocodeAdditionalFeatureList.member = Shapes::ShapeRef.new(shape: ReverseGeocodeAdditionalFeature)

    ReverseGeocodeFilter.add_member(:include_place_types, Shapes::ShapeRef.new(shape: ReverseGeocodeFilterPlaceTypeList, location_name: "IncludePlaceTypes"))
    ReverseGeocodeFilter.struct_class = Types::ReverseGeocodeFilter

    ReverseGeocodeFilterPlaceTypeList.member = Shapes::ShapeRef.new(shape: ReverseGeocodeFilterPlaceType)

    ReverseGeocodeRequest.add_member(:query_position, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "QueryPosition"))
    ReverseGeocodeRequest.add_member(:query_radius, Shapes::ShapeRef.new(shape: ReverseGeocodeRequestQueryRadiusLong, location_name: "QueryRadius", metadata: {"box"=>true}))
    ReverseGeocodeRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ReverseGeocodeRequestMaxResultsInteger, location_name: "MaxResults"))
    ReverseGeocodeRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ReverseGeocodeFilter, location_name: "Filter"))
    ReverseGeocodeRequest.add_member(:additional_features, Shapes::ShapeRef.new(shape: ReverseGeocodeAdditionalFeatureList, location_name: "AdditionalFeatures"))
    ReverseGeocodeRequest.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location_name: "Language"))
    ReverseGeocodeRequest.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode, location_name: "PoliticalView"))
    ReverseGeocodeRequest.add_member(:intended_use, Shapes::ShapeRef.new(shape: ReverseGeocodeIntendedUse, location_name: "IntendedUse"))
    ReverseGeocodeRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    ReverseGeocodeRequest.struct_class = Types::ReverseGeocodeRequest

    ReverseGeocodeResponse.add_member(:pricing_bucket, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "x-amz-geo-pricing-bucket"))
    ReverseGeocodeResponse.add_member(:result_items, Shapes::ShapeRef.new(shape: ReverseGeocodeResultItemList, location_name: "ResultItems"))
    ReverseGeocodeResponse.struct_class = Types::ReverseGeocodeResponse

    ReverseGeocodeResultItem.add_member(:place_id, Shapes::ShapeRef.new(shape: ReverseGeocodeResultItemPlaceIdString, required: true, location_name: "PlaceId"))
    ReverseGeocodeResultItem.add_member(:place_type, Shapes::ShapeRef.new(shape: PlaceType, required: true, location_name: "PlaceType"))
    ReverseGeocodeResultItem.add_member(:title, Shapes::ShapeRef.new(shape: ReverseGeocodeResultItemTitleString, required: true, location_name: "Title"))
    ReverseGeocodeResultItem.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    ReverseGeocodeResultItem.add_member(:address_number_corrected, Shapes::ShapeRef.new(shape: Boolean, location_name: "AddressNumberCorrected"))
    ReverseGeocodeResultItem.add_member(:postal_code_details, Shapes::ShapeRef.new(shape: PostalCodeDetailsList, location_name: "PostalCodeDetails"))
    ReverseGeocodeResultItem.add_member(:position, Shapes::ShapeRef.new(shape: Position, location_name: "Position"))
    ReverseGeocodeResultItem.add_member(:distance, Shapes::ShapeRef.new(shape: DistanceMeters, location_name: "Distance"))
    ReverseGeocodeResultItem.add_member(:map_view, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "MapView"))
    ReverseGeocodeResultItem.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, location_name: "Categories"))
    ReverseGeocodeResultItem.add_member(:food_types, Shapes::ShapeRef.new(shape: FoodTypeList, location_name: "FoodTypes"))
    ReverseGeocodeResultItem.add_member(:access_points, Shapes::ShapeRef.new(shape: AccessPointList, location_name: "AccessPoints"))
    ReverseGeocodeResultItem.add_member(:time_zone, Shapes::ShapeRef.new(shape: TimeZone, location_name: "TimeZone"))
    ReverseGeocodeResultItem.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode3, location_name: "PoliticalView"))
    ReverseGeocodeResultItem.struct_class = Types::ReverseGeocodeResultItem

    ReverseGeocodeResultItemList.member = Shapes::ShapeRef.new(shape: ReverseGeocodeResultItem)

    SearchNearbyAdditionalFeatureList.member = Shapes::ShapeRef.new(shape: SearchNearbyAdditionalFeature)

    SearchNearbyFilter.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    SearchNearbyFilter.add_member(:include_countries, Shapes::ShapeRef.new(shape: CountryCodeList, location_name: "IncludeCountries"))
    SearchNearbyFilter.add_member(:include_categories, Shapes::ShapeRef.new(shape: FilterCategoryList, location_name: "IncludeCategories"))
    SearchNearbyFilter.add_member(:exclude_categories, Shapes::ShapeRef.new(shape: FilterCategoryList, location_name: "ExcludeCategories"))
    SearchNearbyFilter.add_member(:include_business_chains, Shapes::ShapeRef.new(shape: FilterBusinessChainList, location_name: "IncludeBusinessChains"))
    SearchNearbyFilter.add_member(:exclude_business_chains, Shapes::ShapeRef.new(shape: FilterBusinessChainList, location_name: "ExcludeBusinessChains"))
    SearchNearbyFilter.add_member(:include_food_types, Shapes::ShapeRef.new(shape: FilterFoodTypeList, location_name: "IncludeFoodTypes"))
    SearchNearbyFilter.add_member(:exclude_food_types, Shapes::ShapeRef.new(shape: FilterFoodTypeList, location_name: "ExcludeFoodTypes"))
    SearchNearbyFilter.struct_class = Types::SearchNearbyFilter

    SearchNearbyRequest.add_member(:query_position, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "QueryPosition"))
    SearchNearbyRequest.add_member(:query_radius, Shapes::ShapeRef.new(shape: SearchNearbyRequestQueryRadiusLong, location_name: "QueryRadius", metadata: {"box"=>true}))
    SearchNearbyRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchNearbyRequestMaxResultsInteger, location_name: "MaxResults"))
    SearchNearbyRequest.add_member(:filter, Shapes::ShapeRef.new(shape: SearchNearbyFilter, location_name: "Filter"))
    SearchNearbyRequest.add_member(:additional_features, Shapes::ShapeRef.new(shape: SearchNearbyAdditionalFeatureList, location_name: "AdditionalFeatures"))
    SearchNearbyRequest.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location_name: "Language"))
    SearchNearbyRequest.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode, location_name: "PoliticalView"))
    SearchNearbyRequest.add_member(:intended_use, Shapes::ShapeRef.new(shape: SearchNearbyIntendedUse, location_name: "IntendedUse"))
    SearchNearbyRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    SearchNearbyRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    SearchNearbyRequest.struct_class = Types::SearchNearbyRequest

    SearchNearbyResponse.add_member(:pricing_bucket, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "x-amz-geo-pricing-bucket"))
    SearchNearbyResponse.add_member(:result_items, Shapes::ShapeRef.new(shape: SearchNearbyResultItemList, location_name: "ResultItems"))
    SearchNearbyResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    SearchNearbyResponse.struct_class = Types::SearchNearbyResponse

    SearchNearbyResultItem.add_member(:place_id, Shapes::ShapeRef.new(shape: SearchNearbyResultItemPlaceIdString, required: true, location_name: "PlaceId"))
    SearchNearbyResultItem.add_member(:place_type, Shapes::ShapeRef.new(shape: PlaceType, required: true, location_name: "PlaceType"))
    SearchNearbyResultItem.add_member(:title, Shapes::ShapeRef.new(shape: SearchNearbyResultItemTitleString, required: true, location_name: "Title"))
    SearchNearbyResultItem.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    SearchNearbyResultItem.add_member(:address_number_corrected, Shapes::ShapeRef.new(shape: Boolean, location_name: "AddressNumberCorrected"))
    SearchNearbyResultItem.add_member(:position, Shapes::ShapeRef.new(shape: Position, location_name: "Position"))
    SearchNearbyResultItem.add_member(:distance, Shapes::ShapeRef.new(shape: DistanceMeters, location_name: "Distance"))
    SearchNearbyResultItem.add_member(:map_view, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "MapView"))
    SearchNearbyResultItem.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, location_name: "Categories"))
    SearchNearbyResultItem.add_member(:food_types, Shapes::ShapeRef.new(shape: FoodTypeList, location_name: "FoodTypes"))
    SearchNearbyResultItem.add_member(:business_chains, Shapes::ShapeRef.new(shape: BusinessChainList, location_name: "BusinessChains"))
    SearchNearbyResultItem.add_member(:contacts, Shapes::ShapeRef.new(shape: Contacts, location_name: "Contacts"))
    SearchNearbyResultItem.add_member(:opening_hours, Shapes::ShapeRef.new(shape: OpeningHoursList, location_name: "OpeningHours"))
    SearchNearbyResultItem.add_member(:access_points, Shapes::ShapeRef.new(shape: AccessPointList, location_name: "AccessPoints"))
    SearchNearbyResultItem.add_member(:access_restrictions, Shapes::ShapeRef.new(shape: AccessRestrictionList, location_name: "AccessRestrictions"))
    SearchNearbyResultItem.add_member(:time_zone, Shapes::ShapeRef.new(shape: TimeZone, location_name: "TimeZone"))
    SearchNearbyResultItem.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode3, location_name: "PoliticalView"))
    SearchNearbyResultItem.add_member(:phonemes, Shapes::ShapeRef.new(shape: PhonemeDetails, location_name: "Phonemes"))
    SearchNearbyResultItem.struct_class = Types::SearchNearbyResultItem

    SearchNearbyResultItemList.member = Shapes::ShapeRef.new(shape: SearchNearbyResultItem)

    SearchTextAdditionalFeatureList.member = Shapes::ShapeRef.new(shape: SearchTextAdditionalFeature)

    SearchTextFilter.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    SearchTextFilter.add_member(:circle, Shapes::ShapeRef.new(shape: FilterCircle, location_name: "Circle"))
    SearchTextFilter.add_member(:include_countries, Shapes::ShapeRef.new(shape: CountryCodeList, location_name: "IncludeCountries"))
    SearchTextFilter.struct_class = Types::SearchTextFilter

    SearchTextRequest.add_member(:query_text, Shapes::ShapeRef.new(shape: SearchTextRequestQueryTextString, location_name: "QueryText"))
    SearchTextRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: SearchTextRequestQueryIdString, location_name: "QueryId"))
    SearchTextRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchTextRequestMaxResultsInteger, location_name: "MaxResults"))
    SearchTextRequest.add_member(:bias_position, Shapes::ShapeRef.new(shape: Position, location_name: "BiasPosition"))
    SearchTextRequest.add_member(:filter, Shapes::ShapeRef.new(shape: SearchTextFilter, location_name: "Filter"))
    SearchTextRequest.add_member(:additional_features, Shapes::ShapeRef.new(shape: SearchTextAdditionalFeatureList, location_name: "AdditionalFeatures"))
    SearchTextRequest.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location_name: "Language"))
    SearchTextRequest.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode, location_name: "PoliticalView"))
    SearchTextRequest.add_member(:intended_use, Shapes::ShapeRef.new(shape: SearchTextIntendedUse, location_name: "IntendedUse"))
    SearchTextRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    SearchTextRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    SearchTextRequest.struct_class = Types::SearchTextRequest

    SearchTextResponse.add_member(:pricing_bucket, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "x-amz-geo-pricing-bucket"))
    SearchTextResponse.add_member(:result_items, Shapes::ShapeRef.new(shape: SearchTextResultItemList, location_name: "ResultItems"))
    SearchTextResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    SearchTextResponse.struct_class = Types::SearchTextResponse

    SearchTextResultItem.add_member(:place_id, Shapes::ShapeRef.new(shape: SearchTextResultItemPlaceIdString, required: true, location_name: "PlaceId"))
    SearchTextResultItem.add_member(:place_type, Shapes::ShapeRef.new(shape: PlaceType, required: true, location_name: "PlaceType"))
    SearchTextResultItem.add_member(:title, Shapes::ShapeRef.new(shape: SearchTextResultItemTitleString, required: true, location_name: "Title"))
    SearchTextResultItem.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    SearchTextResultItem.add_member(:address_number_corrected, Shapes::ShapeRef.new(shape: Boolean, location_name: "AddressNumberCorrected"))
    SearchTextResultItem.add_member(:position, Shapes::ShapeRef.new(shape: Position, location_name: "Position"))
    SearchTextResultItem.add_member(:distance, Shapes::ShapeRef.new(shape: DistanceMeters, location_name: "Distance"))
    SearchTextResultItem.add_member(:map_view, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "MapView"))
    SearchTextResultItem.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, location_name: "Categories"))
    SearchTextResultItem.add_member(:food_types, Shapes::ShapeRef.new(shape: FoodTypeList, location_name: "FoodTypes"))
    SearchTextResultItem.add_member(:business_chains, Shapes::ShapeRef.new(shape: BusinessChainList, location_name: "BusinessChains"))
    SearchTextResultItem.add_member(:contacts, Shapes::ShapeRef.new(shape: Contacts, location_name: "Contacts"))
    SearchTextResultItem.add_member(:opening_hours, Shapes::ShapeRef.new(shape: OpeningHoursList, location_name: "OpeningHours"))
    SearchTextResultItem.add_member(:access_points, Shapes::ShapeRef.new(shape: AccessPointList, location_name: "AccessPoints"))
    SearchTextResultItem.add_member(:access_restrictions, Shapes::ShapeRef.new(shape: AccessRestrictionList, location_name: "AccessRestrictions"))
    SearchTextResultItem.add_member(:time_zone, Shapes::ShapeRef.new(shape: TimeZone, location_name: "TimeZone"))
    SearchTextResultItem.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode3, location_name: "PoliticalView"))
    SearchTextResultItem.add_member(:phonemes, Shapes::ShapeRef.new(shape: PhonemeDetails, location_name: "Phonemes"))
    SearchTextResultItem.struct_class = Types::SearchTextResultItem

    SearchTextResultItemList.member = Shapes::ShapeRef.new(shape: SearchTextResultItem)

    StreetComponents.add_member(:base_name, Shapes::ShapeRef.new(shape: StreetComponentsBaseNameString, location_name: "BaseName"))
    StreetComponents.add_member(:type, Shapes::ShapeRef.new(shape: StreetComponentsTypeString, location_name: "Type"))
    StreetComponents.add_member(:type_placement, Shapes::ShapeRef.new(shape: TypePlacement, location_name: "TypePlacement"))
    StreetComponents.add_member(:type_separator, Shapes::ShapeRef.new(shape: TypeSeparator, location_name: "TypeSeparator"))
    StreetComponents.add_member(:prefix, Shapes::ShapeRef.new(shape: StreetComponentsPrefixString, location_name: "Prefix"))
    StreetComponents.add_member(:suffix, Shapes::ShapeRef.new(shape: StreetComponentsSuffixString, location_name: "Suffix"))
    StreetComponents.add_member(:direction, Shapes::ShapeRef.new(shape: StreetComponentsDirectionString, location_name: "Direction"))
    StreetComponents.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location_name: "Language"))
    StreetComponents.struct_class = Types::StreetComponents

    StreetComponentsList.member = Shapes::ShapeRef.new(shape: StreetComponents)

    SubRegion.add_member(:code, Shapes::ShapeRef.new(shape: SubRegionCodeString, location_name: "Code"))
    SubRegion.add_member(:name, Shapes::ShapeRef.new(shape: SubRegionNameString, location_name: "Name"))
    SubRegion.struct_class = Types::SubRegion

    SubRegionHighlights.add_member(:code, Shapes::ShapeRef.new(shape: HighlightList, location_name: "Code"))
    SubRegionHighlights.add_member(:name, Shapes::ShapeRef.new(shape: HighlightList, location_name: "Name"))
    SubRegionHighlights.struct_class = Types::SubRegionHighlights

    SuggestAdditionalFeatureList.member = Shapes::ShapeRef.new(shape: SuggestAdditionalFeature)

    SuggestAddressHighlights.add_member(:label, Shapes::ShapeRef.new(shape: HighlightList, location_name: "Label"))
    SuggestAddressHighlights.struct_class = Types::SuggestAddressHighlights

    SuggestFilter.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    SuggestFilter.add_member(:circle, Shapes::ShapeRef.new(shape: FilterCircle, location_name: "Circle"))
    SuggestFilter.add_member(:include_countries, Shapes::ShapeRef.new(shape: CountryCodeList, location_name: "IncludeCountries"))
    SuggestFilter.struct_class = Types::SuggestFilter

    SuggestHighlights.add_member(:title, Shapes::ShapeRef.new(shape: HighlightList, location_name: "Title"))
    SuggestHighlights.add_member(:address, Shapes::ShapeRef.new(shape: SuggestAddressHighlights, location_name: "Address"))
    SuggestHighlights.struct_class = Types::SuggestHighlights

    SuggestPlaceResult.add_member(:place_id, Shapes::ShapeRef.new(shape: SuggestPlaceResultPlaceIdString, location_name: "PlaceId"))
    SuggestPlaceResult.add_member(:place_type, Shapes::ShapeRef.new(shape: PlaceType, location_name: "PlaceType"))
    SuggestPlaceResult.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    SuggestPlaceResult.add_member(:position, Shapes::ShapeRef.new(shape: Position, location_name: "Position"))
    SuggestPlaceResult.add_member(:distance, Shapes::ShapeRef.new(shape: DistanceMeters, location_name: "Distance"))
    SuggestPlaceResult.add_member(:map_view, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "MapView"))
    SuggestPlaceResult.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, location_name: "Categories"))
    SuggestPlaceResult.add_member(:food_types, Shapes::ShapeRef.new(shape: FoodTypeList, location_name: "FoodTypes"))
    SuggestPlaceResult.add_member(:business_chains, Shapes::ShapeRef.new(shape: BusinessChainList, location_name: "BusinessChains"))
    SuggestPlaceResult.add_member(:access_points, Shapes::ShapeRef.new(shape: AccessPointList, location_name: "AccessPoints"))
    SuggestPlaceResult.add_member(:access_restrictions, Shapes::ShapeRef.new(shape: AccessRestrictionList, location_name: "AccessRestrictions"))
    SuggestPlaceResult.add_member(:time_zone, Shapes::ShapeRef.new(shape: TimeZone, location_name: "TimeZone"))
    SuggestPlaceResult.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode3, location_name: "PoliticalView"))
    SuggestPlaceResult.add_member(:phonemes, Shapes::ShapeRef.new(shape: PhonemeDetails, location_name: "Phonemes"))
    SuggestPlaceResult.struct_class = Types::SuggestPlaceResult

    SuggestQueryResult.add_member(:query_id, Shapes::ShapeRef.new(shape: SuggestQueryResultQueryIdString, location_name: "QueryId"))
    SuggestQueryResult.add_member(:query_type, Shapes::ShapeRef.new(shape: QueryType, location_name: "QueryType"))
    SuggestQueryResult.struct_class = Types::SuggestQueryResult

    SuggestRequest.add_member(:query_text, Shapes::ShapeRef.new(shape: SuggestRequestQueryTextString, required: true, location_name: "QueryText"))
    SuggestRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SuggestRequestMaxResultsInteger, location_name: "MaxResults"))
    SuggestRequest.add_member(:max_query_refinements, Shapes::ShapeRef.new(shape: SuggestRequestMaxQueryRefinementsInteger, location_name: "MaxQueryRefinements"))
    SuggestRequest.add_member(:bias_position, Shapes::ShapeRef.new(shape: Position, location_name: "BiasPosition"))
    SuggestRequest.add_member(:filter, Shapes::ShapeRef.new(shape: SuggestFilter, location_name: "Filter"))
    SuggestRequest.add_member(:additional_features, Shapes::ShapeRef.new(shape: SuggestAdditionalFeatureList, location_name: "AdditionalFeatures"))
    SuggestRequest.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location_name: "Language"))
    SuggestRequest.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode, location_name: "PoliticalView"))
    SuggestRequest.add_member(:intended_use, Shapes::ShapeRef.new(shape: SuggestIntendedUse, location_name: "IntendedUse"))
    SuggestRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    SuggestRequest.struct_class = Types::SuggestRequest

    SuggestResponse.add_member(:pricing_bucket, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "x-amz-geo-pricing-bucket"))
    SuggestResponse.add_member(:result_items, Shapes::ShapeRef.new(shape: SuggestResultItemList, location_name: "ResultItems"))
    SuggestResponse.add_member(:query_refinements, Shapes::ShapeRef.new(shape: QueryRefinementList, location_name: "QueryRefinements"))
    SuggestResponse.struct_class = Types::SuggestResponse

    SuggestResultItem.add_member(:title, Shapes::ShapeRef.new(shape: SuggestResultItemTitleString, required: true, location_name: "Title"))
    SuggestResultItem.add_member(:suggest_result_item_type, Shapes::ShapeRef.new(shape: SuggestResultItemType, required: true, location_name: "SuggestResultItemType"))
    SuggestResultItem.add_member(:place, Shapes::ShapeRef.new(shape: SuggestPlaceResult, location_name: "Place"))
    SuggestResultItem.add_member(:query, Shapes::ShapeRef.new(shape: SuggestQueryResult, location_name: "Query"))
    SuggestResultItem.add_member(:highlights, Shapes::ShapeRef.new(shape: SuggestHighlights, location_name: "Highlights"))
    SuggestResultItem.struct_class = Types::SuggestResultItem

    SuggestResultItemList.member = Shapes::ShapeRef.new(shape: SuggestResultItem)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeZone.add_member(:name, Shapes::ShapeRef.new(shape: TimeZoneNameString, required: true, location_name: "Name"))
    TimeZone.add_member(:offset, Shapes::ShapeRef.new(shape: TimeZoneOffsetString, location_name: "Offset"))
    TimeZone.add_member(:offset_seconds, Shapes::ShapeRef.new(shape: TimeZoneOffsetSecondsLong, location_name: "OffsetSeconds"))
    TimeZone.struct_class = Types::TimeZone

    UspsZip.add_member(:zip_classification_code, Shapes::ShapeRef.new(shape: ZipClassificationCode, location_name: "ZipClassificationCode"))
    UspsZip.struct_class = Types::UspsZip

    UspsZipPlus4.add_member(:record_type_code, Shapes::ShapeRef.new(shape: RecordTypeCode, location_name: "RecordTypeCode"))
    UspsZipPlus4.struct_class = Types::UspsZipPlus4

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, required: true, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-11-19"

      api.metadata = {
        "apiVersion" => "2020-11-19",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "geo-places",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon Location Service Places V2",
        "serviceId" => "Geo Places",
        "signatureVersion" => "v4",
        "signingName" => "geo-places",
        "uid" => "geo-places-2020-11-19",
      }

      api.add_operation(:autocomplete, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Autocomplete"
        o.http_method = "POST"
        o.http_request_uri = "/autocomplete"
        o.input = Shapes::ShapeRef.new(shape: AutocompleteRequest)
        o.output = Shapes::ShapeRef.new(shape: AutocompleteResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:geocode, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Geocode"
        o.http_method = "POST"
        o.http_request_uri = "/geocode"
        o.input = Shapes::ShapeRef.new(shape: GeocodeRequest)
        o.output = Shapes::ShapeRef.new(shape: GeocodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_place, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPlace"
        o.http_method = "GET"
        o.http_request_uri = "/place/{PlaceId}"
        o.input = Shapes::ShapeRef.new(shape: GetPlaceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPlaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:reverse_geocode, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReverseGeocode"
        o.http_method = "POST"
        o.http_request_uri = "/reverse-geocode"
        o.input = Shapes::ShapeRef.new(shape: ReverseGeocodeRequest)
        o.output = Shapes::ShapeRef.new(shape: ReverseGeocodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:search_nearby, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchNearby"
        o.http_method = "POST"
        o.http_request_uri = "/search-nearby"
        o.input = Shapes::ShapeRef.new(shape: SearchNearbyRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchNearbyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:search_text, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchText"
        o.http_method = "POST"
        o.http_request_uri = "/search-text"
        o.input = Shapes::ShapeRef.new(shape: SearchTextRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchTextResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:suggest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Suggest"
        o.http_method = "POST"
        o.http_request_uri = "/suggest"
        o.input = Shapes::ShapeRef.new(shape: SuggestRequest)
        o.output = Shapes::ShapeRef.new(shape: SuggestResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end

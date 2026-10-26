# frozen_string_literal: true

# This is generated code!

module Aws::GeoPlaces
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Position of the access point represented by longitude and latitude for a vehicle.</p>
    # @!attribute position
    #   <p>The position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute type
    #   <p>The type of access point, indicating its intended use. Only applies to results of type place.</p>
    #   @return [String]
    # @!attribute primary
    #   <p>Set to <code>true</code> for the primary access position when the place has more than one access point.</p>
    #   @return [Boolean]
    # @!attribute label
    #   <p>A short textual description of the access point, such as <code>"North Entrance"</code>.</p>
    #   @return [String]
    class AccessPoint < Struct.new(
      nil,
      :position,
      :type,
      :primary,
      :label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates if the access location is restricted. Index correlates to that of an access point and indicates if access through this point has some form of restriction. </p>
    # @!attribute restricted
    #   <p>The restriction.</p>
    #   @return [Boolean]
    # @!attribute categories
    #   <p>Categories of results that results must belong too.</p>
    #   @return [Array<Types::Category>]
    class AccessRestriction < Struct.new(
      nil,
      :restricted,
      :categories,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The place address.</p>
    # @!attribute label
    #   <p>Assembled address value built out of the address components, according to the regional postal rules. This is the correctly formatted address.</p>
    #   @return [String]
    # @!attribute country
    #   <p>The country component of the address.</p>
    #   @return [Types::Country]
    # @!attribute region
    #   <p>The region or state results should be present in. </p> <p>Example: <code>North Rhine-Westphalia</code>.</p>
    #   @return [Types::Region]
    # @!attribute sub_region
    #   <p>The sub-region or county for which results should be present in. </p>
    #   @return [Types::SubRegion]
    # @!attribute locality
    #   <p>The city or locality of the address.</p> <p>Example: <code>Vancouver</code>.</p>
    #   @return [String]
    # @!attribute district
    #   <p>The district or division of a locality associated with this address.</p>
    #   @return [String]
    # @!attribute sub_district
    #   <p>A subdivision of a district. </p> <p>Example: <code>Minden-Lübbecke</code>.</p>
    #   @return [String]
    # @!attribute postal_code
    #   <p>An alphanumeric string included in a postal address to facilitate mail sorting, such as post code, postcode, or ZIP code, for which the result should possess. </p>
    #   @return [String]
    # @!attribute block
    #   <p> Name of the block. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <p>Example: <code>Sunny Mansion 203 block: 2 Chome</code> </p>
    #   @return [String]
    # @!attribute sub_block
    #   <p> Name of sub-block. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <p>Example: <code>Sunny Mansion 203 sub-block: 4</code> </p>
    #   @return [String]
    # @!attribute intersection
    #   <p> Name of the streets in the intersection. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <p>Example: <code>["Friedrichstraße","Unter den Linden"]</code> </p>
    #   @return [Array<String>]
    # @!attribute street
    #   <p>The name of the street results should be present in.</p>
    #   @return [String]
    # @!attribute street_components
    #   <p> Components of the street. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <p>Example: Yonge from "Yonge street".</p>
    #   @return [Array<Types::StreetComponents>]
    # @!attribute address_number
    #   <p>The number that identifies an address within a street.</p>
    #   @return [String]
    # @!attribute building
    #   <p> The name of the building at the address. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [String]
    # @!attribute secondary_address_components
    #   <p> Components that correspond to secondary identifiers on an Address. Secondary address components include information such as Suite or Unit Number, Building, or Floor. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <note> <p>Coverage for <code>Address.SecondaryAddressComponents</code> is available in the following countries:</p> <p>AUS, CAN, NZL, USA, PRI</p> </note>
    #   @return [Array<Types::SecondaryAddressComponent>]
    class Address < Struct.new(
      nil,
      :label,
      :country,
      :region,
      :sub_region,
      :locality,
      :district,
      :sub_district,
      :postal_code,
      :block,
      :sub_block,
      :intersection,
      :street,
      :street_components,
      :address_number,
      :building,
      :secondary_address_components,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates how well the entire input matches the returned. It is equal to 1 if all input tokens are recognized and matched.</p>
    # @!attribute country
    #   <p>The alpha-2 or alpha-3 character code for the country that the results will be present in.</p>
    #   @return [Float]
    # @!attribute region
    #   <p>The region or state results should be to be present in. </p> <p>Example: <code>North Rhine-Westphalia</code>.</p>
    #   @return [Float]
    # @!attribute sub_region
    #   <p>The sub-region or county for which results should be present in. </p>
    #   @return [Float]
    # @!attribute locality
    #   <p>The city or locality results should be present in. </p> <p>Example: <code>Vancouver</code>.</p>
    #   @return [Float]
    # @!attribute district
    #   <p>The district or division of a city the results should be present in.</p>
    #   @return [Float]
    # @!attribute sub_district
    #   <p>A subdivision of a district. </p> <p>Example: <code>Minden-Lübbecke</code> </p>
    #   @return [Float]
    # @!attribute postal_code
    #   <p>An alphanumeric string included in a postal address to facilitate mail sorting, such as post code, postcode, or ZIP code, for which the result should possess. </p>
    #   @return [Float]
    # @!attribute block
    #   <p>Name of the block. </p> <p>Example: <code>Sunny Mansion 203 block: 2 Chome</code> </p>
    #   @return [Float]
    # @!attribute sub_block
    #   <p>Name of sub-block. </p> <p>Example: <code>Sunny Mansion 203 sub-block: 4</code> </p>
    #   @return [Float]
    # @!attribute intersection
    #   <p>Name of the streets in the intersection. </p> <p>Example: <code>["Friedrichstraße","Unter den Linden"]</code> </p>
    #   @return [Array<Float>]
    # @!attribute address_number
    #   <p>The house number or address results should have. </p>
    #   @return [Float]
    # @!attribute building
    #   <p>The name of the building at the address.</p>
    #   @return [Float]
    # @!attribute secondary_address_components
    #   <p>Match scores for the secondary address components in the result.</p> <note> <p>Coverage for this functionality is available in the following countries: AUS, AUT, BRA, CAN, ESP, FRA, GBR, IDN, IND, NZL, TUR, TWN, USA.</p> </note>
    #   @return [Array<Types::SecondaryAddressComponentMatchScore>]
    class AddressComponentMatchScores < Struct.new(
      nil,
      :country,
      :region,
      :sub_region,
      :locality,
      :district,
      :sub_district,
      :postal_code,
      :block,
      :sub_block,
      :intersection,
      :address_number,
      :building,
      :secondary_address_components,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:country] = 0 unless options.key?(:country)
        options[:region] = 0 unless options.key?(:region)
        options[:sub_region] = 0 unless options.key?(:sub_region)
        options[:locality] = 0 unless options.key?(:locality)
        options[:district] = 0 unless options.key?(:district)
        options[:sub_district] = 0 unless options.key?(:sub_district)
        options[:postal_code] = 0 unless options.key?(:postal_code)
        options[:block] = 0 unless options.key?(:block)
        options[:sub_block] = 0 unless options.key?(:sub_block)
        options[:address_number] = 0 unless options.key?(:address_number)
        options[:building] = 0 unless options.key?(:building)
        super
      end
    end

    # <p>How to pronounce the various components of the address or place.</p>
    # @!attribute country
    #   <p>The alpha-2 or alpha-3 character code for the country that the results will be present in.</p>
    #   @return [Array<Types::PhonemeTranscription>]
    # @!attribute region
    #   <p>How to pronounce the region or state results should be to be present in.</p>
    #   @return [Array<Types::PhonemeTranscription>]
    # @!attribute sub_region
    #   <p>How to pronounce the sub-region or county for which results should be present in. </p>
    #   @return [Array<Types::PhonemeTranscription>]
    # @!attribute locality
    #   <p>How to pronounce the city or locality results should be present in. </p> <p>Example: <code>Vancouver</code>.</p>
    #   @return [Array<Types::PhonemeTranscription>]
    # @!attribute district
    #   <p>How to pronounce the district or division of a city results should be present in.</p>
    #   @return [Array<Types::PhonemeTranscription>]
    # @!attribute sub_district
    #   <p>How to pronounce the sub-district or division of a city results should be present in.</p>
    #   @return [Array<Types::PhonemeTranscription>]
    # @!attribute block
    #   <p>How to pronounce the name of the block.</p>
    #   @return [Array<Types::PhonemeTranscription>]
    # @!attribute sub_block
    #   <p>How to pronounce the name of the sub-block.</p>
    #   @return [Array<Types::PhonemeTranscription>]
    # @!attribute street
    #   <p>How to pronounce the name of the street results should be present in.</p>
    #   @return [Array<Types::PhonemeTranscription>]
    class AddressComponentPhonemes < Struct.new(
      nil,
      :country,
      :region,
      :sub_region,
      :locality,
      :district,
      :sub_district,
      :block,
      :sub_block,
      :street,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The official administrative names for an address component, returned when <code>AddressNamesMode</code> is set to <code>Administrative</code>.</p>
    # @!attribute names
    #   <p>A list of translation names for the administrative address component, including name variants and translations in available languages.</p>
    #   @return [Array<Types::TranslationName>]
    # @!attribute preference
    #   <p>Indicates the preference level of the administrative name. Valid values are <code>Primary</code> and <code>Alternative</code>.</p>
    #   @return [String]
    class AdminNames < Struct.new(
      nil,
      :names,
      :preference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes how the parts of the response element matched the input query by returning the sections of the response which matched to input query terms.</p>
    # @!attribute label
    #   <p>Indicates the starting and ending indexes for result items where they are identified to match the input query. This should be used to provide emphasis to output display to make selecting the correct result from a list easier for end users.</p>
    #   @return [Array<Types::Highlight>]
    # @!attribute country
    #   <p>The alpha-2 or alpha-3 character code for the country that the results will be present in.</p>
    #   @return [Types::CountryHighlights]
    # @!attribute region
    #   <p>The region or state results should be to be present in. </p> <p>Example: <code>North Rhine-Westphalia</code>.</p>
    #   @return [Types::RegionHighlights]
    # @!attribute sub_region
    #   <p>The sub-region or county for which results should be present in. </p>
    #   @return [Types::SubRegionHighlights]
    # @!attribute locality
    #   <p>The city or locality results should be present in. </p> <p>Example: <code>Vancouver</code>.</p>
    #   @return [Array<Types::Highlight>]
    # @!attribute district
    #   <p>The district or division of a city the results should be present in.</p>
    #   @return [Array<Types::Highlight>]
    # @!attribute sub_district
    #   <p>Indicates the starting and ending index of the title in the text query that match the found title. </p>
    #   @return [Array<Types::Highlight>]
    # @!attribute street
    #   <p>The name of the street results should be present in.</p>
    #   @return [Array<Types::Highlight>]
    # @!attribute block
    #   <p>Name of the block. </p> <p>Example: <code>Sunny Mansion 203 block: 2 Chome</code> </p>
    #   @return [Array<Types::Highlight>]
    # @!attribute sub_block
    #   <p>Name of sub-block. </p> <p>Example: <code>Sunny Mansion 203 sub-block: 4</code> </p>
    #   @return [Array<Types::Highlight>]
    # @!attribute intersection
    #   <p>Name of the streets in the intersection. For example: e.g. ["Friedrichstraße","Unter den Linden"]</p>
    #   @return [Array<Array<Types::Highlight>>]
    # @!attribute postal_code
    #   <p>An alphanumeric string included in a postal address to facilitate mail sorting, such as post code, postcode, or ZIP code for which the result should possess. </p>
    #   @return [Array<Types::Highlight>]
    # @!attribute address_number
    #   <p>The house number or address results should have. </p>
    #   @return [Array<Types::Highlight>]
    # @!attribute building
    #   <p>The name of the building at the address.</p>
    #   @return [Array<Types::Highlight>]
    class AutocompleteAddressHighlights < Struct.new(
      nil,
      :label,
      :country,
      :region,
      :sub_region,
      :locality,
      :district,
      :sub_district,
      :street,
      :block,
      :sub_block,
      :intersection,
      :postal_code,
      :address_number,
      :building,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Autocomplete structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    # @!attribute bounding_box
    #   <p>The bounding box enclosing the geometric shape (area or line) that an individual result covers.</p> <p>The bounding box formed is defined as a set 4 coordinates: <code>[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]</code> </p>
    #   @return [Array<Float>]
    # @!attribute circle
    #   <p>The <code>Circle</code> that all results must be in. </p>
    #   @return [Types::FilterCircle]
    # @!attribute include_countries
    #   <p> A list of countries that all results must be in. Countries are represented by either their alpha-2 or alpha-3 character codes.</p>
    #   @return [Array<String>]
    # @!attribute include_place_types
    #   <p>The included place types.</p>
    #   @return [Array<String>]
    class AutocompleteFilter < Struct.new(
      nil,
      :bounding_box,
      :circle,
      :include_countries,
      :include_place_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes how the parts of the response element matched the input query by returning the sections of the response which matched to input query terms.</p>
    # @!attribute title
    #   <p>Indicates where the title field in the result matches the input query.</p>
    #   @return [Array<Types::Highlight>]
    # @!attribute address
    #   <p>Describes how part of the result address match the input query.</p>
    #   @return [Types::AutocompleteAddressHighlights]
    class AutocompleteHighlights < Struct.new(
      nil,
      :title,
      :address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_text
    #   <p>The free-form text query to match addresses against. This is usually a partially typed address from an end user in an address box or form.</p> <note> <p>The fields <code>QueryText</code>, and <code>QueryID</code> are mutually exclusive.</p> </note>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional limit for the number of results returned in a single call.</p> <p>Default value: 5</p>
    #   @return [Integer]
    # @!attribute bias_position
    #   <p>The position in longitude and latitude that the results should be close to. Typically, place results returned are ranked higher the closer they are to this position. Stored in <code>[lng, lat]</code> and in the WGS 84 format.</p> <note> <p>The fields <code>BiasPosition</code>, <code>FilterBoundingBox</code>, and <code>FilterCircle</code> are mutually exclusive.</p> </note>
    #   @return [Array<Float>]
    # @!attribute filter
    #   <p>A structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    #   @return [Types::AutocompleteFilter]
    # @!attribute postal_code_mode
    #   <p>The <code>PostalCodeMode</code> affects how postal code results are returned. If a postal code spans multiple localities and this value is empty, partial district or locality information may be returned under a single postal code result entry. If it's populated with the value <code>EnumerateSpannedLocalities</code>, all cities in that postal code are returned. If it's populated with the value <code>EnumerateSpannedDistricts</code>, all combinations of the postal code with the corresponding district and city names are returned.</p>
    #   @return [String]
    # @!attribute additional_features
    #   <p>A list of optional additional parameters that can be requested for each result.</p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p>A list of <a href="https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry.</p>
    #   @return [String]
    # @!attribute political_view
    #   <p>The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country.</p> <p>The following political views are currently supported:</p> <ul> <li> <p> <code>ARG</code>: Argentina's view on the Southern Patagonian Ice Field and Tierra Del Fuego, including the Falkland Islands, South Georgia, and South Sandwich Islands</p> </li> <li> <p> <code>EGY</code>: Egypt's view on Bir Tawil</p> </li> <li> <p> <code>IND</code>: India's view on Gilgit-Baltistan</p> </li> <li> <p> <code>KEN</code>: Kenya's view on the Ilemi Triangle</p> </li> <li> <p> <code>MAR</code>: Morocco's view on Western Sahara</p> </li> <li> <p> <code>RUS</code>: Russia's view on Crimea</p> </li> <li> <p> <code>SDN</code>: Sudan's view on the Halaib Triangle</p> </li> <li> <p> <code>SRB</code>: Serbia's view on Kosovo, Vukovar, and Sarengrad Islands</p> </li> <li> <p> <code>SUR</code>: Suriname's view on the Courantyne Headwaters and Lawa Headwaters</p> </li> <li> <p> <code>SYR</code>: Syria's view on the Golan Heights</p> </li> <li> <p> <code>TUR</code>: Turkey's view on Cyprus and Northern Cyprus</p> </li> <li> <p> <code>TZA</code>: Tanzania's view on Lake Malawi</p> </li> <li> <p> <code>URY</code>: Uruguay's view on Rincon de Artigas</p> </li> <li> <p> <code>VNM</code>: Vietnam's view on the Paracel Islands and Spratly Islands</p> </li> </ul>
    #   @return [String]
    # @!attribute intended_use
    #   <p> Indicates if the query results will be persisted in customer infrastructure. Defaults to <code>SingleUse</code> (not stored). Currently, <code>Autocomplete</code> does not support storage of results. </p>
    #   @return [String]
    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request.</p>
    #   @return [String]
    class AutocompleteRequest < Struct.new(
      nil,
      :query_text,
      :max_results,
      :bias_position,
      :filter,
      :postal_code_mode,
      :additional_features,
      :language,
      :political_view,
      :intended_use,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pricing_bucket
    #   <p>The pricing bucket for which the query is charged at.</p> <p>For more information on pricing, please visit <a href="https://aws.amazon.com/location/pricing/">Amazon Location Service Pricing</a>.</p>
    #   @return [String]
    # @!attribute result_items
    #   <p>List of places or results returned for a query. </p>
    #   @return [Array<Types::AutocompleteResultItem>]
    class AutocompleteResponse < Struct.new(
      nil,
      :pricing_bucket,
      :result_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A result matching the input query text.</p>
    # @!attribute place_id
    #   <p>The PlaceId of the place associated with this result. This can be used to look up additional details about the result via GetPlace.</p>
    #   @return [String]
    # @!attribute place_type
    #   <p>PlaceType describes the type of result entry returned.</p>
    #   @return [String]
    # @!attribute title
    #   <p>A formatted string for display when presenting this result to an end user.</p>
    #   @return [String]
    # @!attribute address
    #   <p>The address associated with this result.</p>
    #   @return [Types::Address]
    # @!attribute distance
    #   <p>The distance in meters between the center of the search area and this result. Useful to evaluate how far away from the original bias position the result is.</p>
    #   @return [Integer]
    # @!attribute language
    #   <p>A list of <a href="https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry.</p>
    #   @return [String]
    # @!attribute political_view
    #   <p>The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country.</p>
    #   @return [String]
    # @!attribute highlights
    #   <p>Indicates the starting and ending index of the place in the text query that match the found title. </p>
    #   @return [Types::AutocompleteHighlights]
    # @!attribute estimated_point_address
    #   <p>If <code>true</code>, indicates that the coordinates of the position and access points of the point address are estimated.</p>
    #   @return [Boolean]
    class AutocompleteResultItem < Struct.new(
      nil,
      :place_id,
      :place_type,
      :title,
      :address,
      :distance,
      :language,
      :political_view,
      :highlights,
      :estimated_point_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = 0 unless options.key?(:distance)
        super
      end
    end

    # <p>A businesschain is a chain of businesses that belong to the same brand. For example <code>7-11</code>.</p>
    # @!attribute name
    #   <p>The business chain name.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The Business Chain Id.</p>
    #   @return [String]
    class BusinessChain < Struct.new(
      nil,
      :name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Category of the <code>Place</code> returned. </p>
    # @!attribute id
    #   <p>The category ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The category name.</p>
    #   @return [String]
    # @!attribute localized_name
    #   <p>Localized name of the category type.</p>
    #   @return [String]
    # @!attribute primary
    #   <p>Boolean which indicates if this category is the primary offered by the place.</p>
    #   @return [Boolean]
    class Category < Struct.new(
      nil,
      :id,
      :name,
      :localized_name,
      :primary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates how well the returned title and address components matches the input TextQuery. For each component a score is provied with 1 indicating all tokens were matched and 0 indicating no tokens were matched.</p>
    # @!attribute title
    #   <p>Indicates the match score of the title in the text query that match the found title. </p>
    #   @return [Float]
    # @!attribute address
    #   <p>The place's address.</p>
    #   @return [Types::AddressComponentMatchScores]
    class ComponentMatchScores < Struct.new(
      nil,
      :title,
      :address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:title] = 0 unless options.key?(:title)
        super
      end
    end

    # <p>Details related to contacts.</p>
    # @!attribute label
    #   <p>The contact's label.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The contact's value.</p>
    #   @return [String]
    # @!attribute categories
    #   <p>Categories of results that results must belong too.</p>
    #   @return [Array<Types::Category>]
    class ContactDetails < Struct.new(
      nil,
      :label,
      :value,
      :categories,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of potential contact methods for the result/place.</p>
    # @!attribute phones
    #   <p>List of phone numbers for the results contact. </p>
    #   @return [Array<Types::ContactDetails>]
    # @!attribute faxes
    #   <p>List of fax addresses for the result contact. </p>
    #   @return [Array<Types::ContactDetails>]
    # @!attribute websites
    #   <p>List of website URLs that belong to the result. </p>
    #   @return [Array<Types::ContactDetails>]
    # @!attribute emails
    #   <p>List of emails for contacts of the result. </p>
    #   @return [Array<Types::ContactDetails>]
    class Contacts < Struct.new(
      nil,
      :phones,
      :faxes,
      :websites,
      :emails,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The alpha-2 or alpha-3 character code for the country that the results will be present in.</p>
    # @!attribute code2
    #   <p>Country, represented by its alpha 2-character code. </p>
    #   @return [String]
    # @!attribute code3
    #   <p>Country, represented by its alpha t-character code. </p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the country.</p>
    #   @return [String]
    class Country < Struct.new(
      nil,
      :code2,
      :code3,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates the starting and ending index of the country in the text query that match the found title. </p>
    # @!attribute code
    #   <p>Indicates the starting and ending index of the country code in the text query that match the found title.</p>
    #   @return [Array<Types::Highlight>]
    # @!attribute name
    #   <p>Indicates the starting and ending index of the country code in the text query that match the found title.</p>
    #   @return [Array<Types::Highlight>]
    class CountryHighlights < Struct.new(
      nil,
      :code,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to a third-party supplier's identifier for a place, enabling correlation of places across external systems.</p>
    # @!attribute source
    #   <p>The name of the third-party data supplier (for example, <code>Yelp</code> or <code>TripAdvisor</code>).</p>
    #   @return [String]
    # @!attribute source_place_id
    #   <p>The place identifier assigned by the third-party supplier.</p>
    #   @return [String]
    # @!attribute source_categories
    #   <p>The list of place category identifiers this supplier reference relates to.</p>
    #   @return [Array<Types::Category>]
    class CrossReference < Struct.new(
      nil,
      :source,
      :source_place_id,
      :source_categories,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>Circle</code> that all results must be in. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute center
    #   <p>The center position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute radius
    #   <p> The radius, in meters, of the <code>FilterCircle</code>. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers,<code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only up to a maximum value of 300,000. </p>
    #   @return [Integer]
    class FilterCircle < Struct.new(
      nil,
      :center,
      :radius,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:radius] = nil unless options.key?(:radius)
        super
      end
    end

    # <p>List of <code>Food</code> types offered by this result.</p>
    # @!attribute localized_name
    #   <p>Localized name of the food type.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The Food Type Id.</p>
    #   @return [String]
    # @!attribute primary
    #   <p>Boolean which indicates if this food type is the primary offered by the place. For example, if a location serves fast food, but also dessert, he primary would likely be fast food.</p>
    #   @return [Boolean]
    class FoodType < Struct.new(
      nil,
      :localized_name,
      :id,
      :primary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Geocode structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    # @!attribute include_countries
    #   <p> A list of countries that all results must be in. Countries are represented by either their alpha-2 or alpha-3 character codes.</p>
    #   @return [Array<String>]
    # @!attribute include_place_types
    #   <p>The included place types.</p>
    #   @return [Array<String>]
    class GeocodeFilter < Struct.new(
      nil,
      :include_countries,
      :include_place_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parsed components in the provided QueryText.</p>
    # @!attribute title
    #   <p>The localized display name of this result item based on request parameter <code>language</code>.</p>
    #   @return [Array<Types::ParsedQueryComponent>]
    # @!attribute address
    #   <p>The place address.</p>
    #   @return [Types::GeocodeParsedQueryAddressComponents]
    class GeocodeParsedQuery < Struct.new(
      nil,
      :title,
      :address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parsed address components in the provided QueryText.</p>
    # @!attribute country
    #   <p>The alpha-2 or alpha-3 character code for the country that the results will be present in.</p>
    #   @return [Array<Types::ParsedQueryComponent>]
    # @!attribute region
    #   <p>The region or state results should be present in. </p> <p>Example: <code>North Rhine-Westphalia</code>.</p>
    #   @return [Array<Types::ParsedQueryComponent>]
    # @!attribute sub_region
    #   <p>The sub-region or county for which results should be present in. </p>
    #   @return [Array<Types::ParsedQueryComponent>]
    # @!attribute locality
    #   <p>The city or locality of the address.</p> <p>Example: <code>Vancouver</code>.</p>
    #   @return [Array<Types::ParsedQueryComponent>]
    # @!attribute district
    #   <p>The district or division of a city the results should be present in.</p>
    #   @return [Array<Types::ParsedQueryComponent>]
    # @!attribute sub_district
    #   <p>A subdivision of a district. </p> <p>Example: <code>Minden-Lübbecke</code>.</p>
    #   @return [Array<Types::ParsedQueryComponent>]
    # @!attribute postal_code
    #   <p>An alphanumeric string included in a postal address to facilitate mail sorting, such as post code, postcode, or ZIP code, for which the result should possess. </p>
    #   @return [Array<Types::ParsedQueryComponent>]
    # @!attribute block
    #   <p>Name of the block. </p> <p>Example: <code>Sunny Mansion 203 block: 2 Chome</code> </p>
    #   @return [Array<Types::ParsedQueryComponent>]
    # @!attribute sub_block
    #   <p>Name of sub-block. </p> <p>Example: <code>Sunny Mansion 203 sub-block: 4</code> </p>
    #   @return [Array<Types::ParsedQueryComponent>]
    # @!attribute street
    #   <p>The name of the street results should be present in.</p>
    #   @return [Array<Types::ParsedQueryComponent>]
    # @!attribute address_number
    #   <p>The number that identifies an address within a street.</p>
    #   @return [Array<Types::ParsedQueryComponent>]
    # @!attribute building
    #   <p>The name of the building at the address.</p>
    #   @return [Array<Types::ParsedQueryComponent>]
    # @!attribute secondary_address_components
    #   <p>Parsed secondary address components from the provided query text.</p> <note> <p>Coverage for <code>ParsedQuery.Address.SecondaryAddressComponents</code> is available in the following countries:</p> <p>AUS, AUT, BRA, CAN, ESP, FRA, GBR, HKG, IDN, IND, NZL, TUR, TWN, USA</p> </note>
    #   @return [Array<Types::ParsedQuerySecondaryAddressComponent>]
    # @!attribute other_components
    #   <p>Additional information extracted from the query that does not correspond to standard address components.</p>
    #   @return [Array<Types::ParsedQueryComponent>]
    class GeocodeParsedQueryAddressComponents < Struct.new(
      nil,
      :country,
      :region,
      :sub_region,
      :locality,
      :district,
      :sub_district,
      :postal_code,
      :block,
      :sub_block,
      :street,
      :address_number,
      :building,
      :secondary_address_components,
      :other_components,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structured free text query allows you to search for places by the name or text representation of specific properties of the place. </p>
    # @!attribute country
    #   <p>The alpha-2 or alpha-3 character code for the country that the results will be present in.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The region or state results should be to be present in. </p> <p>Example: <code>North Rhine-Westphalia</code>.</p>
    #   @return [String]
    # @!attribute sub_region
    #   <p>The sub-region or county for which results should be present in. </p>
    #   @return [String]
    # @!attribute locality
    #   <p>The city or locality results should be present in. </p> <p>Example: <code>Vancouver</code>.</p>
    #   @return [String]
    # @!attribute district
    #   <p>The district or division of a city the results should be present in.</p>
    #   @return [String]
    # @!attribute street
    #   <p>The name of the street results should be present in.</p>
    #   @return [String]
    # @!attribute address_number
    #   <p>The house number or address results should have. </p>
    #   @return [String]
    # @!attribute postal_code
    #   <p>An alphanumeric string included in a postal address to facilitate mail sorting, such as post code, postcode, or ZIP code for which the result should possess. </p>
    #   @return [String]
    class GeocodeQueryComponents < Struct.new(
      nil,
      :country,
      :region,
      :sub_region,
      :locality,
      :district,
      :street,
      :address_number,
      :postal_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_text
    #   <p>The free-form text query to match addresses against. This is usually a partially typed address from an end user in an address box or form.</p>
    #   @return [String]
    # @!attribute query_components
    #   <p>A structured free text query allows you to search for places by the name or text representation of specific properties of the place. </p>
    #   @return [Types::GeocodeQueryComponents]
    # @!attribute max_results
    #   <p>An optional limit for the number of results returned in a single call.</p> <p>Default value: 20</p>
    #   @return [Integer]
    # @!attribute bias_position
    #   <p>The position, in longitude and latitude, that the results should be close to. Typically, place results returned are ranked higher the closer they are to this position. Stored in <code>[lng, lat]</code> and in the WGS 84 format.</p>
    #   @return [Array<Float>]
    # @!attribute filter
    #   <p>A structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    #   @return [Types::GeocodeFilter]
    # @!attribute additional_features
    #   <p>A list of optional additional parameters, such as time zone, that can be requested for each result.</p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p>A list of <a href="https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry.</p>
    #   @return [String]
    # @!attribute political_view
    #   <p>The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country.</p>
    #   @return [String]
    # @!attribute intended_use
    #   <p> Indicates if the query results will be persisted in customer infrastructure. Defaults to <code>SingleUse</code> (not stored). Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <note> <p>When storing <code>Geocode</code> responses, you <i>must</i> set this field to <code>Storage</code> to comply with the terms of service. These requests will be charged at a higher rate. Please review the <a href="https://aws.amazon.com/location/sla/">user agreement</a> and <a href="https://aws.amazon.com/location/pricing/">service pricing structure</a> to determine the correct setting for your use case.</p> </note>
    #   @return [String]
    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request.</p>
    #   @return [String]
    # @!attribute postal_code_mode
    #   <p>The <code>PostalCodeMode</code> affects how postal code results are returned. If a postal code spans multiple localities and this value is empty, partial district or locality information may be returned under a single postal code result entry. If it's populated with the value <code>EnumerateSpannedLocalities</code>, all cities in that postal code are returned. If it's populated with the value <code>EnumerateSpannedDistricts</code>, all combinations of the postal code with the corresponding district and city names are returned.</p>
    #   @return [String]
    # @!attribute address_translations
    #   <p>Specifies which address components to include translations for. Translations include all name variants and alternative names for the requested fields in all available languages. Valid values are <code>District</code>, <code>Locality</code>, <code>Region</code>, and <code>SubRegion</code>.</p>
    #   @return [Array<String>]
    # @!attribute address_names_mode
    #   <p>Specifies how address names are returned. If not set, the service returns normalized (official) names by default. When set to <code>Matched</code>, address names in the response are based on the input query rather than official names. When set to <code>Administrative</code>, the service returns the official administrative names for address components. <code>Administrative</code> currently applies only to addresses in the United States.</p>
    #   @return [String]
    class GeocodeRequest < Struct.new(
      nil,
      :query_text,
      :query_components,
      :max_results,
      :bias_position,
      :filter,
      :additional_features,
      :language,
      :political_view,
      :intended_use,
      :key,
      :postal_code_mode,
      :address_translations,
      :address_names_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pricing_bucket
    #   <p>The pricing bucket for which the query is charged at, or the maximum pricing bucket when the query is charged per item within the query.</p> <p>For more information on pricing, please visit <a href="https://aws.amazon.com/location/pricing/">Amazon Location Service Pricing</a>.</p>
    #   @return [String]
    # @!attribute result_items
    #   <p>List of places or results returned for a query. </p>
    #   @return [Array<Types::GeocodeResultItem>]
    class GeocodeResponse < Struct.new(
      nil,
      :pricing_bucket,
      :result_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Geocoded result.</p>
    # @!attribute place_id
    #   <p>The <code>PlaceId</code> of the place result.</p>
    #   @return [String]
    # @!attribute place_type
    #   <p>A <code>PlaceType</code> is a category that the result place must belong to.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The localized display name of this result item based on request parameter <code>language</code>. </p>
    #   @return [String]
    # @!attribute address
    #   <p>The place's address.</p>
    #   @return [Types::Address]
    # @!attribute address_number_corrected
    #   <p>Boolean indicating if the address provided has been corrected.</p>
    #   @return [Boolean]
    # @!attribute postal_code_details
    #   <p>Contains details about the postal code of the place/result. </p>
    #   @return [Array<Types::PostalCodeDetails>]
    # @!attribute position
    #   <p>The position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute distance
    #   <p>The distance in meters from the QueryPosition.</p>
    #   @return [Integer]
    # @!attribute map_view
    #   <p>The bounding box enclosing the geometric shape (area or line) that an individual result covers.</p> <p>The bounding box formed is defined as a set 4 coordinates: <code>[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]</code> </p>
    #   @return [Array<Float>]
    # @!attribute categories
    #   <p>Categories of results that results must belong to.</p>
    #   @return [Array<Types::Category>]
    # @!attribute food_types
    #   <p>List of food types offered by this result.</p>
    #   @return [Array<Types::FoodType>]
    # @!attribute access_points
    #   <p>Position of the access point in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Types::AccessPoint>]
    # @!attribute time_zone
    #   <p>The time zone in which the place is located.</p>
    #   @return [Types::TimeZone]
    # @!attribute political_view
    #   <p>The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country.</p>
    #   @return [String]
    # @!attribute match_scores
    #   <p>Indicates how well the entire input matches the returned. It is equal to 1 if all input tokens are recognized and matched.</p>
    #   @return [Types::MatchScoreDetails]
    # @!attribute parsed_query
    #   <p>Free-form text query.</p>
    #   @return [Types::GeocodeParsedQuery]
    # @!attribute intersections
    #   <p>All Intersections that are near the provided address.</p>
    #   @return [Array<Types::Intersection>]
    # @!attribute main_address
    #   <p>The main address corresponding to a place of type Secondary Address.</p>
    #   @return [Types::RelatedPlace]
    # @!attribute secondary_addresses
    #   <p>All secondary addresses that are associated with a main address. A secondary address is one that includes secondary designators, such as a Suite or Unit Number, Building, or Floor information.</p> <note> <p>Coverage for this functionality is available in the following countries: AUS, CAN, NZL, USA, PRI.</p> </note>
    #   @return [Array<Types::RelatedPlace>]
    # @!attribute translations
    #   <p>All name translations and alternative names for the requested address fields in all available languages.</p>
    #   @return [Types::TranslationDetails]
    # @!attribute estimated_point_address
    #   <p>If <code>true</code>, indicates that the coordinates of the position and access points of the point address are estimated.</p>
    #   @return [Boolean]
    class GeocodeResultItem < Struct.new(
      nil,
      :place_id,
      :place_type,
      :title,
      :address,
      :address_number_corrected,
      :postal_code_details,
      :position,
      :distance,
      :map_view,
      :categories,
      :food_types,
      :access_points,
      :time_zone,
      :political_view,
      :match_scores,
      :parsed_query,
      :intersections,
      :main_address,
      :secondary_addresses,
      :translations,
      :estimated_point_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = 0 unless options.key?(:distance)
        super
      end
    end

    # @!attribute place_id
    #   <p>The <code>PlaceId</code> of the place you wish to receive the information for.</p>
    #   @return [String]
    # @!attribute additional_features
    #   <p> A list of optional additional parameters such as time zone that can be requested for each result. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only the <code>TimeZone</code> value. </p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p> A list of <a href="https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only the following codes: <code>en, id, km, lo, ms, my, pt, th, tl, vi, zh</code> </p>
    #   @return [String]
    # @!attribute political_view
    #   <p> The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [String]
    # @!attribute intended_use
    #   <p> Indicates if the query results will be persisted in customer infrastructure. Defaults to <code>SingleUse</code> (not stored). Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <note> <p>When storing <code>GetPlace</code> responses, you <i>must</i> set this field to <code>Storage</code> to comply with the terms of service. These requests will be charged at a higher rate. Please review the <a href="https://aws.amazon.com/location/sla/">user agreement</a> and <a href="https://aws.amazon.com/location/pricing/">service pricing structure</a> to determine the correct setting for your use case.</p> </note>
    #   @return [String]
    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request.</p>
    #   @return [String]
    # @!attribute address_names_mode
    #   <p>Specifies how address names are returned. When set to <code>Administrative</code>, the service returns the official administrative names for address components. <code>Administrative</code> currently applies only to addresses in the United States.</p>
    #   @return [String]
    class GetPlaceRequest < Struct.new(
      nil,
      :place_id,
      :additional_features,
      :language,
      :political_view,
      :intended_use,
      :key,
      :address_names_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute place_id
    #   <p>The <code>PlaceId</code> of the place you wish to receive the information for.</p>
    #   @return [String]
    # @!attribute place_type
    #   <p>A <code>PlaceType</code> is a category that the result place must belong to.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The localized display name of this result item based on request parameter <code>language</code>.</p>
    #   @return [String]
    # @!attribute pricing_bucket
    #   <p>The pricing bucket for which the query is charged at.</p> <p>For more information on pricing, please visit <a href="https://aws.amazon.com/location/pricing/">Amazon Location Service Pricing</a>.</p>
    #   @return [String]
    # @!attribute address
    #   <p>The place's address.</p>
    #   @return [Types::Address]
    # @!attribute address_number_corrected
    #   <p> Boolean indicating if the address provided has been corrected. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Boolean]
    # @!attribute postal_code_details
    #   <p> Contains details about the postal code of the place/result. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::PostalCodeDetails>]
    # @!attribute position
    #   <p>The position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute map_view
    #   <p>The bounding box enclosing the geometric shape (area or line) that an individual result covers.</p> <p>The bounding box formed is defined as a set of four coordinates: <code>[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]</code> </p>
    #   @return [Array<Float>]
    # @!attribute categories
    #   <p>Categories of results that results must belong to.</p>
    #   @return [Array<Types::Category>]
    # @!attribute food_types
    #   <p> List of food types offered by this result. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::FoodType>]
    # @!attribute business_chains
    #   <p>The Business Chains associated with the place.</p>
    #   @return [Array<Types::BusinessChain>]
    # @!attribute contacts
    #   <p> List of potential contact methods for the result/place. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::Contacts]
    # @!attribute opening_hours
    #   <p> List of opening hours objects. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::OpeningHours>]
    # @!attribute access_points
    #   <p> Position of the access point in World Geodetic System (WGS 84) format: [longitude, latitude]. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::AccessPoint>]
    # @!attribute access_restrictions
    #   <p> Indicates known access restrictions on a vehicle access point. The index correlates to an access point and indicates if access through this point has some form of restriction. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::AccessRestriction>]
    # @!attribute time_zone
    #   <p>The time zone in which the place is located.</p>
    #   @return [Types::TimeZone]
    # @!attribute political_view
    #   <p> The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [String]
    # @!attribute phonemes
    #   <p> How the various components of the result's address are pronounced in various languages. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::PhonemeDetails]
    # @!attribute main_address
    #   <p> The main address corresponding to a place of type Secondary Address. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::RelatedPlace]
    # @!attribute secondary_addresses
    #   <p> All secondary addresses that are associated with a main address. A secondary address is one that includes secondary designators, such as a Suite or Unit Number, Building, or Floor information. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <note> <p>Coverage for this functionality is available in the following countries: AUS, CAN, NZL, USA, PRI.</p> </note>
    #   @return [Array<Types::RelatedPlace>]
    # @!attribute place_attributes
    #   <p>A list of place attributes for the result, such as whether the business offers drive-through service.</p>
    #   @return [Array<String>]
    # @!attribute estimated_point_address
    #   <p>If <code>true</code>, indicates that the coordinates of the position and access points of the point address are estimated.</p>
    #   @return [Boolean]
    # @!attribute cross_references
    #   <p>The list of supplier references available for this place. Requires the <code>CrossReferences</code> additional feature to be enabled.</p>
    #   @return [Array<Types::CrossReference>]
    class GetPlaceResponse < Struct.new(
      nil,
      :place_id,
      :place_type,
      :title,
      :pricing_bucket,
      :address,
      :address_number_corrected,
      :postal_code_details,
      :position,
      :map_view,
      :categories,
      :food_types,
      :business_chains,
      :contacts,
      :opening_hours,
      :access_points,
      :access_restrictions,
      :time_zone,
      :political_view,
      :phonemes,
      :main_address,
      :secondary_addresses,
      :place_attributes,
      :estimated_point_address,
      :cross_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates the starting and ending index of the text query that match the found title.</p>
    # @!attribute start_index
    #   <p>Start index of the highlight.</p>
    #   @return [Integer]
    # @!attribute end_index
    #   <p>End index of the highlight.</p>
    #   @return [Integer]
    # @!attribute value
    #   <p>The highlight's value.</p>
    #   @return [String]
    class Highlight < Struct.new(
      nil,
      :start_index,
      :end_index,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>All Intersections that are near the provided address.</p>
    # @!attribute place_id
    #   <p>The <code>PlaceId</code> of the place result.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The localized display name of this result item based on request parameter <code>language</code>.</p>
    #   @return [String]
    # @!attribute address
    #   <p>The place address.</p>
    #   @return [Types::Address]
    # @!attribute position
    #   <p>The position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute distance
    #   <p>The distance in meters from the QueryPosition.</p>
    #   @return [Integer]
    # @!attribute route_distance
    #   <p>The distance from the routing position of the nearby address to the street result.</p>
    #   @return [Integer]
    # @!attribute map_view
    #   <p>The bounding box enclosing the geometric shape (area or line) that an individual result covers.</p> <p>The bounding box formed is defined as a set of four coordinates: <code>[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]</code> </p>
    #   @return [Array<Float>]
    # @!attribute access_points
    #   <p>Position of the access point in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Types::AccessPoint>]
    class Intersection < Struct.new(
      nil,
      :place_id,
      :title,
      :address,
      :position,
      :distance,
      :route_distance,
      :map_view,
      :access_points,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = nil unless options.key?(:distance)
        options[:route_distance] = nil unless options.key?(:route_distance)
        super
      end
    end

    # <p>Details related to the match score.</p>
    # @!attribute overall
    #   <p>Indicates how well the entire input matches the returned. It is equal to 1 if all input tokens are recognized and matched.</p>
    #   @return [Float]
    # @!attribute components
    #   <p>Indicates how well the component input matches the returned. It is equal to 1 if all input tokens are recognized and matched.</p>
    #   @return [Types::ComponentMatchScores]
    class MatchScoreDetails < Struct.new(
      nil,
      :overall,
      :components,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:overall] = 0 unless options.key?(:overall)
        super
      end
    end

    # <p>List of opening hours objects.</p>
    # @!attribute display
    #   <p>List of opening hours in the format they are displayed in. This can vary by result and in most cases represents how the result uniquely formats their opening hours. </p>
    #   @return [Array<String>]
    # @!attribute open_now
    #   <p>Boolean which indicates if the result/place is currently open. </p>
    #   @return [Boolean]
    # @!attribute components
    #   <p>Components of the opening hours object.</p>
    #   @return [Array<Types::OpeningHoursComponents>]
    # @!attribute categories
    #   <p>Categories of results that results must belong too.</p>
    #   @return [Array<Types::Category>]
    class OpeningHours < Struct.new(
      nil,
      :display,
      :open_now,
      :components,
      :categories,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Components of the opening hours object.</p>
    # @!attribute open_time
    #   <p>String which represents the opening hours, such as <code>"T070000"</code>.</p>
    #   @return [String]
    # @!attribute open_duration
    #   <p>String which represents the duration of the opening period, such as <code>"PT12H00M"</code>.</p>
    #   @return [String]
    # @!attribute recurrence
    #   <p>Days or periods when the provided opening hours are in affect. </p> <p>Example: <code>FREQ:DAILY;BYDAY:MO,TU,WE,TH,SU</code> </p>
    #   @return [String]
    class OpeningHoursComponents < Struct.new(
      nil,
      :open_time,
      :open_duration,
      :recurrence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parsed components in the provided QueryText.</p>
    # @!attribute start_index
    #   <p>Start index of the parsed query component.</p>
    #   @return [Integer]
    # @!attribute end_index
    #   <p>End index of the parsed query component.</p>
    #   @return [Integer]
    # @!attribute value
    #   <p>Value of the parsed query component.</p>
    #   @return [String]
    # @!attribute query_component
    #   <p>The address component that the parsed query component corresponds to.</p>
    #   @return [String]
    class ParsedQueryComponent < Struct.new(
      nil,
      :start_index,
      :end_index,
      :value,
      :query_component,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a secondary address component parsed from the query text.</p>
    # @!attribute start_index
    #   <p>Start index of the parsed secondary address component in the query text.</p>
    #   @return [Integer]
    # @!attribute end_index
    #   <p>End index of the parsed secondary address component in the query text.</p>
    #   @return [Integer]
    # @!attribute value
    #   <p>Value of the parsed secondary address component.</p>
    #   @return [String]
    # @!attribute number
    #   <p>Secondary address number provided in the query.</p>
    #   @return [String]
    # @!attribute designator
    #   <p>Secondary address designator provided in the query.</p>
    #   @return [String]
    class ParsedQuerySecondaryAddressComponent < Struct.new(
      nil,
      :start_index,
      :end_index,
      :value,
      :number,
      :designator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The phoneme details.</p>
    # @!attribute title
    #   <p>List of <code>PhonemeTranscription</code>. See <code>PhonemeTranscription</code> for fields.</p>
    #   @return [Array<Types::PhonemeTranscription>]
    # @!attribute address
    #   <p>How to pronounce the address.</p>
    #   @return [Types::AddressComponentPhonemes]
    class PhonemeDetails < Struct.new(
      nil,
      :title,
      :address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>How to pronounce the various components of the address or place.</p>
    # @!attribute value
    #   <p>Value which indicates how to pronounce the value.</p>
    #   @return [String]
    # @!attribute language
    #   <p>A list of <a href="https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry.</p>
    #   @return [String]
    # @!attribute preferred
    #   <p>Boolean which indicates if it the preferred pronunciation.</p>
    #   @return [Boolean]
    class PhonemeTranscription < Struct.new(
      nil,
      :value,
      :language,
      :preferred,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the postal code of the place or result.</p>
    # @!attribute postal_code
    #   <p>An alphanumeric string included in a postal address to facilitate mail sorting, such as post code, postcode, or ZIP code for which the result should possess. </p>
    #   @return [String]
    # @!attribute postal_authority
    #   <p>The postal authority or entity. This could be a governmental authority, a regulatory authority, or a designated postal operator.</p>
    #   @return [String]
    # @!attribute postal_code_type
    #   <p>The postal code type.</p>
    #   @return [String]
    # @!attribute usps_zip
    #   <p>The ZIP Classification Code, or in other words what type of postal code is it.</p>
    #   @return [Types::UspsZip]
    # @!attribute usps_zip_plus4
    #   <p>The USPS ZIP+4 Record Type Code.</p>
    #   @return [Types::UspsZipPlus4]
    class PostalCodeDetails < Struct.new(
      nil,
      :postal_code,
      :postal_authority,
      :postal_code_type,
      :usps_zip,
      :usps_zip_plus4,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Suggestions for refining individual query terms. Suggestions are returned as objects which note the term, suggested replacement, and its index in the query. </p>
    # @!attribute refined_term
    #   <p>The term that will be suggested to the user.</p>
    #   @return [String]
    # @!attribute original_term
    #   <p>The sub-string of the original query that is replaced by this query term.</p>
    #   @return [String]
    # @!attribute start_index
    #   <p>Start index of the parsed component.</p>
    #   @return [Integer]
    # @!attribute end_index
    #   <p>End index of the parsed query.</p>
    #   @return [Integer]
    class QueryRefinement < Struct.new(
      nil,
      :refined_term,
      :original_term,
      :start_index,
      :end_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The region or state results should be to be present in. </p> <p>Example: <code>North Rhine-Westphalia</code>. </p>
    # @!attribute code
    #   <p> Abbreviated code for a the state, province or region of the country. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <p>Example: <code>BC</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name for a the state, province, or region of the country. </p> <p>Example: <code>British Columbia</code>. </p>
    #   @return [String]
    class Region < Struct.new(
      nil,
      :code,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates the starting and ending index of the region in the text query that match the found title. </p>
    # @!attribute code
    #   <p>Indicates the starting and ending index of the region in the text query that match the found title. </p>
    #   @return [Array<Types::Highlight>]
    # @!attribute name
    #   <p>Indicates the starting and ending index of the region name in the text query that match the found title. </p>
    #   @return [Array<Types::Highlight>]
    class RegionHighlights < Struct.new(
      nil,
      :code,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Place that is related to the result item.</p>
    # @!attribute place_id
    #   <p>The <code>PlaceId</code> of the place result.</p>
    #   @return [String]
    # @!attribute place_type
    #   <p>A <code>PlaceType</code> is a category that the result place must belong to.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The localized display name of this result item based on request parameter <code>language</code>.</p>
    #   @return [String]
    # @!attribute address
    #   <p>The place address.</p>
    #   @return [Types::Address]
    # @!attribute position
    #   <p>The position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute access_points
    #   <p>Position of the access point in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Types::AccessPoint>]
    class RelatedPlace < Struct.new(
      nil,
      :place_id,
      :place_type,
      :title,
      :address,
      :position,
      :access_points,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The included place types.</p>
    # @!attribute include_place_types
    #   <p> The included place types. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>Street</code> and <code>PointAddress</code> values. </p>
    #   @return [Array<String>]
    class ReverseGeocodeFilter < Struct.new(
      nil,
      :include_place_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_position
    #   <p>The position in World Geodetic System (WGS 84) format: [longitude, latitude] for which you are querying nearby results for. Results closer to the position will be ranked higher then results further away from the position</p>
    #   @return [Array<Float>]
    # @!attribute query_radius
    #   <p> The maximum distance in meters from the QueryPosition from which a result will be returned. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only up to a maximum value of 100,000. </p>
    #   @return [Integer]
    # @!attribute max_results
    #   <p> An optional limit for the number of results returned in a single call.</p> <p>Default value: 1</p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>A structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    #   @return [Types::ReverseGeocodeFilter]
    # @!attribute additional_features
    #   <p> A list of optional additional parameters, such as time zone that can be requested for each result. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only the <code>TimeZone</code> value. </p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p> A list of <a href="https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only the following codes: <code>en, id, km, lo, ms, my, pt, th, tl, vi, zh</code> </p>
    #   @return [String]
    # @!attribute political_view
    #   <p> The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [String]
    # @!attribute intended_use
    #   <p> Indicates if the query results will be persisted in customer infrastructure. Defaults to <code>SingleUse</code> (not stored). </p> <note> <p>When storing <code>ReverseGeocode</code> responses, you <i>must</i> set this field to <code>Storage</code> to comply with the terms of service. These requests will be charged at a higher rate. Please review the <a href="https://aws.amazon.com/location/sla/">user agreement</a> and <a href="https://aws.amazon.com/location/pricing/">service pricing structure</a> to determine the correct setting for your use case.</p> </note>
    #   @return [String]
    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request.</p>
    #   @return [String]
    # @!attribute heading
    #   <p>The heading in degrees from true north in a navigation context. The heading is measured as the angle clockwise from the North direction.</p> <p>Example: North is <code>0</code> degrees, East is <code>90</code> degrees, South is <code>180</code> degrees, and West is <code>270</code> degrees.</p>
    #   @return [Float]
    # @!attribute address_names_mode
    #   <p>Specifies how address names are returned. When set to <code>Administrative</code>, the service returns the official administrative names for address components. <code>Administrative</code> currently applies only to addresses in the United States.</p>
    #   @return [String]
    class ReverseGeocodeRequest < Struct.new(
      nil,
      :query_position,
      :query_radius,
      :max_results,
      :filter,
      :additional_features,
      :language,
      :political_view,
      :intended_use,
      :key,
      :heading,
      :address_names_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pricing_bucket
    #   <p>The pricing bucket for which the query is charged at.</p> <p>For more information on pricing, please visit <a href="https://aws.amazon.com/location/pricing/">Amazon Location Service Pricing</a>.</p>
    #   @return [String]
    # @!attribute result_items
    #   <p>List of places or results returned for a query. </p>
    #   @return [Array<Types::ReverseGeocodeResultItem>]
    class ReverseGeocodeResponse < Struct.new(
      nil,
      :pricing_bucket,
      :result_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The returned location from the <code>Reverse Geocode</code> action.</p>
    # @!attribute place_id
    #   <p>The <code>PlaceId</code> of the place you wish to receive the information for.</p>
    #   @return [String]
    # @!attribute place_type
    #   <p>A <code>PlaceType</code> is a category that the result place must belong to.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The localized display name of this result item based on request parameter <code>language</code>. </p>
    #   @return [String]
    # @!attribute address
    #   <p>The place's address.</p>
    #   @return [Types::Address]
    # @!attribute address_number_corrected
    #   <p> Boolean indicating if the address provided has been corrected. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Boolean]
    # @!attribute postal_code_details
    #   <p> Contains details about the postal code of the place/result. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::PostalCodeDetails>]
    # @!attribute position
    #   <p>The position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute distance
    #   <p>The distance in meters from the QueryPosition.</p>
    #   @return [Integer]
    # @!attribute map_view
    #   <p>The bounding box enclosing the geometric shape (area or line) that an individual result covers.</p> <p>The bounding box formed is defined as a set 4 coordinates: <code>[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]</code> </p>
    #   @return [Array<Float>]
    # @!attribute categories
    #   <p>Categories of results that results must belong to.</p>
    #   @return [Array<Types::Category>]
    # @!attribute food_types
    #   <p> List of food types offered by this result. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::FoodType>]
    # @!attribute access_points
    #   <p> Position of the access point in World Geodetic System (WGS 84) format: [longitude, latitude]. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::AccessPoint>]
    # @!attribute time_zone
    #   <p>The time zone in which the place is located.</p>
    #   @return [Types::TimeZone]
    # @!attribute political_view
    #   <p> The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [String]
    # @!attribute intersections
    #   <p> All Intersections that are near the provided address. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::Intersection>]
    # @!attribute main_address
    #   <p>The main address corresponding to a place of type Secondary Address.</p>
    #   @return [Types::RelatedPlace]
    # @!attribute estimated_point_address
    #   <p>If <code>true</code>, indicates that the coordinates of the position and access points of the point address are estimated.</p>
    #   @return [Boolean]
    class ReverseGeocodeResultItem < Struct.new(
      nil,
      :place_id,
      :place_type,
      :title,
      :address,
      :address_number_corrected,
      :postal_code_details,
      :position,
      :distance,
      :map_view,
      :categories,
      :food_types,
      :access_points,
      :time_zone,
      :political_view,
      :intersections,
      :main_address,
      :estimated_point_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = 0 unless options.key?(:distance)
        super
      end
    end

    # <p>SearchNearby structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    # @!attribute bounding_box
    #   <p>The bounding box enclosing the geometric shape (area or line) that an individual result covers.</p> <p>The bounding box formed is defined as a set 4 coordinates: <code>[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]</code> </p>
    #   @return [Array<Float>]
    # @!attribute include_countries
    #   <p>A list of countries that all results must be in. Countries are represented by either their alpha-2 or alpha-3 character codes.</p>
    #   @return [Array<String>]
    # @!attribute include_categories
    #   <p>Categories of results that results must belong too.</p>
    #   @return [Array<String>]
    # @!attribute exclude_categories
    #   <p>Categories of results that results are excluded from.</p>
    #   @return [Array<String>]
    # @!attribute include_business_chains
    #   <p>The Business Chains associated with the place.</p>
    #   @return [Array<String>]
    # @!attribute exclude_business_chains
    #   <p>The Business Chains associated with the place.</p>
    #   @return [Array<String>]
    # @!attribute include_food_types
    #   <p>Food types that results are included from.</p>
    #   @return [Array<String>]
    # @!attribute exclude_food_types
    #   <p>Food types that results are excluded from.</p>
    #   @return [Array<String>]
    class SearchNearbyFilter < Struct.new(
      nil,
      :bounding_box,
      :include_countries,
      :include_categories,
      :exclude_categories,
      :include_business_chains,
      :exclude_business_chains,
      :include_food_types,
      :exclude_food_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_position
    #   <p>The position in World Geodetic System (WGS 84) format: [longitude, latitude] for which you are querying nearby results for. Results closer to the position will be ranked higher then results further away from the position</p>
    #   @return [Array<Float>]
    # @!attribute query_radius
    #   <p>The maximum distance in meters from the QueryPosition from which a result will be returned.</p> <note> <p>The fields <code>QueryText</code>, and <code>QueryID</code> are mutually exclusive.</p> </note>
    #   @return [Integer]
    # @!attribute max_results
    #   <p>An optional limit for the number of results returned in a single call.</p> <p>Default value: 20</p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>A structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    #   @return [Types::SearchNearbyFilter]
    # @!attribute additional_features
    #   <p>A list of optional additional parameters, such as time zone, that can be requested for each result.</p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p>A list of <a href="https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry.</p>
    #   @return [String]
    # @!attribute political_view
    #   <p>The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country.</p>
    #   @return [String]
    # @!attribute intended_use
    #   <p> Indicates if the query results will be persisted in customer infrastructure. Defaults to <code>SingleUse</code> (not stored). Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <note> <p>When storing <code>SearchNearby</code> responses, you <i>must</i> set this field to <code>Storage</code> to comply with the terms of service. These requests will be charged at a higher rate. Please review the <a href="https://aws.amazon.com/location/sla/">user agreement</a> and <a href="https://aws.amazon.com/location/pricing/">service pricing structure</a> to determine the correct setting for your use case.</p> </note>
    #   @return [String]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. </p>
    #   @return [String]
    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request.</p>
    #   @return [String]
    class SearchNearbyRequest < Struct.new(
      nil,
      :query_position,
      :query_radius,
      :max_results,
      :filter,
      :additional_features,
      :language,
      :political_view,
      :intended_use,
      :next_token,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pricing_bucket
    #   <p>The pricing bucket for which the query is charged at.</p> <p>For more information on pricing, please visit <a href="https://aws.amazon.com/location/pricing/">Amazon Location Service Pricing</a>.</p>
    #   @return [String]
    # @!attribute result_items
    #   <p>List of places or results returned for a query. </p>
    #   @return [Array<Types::SearchNearbyResultItem>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. </p>
    #   @return [String]
    class SearchNearbyResponse < Struct.new(
      nil,
      :pricing_bucket,
      :result_items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The search results of nearby places.</p>
    # @!attribute place_id
    #   <p>The <code>PlaceId</code> of the place you wish to receive the information for.</p>
    #   @return [String]
    # @!attribute place_type
    #   <p>A <code>PlaceType</code> is a category that the result place must belong to.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The item's title.</p>
    #   @return [String]
    # @!attribute address
    #   <p>The place's address.</p>
    #   @return [Types::Address]
    # @!attribute address_number_corrected
    #   <p>Boolean indicating if the address provided has been corrected.</p>
    #   @return [Boolean]
    # @!attribute position
    #   <p>The position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute distance
    #   <p>The distance in meters from the QueryPosition.</p>
    #   @return [Integer]
    # @!attribute map_view
    #   <p>The bounding box enclosing the geometric shape (area or line) that an individual result covers.</p> <p>The bounding box formed is defined as a set 4 coordinates: <code>[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]</code> </p>
    #   @return [Array<Float>]
    # @!attribute categories
    #   <p>Categories of results that results must belong to.</p>
    #   @return [Array<Types::Category>]
    # @!attribute food_types
    #   <p>List of food types offered by this result.</p>
    #   @return [Array<Types::FoodType>]
    # @!attribute business_chains
    #   <p>The Business Chains associated with the place.</p>
    #   @return [Array<Types::BusinessChain>]
    # @!attribute contacts
    #   <p>List of potential contact methods for the result/place.</p>
    #   @return [Types::Contacts]
    # @!attribute opening_hours
    #   <p>List of opening hours objects.</p>
    #   @return [Array<Types::OpeningHours>]
    # @!attribute access_points
    #   <p>Position of the access point in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Types::AccessPoint>]
    # @!attribute access_restrictions
    #   <p>Indicates known access restrictions on a vehicle access point. The index correlates to an access point and indicates if access through this point has some form of restriction.</p>
    #   @return [Array<Types::AccessRestriction>]
    # @!attribute time_zone
    #   <p>The time zone in which the place is located.</p>
    #   @return [Types::TimeZone]
    # @!attribute political_view
    #   <p>The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country.</p>
    #   @return [String]
    # @!attribute phonemes
    #   <p>How the various components of the result's address are pronounced in various languages.</p>
    #   @return [Types::PhonemeDetails]
    # @!attribute place_attributes
    #   <p>A list of place attributes for the result, such as whether the business offers drive-through service.</p>
    #   @return [Array<String>]
    # @!attribute cross_references
    #   <p>The list of supplier references available for this place. Requires the <code>CrossReferences</code> additional feature to be enabled.</p>
    #   @return [Array<Types::CrossReference>]
    class SearchNearbyResultItem < Struct.new(
      nil,
      :place_id,
      :place_type,
      :title,
      :address,
      :address_number_corrected,
      :position,
      :distance,
      :map_view,
      :categories,
      :food_types,
      :business_chains,
      :contacts,
      :opening_hours,
      :access_points,
      :access_restrictions,
      :time_zone,
      :political_view,
      :phonemes,
      :place_attributes,
      :cross_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = 0 unless options.key?(:distance)
        super
      end
    end

    # <p>SearchText structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    # @!attribute bounding_box
    #   <p>The bounding box enclosing the geometric shape (area or line) that an individual result covers.</p> <p>The bounding box formed is defined as a set 4 coordinates: <code>[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]</code> </p>
    #   @return [Array<Float>]
    # @!attribute circle
    #   <p>The <code>Circle</code> that all results must be in. </p>
    #   @return [Types::FilterCircle]
    # @!attribute include_countries
    #   <p> A list of countries that all results must be in. Countries are represented by either their alpha-2 or alpha-3 character codes.</p>
    #   @return [Array<String>]
    class SearchTextFilter < Struct.new(
      nil,
      :bounding_box,
      :circle,
      :include_countries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_text
    #   <p>The free-form text query to match addresses against. This is usually a partially typed address from an end user in an address box or form.</p> <note> <p>Exactly one of the following fields must be set: <code>QueryText</code> or <code>QueryId</code>.</p> </note>
    #   @return [String]
    # @!attribute query_id
    #   <p>The query Id returned by the suggest API. If passed in the request, the SearchText API will preform a SearchText query with the improved query terms for the original query made to the suggest API. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers.</p> <note> <p>Exactly one of the following fields must be set: <code>QueryText</code> or <code>QueryId</code>.</p> </note>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional limit for the number of results returned in a single call.</p> <p>Default value: 20</p>
    #   @return [Integer]
    # @!attribute bias_position
    #   <p>The position, in longitude and latitude, that the results should be close to. Typically, place results returned are ranked higher the closer they are to this position. Stored in <code>[lng, lat]</code> and in the WGS 84 format.</p> <note> <p>Exactly one of the following fields must be set: <code>BiasPosition</code>, <code>Filter.BoundingBox</code>, or <code>Filter.Circle</code>.</p> </note>
    #   @return [Array<Float>]
    # @!attribute filter
    #   <p>A structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    #   @return [Types::SearchTextFilter]
    # @!attribute additional_features
    #   <p>A list of optional additional parameters, such as time zone, that can be requested for each result. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only the <code>TimeZone</code> value.</p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p>A list of <a href="https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only the following codes: <code>en, id, km, lo, ms, my, pt, th, tl, vi, zh</code> </p>
    #   @return [String]
    # @!attribute political_view
    #   <p>The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers.</p>
    #   @return [String]
    # @!attribute intended_use
    #   <p> Indicates if the query results will be persisted in customer infrastructure. Defaults to <code>SingleUse</code> (not stored). </p> <note> <p>When storing <code>SearchText</code> responses, you <i>must</i> set this field to <code>Storage</code> to comply with the terms of service. These requests will be charged at a higher rate. Please review the <a href="https://aws.amazon.com/location/sla/">user agreement</a> and <a href="https://aws.amazon.com/location/pricing/">service pricing structure</a> to determine the correct setting for your use case.</p> </note>
    #   @return [String]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. </p>
    #   @return [String]
    # @!attribute travel_mode
    #   <p>Indicates the mode of mobility used by the end user. This is used to improve the relevance of search results. Valid values are <code>Car</code>, <code>Scooter</code>, and <code>Truck</code>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request.</p>
    #   @return [String]
    class SearchTextRequest < Struct.new(
      nil,
      :query_text,
      :query_id,
      :max_results,
      :bias_position,
      :filter,
      :additional_features,
      :language,
      :political_view,
      :intended_use,
      :next_token,
      :travel_mode,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pricing_bucket
    #   <p>The pricing bucket for which the query is charged at.</p> <p>For more information on pricing, please visit <a href="https://aws.amazon.com/location/pricing/">Amazon Location Service Pricing</a>.</p>
    #   @return [String]
    # @!attribute result_items
    #   <p>List of places or results returned for a query. </p>
    #   @return [Array<Types::SearchTextResultItem>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. </p>
    #   @return [String]
    class SearchTextResponse < Struct.new(
      nil,
      :pricing_bucket,
      :result_items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The text search result.</p>
    # @!attribute place_id
    #   <p>The <code>PlaceId</code> of the place you wish to receive the information for.</p>
    #   @return [String]
    # @!attribute place_type
    #   <p>A <code>PlaceType</code> is a category that the result place must belong to.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The item's title.</p>
    #   @return [String]
    # @!attribute address
    #   <p>The place's address.</p>
    #   @return [Types::Address]
    # @!attribute address_number_corrected
    #   <p>Boolean indicating if the address provided has been corrected.</p>
    #   @return [Boolean]
    # @!attribute position
    #   <p>The position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute distance
    #   <p>The distance in meters from the QueryPosition.</p>
    #   @return [Integer]
    # @!attribute map_view
    #   <p>The bounding box enclosing the geometric shape (area or line) that an individual result covers.</p> <p>The bounding box formed is defined as a set 4 coordinates: <code>[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]</code> </p>
    #   @return [Array<Float>]
    # @!attribute categories
    #   <p>Categories of results that results must belong to.</p>
    #   @return [Array<Types::Category>]
    # @!attribute food_types
    #   <p>List of food types offered by this result.</p>
    #   @return [Array<Types::FoodType>]
    # @!attribute business_chains
    #   <p>The Business Chains associated with the place.</p>
    #   @return [Array<Types::BusinessChain>]
    # @!attribute contacts
    #   <p>List of potential contact methods for the result/place.</p>
    #   @return [Types::Contacts]
    # @!attribute opening_hours
    #   <p> List of opening hours objects. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::OpeningHours>]
    # @!attribute access_points
    #   <p>Position of the access point in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Types::AccessPoint>]
    # @!attribute access_restrictions
    #   <p>Indicates known access restrictions on a vehicle access point. The index correlates to an access point and indicates if access through this point has some form of restriction.</p>
    #   @return [Array<Types::AccessRestriction>]
    # @!attribute time_zone
    #   <p>The time zone in which the place is located.</p>
    #   @return [Types::TimeZone]
    # @!attribute political_view
    #   <p>The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country.</p>
    #   @return [String]
    # @!attribute phonemes
    #   <p>How the various components of the result's address are pronounced in various languages.</p>
    #   @return [Types::PhonemeDetails]
    # @!attribute place_attributes
    #   <p>A list of place attributes for the result, such as whether the business offers drive-through service.</p>
    #   @return [Array<String>]
    # @!attribute cross_references
    #   <p>The list of supplier references available for this place. Requires the <code>CrossReferences</code> additional feature to be enabled.</p>
    #   @return [Array<Types::CrossReference>]
    class SearchTextResultItem < Struct.new(
      nil,
      :place_id,
      :place_type,
      :title,
      :address,
      :address_number_corrected,
      :position,
      :distance,
      :map_view,
      :categories,
      :food_types,
      :business_chains,
      :contacts,
      :opening_hours,
      :access_points,
      :access_restrictions,
      :time_zone,
      :political_view,
      :phonemes,
      :place_attributes,
      :cross_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = 0 unless options.key?(:distance)
        super
      end
    end

    # <p>Components that correspond to secondary identifiers on an address. The only component type supported currently is Unit.</p>
    # @!attribute number
    #   <p>Number that uniquely identifies a secondary address.</p>
    #   @return [String]
    # @!attribute designator
    #   <p>The designator of the secondary address component.</p> <p>Example: <code>Apt</code>.</p>
    #   @return [String]
    class SecondaryAddressComponent < Struct.new(
      nil,
      :number,
      :designator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Match score for a secondary address component in the result.</p>
    # @!attribute number
    #   <p>Match score for the secondary address number.</p>
    #   @return [Float]
    class SecondaryAddressComponentMatchScore < Struct.new(
      nil,
      :number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number] = 0 unless options.key?(:number)
        super
      end
    end

    # <p>Components of a street.</p>
    # @!attribute base_name
    #   <p>Base name part of the street name. </p> <p>Example: Younge from the "Younge street".</p>
    #   @return [String]
    # @!attribute type
    #   <p>Street type part of the street name. </p> <p>Example: <code>"avenue"</code>.</p>
    #   @return [String]
    # @!attribute type_placement
    #   <p>Defines if the street type is before or after the base name.</p>
    #   @return [String]
    # @!attribute type_separator
    #   <p>Defines a separator character such as <code>""</code> or <code>" "</code> between the base name and type.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>A prefix is a directional identifier that precedes, but is not included in, the base name of a road. </p> <p>Example: E for East.</p>
    #   @return [String]
    # @!attribute suffix
    #   <p>A suffix is a directional identifier that follows, but is not included in, the base name of a road. </p> <p>Example W for West.</p>
    #   @return [String]
    # @!attribute direction
    #   <p>Indicates the official directional identifiers assigned to highways.</p>
    #   @return [String]
    # @!attribute language
    #   <p>A <a href="https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry.</p>
    #   @return [String]
    class StreetComponents < Struct.new(
      nil,
      :base_name,
      :type,
      :type_placement,
      :type_separator,
      :prefix,
      :suffix,
      :direction,
      :language,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The sub-region.</p>
    # @!attribute code
    #   <p> Abbreviated code for the county or sub-region. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [String]
    # @!attribute name
    #   <p>Name for the county or sub-region.</p>
    #   @return [String]
    class SubRegion < Struct.new(
      nil,
      :code,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates the starting and ending index of the sub-region in the text query that match the found title. </p>
    # @!attribute code
    #   <p>Indicates the starting and ending index of the sub-region in the text query that match the found title. </p>
    #   @return [Array<Types::Highlight>]
    # @!attribute name
    #   <p>Indicates the starting and ending index of the name in the text query that match the found title. </p>
    #   @return [Array<Types::Highlight>]
    class SubRegionHighlights < Struct.new(
      nil,
      :code,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes how the parts of the textQuery matched the input query by returning the sections of the response which matched to textQuery terms.</p>
    # @!attribute label
    #   <p>Indicates the starting and ending indexes of the places in the result which were identified to match the textQuery. This result is useful for providing emphasis to results where the user query directly matched to make selecting the correct result from a list easier for an end user.</p>
    #   @return [Array<Types::Highlight>]
    class SuggestAddressHighlights < Struct.new(
      nil,
      :label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>SuggestFilter structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    # @!attribute bounding_box
    #   <p>The bounding box enclosing the geometric shape (area or line) that an individual result covers.</p> <p>The bounding box formed is defined as a set 4 coordinates: <code>[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]</code> </p>
    #   @return [Array<Float>]
    # @!attribute circle
    #   <p>The <code>Circle</code> that all results must be in. </p>
    #   @return [Types::FilterCircle]
    # @!attribute include_countries
    #   <p> A list of countries that all results must be in. Countries are represented by either their alpha-2 or alpha-3 character codes.</p>
    #   @return [Array<String>]
    class SuggestFilter < Struct.new(
      nil,
      :bounding_box,
      :circle,
      :include_countries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes how the parts of the textQuery matched the input query by returning the sections of the response which matched to textQuery terms.</p>
    # @!attribute title
    #   <p>Indicates the starting and ending index of the title in the text query that match the found title. </p>
    #   @return [Array<Types::Highlight>]
    # @!attribute address
    #   <p>The place's address.</p>
    #   @return [Types::SuggestAddressHighlights]
    class SuggestHighlights < Struct.new(
      nil,
      :title,
      :address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The suggested place results.</p>
    # @!attribute place_id
    #   <p>The <code>PlaceId</code> of the place you wish to receive the information for.</p>
    #   @return [String]
    # @!attribute place_type
    #   <p>A <code>PlaceType</code> is a category that the result place must belong to.</p>
    #   @return [String]
    # @!attribute address
    #   <p>The place's address.</p>
    #   @return [Types::Address]
    # @!attribute position
    #   <p>The position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute distance
    #   <p>The distance in meters from the QueryPosition.</p>
    #   @return [Integer]
    # @!attribute map_view
    #   <p>The bounding box enclosing the geometric shape (area or line) that an individual result covers.</p> <p>The bounding box formed is defined as a set 4 coordinates: <code>[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]</code> </p>
    #   @return [Array<Float>]
    # @!attribute categories
    #   <p>Categories of results that results must belong to.</p>
    #   @return [Array<Types::Category>]
    # @!attribute food_types
    #   <p> List of food types offered by this result. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::FoodType>]
    # @!attribute business_chains
    #   <p> The Business Chains associated with the place. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::BusinessChain>]
    # @!attribute access_points
    #   <p> Position of the access point in World Geodetic System (WGS 84) format: [longitude, latitude]. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::AccessPoint>]
    # @!attribute access_restrictions
    #   <p> Indicates known access restrictions on a vehicle access point. The index correlates to an access point and indicates if access through this point has some form of restriction. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::AccessRestriction>]
    # @!attribute time_zone
    #   <p>The time zone in which the place is located.</p>
    #   @return [Types::TimeZone]
    # @!attribute political_view
    #   <p> The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [String]
    # @!attribute phonemes
    #   <p> How the various components of the result's address are pronounced in various languages. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::PhonemeDetails]
    # @!attribute place_attributes
    #   <p>A list of place attributes for the result, such as whether the business offers drive-through service.</p>
    #   @return [Array<String>]
    # @!attribute cross_references
    #   <p>The list of supplier references available for this place. Requires the <code>CrossReferences</code> additional feature to be enabled.</p>
    #   @return [Array<Types::CrossReference>]
    class SuggestPlaceResult < Struct.new(
      nil,
      :place_id,
      :place_type,
      :address,
      :position,
      :distance,
      :map_view,
      :categories,
      :food_types,
      :business_chains,
      :access_points,
      :access_restrictions,
      :time_zone,
      :political_view,
      :phonemes,
      :place_attributes,
      :cross_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = 0 unless options.key?(:distance)
        super
      end
    end

    # <p>The suggested query results.</p>
    # @!attribute query_id
    #   <p>QueryId can be used to complete a follow up query through the SearchText API. The QueryId retains context from the original Suggest request such as filters, political view and language. See the SearchText API documentation for more details <a href="https://docs.aws.amazon.com/location/latest/APIReference/API_geoplaces_SearchText.html">SearchText API docs</a>. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <note> <p>The fields <code>QueryText</code>, and <code>QueryID</code> are mutually exclusive.</p> </note>
    #   @return [String]
    # @!attribute query_type
    #   <p> The query type. Category queries will search for places which have an entry matching the given category, for example "doctor office". BusinessChain queries will search for instances of a given business. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [String]
    class SuggestQueryResult < Struct.new(
      nil,
      :query_id,
      :query_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_text
    #   <p>The free-form text query to match addresses against. This is usually a partially typed address from an end user in an address box or form.</p> <note> <p>The fields <code>QueryText</code> and <code>QueryID</code> are mutually exclusive.</p> </note>
    #   @return [String]
    # @!attribute max_results
    #   <p> An optional limit for the number of results returned in a single call. </p> <p>Default value: 20</p>
    #   @return [Integer]
    # @!attribute max_query_refinements
    #   <p> Maximum number of query terms to be returned for use with a search text query. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Integer]
    # @!attribute bias_position
    #   <p>The position, in longitude and latitude, that the results should be close to. Typically, place results returned are ranked higher the closer they are to this position. Stored in <code>[lng, lat]</code> and in the WGS 84 format.</p> <note> <p>The fields <code>BiasPosition</code>, <code>FilterBoundingBox</code>, and <code>FilterCircle</code> are mutually exclusive.</p> </note>
    #   @return [Array<Float>]
    # @!attribute filter
    #   <p>A structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    #   @return [Types::SuggestFilter]
    # @!attribute additional_features
    #   <p> A list of optional additional parameters, such as time zone, that can be requested for each result. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only the <code>Core</code> and <code>TimeZone</code> values. </p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p> A list of <a href="https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only the following codes: <code>en, id, km, lo, ms, my, pt, th, tl, vi, zh</code> </p>
    #   @return [String]
    # @!attribute political_view
    #   <p> The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [String]
    # @!attribute intended_use
    #   <p> Indicates if the query results will be persisted in customer infrastructure. Defaults to <code>SingleUse</code> (not stored). Currently, <code>Suggest</code> does not support storage of results. </p>
    #   @return [String]
    # @!attribute travel_mode
    #   <p>Indicates the mode of mobility used by the end user. This is used to improve the relevance of search results. Valid values are <code>Car</code>, <code>Scooter</code>, and <code>Truck</code>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request.</p>
    #   @return [String]
    class SuggestRequest < Struct.new(
      nil,
      :query_text,
      :max_results,
      :max_query_refinements,
      :bias_position,
      :filter,
      :additional_features,
      :language,
      :political_view,
      :intended_use,
      :travel_mode,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pricing_bucket
    #   <p>The pricing bucket for which the query is charged at.</p> <p>For more information on pricing, please visit <a href="https://aws.amazon.com/location/pricing/">Amazon Location Service Pricing</a>.</p>
    #   @return [String]
    # @!attribute result_items
    #   <p>List of places or results returned for a query. </p>
    #   @return [Array<Types::SuggestResultItem>]
    # @!attribute query_refinements
    #   <p> Maximum number of query terms to be returned for use with a search text query. Not available in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::QueryRefinement>]
    class SuggestResponse < Struct.new(
      nil,
      :pricing_bucket,
      :result_items,
      :query_refinements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resulting item from the suggested query.</p>
    # @!attribute title
    #   <p>The display title that should be used when presenting this option to the end user.</p>
    #   @return [String]
    # @!attribute suggest_result_item_type
    #   <p>The result type. Place results represent the final result for a point of interest, Query results represent a follow up query which can be completed through the SearchText operation.</p>
    #   @return [String]
    # @!attribute place
    #   <p>The suggested place by its unique ID.</p>
    #   @return [Types::SuggestPlaceResult]
    # @!attribute query
    #   <p>The suggested query results.</p>
    #   @return [Types::SuggestQueryResult]
    # @!attribute highlights
    #   <p>Describes how the parts of the response element matched the input query by returning the sections of the response which matched to input query terms. </p>
    #   @return [Types::SuggestHighlights]
    class SuggestResultItem < Struct.new(
      nil,
      :title,
      :suggest_result_item_type,
      :place,
      :query,
      :highlights,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The time zone in which the place is located.</p>
    # @!attribute name
    #   <p>The time zone name.</p>
    #   @return [String]
    # @!attribute offset
    #   <p>Time zone offset of the timezone from UTC.</p>
    #   @return [String]
    # @!attribute offset_seconds
    #   <p>The offset of the time zone from UTC, in seconds.</p>
    #   @return [Integer]
    class TimeZone < Struct.new(
      nil,
      :name,
      :offset,
      :offset_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:offset_seconds] = 0 unless options.key?(:offset_seconds)
        super
      end
    end

    # <p>Translation details for the address, including alternative names and translations in available languages.</p>
    # @!attribute locality
    #   <p>A list of administrative names and translations for the locality address component.</p>
    #   @return [Array<Types::AdminNames>]
    # @!attribute region
    #   <p>A list of administrative names and translations for the region address component.</p>
    #   @return [Array<Types::AdminNames>]
    # @!attribute district
    #   <p>A list of administrative names and translations for the district address component.</p>
    #   @return [Array<Types::AdminNames>]
    # @!attribute sub_region
    #   <p>A list of administrative names and translations for the sub-region address component.</p>
    #   @return [Array<Types::AdminNames>]
    class TranslationDetails < Struct.new(
      nil,
      :locality,
      :region,
      :district,
      :sub_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A translation or alternative name for an address component.</p>
    # @!attribute value
    #   <p>The translated or alternative name value.</p>
    #   @return [String]
    # @!attribute language
    #   <p>A <a href="https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry">BCP 47</a> compliant language code for the translation name.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of translation name. Valid values are <code>Abbreviation</code>, <code>AreaCode</code>, <code>BaseName</code>, <code>Exonym</code>, <code>Shortened</code>, and <code>Synonym</code>.</p>
    #   @return [String]
    # @!attribute primary
    #   <p>If <code>true</code>, indicates this is the primary name variant for the given language.</p>
    #   @return [Boolean]
    # @!attribute transliterated
    #   <p>If <code>true</code>, indicates this name is a transliterated version rather than a native script translation.</p>
    #   @return [Boolean]
    class TranslationName < Struct.new(
      nil,
      :value,
      :language,
      :type,
      :primary,
      :transliterated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The USPS zip code.</p>
    # @!attribute zip_classification_code
    #   <p>The ZIP Classification Code, or in other words what type of postal code is it. </p>
    #   @return [String]
    class UspsZip < Struct.new(
      nil,
      :zip_classification_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The USPS zip+4 code.</p>
    # @!attribute record_type_code
    #   <p>The USPS ZIP+4 Record Type Code.</p>
    #   @return [String]
    class UspsZipPlus4 < Struct.new(
      nil,
      :record_type_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an AWS service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>Test stub for reason</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>Test stub for FieldList.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by the Amazon Location service.</p>
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

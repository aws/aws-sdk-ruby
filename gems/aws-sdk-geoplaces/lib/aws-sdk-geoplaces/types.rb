# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GeoPlaces
  module Types

    # You don't have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Position of the access point represented by longitude and latitude for
    # a vehicle.
    #
    # @!attribute [rw] position
    #   The position, in longitude and latitude.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/AccessPoint AWS API Documentation
    #
    class AccessPoint < Struct.new(
      :position)
      SENSITIVE = [:position]
      include Aws::Structure
    end

    # Indicates if the access location is restricted. Index correlates to
    # that of an access point and indicates if access through this point has
    # some form of restriction.
    #
    # @!attribute [rw] restricted
    #   The restriction.
    #   @return [Boolean]
    #
    # @!attribute [rw] categories
    #   Categories of results that results must belong too.
    #   @return [Array<Types::Category>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/AccessRestriction AWS API Documentation
    #
    class AccessRestriction < Struct.new(
      :restricted,
      :categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # The place address.
    #
    # @!attribute [rw] label
    #   Assembled address value built out of the address components,
    #   according to the regional postal rules. This is the correctly
    #   formatted address.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The country component of the address.
    #   @return [Types::Country]
    #
    # @!attribute [rw] region
    #   The region or state results should be present in.
    #
    #   Example: `North Rhine-Westphalia`.
    #   @return [Types::Region]
    #
    # @!attribute [rw] sub_region
    #   The sub-region or county for which results should be present in.
    #   @return [Types::SubRegion]
    #
    # @!attribute [rw] locality
    #   The locality or city of the address.
    #
    #   Example: `Vancouver`.
    #   @return [String]
    #
    # @!attribute [rw] district
    #   The district or division of a locality associated with this address.
    #   @return [String]
    #
    # @!attribute [rw] sub_district
    #   A subdivision of a district.
    #
    #   Example: `Minden-Lübbecke`.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   An alphanumeric string included in a postal address to facilitate
    #   mail sorting, such as post code, postcode, or ZIP code, for which
    #   the result should posses.
    #   @return [String]
    #
    # @!attribute [rw] block
    #   Name of the block.
    #
    #   Example: `Sunny Mansion 203 block: 2 Chome`
    #   @return [String]
    #
    # @!attribute [rw] sub_block
    #   Name of sub-block.
    #
    #   Example: `Sunny Mansion 203 sub-block: 4`
    #   @return [String]
    #
    # @!attribute [rw] intersection
    #   Name of the streets in the intersection.
    #
    #   Example: `["Friedrichstraße","Unter den Linden"]`
    #   @return [Array<String>]
    #
    # @!attribute [rw] street
    #   The name of the street results should be present in.
    #   @return [String]
    #
    # @!attribute [rw] street_components
    #   Components of the street.
    #
    #   Example: Younge from the "Younge street".
    #   @return [Array<Types::StreetComponents>]
    #
    # @!attribute [rw] address_number
    #   The number that identifies an address within a street.
    #   @return [String]
    #
    # @!attribute [rw] building
    #   The name of the building at the address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/Address AWS API Documentation
    #
    class Address < Struct.new(
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
      :building)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates how well the entire input matches the returned. It is equal
    # to 1 if all input tokens are recognized and matched.
    #
    # @!attribute [rw] country
    #   The alpha-2 or alpha-3 character code for the country that the
    #   results will be present in.
    #   @return [Float]
    #
    # @!attribute [rw] region
    #   The region or state results should be to be present in.
    #
    #   Example: `North Rhine-Westphalia`.
    #   @return [Float]
    #
    # @!attribute [rw] sub_region
    #   The sub-region or county for which results should be present in.
    #   @return [Float]
    #
    # @!attribute [rw] locality
    #   The city or locality results should be present in.
    #
    #   Example: `Vancouver`.
    #   @return [Float]
    #
    # @!attribute [rw] district
    #   The district or division of a city the results should be present in.
    #   @return [Float]
    #
    # @!attribute [rw] sub_district
    #   A subdivision of a district.
    #
    #   Example: `Minden-Lübbecke`
    #   @return [Float]
    #
    # @!attribute [rw] postal_code
    #   An alphanumeric string included in a postal address to facilitate
    #   mail sorting, such as post code, postcode, or ZIP code, for which
    #   the result should posses.
    #   @return [Float]
    #
    # @!attribute [rw] block
    #   Name of the block.
    #
    #   Example: `Sunny Mansion 203 block: 2 Chome`
    #   @return [Float]
    #
    # @!attribute [rw] sub_block
    #   Name of sub-block.
    #
    #   Example: `Sunny Mansion 203 sub-block: 4`
    #   @return [Float]
    #
    # @!attribute [rw] intersection
    #   Name of the streets in the intersection.
    #
    #   Example: `["Friedrichstraße","Unter den Linden"]`
    #   @return [Array<Float>]
    #
    # @!attribute [rw] address_number
    #   The house number or address results should have.
    #   @return [Float]
    #
    # @!attribute [rw] building
    #   The name of the building at the address.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/AddressComponentMatchScores AWS API Documentation
    #
    class AddressComponentMatchScores < Struct.new(
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
      :building)
      SENSITIVE = []
      include Aws::Structure
    end

    # How to pronounce the various components of the address or place.
    #
    # @!attribute [rw] country
    #   The alpha-2 or alpha-3 character code for the country that the
    #   results will be present in.
    #   @return [Array<Types::PhonemeTranscription>]
    #
    # @!attribute [rw] region
    #   How to pronounce the region or state results should be to be present
    #   in.
    #   @return [Array<Types::PhonemeTranscription>]
    #
    # @!attribute [rw] sub_region
    #   How to pronounce the sub-region or county for which results should
    #   be present in.
    #   @return [Array<Types::PhonemeTranscription>]
    #
    # @!attribute [rw] locality
    #   How to pronounce the city or locality results should be present in.
    #
    #   Example: `Vancouver`.
    #   @return [Array<Types::PhonemeTranscription>]
    #
    # @!attribute [rw] district
    #   How to pronounce the district or division of a city results should
    #   be present in.
    #   @return [Array<Types::PhonemeTranscription>]
    #
    # @!attribute [rw] sub_district
    #   How to pronounce the sub-district or division of a city results
    #   should be present in.
    #   @return [Array<Types::PhonemeTranscription>]
    #
    # @!attribute [rw] block
    #   How to pronounce the name of the block.
    #   @return [Array<Types::PhonemeTranscription>]
    #
    # @!attribute [rw] sub_block
    #   How to pronounce the name of the sub-block.
    #   @return [Array<Types::PhonemeTranscription>]
    #
    # @!attribute [rw] street
    #   How to pronounce the name of the street results should be present
    #   in.
    #   @return [Array<Types::PhonemeTranscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/AddressComponentPhonemes AWS API Documentation
    #
    class AddressComponentPhonemes < Struct.new(
      :country,
      :region,
      :sub_region,
      :locality,
      :district,
      :sub_district,
      :block,
      :sub_block,
      :street)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes how the parts of the response element matched the input
    # query by returning the sections of the response which matched to input
    # query terms.
    #
    # @!attribute [rw] label
    #   Indicates the starting and ending indexes for result items where
    #   they are identified to match the input query. This should be used to
    #   provide emphasis to output display to make selecting the correct
    #   result from a list easier for end users.
    #   @return [Array<Types::Highlight>]
    #
    # @!attribute [rw] country
    #   The alpha-2 or alpha-3 character code for the country that the
    #   results will be present in.
    #   @return [Types::CountryHighlights]
    #
    # @!attribute [rw] region
    #   The region or state results should be to be present in.
    #
    #   Example: `North Rhine-Westphalia`.
    #   @return [Types::RegionHighlights]
    #
    # @!attribute [rw] sub_region
    #   The sub-region or county for which results should be present in.
    #   @return [Types::SubRegionHighlights]
    #
    # @!attribute [rw] locality
    #   The city or locality results should be present in.
    #
    #   Example: `Vancouver`.
    #   @return [Array<Types::Highlight>]
    #
    # @!attribute [rw] district
    #   The district or division of a city the results should be present in.
    #   @return [Array<Types::Highlight>]
    #
    # @!attribute [rw] sub_district
    #   Indicates the starting and ending index of the title in the text
    #   query that match the found title.
    #   @return [Array<Types::Highlight>]
    #
    # @!attribute [rw] street
    #   The name of the street results should be present in.
    #   @return [Array<Types::Highlight>]
    #
    # @!attribute [rw] block
    #   Name of the block. Example: Sunny Mansion 203 block: 2 Chome
    #   @return [Array<Types::Highlight>]
    #
    # @!attribute [rw] sub_block
    #   Name of sub-block. Example Sunny Mansion 203 sub-block: 4
    #   @return [Array<Types::Highlight>]
    #
    # @!attribute [rw] intersection
    #   Name of the streets in the intersection. For example: e.g.
    #   \["Friedrichstraße","Unter den Linden"\]
    #   @return [Array<Array<Types::Highlight>>]
    #
    # @!attribute [rw] postal_code
    #   An alphanumeric string included in a postal address to facilitate
    #   mail sorting, such as post code, postcode, or ZIP code for which the
    #   result should posses.
    #   @return [Array<Types::Highlight>]
    #
    # @!attribute [rw] address_number
    #   The house number or address results should have.
    #   @return [Array<Types::Highlight>]
    #
    # @!attribute [rw] building
    #   The name of the building at the address.
    #   @return [Array<Types::Highlight>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/AutocompleteAddressHighlights AWS API Documentation
    #
    class AutocompleteAddressHighlights < Struct.new(
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
      :building)
      SENSITIVE = []
      include Aws::Structure
    end

    # Autocomplete structure which contains a set of inclusion/exclusion
    # properties that results must posses in order to be returned as a
    # result.
    #
    # @!attribute [rw] bounding_box
    #   The bounding box enclosing the geometric shape (area or line) that
    #   an individual result covers.
    #
    #   The bounding box formed is defined as a set 4 coordinates:
    #   `[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]`
    #   @return [Array<Float>]
    #
    # @!attribute [rw] circle
    #   The `Circle` that all results must be in.
    #   @return [Types::FilterCircle]
    #
    # @!attribute [rw] include_countries
    #   A list of countries that all results must be in. Countries are
    #   represented by either their alpha-2 or alpha-3 character codes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_place_types
    #   The included place types.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/AutocompleteFilter AWS API Documentation
    #
    class AutocompleteFilter < Struct.new(
      :bounding_box,
      :circle,
      :include_countries,
      :include_place_types)
      SENSITIVE = [:bounding_box, :circle]
      include Aws::Structure
    end

    # Describes how the parts of the response element matched the input
    # query by returning the sections of the response which matched to input
    # query terms.
    #
    # @!attribute [rw] title
    #   Indicates where the title field in the result matches the input
    #   query.
    #   @return [Array<Types::Highlight>]
    #
    # @!attribute [rw] address
    #   Describes how part of the result address match the input query.
    #   @return [Types::AutocompleteAddressHighlights]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/AutocompleteHighlights AWS API Documentation
    #
    class AutocompleteHighlights < Struct.new(
      :title,
      :address)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_text
    #   The free-form text query to match addresses against. This is usually
    #   a partially typed address from an end user in an address box or
    #   form.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional limit for the number of results returned in a single
    #   call.
    #   @return [Integer]
    #
    # @!attribute [rw] bias_position
    #   The position in longitude and latitude that the results should be
    #   close to. Typically, place results returned are ranked higher the
    #   closer they are to this position. Stored in `[lng, lat]` and in the
    #   WSG84 format.
    #
    #   <note markdown="1"> The fields `BiasPosition`, `FilterBoundingBox`, and `FilterCircle`
    #   are mutually exclusive.
    #
    #    </note>
    #   @return [Array<Float>]
    #
    # @!attribute [rw] filter
    #   A structure which contains a set of inclusion/exclusion properties
    #   that results must posses in order to be returned as a result.
    #   @return [Types::AutocompleteFilter]
    #
    # @!attribute [rw] postal_code_mode
    #   The `PostalCodeMode` affects how postal code results are returned.
    #   If a postal code spans multiple localities and this value is empty,
    #   partial district or locality information may be returned under a
    #   single postal code result entry. If it's populated with the value
    #   `cityLookup`, all cities in that postal code are returned.
    #   @return [String]
    #
    # @!attribute [rw] additional_features
    #   A list of optional additional parameters that can be requested for
    #   each result.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   A list of [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the
    #   entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #   @return [String]
    #
    # @!attribute [rw] political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #   @return [String]
    #
    # @!attribute [rw] intended_use
    #   Indicates if the results will be stored. Defaults to `SingleUse`, if
    #   left empty.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Optional: The API key to be used for authorization. Either an API
    #   key or valid SigV4 signature must be provided when making a request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/AutocompleteRequest AWS API Documentation
    #
    class AutocompleteRequest < Struct.new(
      :query_text,
      :max_results,
      :bias_position,
      :filter,
      :postal_code_mode,
      :additional_features,
      :language,
      :political_view,
      :intended_use,
      :key)
      SENSITIVE = [:query_text, :bias_position, :key]
      include Aws::Structure
    end

    # @!attribute [rw] pricing_bucket
    #   The pricing bucket for which the query is charged at.
    #
    #   For more inforamtion on pricing, please visit [Amazon Location
    #   Service Pricing][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #   @return [String]
    #
    # @!attribute [rw] result_items
    #   List of places or results returned for a query.
    #   @return [Array<Types::AutocompleteResultItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/AutocompleteResponse AWS API Documentation
    #
    class AutocompleteResponse < Struct.new(
      :pricing_bucket,
      :result_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A result matching the input query text.
    #
    # @!attribute [rw] place_id
    #   The PlaceId of the place associated with this result. This can be
    #   used to look up additional details about the result via GetPlace.
    #   @return [String]
    #
    # @!attribute [rw] place_type
    #   PlaceType describes the type of result entry returned.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A formatted string for display when presenting this result to an end
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The address associated with this result.
    #   @return [Types::Address]
    #
    # @!attribute [rw] distance
    #   The distance in meters between the center of the search area and
    #   this result. Useful to evaluate how far away from the original bias
    #   position the result is.
    #   @return [Integer]
    #
    # @!attribute [rw] language
    #   A list of [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the
    #   entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #   @return [String]
    #
    # @!attribute [rw] political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #   @return [String]
    #
    # @!attribute [rw] highlights
    #   Indicates the starting and ending index of the place in the text
    #   query that match the found title.
    #   @return [Types::AutocompleteHighlights]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/AutocompleteResultItem AWS API Documentation
    #
    class AutocompleteResultItem < Struct.new(
      :place_id,
      :place_type,
      :title,
      :address,
      :distance,
      :language,
      :political_view,
      :highlights)
      SENSITIVE = []
      include Aws::Structure
    end

    # A businesschain is a chain of businesses that belong to the same
    # brand. For example `7-11`.
    #
    # @!attribute [rw] name
    #   The business chain name.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The Business Chain Id.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/BusinessChain AWS API Documentation
    #
    class BusinessChain < Struct.new(
      :name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Category of the `Place` returned.
    #
    # @!attribute [rw] id
    #   The category ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The category name.
    #   @return [String]
    #
    # @!attribute [rw] localized_name
    #   Localized name of the category type.
    #   @return [String]
    #
    # @!attribute [rw] primary
    #   Boolean which indicates if this category is the primary offered by
    #   the place.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/Category AWS API Documentation
    #
    class Category < Struct.new(
      :id,
      :name,
      :localized_name,
      :primary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates how well the input matches the returned element. It is equal
    # to 1 if all input tokens are recognized and matched to the title in
    # the result.
    #
    # @!attribute [rw] title
    #   Indicates the starting and ending index of the title in the text
    #   query that match the found title.
    #   @return [Float]
    #
    # @!attribute [rw] address
    #   The place's address.
    #   @return [Types::AddressComponentMatchScores]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/ComponentMatchScores AWS API Documentation
    #
    class ComponentMatchScores < Struct.new(
      :title,
      :address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details related to contacts.
    #
    # @!attribute [rw] label
    #   The contact's label.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The contact's value.
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   Categories of results that results must belong too.
    #   @return [Array<Types::Category>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/ContactDetails AWS API Documentation
    #
    class ContactDetails < Struct.new(
      :label,
      :value,
      :categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of potential contact methods for the result/place.
    #
    # @!attribute [rw] phones
    #   List of phone numbers for the results contact.
    #   @return [Array<Types::ContactDetails>]
    #
    # @!attribute [rw] faxes
    #   List of fax addresses for the result contact.
    #   @return [Array<Types::ContactDetails>]
    #
    # @!attribute [rw] websites
    #   List of website URLs that belong to the result.
    #   @return [Array<Types::ContactDetails>]
    #
    # @!attribute [rw] emails
    #   List of emails for contacts of the result.
    #   @return [Array<Types::ContactDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/Contacts AWS API Documentation
    #
    class Contacts < Struct.new(
      :phones,
      :faxes,
      :websites,
      :emails)
      SENSITIVE = []
      include Aws::Structure
    end

    # The alpha-2 or alpha-3 character code for the country that the results
    # will be present in.
    #
    # @!attribute [rw] code_2
    #   Country, represented by its alpha 2-character code.
    #   @return [String]
    #
    # @!attribute [rw] code_3
    #   Country, represented by its alpha t-character code.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the country.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/Country AWS API Documentation
    #
    class Country < Struct.new(
      :code_2,
      :code_3,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the starting and ending index of the country in the text
    # query that match the found title.
    #
    # @!attribute [rw] code
    #   Indicates the starting and ending index of the country code in the
    #   text query that match the found title.
    #   @return [Array<Types::Highlight>]
    #
    # @!attribute [rw] name
    #   Indicates the starting and ending index of the country code in the
    #   text query that match the found title.
    #   @return [Array<Types::Highlight>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/CountryHighlights AWS API Documentation
    #
    class CountryHighlights < Struct.new(
      :code,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `Circle` that all results must be in.
    #
    # @!attribute [rw] center
    #   The center position, in longitude and latitude, of the
    #   `FilterCircle`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] radius
    #   The radius, in meters, of the `FilterCircle`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/FilterCircle AWS API Documentation
    #
    class FilterCircle < Struct.new(
      :center,
      :radius)
      SENSITIVE = [:center]
      include Aws::Structure
    end

    # List of `Food` types offered by this result.
    #
    # @!attribute [rw] localized_name
    #   Localized name of the food type.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The Food Type Id.
    #   @return [String]
    #
    # @!attribute [rw] primary
    #   Boolean which indicates if this food type is the primary offered by
    #   the place. For example, if a location serves fast food, but also
    #   dessert, he primary would likely be fast food.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/FoodType AWS API Documentation
    #
    class FoodType < Struct.new(
      :localized_name,
      :id,
      :primary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Geocode structure which contains a set of inclusion/exclusion
    # properties that results must posses in order to be returned as a
    # result.
    #
    # @!attribute [rw] include_countries
    #   A list of countries that all results must be in. Countries are
    #   represented by either their alpha-2 or alpha-3 character codes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_place_types
    #   The included place types.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/GeocodeFilter AWS API Documentation
    #
    class GeocodeFilter < Struct.new(
      :include_countries,
      :include_place_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structured free text query allows you to search for places by the
    # name or text representation of specific properties of the place.
    #
    # @!attribute [rw] country
    #   The alpha-2 or alpha-3 character code for the country that the
    #   results will be present in.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The region or state results should be to be present in.
    #
    #   Example: `North Rhine-Westphalia`.
    #   @return [String]
    #
    # @!attribute [rw] sub_region
    #   The sub-region or county for which results should be present in.
    #   @return [String]
    #
    # @!attribute [rw] locality
    #   City or locality results should be present in.
    #
    #   Example: `Vancouver`.
    #   @return [String]
    #
    # @!attribute [rw] district
    #   The district or division of a city the results should be present in.
    #   @return [String]
    #
    # @!attribute [rw] street
    #   The name of the street results should be present in.
    #   @return [String]
    #
    # @!attribute [rw] address_number
    #   The house number or address results should have.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   An alphanumeric string included in a postal address to facilitate
    #   mail sorting, such as post code, postcode, or ZIP code for which the
    #   result should posses.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/GeocodeQueryComponents AWS API Documentation
    #
    class GeocodeQueryComponents < Struct.new(
      :country,
      :region,
      :sub_region,
      :locality,
      :district,
      :street,
      :address_number,
      :postal_code)
      SENSITIVE = [:country, :region, :sub_region, :locality, :district, :street, :address_number, :postal_code]
      include Aws::Structure
    end

    # @!attribute [rw] query_text
    #   The free-form text query to match addresses against. This is usually
    #   a partially typed address from an end user in an address box or
    #   form.
    #   @return [String]
    #
    # @!attribute [rw] query_components
    #   A structured free text query allows you to search for places by the
    #   name or text representation of specific properties of the place.
    #   @return [Types::GeocodeQueryComponents]
    #
    # @!attribute [rw] max_results
    #   An optional limit for the number of results returned in a single
    #   call.
    #   @return [Integer]
    #
    # @!attribute [rw] bias_position
    #   The position, in longitude and latitude, that the results should be
    #   close to. Typically, place results returned are ranked higher the
    #   closer they are to this position. Stored in `[lng, lat]` and in the
    #   WSG84 format.
    #
    #   <note markdown="1"> The fields `BiasPosition`, `FilterBoundingBox`, and `FilterCircle`
    #   are mutually exclusive.
    #
    #    </note>
    #   @return [Array<Float>]
    #
    # @!attribute [rw] filter
    #   A structure which contains a set of inclusion/exclusion properties
    #   that results must posses in order to be returned as a result.
    #   @return [Types::GeocodeFilter]
    #
    # @!attribute [rw] additional_features
    #   A list of optional additional parameters, such as time zone, that
    #   can be requested for each result.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   A list of [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the
    #   entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #   @return [String]
    #
    # @!attribute [rw] political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #   @return [String]
    #
    # @!attribute [rw] intended_use
    #   Indicates if the results will be stored. Defaults to `SingleUse`, if
    #   left empty.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Optional: The API key to be used for authorization. Either an API
    #   key or valid SigV4 signature must be provided when making a request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/GeocodeRequest AWS API Documentation
    #
    class GeocodeRequest < Struct.new(
      :query_text,
      :query_components,
      :max_results,
      :bias_position,
      :filter,
      :additional_features,
      :language,
      :political_view,
      :intended_use,
      :key)
      SENSITIVE = [:query_text, :bias_position, :key]
      include Aws::Structure
    end

    # @!attribute [rw] pricing_bucket
    #   The pricing bucket for which the query is charged at.
    #
    #   For more inforamtion on pricing, please visit [Amazon Location
    #   Service Pricing][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #   @return [String]
    #
    # @!attribute [rw] result_items
    #   List of places or results returned for a query.
    #   @return [Array<Types::GeocodeResultItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/GeocodeResponse AWS API Documentation
    #
    class GeocodeResponse < Struct.new(
      :pricing_bucket,
      :result_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Geocoded result.
    #
    # @!attribute [rw] place_id
    #   The `PlaceId` of the place you wish to receive the information for.
    #   @return [String]
    #
    # @!attribute [rw] place_type
    #   A `PlaceType` is a category that the result place must belong to.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The localized display name of this result item based on request
    #   parameter `language`.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The place's address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] address_number_corrected
    #   Boolean indicating if the address provided has been corrected.
    #   @return [Boolean]
    #
    # @!attribute [rw] postal_code_details
    #   Contains details about the postal code of the place/result.
    #   @return [Array<Types::PostalCodeDetails>]
    #
    # @!attribute [rw] position
    #   The position in longitude and latitude.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] distance
    #   The distance in meters from the QueryPosition.
    #   @return [Integer]
    #
    # @!attribute [rw] map_view
    #   The bounding box enclosing the geometric shape (area or line) that
    #   an individual result covers.
    #
    #   The bounding box formed is defined as a set 4 coordinates:
    #   `[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]`
    #   @return [Array<Float>]
    #
    # @!attribute [rw] categories
    #   Categories of results that results must belong to.
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] food_types
    #   List of food types offered by this result.
    #   @return [Array<Types::FoodType>]
    #
    # @!attribute [rw] access_points
    #   Position of the access point represent by longitude and latitude.
    #   @return [Array<Types::AccessPoint>]
    #
    # @!attribute [rw] time_zone
    #   The time zone in which the place is located.
    #   @return [Types::TimeZone]
    #
    # @!attribute [rw] political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #   @return [String]
    #
    # @!attribute [rw] match_scores
    #   Indicates how well the entire input matches the returned. It is
    #   equal to 1 if all input tokens are recognized and matched.
    #   @return [Types::MatchScoreDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/GeocodeResultItem AWS API Documentation
    #
    class GeocodeResultItem < Struct.new(
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
      :match_scores)
      SENSITIVE = [:position, :map_view]
      include Aws::Structure
    end

    # @!attribute [rw] place_id
    #   The `PlaceId` of the place you wish to receive the information for.
    #   @return [String]
    #
    # @!attribute [rw] additional_features
    #   A list of optional additional parameters such as time zone that can
    #   be requested for each result.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   A list of [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the
    #   entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #   @return [String]
    #
    # @!attribute [rw] political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #   @return [String]
    #
    # @!attribute [rw] intended_use
    #   Indicates if the results will be stored. Defaults to `SingleUse`, if
    #   left empty.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Optional: The API key to be used for authorization. Either an API
    #   key or valid SigV4 signature must be provided when making a request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/GetPlaceRequest AWS API Documentation
    #
    class GetPlaceRequest < Struct.new(
      :place_id,
      :additional_features,
      :language,
      :political_view,
      :intended_use,
      :key)
      SENSITIVE = [:place_id, :key]
      include Aws::Structure
    end

    # @!attribute [rw] place_id
    #   The `PlaceId` of the place you wish to receive the information for.
    #   @return [String]
    #
    # @!attribute [rw] place_type
    #   A `PlaceType` is a category that the result place must belong to.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The localized display name of this result item based on request
    #   parameter `language`.
    #   @return [String]
    #
    # @!attribute [rw] pricing_bucket
    #   The pricing bucket for which the query is charged at.
    #
    #   For more inforamtion on pricing, please visit [Amazon Location
    #   Service Pricing][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The place's address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] address_number_corrected
    #   Boolean indicating if the address provided has been corrected.
    #   @return [Boolean]
    #
    # @!attribute [rw] postal_code_details
    #   Contains details about the postal code of the place/result.
    #   @return [Array<Types::PostalCodeDetails>]
    #
    # @!attribute [rw] position
    #   The position, in longitude and latitude.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] map_view
    #   The bounding box enclosing the geometric shape (area or line) that
    #   an individual result covers.
    #
    #   The bounding box formed is defined as a set of four coordinates:
    #   `[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]`
    #   @return [Array<Float>]
    #
    # @!attribute [rw] categories
    #   Categories of results that results must belong to.
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] food_types
    #   List of food types offered by this result.
    #   @return [Array<Types::FoodType>]
    #
    # @!attribute [rw] business_chains
    #   The Business Chains associated with the place.
    #   @return [Array<Types::BusinessChain>]
    #
    # @!attribute [rw] contacts
    #   List of potential contact methods for the result/place.
    #   @return [Types::Contacts]
    #
    # @!attribute [rw] opening_hours
    #   List of opening hours objects.
    #   @return [Array<Types::OpeningHours>]
    #
    # @!attribute [rw] access_points
    #   Position of the access point in `(lng,lat)`.
    #   @return [Array<Types::AccessPoint>]
    #
    # @!attribute [rw] access_restrictions
    #   Indicates known access restrictions on a vehicle access point. The
    #   index correlates to an access point and indicates if access through
    #   this point has some form of restriction.
    #   @return [Array<Types::AccessRestriction>]
    #
    # @!attribute [rw] time_zone
    #   The time zone in which the place is located.
    #   @return [Types::TimeZone]
    #
    # @!attribute [rw] political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #   @return [String]
    #
    # @!attribute [rw] phonemes
    #   How the various components of the result's address are pronounced
    #   in various languages.
    #   @return [Types::PhonemeDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/GetPlaceResponse AWS API Documentation
    #
    class GetPlaceResponse < Struct.new(
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
      :phonemes)
      SENSITIVE = [:position, :map_view]
      include Aws::Structure
    end

    # Describes how parts of the result response match the input query.
    #
    # @!attribute [rw] start_index
    #   Start index of the highlight.
    #   @return [Integer]
    #
    # @!attribute [rw] end_index
    #   End index of the highlight.
    #   @return [Integer]
    #
    # @!attribute [rw] value
    #   The highlight's value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/Highlight AWS API Documentation
    #
    class Highlight < Struct.new(
      :start_index,
      :end_index,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details related to the match score.
    #
    # @!attribute [rw] overall
    #   Indicates how well the entire input matches the returned. It is
    #   equal to 1 if all input tokens are recognized and matched.
    #   @return [Float]
    #
    # @!attribute [rw] components
    #   Indicates how well the component input matches the returned. It is
    #   equal to 1 if all input tokens are recognized and matched.
    #   @return [Types::ComponentMatchScores]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/MatchScoreDetails AWS API Documentation
    #
    class MatchScoreDetails < Struct.new(
      :overall,
      :components)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of opening hours objects.
    #
    # @!attribute [rw] display
    #   List of opening hours in the format they are displayed in. This can
    #   vary by result and in most cases represents how the result uniquely
    #   formats their opening hours.
    #   @return [Array<String>]
    #
    # @!attribute [rw] open_now
    #   Boolean which indicates if the result/place is currently open.
    #   @return [Boolean]
    #
    # @!attribute [rw] components
    #   Components of the opening hours object.
    #   @return [Array<Types::OpeningHoursComponents>]
    #
    # @!attribute [rw] categories
    #   Categories of results that results must belong too.
    #   @return [Array<Types::Category>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/OpeningHours AWS API Documentation
    #
    class OpeningHours < Struct.new(
      :display,
      :open_now,
      :components,
      :categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # Components of the opening hours object.
    #
    # @!attribute [rw] open_time
    #   String which represents the opening hours, such as `"T070000"`.
    #   @return [String]
    #
    # @!attribute [rw] open_duration
    #   String which represents the duration of the opening period, such as
    #   `"PT12H00M"`.
    #   @return [String]
    #
    # @!attribute [rw] recurrence
    #   Days or periods when the provided opening hours are in affect.
    #
    #   Example: `FREQ:DAILY;BYDAY:MO,TU,WE,TH,SU`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/OpeningHoursComponents AWS API Documentation
    #
    class OpeningHoursComponents < Struct.new(
      :open_time,
      :open_duration,
      :recurrence)
      SENSITIVE = []
      include Aws::Structure
    end

    # The phoneme details.
    #
    # @!attribute [rw] title
    #   List of `PhonemeTranscription`. See `PhonemeTranscription` for
    #   fields.
    #   @return [Array<Types::PhonemeTranscription>]
    #
    # @!attribute [rw] address
    #   How to pronounce the address.
    #   @return [Types::AddressComponentPhonemes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/PhonemeDetails AWS API Documentation
    #
    class PhonemeDetails < Struct.new(
      :title,
      :address)
      SENSITIVE = []
      include Aws::Structure
    end

    # How to pronounce the various components of the address or place.
    #
    # @!attribute [rw] value
    #   Value which indicates how to pronounce the value.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   A list of [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the
    #   entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #   @return [String]
    #
    # @!attribute [rw] preferred
    #   Boolean which indicates if it the preferred pronunciation.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/PhonemeTranscription AWS API Documentation
    #
    class PhonemeTranscription < Struct.new(
      :value,
      :language,
      :preferred)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the postal code of the place or result.
    #
    # @!attribute [rw] postal_code
    #   An alphanumeric string included in a postal address to facilitate
    #   mail sorting, such as post code, postcode, or ZIP code for which the
    #   result should posses.
    #   @return [String]
    #
    # @!attribute [rw] postal_authority
    #   The postal authority or entity. This could be a governmental
    #   authority, a regulatory authority, or a designated postal operator.
    #   @return [String]
    #
    # @!attribute [rw] postal_code_type
    #   The postal code type.
    #   @return [String]
    #
    # @!attribute [rw] usps_zip
    #   The ZIP Classification Code, or in other words what type of postal
    #   code is it.
    #   @return [Types::UspsZip]
    #
    # @!attribute [rw] usps_zip_plus_4
    #   The USPS ZIP+4 Record Type Code.
    #   @return [Types::UspsZipPlus4]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/PostalCodeDetails AWS API Documentation
    #
    class PostalCodeDetails < Struct.new(
      :postal_code,
      :postal_authority,
      :postal_code_type,
      :usps_zip,
      :usps_zip_plus_4)
      SENSITIVE = []
      include Aws::Structure
    end

    # Suggestions for refining individual query terms. Suggestions are
    # returned as objects which note the term, suggested replacement, and
    # its index in the query.
    #
    # @!attribute [rw] refined_term
    #   The term that will be suggested to the user.
    #   @return [String]
    #
    # @!attribute [rw] original_term
    #   The sub-string of the original query that is replaced by this query
    #   term.
    #   @return [String]
    #
    # @!attribute [rw] start_index
    #   Start index of the parsed component.
    #   @return [Integer]
    #
    # @!attribute [rw] end_index
    #   End index of the parsed query.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/QueryRefinement AWS API Documentation
    #
    class QueryRefinement < Struct.new(
      :refined_term,
      :original_term,
      :start_index,
      :end_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # The region or state results should be to be present in.
    #
    # Example: `North Rhine-Westphalia`.
    #
    # @!attribute [rw] code
    #   Abbreviated code for a the state, province or region of the country.
    #
    #   Example: `BC`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for a the state, province, or region of the country.
    #
    #   Example: `British Columbia`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/Region AWS API Documentation
    #
    class Region < Struct.new(
      :code,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the starting and ending index of the region in the text
    # query that match the found title.
    #
    # @!attribute [rw] code
    #   Indicates the starting and ending index of the region in the text
    #   query that match the found title.
    #   @return [Array<Types::Highlight>]
    #
    # @!attribute [rw] name
    #   Indicates the starting and ending index of the region name in the
    #   text query that match the found title.
    #   @return [Array<Types::Highlight>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/RegionHighlights AWS API Documentation
    #
    class RegionHighlights < Struct.new(
      :code,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The included place types.
    #
    # @!attribute [rw] include_place_types
    #   The included place types.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/ReverseGeocodeFilter AWS API Documentation
    #
    class ReverseGeocodeFilter < Struct.new(
      :include_place_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_position
    #   The position, in `[lng, lat]` for which you are querying nearby
    #   resultsfor. Results closer to the position will be ranked higher
    #   then results further away from the position
    #   @return [Array<Float>]
    #
    # @!attribute [rw] query_radius
    #   The maximum distance in meters from the QueryPosition from which a
    #   result will be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] max_results
    #   An optional limit for the number of results returned in a single
    #   call.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   A structure which contains a set of inclusion/exclusion properties
    #   that results must posses in order to be returned as a result.
    #   @return [Types::ReverseGeocodeFilter]
    #
    # @!attribute [rw] additional_features
    #   A list of optional additional parameters, such as time zone that can
    #   be requested for each result.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   A list of [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the
    #   entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #   @return [String]
    #
    # @!attribute [rw] political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #   @return [String]
    #
    # @!attribute [rw] intended_use
    #   Indicates if the results will be stored. Defaults to `SingleUse`, if
    #   left empty.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Optional: The API key to be used for authorization. Either an API
    #   key or valid SigV4 signature must be provided when making a request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/ReverseGeocodeRequest AWS API Documentation
    #
    class ReverseGeocodeRequest < Struct.new(
      :query_position,
      :query_radius,
      :max_results,
      :filter,
      :additional_features,
      :language,
      :political_view,
      :intended_use,
      :key)
      SENSITIVE = [:query_position, :key]
      include Aws::Structure
    end

    # @!attribute [rw] pricing_bucket
    #   The pricing bucket for which the query is charged at.
    #
    #   For more inforamtion on pricing, please visit [Amazon Location
    #   Service Pricing][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #   @return [String]
    #
    # @!attribute [rw] result_items
    #   List of places or results returned for a query.
    #   @return [Array<Types::ReverseGeocodeResultItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/ReverseGeocodeResponse AWS API Documentation
    #
    class ReverseGeocodeResponse < Struct.new(
      :pricing_bucket,
      :result_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The returned location from the `Reverse Geocode` action.
    #
    # @!attribute [rw] place_id
    #   The `PlaceId` of the place you wish to receive the information for.
    #   @return [String]
    #
    # @!attribute [rw] place_type
    #   A `PlaceType` is a category that the result place must belong to.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The localized display name of this result item based on request
    #   parameter `language`.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The place's address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] address_number_corrected
    #   Boolean indicating if the address provided has been corrected.
    #   @return [Boolean]
    #
    # @!attribute [rw] postal_code_details
    #   Contains details about the postal code of the place/result.
    #   @return [Array<Types::PostalCodeDetails>]
    #
    # @!attribute [rw] position
    #   The position in longitude and latitude.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] distance
    #   The distance in meters from the QueryPosition.
    #   @return [Integer]
    #
    # @!attribute [rw] map_view
    #   The bounding box enclosing the geometric shape (area or line) that
    #   an individual result covers.
    #
    #   The bounding box formed is defined as a set 4 coordinates:
    #   `[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]`
    #   @return [Array<Float>]
    #
    # @!attribute [rw] categories
    #   Categories of results that results must belong to.
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] food_types
    #   List of food types offered by this result.
    #   @return [Array<Types::FoodType>]
    #
    # @!attribute [rw] access_points
    #   Position of the access point represent by longitude and latitude.
    #   @return [Array<Types::AccessPoint>]
    #
    # @!attribute [rw] time_zone
    #   The time zone in which the place is located.
    #   @return [Types::TimeZone]
    #
    # @!attribute [rw] political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/ReverseGeocodeResultItem AWS API Documentation
    #
    class ReverseGeocodeResultItem < Struct.new(
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
      :political_view)
      SENSITIVE = [:position, :map_view]
      include Aws::Structure
    end

    # SearchNearby structure which contains a set of inclusion/exclusion
    # properties that results must posses in order to be returned as a
    # result.
    #
    # @!attribute [rw] bounding_box
    #   The bounding box enclosing the geometric shape (area or line) that
    #   an individual result covers.
    #
    #   The bounding box formed is defined as a set 4 coordinates:
    #   `[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]`
    #   @return [Array<Float>]
    #
    # @!attribute [rw] include_countries
    #   A list of countries that all results must be in. Countries are
    #   represented by either their alpha-2 or alpha-3 character codes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_categories
    #   Categories of results that results must belong too.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclude_categories
    #   Categories of results that results are excluded from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_business_chains
    #   The Business Chains associated with the place.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclude_business_chains
    #   The Business Chains associated with the place.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_food_types
    #   Food types that results are included from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclude_food_types
    #   Food types that results are excluded from.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SearchNearbyFilter AWS API Documentation
    #
    class SearchNearbyFilter < Struct.new(
      :bounding_box,
      :include_countries,
      :include_categories,
      :exclude_categories,
      :include_business_chains,
      :exclude_business_chains,
      :include_food_types,
      :exclude_food_types)
      SENSITIVE = [:bounding_box]
      include Aws::Structure
    end

    # @!attribute [rw] query_position
    #   The position, in `[lng, lat]` for which you are querying nearby
    #   resultsfor. Results closer to the position will be ranked higher
    #   then results further away from the position
    #   @return [Array<Float>]
    #
    # @!attribute [rw] query_radius
    #   The maximum distance in meters from the QueryPosition from which a
    #   result will be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] max_results
    #   An optional limit for the number of results returned in a single
    #   call.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   A structure which contains a set of inclusion/exclusion properties
    #   that results must posses in order to be returned as a result.
    #   @return [Types::SearchNearbyFilter]
    #
    # @!attribute [rw] additional_features
    #   A list of optional additional parameters, such as time zone, that
    #   can be requested for each result.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   A list of [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the
    #   entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #   @return [String]
    #
    # @!attribute [rw] political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #   @return [String]
    #
    # @!attribute [rw] intended_use
    #   Indicates if the results will be stored. Defaults to `SingleUse`, if
    #   left empty.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Optional: The API key to be used for authorization. Either an API
    #   key or valid SigV4 signature must be provided when making a request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SearchNearbyRequest AWS API Documentation
    #
    class SearchNearbyRequest < Struct.new(
      :query_position,
      :query_radius,
      :max_results,
      :filter,
      :additional_features,
      :language,
      :political_view,
      :intended_use,
      :next_token,
      :key)
      SENSITIVE = [:query_position, :key]
      include Aws::Structure
    end

    # @!attribute [rw] pricing_bucket
    #   The pricing bucket for which the query is charged at.
    #
    #   For more inforamtion on pricing, please visit [Amazon Location
    #   Service Pricing][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #   @return [String]
    #
    # @!attribute [rw] result_items
    #   List of places or results returned for a query.
    #   @return [Array<Types::SearchNearbyResultItem>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SearchNearbyResponse AWS API Documentation
    #
    class SearchNearbyResponse < Struct.new(
      :pricing_bucket,
      :result_items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The search results of nearby places.
    #
    # @!attribute [rw] place_id
    #   The `PlaceId` of the place you wish to receive the information for.
    #   @return [String]
    #
    # @!attribute [rw] place_type
    #   A `PlaceType` is a category that the result place must belong to.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The item's title.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The place's address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] address_number_corrected
    #   Boolean indicating if the address provided has been corrected.
    #   @return [Boolean]
    #
    # @!attribute [rw] position
    #   The position in longitude and latitude.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] distance
    #   The distance in meters from the QueryPosition.
    #   @return [Integer]
    #
    # @!attribute [rw] map_view
    #   The bounding box enclosing the geometric shape (area or line) that
    #   an individual result covers.
    #
    #   The bounding box formed is defined as a set 4 coordinates:
    #   `[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]`
    #   @return [Array<Float>]
    #
    # @!attribute [rw] categories
    #   Categories of results that results must belong to.
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] food_types
    #   List of food types offered by this result.
    #   @return [Array<Types::FoodType>]
    #
    # @!attribute [rw] business_chains
    #   The Business Chains associated with the place.
    #   @return [Array<Types::BusinessChain>]
    #
    # @!attribute [rw] contacts
    #   List of potential contact methods for the result/place.
    #   @return [Types::Contacts]
    #
    # @!attribute [rw] opening_hours
    #   List of opening hours objects.
    #   @return [Array<Types::OpeningHours>]
    #
    # @!attribute [rw] access_points
    #   Position of the access point represent by longitude and latitude.
    #   @return [Array<Types::AccessPoint>]
    #
    # @!attribute [rw] access_restrictions
    #   Indicates known access restrictions on a vehicle access point. The
    #   index correlates to an access point and indicates if access through
    #   this point has some form of restriction.
    #   @return [Array<Types::AccessRestriction>]
    #
    # @!attribute [rw] time_zone
    #   The time zone in which the place is located.
    #   @return [Types::TimeZone]
    #
    # @!attribute [rw] political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #   @return [String]
    #
    # @!attribute [rw] phonemes
    #   How the various components of the result's address are pronounced
    #   in various languages.
    #   @return [Types::PhonemeDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SearchNearbyResultItem AWS API Documentation
    #
    class SearchNearbyResultItem < Struct.new(
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
      :phonemes)
      SENSITIVE = [:position, :map_view]
      include Aws::Structure
    end

    # SearchText structure which contains a set of inclusion/exclusion
    # properties that results must posses in order to be returned as a
    # result.
    #
    # @!attribute [rw] bounding_box
    #   The bounding box enclosing the geometric shape (area or line) that
    #   an individual result covers.
    #
    #   The bounding box formed is defined as a set 4 coordinates:
    #   `[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]`
    #   @return [Array<Float>]
    #
    # @!attribute [rw] circle
    #   The `Circle` that all results must be in.
    #   @return [Types::FilterCircle]
    #
    # @!attribute [rw] include_countries
    #   A list of countries that all results must be in. Countries are
    #   represented by either their alpha-2 or alpha-3 character codes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SearchTextFilter AWS API Documentation
    #
    class SearchTextFilter < Struct.new(
      :bounding_box,
      :circle,
      :include_countries)
      SENSITIVE = [:bounding_box, :circle]
      include Aws::Structure
    end

    # @!attribute [rw] query_text
    #   The free-form text query to match addresses against. This is usually
    #   a partially typed address from an end user in an address box or
    #   form.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The query Id.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional limit for the number of results returned in a single
    #   call.
    #   @return [Integer]
    #
    # @!attribute [rw] bias_position
    #   The position, in longitude and latitude, that the results should be
    #   close to. Typically, place results returned are ranked higher the
    #   closer they are to this position. Stored in `[lng, lat]` and in the
    #   WSG84 format.
    #
    #   <note markdown="1"> The fields `BiasPosition`, `FilterBoundingBox`, and `FilterCircle`
    #   are mutually exclusive.
    #
    #    </note>
    #   @return [Array<Float>]
    #
    # @!attribute [rw] filter
    #   A structure which contains a set of inclusion/exclusion properties
    #   that results must posses in order to be returned as a result.
    #   @return [Types::SearchTextFilter]
    #
    # @!attribute [rw] additional_features
    #   A list of optional additional parameters, such as time zone, that
    #   can be requested for each result.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   A list of [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the
    #   entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #   @return [String]
    #
    # @!attribute [rw] political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #   @return [String]
    #
    # @!attribute [rw] intended_use
    #   Indicates if the results will be stored. Defaults to `SingleUse`, if
    #   left empty.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Optional: The API key to be used for authorization. Either an API
    #   key or valid SigV4 signature must be provided when making a request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SearchTextRequest AWS API Documentation
    #
    class SearchTextRequest < Struct.new(
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
      :key)
      SENSITIVE = [:query_text, :query_id, :bias_position, :key]
      include Aws::Structure
    end

    # @!attribute [rw] pricing_bucket
    #   The pricing bucket for which the query is charged at.
    #
    #   For more inforamtion on pricing, please visit [Amazon Location
    #   Service Pricing][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #   @return [String]
    #
    # @!attribute [rw] result_items
    #   List of places or results returned for a query.
    #   @return [Array<Types::SearchTextResultItem>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SearchTextResponse AWS API Documentation
    #
    class SearchTextResponse < Struct.new(
      :pricing_bucket,
      :result_items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The text search result.
    #
    # @!attribute [rw] place_id
    #   The `PlaceId` of the place you wish to receive the information for.
    #   @return [String]
    #
    # @!attribute [rw] place_type
    #   A `PlaceType` is a category that the result place must belong to.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The item's title.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The place's address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] address_number_corrected
    #   Boolean indicating if the address provided has been corrected.
    #   @return [Boolean]
    #
    # @!attribute [rw] position
    #   The position, in longitude and latitude.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] distance
    #   The distance in meters from the QueryPosition.
    #   @return [Integer]
    #
    # @!attribute [rw] map_view
    #   The bounding box enclosing the geometric shape (area or line) that
    #   an individual result covers.
    #
    #   The bounding box formed is defined as a set 4 coordinates:
    #   `[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]`
    #   @return [Array<Float>]
    #
    # @!attribute [rw] categories
    #   Categories of results that results must belong to.
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] food_types
    #   List of food types offered by this result.
    #   @return [Array<Types::FoodType>]
    #
    # @!attribute [rw] business_chains
    #   The Business Chains associated with the place.
    #   @return [Array<Types::BusinessChain>]
    #
    # @!attribute [rw] contacts
    #   List of potential contact methods for the result/place.
    #   @return [Types::Contacts]
    #
    # @!attribute [rw] opening_hours
    #   List of opening hours objects.
    #   @return [Array<Types::OpeningHours>]
    #
    # @!attribute [rw] access_points
    #   Position of the access point represent by longitude and latitude.
    #   @return [Array<Types::AccessPoint>]
    #
    # @!attribute [rw] access_restrictions
    #   Indicates known access restrictions on a vehicle access point. The
    #   index correlates to an access point and indicates if access through
    #   this point has some form of restriction.
    #   @return [Array<Types::AccessRestriction>]
    #
    # @!attribute [rw] time_zone
    #   The time zone in which the place is located.
    #   @return [Types::TimeZone]
    #
    # @!attribute [rw] political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #   @return [String]
    #
    # @!attribute [rw] phonemes
    #   How the various components of the result's address are pronounced
    #   in various languages.
    #   @return [Types::PhonemeDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SearchTextResultItem AWS API Documentation
    #
    class SearchTextResultItem < Struct.new(
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
      :phonemes)
      SENSITIVE = [:position, :map_view]
      include Aws::Structure
    end

    # Components of a street.
    #
    # @!attribute [rw] base_name
    #   Base name part of the street name.
    #
    #   Example: Younge from the “Younge street".
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Street type part of the street name.
    #
    #   Example: `“avenue"`.
    #   @return [String]
    #
    # @!attribute [rw] type_placement
    #   Defines if the street type is before or after the base name.
    #   @return [String]
    #
    # @!attribute [rw] type_separator
    #   What character(s) separates the string from its type.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   A prefix is a directional identifier that precedes, but is not
    #   included in, the base name of a road.
    #
    #   Example: E for East.
    #   @return [String]
    #
    # @!attribute [rw] suffix
    #   A suffix is a directional identifier that follows, but is not
    #   included in, the base name of a road.
    #
    #   Example W for West.
    #   @return [String]
    #
    # @!attribute [rw] direction
    #   Indicates the official directional identifiers assigned to highways.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   A [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the
    #   entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/StreetComponents AWS API Documentation
    #
    class StreetComponents < Struct.new(
      :base_name,
      :type,
      :type_placement,
      :type_separator,
      :prefix,
      :suffix,
      :direction,
      :language)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sub-region.
    #
    # @!attribute [rw] code
    #   Abbreviated code for the county or sub-region.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for the county or sub-region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SubRegion AWS API Documentation
    #
    class SubRegion < Struct.new(
      :code,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the starting and ending index of the sub-region in the text
    # query that match the found title.
    #
    # @!attribute [rw] code
    #   Indicates the starting and ending index of the sub-region in the
    #   text query that match the found title.
    #   @return [Array<Types::Highlight>]
    #
    # @!attribute [rw] name
    #   Indicates the starting and ending index of the name in the text
    #   query that match the found title.
    #   @return [Array<Types::Highlight>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SubRegionHighlights AWS API Documentation
    #
    class SubRegionHighlights < Struct.new(
      :code,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes how the parts of the textQuery matched the input query by
    # returning the sections of the response which matched to textQuery
    # terms.
    #
    # @!attribute [rw] label
    #   Indicates the starting and ending indexes of the places in the
    #   result which were identified to match the textQuery. This result is
    #   useful for providing emphasis to results where the user query
    #   directly matched to make selecting the correct result from a list
    #   easier for an end user.
    #   @return [Array<Types::Highlight>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SuggestAddressHighlights AWS API Documentation
    #
    class SuggestAddressHighlights < Struct.new(
      :label)
      SENSITIVE = []
      include Aws::Structure
    end

    # SuggestFilter structure which contains a set of inclusion/exclusion
    # properties that results must posses in order to be returned as a
    # result.
    #
    # @!attribute [rw] bounding_box
    #   The bounding box enclosing the geometric shape (area or line) that
    #   an individual result covers.
    #
    #   The bounding box formed is defined as a set 4 coordinates:
    #   `[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]`
    #   @return [Array<Float>]
    #
    # @!attribute [rw] circle
    #   The `Circle` that all results must be in.
    #   @return [Types::FilterCircle]
    #
    # @!attribute [rw] include_countries
    #   A list of countries that all results must be in. Countries are
    #   represented by either their alpha-2 or alpha-3 character codes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SuggestFilter AWS API Documentation
    #
    class SuggestFilter < Struct.new(
      :bounding_box,
      :circle,
      :include_countries)
      SENSITIVE = [:bounding_box, :circle]
      include Aws::Structure
    end

    # Describes how the parts of the textQuery matched the input query by
    # returning the sections of the response which matched to textQuery
    # terms.
    #
    # @!attribute [rw] title
    #   Indicates the starting and ending index of the title in the text
    #   query that match the found title.
    #   @return [Array<Types::Highlight>]
    #
    # @!attribute [rw] address
    #   The place's address.
    #   @return [Types::SuggestAddressHighlights]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SuggestHighlights AWS API Documentation
    #
    class SuggestHighlights < Struct.new(
      :title,
      :address)
      SENSITIVE = []
      include Aws::Structure
    end

    # The suggested place results.
    #
    # @!attribute [rw] place_id
    #   The `PlaceId` of the place you wish to receive the information for.
    #   @return [String]
    #
    # @!attribute [rw] place_type
    #   A `PlaceType` is a category that the result place must belong to.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The place's address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] position
    #   The position, in longitude and latitude.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] distance
    #   The distance in meters from the QueryPosition.
    #   @return [Integer]
    #
    # @!attribute [rw] map_view
    #   The bounding box enclosing the geometric shape (area or line) that
    #   an individual result covers.
    #
    #   The bounding box formed is defined as a set 4 coordinates:
    #   `[{westward lng}, {southern lat}, {eastward lng}, {northern lat}]`
    #   @return [Array<Float>]
    #
    # @!attribute [rw] categories
    #   Categories of results that results must belong to.
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] food_types
    #   List of food types offered by this result.
    #   @return [Array<Types::FoodType>]
    #
    # @!attribute [rw] business_chains
    #   The Business Chains associated with the place.
    #   @return [Array<Types::BusinessChain>]
    #
    # @!attribute [rw] access_points
    #   Position of the access point represent by longitude and latitude.
    #   @return [Array<Types::AccessPoint>]
    #
    # @!attribute [rw] access_restrictions
    #   Indicates known access restrictions on a vehicle access point. The
    #   index correlates to an access point and indicates if access through
    #   this point has some form of restriction.
    #   @return [Array<Types::AccessRestriction>]
    #
    # @!attribute [rw] time_zone
    #   The time zone in which the place is located.
    #   @return [Types::TimeZone]
    #
    # @!attribute [rw] political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #   @return [String]
    #
    # @!attribute [rw] phonemes
    #   How the various components of the result's address are pronounced
    #   in various languages.
    #   @return [Types::PhonemeDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SuggestPlaceResult AWS API Documentation
    #
    class SuggestPlaceResult < Struct.new(
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
      :phonemes)
      SENSITIVE = [:position, :map_view]
      include Aws::Structure
    end

    # The suggested query results.
    #
    # @!attribute [rw] query_id
    #   QueryId can be used to complete a follow up query through the
    #   SearchText API. The QueryId retains context from the original
    #   Suggest request such as filters, political view and language. See
    #   the SearchText API documentation for more details [SearchText API
    #   docs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/latest/APIReference/API_geoplaces_SearchText.html
    #   @return [String]
    #
    # @!attribute [rw] query_type
    #   The query type. Category qeuries will search for places which have
    #   an entry matching the given category, for example "doctor office".
    #   BusinessChain queries will search for instances of a given business.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SuggestQueryResult AWS API Documentation
    #
    class SuggestQueryResult < Struct.new(
      :query_id,
      :query_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_text
    #   The free-form text query to match addresses against. This is usually
    #   a partially typed address from an end user in an address box or
    #   form.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional limit for the number of results returned in a single
    #   call.
    #   @return [Integer]
    #
    # @!attribute [rw] max_query_refinements
    #   Maximum number of query terms to be returned for use with a search
    #   text query.
    #   @return [Integer]
    #
    # @!attribute [rw] bias_position
    #   The position, in longitude and latitude, that the results should be
    #   close to. Typically, place results returned are ranked higher the
    #   closer they are to this position. Stored in `[lng, lat]` and in the
    #   WSG84 format.
    #
    #   <note markdown="1"> The fields `BiasPosition`, `FilterBoundingBox`, and `FilterCircle`
    #   are mutually exclusive.
    #
    #    </note>
    #   @return [Array<Float>]
    #
    # @!attribute [rw] filter
    #   A structure which contains a set of inclusion/exclusion properties
    #   that results must posses in order to be returned as a result.
    #   @return [Types::SuggestFilter]
    #
    # @!attribute [rw] additional_features
    #   A list of optional additional parameters, such as time zone, that
    #   can be requested for each result.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   A list of [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the
    #   entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #   @return [String]
    #
    # @!attribute [rw] political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #   @return [String]
    #
    # @!attribute [rw] intended_use
    #   Indicates if the results will be stored. Defaults to `SingleUse`, if
    #   left empty.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Optional: The API key to be used for authorization. Either an API
    #   key or valid SigV4 signature must be provided when making a request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SuggestRequest AWS API Documentation
    #
    class SuggestRequest < Struct.new(
      :query_text,
      :max_results,
      :max_query_refinements,
      :bias_position,
      :filter,
      :additional_features,
      :language,
      :political_view,
      :intended_use,
      :key)
      SENSITIVE = [:query_text, :bias_position, :key]
      include Aws::Structure
    end

    # @!attribute [rw] pricing_bucket
    #   The pricing bucket for which the query is charged at.
    #
    #   For more inforamtion on pricing, please visit [Amazon Location
    #   Service Pricing][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #   @return [String]
    #
    # @!attribute [rw] result_items
    #   List of places or results returned for a query.
    #   @return [Array<Types::SuggestResultItem>]
    #
    # @!attribute [rw] query_refinements
    #   Maximum number of query terms to be returned for use with a search
    #   text query.
    #   @return [Array<Types::QueryRefinement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SuggestResponse AWS API Documentation
    #
    class SuggestResponse < Struct.new(
      :pricing_bucket,
      :result_items,
      :query_refinements)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resulting item from the suggested query.
    #
    # @!attribute [rw] title
    #   The display title that should be used when presenting this option to
    #   the end user.
    #   @return [String]
    #
    # @!attribute [rw] suggest_result_item_type
    #   The result type. Place results represent the final result for a
    #   point of interest, Query results represent a follow up query which
    #   can be completed through the SearchText operation.
    #   @return [String]
    #
    # @!attribute [rw] place
    #   The suggested place by its unique ID.
    #   @return [Types::SuggestPlaceResult]
    #
    # @!attribute [rw] query
    #   The suggested query results.
    #   @return [Types::SuggestQueryResult]
    #
    # @!attribute [rw] highlights
    #   Describes how the parts of the response element matched the input
    #   query by returning the sections of the response which matched to
    #   input query terms.
    #   @return [Types::SuggestHighlights]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SuggestResultItem AWS API Documentation
    #
    class SuggestResultItem < Struct.new(
      :title,
      :suggest_result_item_type,
      :place,
      :query,
      :highlights)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The time zone in which the place is located.
    #
    # @!attribute [rw] name
    #   The time zone name.
    #   @return [String]
    #
    # @!attribute [rw] offset
    #   Time zone offset of the timezone from UTC.
    #   @return [String]
    #
    # @!attribute [rw] offset_seconds
    #   The offset of the time zone from UTC, in seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/TimeZone AWS API Documentation
    #
    class TimeZone < Struct.new(
      :name,
      :offset,
      :offset_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The USPS zip code.
    #
    # @!attribute [rw] zip_classification_code
    #   The ZIP Classification Code, or in other words what type of postal
    #   code is it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/UspsZip AWS API Documentation
    #
    class UspsZip < Struct.new(
      :zip_classification_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The USPS zip+4 code.
    #
    # @!attribute [rw] record_type_code
    #   The USPS ZIP+4 Record Type Code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/UspsZipPlus4 AWS API Documentation
    #
    class UspsZipPlus4 < Struct.new(
      :record_type_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Test stub for reason
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   Test stub for FieldList.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by the Amazon
    # Location service.
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


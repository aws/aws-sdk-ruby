# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('GeoPlaces', Module.new) unless Aws.const_defined?('GeoPlaces')

# @title Amazon Location Service Places V2
# <p> The Places API enables powerful location search and geocoding capabilities for your applications, offering global coverage with rich, detailed information. Key features include: </p> <ul> <li> <p>Forward and reverse geocoding for addresses and coordinates. See <a href="https://docs.aws.amazon.com/location/latest/APIReference/API_geoplaces_Geocode.html">Geocode</a> and <a href="https://docs.aws.amazon.com/location/latest/APIReference/API_geoplaces_ReverseGeocode.html">ReverseGeocode</a>.</p> </li> <li> <p>Comprehensive place searches with detailed information. See <a href="https://docs.aws.amazon.com/location/latest/APIReference/API_geoplaces_SearchText.html">SearchText</a>, <a href="https://docs.aws.amazon.com/location/latest/APIReference/API_geoplaces_SearchNearby.html">SearchNearby</a>, and <a href="https://docs.aws.amazon.com/location/latest/APIReference/API_geoplaces_GetPlace.html">GetPlace</a>. Place information you can find include:</p> <ul> <li> <p>Business names and addresses</p> </li> <li> <p>Contact information</p> </li> <li> <p>Hours of operation</p> </li> <li> <p>Points of Interest (POI) categories</p> </li> <li> <p>Food types for restaurants</p> </li> <li> <p>Chain affiliation for relevant businesses</p> </li> </ul> </li> <li> <p>Address and place completion as users type, enhancing input efficiency by completing partial queries with valid addresses. See <a href="https://docs.aws.amazon.com/location/latest/APIReference/API_geoplaces_Autocomplete.html">Autocomplete</a>.</p> </li> <li> <p>Intelligent place and query recommendation based on user's input or context, returning relevant places, points of interest, query terms, or search categories. See <a href="https://docs.aws.amazon.com/location/latest/APIReference/API_geoplaces_Suggest.html">Suggest</a>.</p> </li> <li> <p>Global data coverage with a wide range of POI categories.</p> </li> <li> <p>Regular data updates to ensure accuracy and relevance.</p> </li> <li> <p>Bulk address validation for verifying and standardizing large volumes of addresses in a single operation using <a href="https://docs.aws.amazon.com/location/latest/APIReference/Welcome.html#Welcome_Amazon_Location_Service_Jobs">Amazon Location Service Jobs</a>.</p> </li> </ul>
module Aws::GeoPlaces
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-geoplaces/types'
require_relative 'aws-sdk-geoplaces/paginators'
require_relative 'aws-sdk-geoplaces/schema'
require_relative 'aws-sdk-geoplaces/auth_parameters'
require_relative 'aws-sdk-geoplaces/auth_resolver'
require_relative 'aws-sdk-geoplaces/client'
require_relative 'aws-sdk-geoplaces/errors'
require_relative 'aws-sdk-geoplaces/endpoint_parameters'
require_relative 'aws-sdk-geoplaces/endpoint_provider'
require_relative 'aws-sdk-geoplaces/waiters'
require_relative 'aws-sdk-geoplaces/customizations'

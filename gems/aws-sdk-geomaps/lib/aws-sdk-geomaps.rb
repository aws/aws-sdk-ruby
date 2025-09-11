# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('GeoMaps', Module.new) unless Aws.const_defined?('GeoMaps')

# @title Amazon Location Service Maps V2
# <p> Integrate high-quality base map data into your applications using <a href="https://maplibre.org">MapLibre</a>. Capabilities include: </p> <ul> <li> <p>Access to comprehensive base map data, allowing you to tailor the map display to your specific needs.</p> </li> <li> <p>Multiple pre-designed map styles suited for various application types, such as navigation, logistics, or data visualization.</p> </li> <li> <p>Generation of static map images for scenarios where interactive maps aren't suitable, such as:</p> <ul> <li> <p>Embedding in emails or documents</p> </li> <li> <p>Displaying in low-bandwidth environments</p> </li> <li> <p>Creating printable maps</p> </li> <li> <p>Enhancing application performance by reducing client-side rendering</p> </li> </ul> </li> </ul>
module Aws::GeoMaps
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-geomaps/types'
require_relative 'aws-sdk-geomaps/paginators'
require_relative 'aws-sdk-geomaps/schema'
require_relative 'aws-sdk-geomaps/auth_parameters'
require_relative 'aws-sdk-geomaps/auth_resolver'
require_relative 'aws-sdk-geomaps/client'
require_relative 'aws-sdk-geomaps/customizations'
require_relative 'aws-sdk-geomaps/errors'
require_relative 'aws-sdk-geomaps/endpoint_parameters'
require_relative 'aws-sdk-geomaps/endpoint_provider'
require_relative 'aws-sdk-geomaps/waiters'

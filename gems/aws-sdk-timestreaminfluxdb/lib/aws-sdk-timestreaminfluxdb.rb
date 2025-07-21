# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:timestreaminfluxdb)

# This module provides support for Timestream InfluxDB. This module is available in the
# `aws-sdk-timestreaminfluxdb` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     timestream_influx_db = Aws::TimestreamInfluxDB::Client.new
#     resp = timestream_influx_db.create_db_cluster(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Timestream InfluxDB are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::TimestreamInfluxDB::Errors::ServiceError
#       # rescues all Timestream InfluxDB API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::TimestreamInfluxDB
  autoload :Types, 'aws-sdk-timestreaminfluxdb/types'
  autoload :ClientApi, 'aws-sdk-timestreaminfluxdb/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-timestreaminfluxdb/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-timestreaminfluxdb/client'
  autoload :Errors, 'aws-sdk-timestreaminfluxdb/errors'
  autoload :Resource, 'aws-sdk-timestreaminfluxdb/resource'
  autoload :EndpointParameters, 'aws-sdk-timestreaminfluxdb/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-timestreaminfluxdb/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-timestreaminfluxdb/endpoints'

  GEM_VERSION = '1.26.0'

end

require_relative 'aws-sdk-timestreaminfluxdb/customizations'

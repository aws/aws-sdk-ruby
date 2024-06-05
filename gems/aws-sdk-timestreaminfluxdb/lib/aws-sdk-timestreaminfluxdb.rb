# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-timestreaminfluxdb/types'
require_relative 'aws-sdk-timestreaminfluxdb/client_api'
require_relative 'aws-sdk-timestreaminfluxdb/plugins/endpoints.rb'
require_relative 'aws-sdk-timestreaminfluxdb/client'
require_relative 'aws-sdk-timestreaminfluxdb/errors'
require_relative 'aws-sdk-timestreaminfluxdb/resource'
require_relative 'aws-sdk-timestreaminfluxdb/endpoint_parameters'
require_relative 'aws-sdk-timestreaminfluxdb/endpoint_provider'
require_relative 'aws-sdk-timestreaminfluxdb/endpoints'
require_relative 'aws-sdk-timestreaminfluxdb/customizations'

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
#     resp = timestream_influx_db.create_db_instance(params)
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

  GEM_VERSION = '1.3.0'

end

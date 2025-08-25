# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:snowball)

# This module provides support for Amazon Import/Export Snowball. This module is available in the
# `aws-sdk-snowball` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     snowball = Aws::Snowball::Client.new
#     resp = snowball.cancel_cluster(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Import/Export Snowball are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Snowball::Errors::ServiceError
#       # rescues all Amazon Import/Export Snowball API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Snowball
  autoload :Types, 'aws-sdk-snowball/types'
  autoload :ClientApi, 'aws-sdk-snowball/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-snowball/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-snowball/client'
  autoload :Errors, 'aws-sdk-snowball/errors'
  autoload :Resource, 'aws-sdk-snowball/resource'
  autoload :EndpointParameters, 'aws-sdk-snowball/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-snowball/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-snowball/endpoints'

  GEM_VERSION = '1.91.0'

end

require_relative 'aws-sdk-snowball/customizations'

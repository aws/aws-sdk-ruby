# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:outposts)

# This module provides support for AWS Outposts. This module is available in the
# `aws-sdk-outposts` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     outposts = Aws::Outposts::Client.new
#     resp = outposts.cancel_capacity_task(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Outposts are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Outposts::Errors::ServiceError
#       # rescues all AWS Outposts API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Outposts
  autoload :Types, 'aws-sdk-outposts/types'
  autoload :ClientApi, 'aws-sdk-outposts/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-outposts/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-outposts/client'
  autoload :Errors, 'aws-sdk-outposts/errors'
  autoload :Resource, 'aws-sdk-outposts/resource'
  autoload :EndpointParameters, 'aws-sdk-outposts/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-outposts/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-outposts/endpoints'

  GEM_VERSION = '1.88.0'

end

require_relative 'aws-sdk-outposts/customizations'

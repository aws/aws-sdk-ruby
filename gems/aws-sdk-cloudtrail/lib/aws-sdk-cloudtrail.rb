# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudtrail)

# This module provides support for AWS CloudTrail. This module is available in the
# `aws-sdk-cloudtrail` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_trail = Aws::CloudTrail::Client.new
#     resp = cloud_trail.add_tags(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS CloudTrail are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudTrail::Errors::ServiceError
#       # rescues all AWS CloudTrail API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudTrail
  autoload :Types, 'aws-sdk-cloudtrail/types'
  autoload :ClientApi, 'aws-sdk-cloudtrail/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cloudtrail/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cloudtrail/client'
  autoload :Errors, 'aws-sdk-cloudtrail/errors'
  autoload :Resource, 'aws-sdk-cloudtrail/resource'
  autoload :EndpointParameters, 'aws-sdk-cloudtrail/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cloudtrail/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cloudtrail/endpoints'

  GEM_VERSION = '1.108.0'

end

require_relative 'aws-sdk-cloudtrail/customizations'

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ebs)

# This module provides support for Amazon Elastic Block Store. This module is available in the
# `aws-sdk-ebs` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ebs = Aws::EBS::Client.new
#     resp = ebs.complete_snapshot(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Elastic Block Store are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EBS::Errors::ServiceError
#       # rescues all Amazon Elastic Block Store API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EBS
  autoload :Types, 'aws-sdk-ebs/types'
  autoload :ClientApi, 'aws-sdk-ebs/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ebs/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ebs/client'
  autoload :Errors, 'aws-sdk-ebs/errors'
  autoload :Resource, 'aws-sdk-ebs/resource'
  autoload :EndpointParameters, 'aws-sdk-ebs/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ebs/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ebs/endpoints'

  GEM_VERSION = '1.60.0'

end

require_relative 'aws-sdk-ebs/customizations'

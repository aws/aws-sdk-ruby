# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:freetier)

# This module provides support for AWS Free Tier. This module is available in the
# `aws-sdk-freetier` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     free_tier = Aws::FreeTier::Client.new
#     resp = free_tier.get_account_activity(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Free Tier are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::FreeTier::Errors::ServiceError
#       # rescues all AWS Free Tier API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::FreeTier
  autoload :Types, 'aws-sdk-freetier/types'
  autoload :ClientApi, 'aws-sdk-freetier/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-freetier/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-freetier/client'
  autoload :Errors, 'aws-sdk-freetier/errors'
  autoload :Waiters, 'aws-sdk-freetier/waiters'
  autoload :Resource, 'aws-sdk-freetier/resource'
  autoload :EndpointParameters, 'aws-sdk-freetier/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-freetier/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-freetier/endpoints'

  GEM_VERSION = '1.23.0'

end

require_relative 'aws-sdk-freetier/customizations'

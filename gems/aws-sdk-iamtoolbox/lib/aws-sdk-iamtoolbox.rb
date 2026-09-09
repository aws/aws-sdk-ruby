# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iamtoolbox)

# This module provides support for IAM Toolbox (Preview). This module is available in the
# `aws-sdk-iamtoolbox` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     iam_toolbox = Aws::IAMToolbox::Client.new
#     resp = iam_toolbox.get_request_authorization_details(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from IAM Toolbox (Preview) are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IAMToolbox::Errors::ServiceError
#       # rescues all IAM Toolbox (Preview) API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IAMToolbox
  autoload :Types, 'aws-sdk-iamtoolbox/types'
  autoload :ClientApi, 'aws-sdk-iamtoolbox/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iamtoolbox/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iamtoolbox/client'
  autoload :Errors, 'aws-sdk-iamtoolbox/errors'
  autoload :Waiters, 'aws-sdk-iamtoolbox/waiters'
  autoload :Resource, 'aws-sdk-iamtoolbox/resource'
  autoload :EndpointParameters, 'aws-sdk-iamtoolbox/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iamtoolbox/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iamtoolbox/endpoints'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-iamtoolbox/customizations'

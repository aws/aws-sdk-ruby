# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudhsmv2)

# This module provides support for AWS CloudHSM V2. This module is available in the
# `aws-sdk-cloudhsmv2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_hsmv2 = Aws::CloudHSMV2::Client.new
#     resp = cloud_hsmv2.copy_backup_to_region(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS CloudHSM V2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudHSMV2::Errors::ServiceError
#       # rescues all AWS CloudHSM V2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudHSMV2
  autoload :Types, 'aws-sdk-cloudhsmv2/types'
  autoload :ClientApi, 'aws-sdk-cloudhsmv2/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cloudhsmv2/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cloudhsmv2/client'
  autoload :Errors, 'aws-sdk-cloudhsmv2/errors'
  autoload :Resource, 'aws-sdk-cloudhsmv2/resource'
  autoload :EndpointParameters, 'aws-sdk-cloudhsmv2/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cloudhsmv2/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cloudhsmv2/endpoints'

  GEM_VERSION = '1.82.0'

end

require_relative 'aws-sdk-cloudhsmv2/customizations'

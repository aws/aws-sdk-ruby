# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:fis)

# This module provides support for AWS Fault Injection Simulator. This module is available in the
# `aws-sdk-fis` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     fis = Aws::FIS::Client.new
#     resp = fis.create_experiment_template(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Fault Injection Simulator are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::FIS::Errors::ServiceError
#       # rescues all AWS Fault Injection Simulator API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::FIS
  autoload :Types, 'aws-sdk-fis/types'
  autoload :ClientApi, 'aws-sdk-fis/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-fis/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-fis/client'
  autoload :Errors, 'aws-sdk-fis/errors'
  autoload :Resource, 'aws-sdk-fis/resource'
  autoload :EndpointParameters, 'aws-sdk-fis/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-fis/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-fis/endpoints'

  GEM_VERSION = '1.52.0'

end

require_relative 'aws-sdk-fis/customizations'

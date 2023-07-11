# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-fis/types'
require_relative 'aws-sdk-fis/client_api'
require_relative 'aws-sdk-fis/plugins/endpoints.rb'
require_relative 'aws-sdk-fis/client'
require_relative 'aws-sdk-fis/errors'
require_relative 'aws-sdk-fis/resource'
require_relative 'aws-sdk-fis/endpoint_parameters'
require_relative 'aws-sdk-fis/endpoint_provider'
require_relative 'aws-sdk-fis/endpoints'
require_relative 'aws-sdk-fis/customizations'

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

  GEM_VERSION = '1.21.0'

end

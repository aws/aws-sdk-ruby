# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-ssmincidents/types'
require_relative 'aws-sdk-ssmincidents/client_api'
require_relative 'aws-sdk-ssmincidents/plugins/endpoints.rb'
require_relative 'aws-sdk-ssmincidents/client'
require_relative 'aws-sdk-ssmincidents/errors'
require_relative 'aws-sdk-ssmincidents/waiters'
require_relative 'aws-sdk-ssmincidents/resource'
require_relative 'aws-sdk-ssmincidents/endpoint_parameters'
require_relative 'aws-sdk-ssmincidents/endpoint_provider'
require_relative 'aws-sdk-ssmincidents/endpoints'
require_relative 'aws-sdk-ssmincidents/customizations'

# This module provides support for AWS Systems Manager Incident Manager. This module is available in the
# `aws-sdk-ssmincidents` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ssm_incidents = Aws::SSMIncidents::Client.new
#     resp = ssm_incidents.create_replication_set(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Systems Manager Incident Manager are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SSMIncidents::Errors::ServiceError
#       # rescues all AWS Systems Manager Incident Manager API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SSMIncidents

  GEM_VERSION = '1.27.0'

end

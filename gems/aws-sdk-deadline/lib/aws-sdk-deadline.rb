# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:deadline)

# This module provides support for AWSDeadlineCloud. This module is available in the
# `aws-sdk-deadline` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     deadline = Aws::Deadline::Client.new
#     resp = deadline.associate_member_to_farm(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWSDeadlineCloud are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Deadline::Errors::ServiceError
#       # rescues all AWSDeadlineCloud API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Deadline
  autoload :Types, 'aws-sdk-deadline/types'
  autoload :ClientApi, 'aws-sdk-deadline/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-deadline/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-deadline/client'
  autoload :Errors, 'aws-sdk-deadline/errors'
  autoload :Waiters, 'aws-sdk-deadline/waiters'
  autoload :Resource, 'aws-sdk-deadline/resource'
  autoload :EndpointParameters, 'aws-sdk-deadline/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-deadline/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-deadline/endpoints'

  GEM_VERSION = '1.34.0'

end

require_relative 'aws-sdk-deadline/customizations'

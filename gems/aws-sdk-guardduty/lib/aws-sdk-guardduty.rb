# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:guardduty)

# This module provides support for Amazon GuardDuty. This module is available in the
# `aws-sdk-guardduty` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     guard_duty = Aws::GuardDuty::Client.new
#     resp = guard_duty.accept_administrator_invitation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon GuardDuty are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::GuardDuty::Errors::ServiceError
#       # rescues all Amazon GuardDuty API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::GuardDuty
  autoload :Types, 'aws-sdk-guardduty/types'
  autoload :ClientApi, 'aws-sdk-guardduty/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-guardduty/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-guardduty/client'
  autoload :Errors, 'aws-sdk-guardduty/errors'
  autoload :Resource, 'aws-sdk-guardduty/resource'
  autoload :EndpointParameters, 'aws-sdk-guardduty/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-guardduty/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-guardduty/endpoints'

  GEM_VERSION = '1.121.0'

end

require_relative 'aws-sdk-guardduty/customizations'

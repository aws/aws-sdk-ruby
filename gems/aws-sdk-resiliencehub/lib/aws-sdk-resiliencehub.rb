# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-resiliencehub/types'
require_relative 'aws-sdk-resiliencehub/client_api'
require_relative 'aws-sdk-resiliencehub/plugins/endpoints.rb'
require_relative 'aws-sdk-resiliencehub/client'
require_relative 'aws-sdk-resiliencehub/errors'
require_relative 'aws-sdk-resiliencehub/resource'
require_relative 'aws-sdk-resiliencehub/endpoint_parameters'
require_relative 'aws-sdk-resiliencehub/endpoint_provider'
require_relative 'aws-sdk-resiliencehub/endpoints'
require_relative 'aws-sdk-resiliencehub/customizations'

# This module provides support for AWS Resilience Hub. This module is available in the
# `aws-sdk-resiliencehub` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     resilience_hub = Aws::ResilienceHub::Client.new
#     resp = resilience_hub.add_draft_app_version_resource_mappings(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Resilience Hub are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ResilienceHub::Errors::ServiceError
#       # rescues all AWS Resilience Hub API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ResilienceHub

  GEM_VERSION = '1.18.0'

end

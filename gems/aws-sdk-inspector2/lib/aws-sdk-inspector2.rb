# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-inspector2/types'
require_relative 'aws-sdk-inspector2/client_api'
require_relative 'aws-sdk-inspector2/plugins/endpoints.rb'
require_relative 'aws-sdk-inspector2/client'
require_relative 'aws-sdk-inspector2/errors'
require_relative 'aws-sdk-inspector2/resource'
require_relative 'aws-sdk-inspector2/endpoint_parameters'
require_relative 'aws-sdk-inspector2/endpoint_provider'
require_relative 'aws-sdk-inspector2/endpoints'
require_relative 'aws-sdk-inspector2/customizations'

# This module provides support for Inspector2. This module is available in the
# `aws-sdk-inspector2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     inspector_2 = Aws::Inspector2::Client.new
#     resp = inspector_2.associate_member(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Inspector2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Inspector2::Errors::ServiceError
#       # rescues all Inspector2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Inspector2

  GEM_VERSION = '1.19.0'

end

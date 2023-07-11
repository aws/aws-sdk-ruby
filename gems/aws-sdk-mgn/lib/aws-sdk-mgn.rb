# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-mgn/types'
require_relative 'aws-sdk-mgn/client_api'
require_relative 'aws-sdk-mgn/plugins/endpoints.rb'
require_relative 'aws-sdk-mgn/client'
require_relative 'aws-sdk-mgn/errors'
require_relative 'aws-sdk-mgn/resource'
require_relative 'aws-sdk-mgn/endpoint_parameters'
require_relative 'aws-sdk-mgn/endpoint_provider'
require_relative 'aws-sdk-mgn/endpoints'
require_relative 'aws-sdk-mgn/customizations'

# This module provides support for Application Migration Service. This module is available in the
# `aws-sdk-mgn` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     mgn = Aws::Mgn::Client.new
#     resp = mgn.archive_application(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Application Migration Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Mgn::Errors::ServiceError
#       # rescues all Application Migration Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Mgn

  GEM_VERSION = '1.24.0'

end

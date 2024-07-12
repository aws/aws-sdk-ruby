# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-qapps/types'
require_relative 'aws-sdk-qapps/client_api'
require_relative 'aws-sdk-qapps/plugins/endpoints.rb'
require_relative 'aws-sdk-qapps/client'
require_relative 'aws-sdk-qapps/errors'
require_relative 'aws-sdk-qapps/waiters'
require_relative 'aws-sdk-qapps/resource'
require_relative 'aws-sdk-qapps/endpoint_parameters'
require_relative 'aws-sdk-qapps/endpoint_provider'
require_relative 'aws-sdk-qapps/endpoints'
require_relative 'aws-sdk-qapps/customizations'

# This module provides support for QApps. This module is available in the
# `aws-sdk-qapps` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     q_apps = Aws::QApps::Client.new
#     resp = q_apps.associate_library_item_review(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from QApps are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::QApps::Errors::ServiceError
#       # rescues all QApps API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::QApps

  GEM_VERSION = '1.0.0'

end

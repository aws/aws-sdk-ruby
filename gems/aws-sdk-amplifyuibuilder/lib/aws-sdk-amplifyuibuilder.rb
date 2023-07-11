# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-amplifyuibuilder/types'
require_relative 'aws-sdk-amplifyuibuilder/client_api'
require_relative 'aws-sdk-amplifyuibuilder/plugins/endpoints.rb'
require_relative 'aws-sdk-amplifyuibuilder/client'
require_relative 'aws-sdk-amplifyuibuilder/errors'
require_relative 'aws-sdk-amplifyuibuilder/waiters'
require_relative 'aws-sdk-amplifyuibuilder/resource'
require_relative 'aws-sdk-amplifyuibuilder/endpoint_parameters'
require_relative 'aws-sdk-amplifyuibuilder/endpoint_provider'
require_relative 'aws-sdk-amplifyuibuilder/endpoints'
require_relative 'aws-sdk-amplifyuibuilder/customizations'

# This module provides support for AWS Amplify UI Builder. This module is available in the
# `aws-sdk-amplifyuibuilder` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     amplify_ui_builder = Aws::AmplifyUIBuilder::Client.new
#     resp = amplify_ui_builder.create_component(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Amplify UI Builder are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AmplifyUIBuilder::Errors::ServiceError
#       # rescues all AWS Amplify UI Builder API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AmplifyUIBuilder

  GEM_VERSION = '1.17.0'

end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:amplifyuibuilder)

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
  autoload :Types, 'aws-sdk-amplifyuibuilder/types'
  autoload :ClientApi, 'aws-sdk-amplifyuibuilder/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-amplifyuibuilder/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-amplifyuibuilder/client'
  autoload :Errors, 'aws-sdk-amplifyuibuilder/errors'
  autoload :Waiters, 'aws-sdk-amplifyuibuilder/waiters'
  autoload :Resource, 'aws-sdk-amplifyuibuilder/resource'
  autoload :EndpointParameters, 'aws-sdk-amplifyuibuilder/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-amplifyuibuilder/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-amplifyuibuilder/endpoints'

  GEM_VERSION = '1.46.0'

end

require_relative 'aws-sdk-amplifyuibuilder/customizations'

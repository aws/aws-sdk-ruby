# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:appstream)

# This module provides support for Amazon AppStream. This module is available in the
# `aws-sdk-appstream` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     app_stream = Aws::AppStream::Client.new
#     resp = app_stream.associate_app_block_builder_app_block(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon AppStream are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AppStream::Errors::ServiceError
#       # rescues all Amazon AppStream API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AppStream
  autoload :Types, 'aws-sdk-appstream/types'
  autoload :ClientApi, 'aws-sdk-appstream/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-appstream/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-appstream/client'
  autoload :Errors, 'aws-sdk-appstream/errors'
  autoload :Waiters, 'aws-sdk-appstream/waiters'
  autoload :Resource, 'aws-sdk-appstream/resource'
  autoload :EndpointParameters, 'aws-sdk-appstream/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-appstream/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-appstream/endpoints'

  GEM_VERSION = '1.106.0'

end

require_relative 'aws-sdk-appstream/customizations'

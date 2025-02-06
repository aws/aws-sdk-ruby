# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:glacier)

# This module provides support for Amazon Glacier. This module is available in the
# `aws-sdk-glacier` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     glacier = Aws::Glacier::Client.new
#     resp = glacier.abort_multipart_upload(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Glacier are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Glacier::Errors::ServiceError
#       # rescues all Amazon Glacier API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Glacier
  autoload :Types, 'aws-sdk-glacier/types'
  autoload :ClientApi, 'aws-sdk-glacier/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-glacier/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-glacier/client'
  autoload :Errors, 'aws-sdk-glacier/errors'
  autoload :Waiters, 'aws-sdk-glacier/waiters'
  autoload :Resource, 'aws-sdk-glacier/resource'
  autoload :EndpointParameters, 'aws-sdk-glacier/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-glacier/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-glacier/endpoints'
  autoload :Account, 'aws-sdk-glacier/account'
  autoload :Archive, 'aws-sdk-glacier/archive'
  autoload :Job, 'aws-sdk-glacier/job'
  autoload :MultipartUpload, 'aws-sdk-glacier/multipart_upload'
  autoload :Notification, 'aws-sdk-glacier/notification'
  autoload :Vault, 'aws-sdk-glacier/vault'

  GEM_VERSION = '1.75.0'

end

require_relative 'aws-sdk-glacier/customizations'

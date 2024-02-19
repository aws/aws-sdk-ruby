# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cloudfrontkeyvaluestore/types'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/client_api'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/plugins/endpoints.rb'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/client'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/errors'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/resource'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/endpoint_parameters'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/endpoint_provider'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/endpoints'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/customizations'

# This module provides support for Amazon CloudFront KeyValueStore. This module is available in the
# `aws-sdk-cloudfrontkeyvaluestore` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_front_key_value_store = Aws::CloudFrontKeyValueStore::Client.new
#     resp = cloud_front_key_value_store.delete_key(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudFront KeyValueStore are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudFrontKeyValueStore::Errors::ServiceError
#       # rescues all Amazon CloudFront KeyValueStore API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudFrontKeyValueStore

  GEM_VERSION = '1.4.0'

end

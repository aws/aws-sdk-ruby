# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-identitystore/types'
require_relative 'aws-sdk-identitystore/client_api'
require_relative 'aws-sdk-identitystore/client'
require_relative 'aws-sdk-identitystore/errors'
require_relative 'aws-sdk-identitystore/resource'
require_relative 'aws-sdk-identitystore/customizations'

# This module provides support for AWS SSO Identity Store. This module is available in the
# `aws-sdk-identitystore` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     identity_store = Aws::IdentityStore::Client.new
#     resp = identity_store.describe_group(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS SSO Identity Store are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IdentityStore::Errors::ServiceError
#       # rescues all AWS SSO Identity Store API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IdentityStore

  GEM_VERSION = '1.3.0'

end

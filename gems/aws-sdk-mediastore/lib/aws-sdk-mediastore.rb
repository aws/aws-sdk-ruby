# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-mediastore/types'
require_relative 'aws-sdk-mediastore/client_api'
require_relative 'aws-sdk-mediastore/client'
require_relative 'aws-sdk-mediastore/errors'
require_relative 'aws-sdk-mediastore/resource'
require_relative 'aws-sdk-mediastore/customizations'

# This module provides support for AWS Elemental MediaStore. This module is available in the
# `aws-sdk-mediastore` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     media_store = Aws::MediaStore::Client.new
#     resp = media_store.create_container(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Elemental MediaStore are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MediaStore::Errors::ServiceError
#       # rescues all AWS Elemental MediaStore API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MediaStore

  GEM_VERSION = '1.30.0'

end

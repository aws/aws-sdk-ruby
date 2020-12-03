# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-clouddirectory/types'
require_relative 'aws-sdk-clouddirectory/client_api'
require_relative 'aws-sdk-clouddirectory/client'
require_relative 'aws-sdk-clouddirectory/errors'
require_relative 'aws-sdk-clouddirectory/resource'
require_relative 'aws-sdk-clouddirectory/customizations'

# This module provides support for Amazon CloudDirectory. This module is available in the
# `aws-sdk-clouddirectory` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_directory = Aws::CloudDirectory::Client.new
#     resp = cloud_directory.add_facet_to_object(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudDirectory are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudDirectory::Errors::ServiceError
#       # rescues all Amazon CloudDirectory API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudDirectory

  GEM_VERSION = '1.29.0'

end

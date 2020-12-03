# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-efs/types'
require_relative 'aws-sdk-efs/client_api'
require_relative 'aws-sdk-efs/client'
require_relative 'aws-sdk-efs/errors'
require_relative 'aws-sdk-efs/resource'
require_relative 'aws-sdk-efs/customizations'

# This module provides support for Amazon Elastic File System. This module is available in the
# `aws-sdk-efs` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     efs = Aws::EFS::Client.new
#     resp = efs.create_access_point(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Elastic File System are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EFS::Errors::ServiceError
#       # rescues all Amazon Elastic File System API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EFS

  GEM_VERSION = '1.36.0'

end

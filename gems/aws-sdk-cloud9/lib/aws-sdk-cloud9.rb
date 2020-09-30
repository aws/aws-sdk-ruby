# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cloud9/types'
require_relative 'aws-sdk-cloud9/client_api'
require_relative 'aws-sdk-cloud9/client'
require_relative 'aws-sdk-cloud9/errors'
require_relative 'aws-sdk-cloud9/resource'
require_relative 'aws-sdk-cloud9/customizations'

# This module provides support for AWS Cloud9. This module is available in the
# `aws-sdk-cloud9` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_9 = Aws::Cloud9::Client.new
#     resp = cloud_9.create_environment_ec2(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Cloud9 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Cloud9::Errors::ServiceError
#       # rescues all AWS Cloud9 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Cloud9

  GEM_VERSION = '1.29.0'

end

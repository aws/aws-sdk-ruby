# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'aws-sdk-sts/types'
require_relative 'aws-sdk-sts/client_api'
require_relative 'aws-sdk-sts/client'
require_relative 'aws-sdk-sts/errors'
require_relative 'aws-sdk-sts/resource'
require_relative 'aws-sdk-sts/customizations'

# This module provides support for AWS Security Token Service. This module is available in the
# `aws-sdk-core` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sts = Aws::STS::Client.new
#     resp = sts.assume_role(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Security Token Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::STS::Errors::ServiceError
#       # rescues all AWS Security Token Service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::STS

  GEM_VERSION = '3.104.3'

end

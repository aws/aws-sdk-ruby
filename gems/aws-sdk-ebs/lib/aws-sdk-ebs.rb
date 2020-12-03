# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-ebs/types'
require_relative 'aws-sdk-ebs/client_api'
require_relative 'aws-sdk-ebs/client'
require_relative 'aws-sdk-ebs/errors'
require_relative 'aws-sdk-ebs/resource'
require_relative 'aws-sdk-ebs/customizations'

# This module provides support for Amazon Elastic Block Store. This module is available in the
# `aws-sdk-ebs` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ebs = Aws::EBS::Client.new
#     resp = ebs.complete_snapshot(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Elastic Block Store are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EBS::Errors::ServiceError
#       # rescues all Amazon Elastic Block Store API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EBS

  GEM_VERSION = '1.11.0'

end

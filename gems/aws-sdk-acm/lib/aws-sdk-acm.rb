# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-acm/types'
require_relative 'aws-sdk-acm/client_api'
require_relative 'aws-sdk-acm/client'
require_relative 'aws-sdk-acm/errors'
require_relative 'aws-sdk-acm/waiters'
require_relative 'aws-sdk-acm/resource'
require_relative 'aws-sdk-acm/customizations'

# This module provides support for AWS Certificate Manager. This module is available in the
# `aws-sdk-acm` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     acm = Aws::ACM::Client.new
#     resp = acm.add_tags_to_certificate(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Certificate Manager are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ACM::Errors::ServiceError
#       # rescues all AWS Certificate Manager API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ACM

  GEM_VERSION = '1.38.0'

end

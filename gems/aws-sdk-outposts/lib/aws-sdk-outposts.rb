# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-outposts/types'
require_relative 'aws-sdk-outposts/client_api'
require_relative 'aws-sdk-outposts/plugins/endpoints.rb'
require_relative 'aws-sdk-outposts/client'
require_relative 'aws-sdk-outposts/errors'
require_relative 'aws-sdk-outposts/resource'
require_relative 'aws-sdk-outposts/endpoint_parameters'
require_relative 'aws-sdk-outposts/endpoint_provider'
require_relative 'aws-sdk-outposts/endpoints'
require_relative 'aws-sdk-outposts/customizations'

# This module provides support for AWS Outposts. This module is available in the
# `aws-sdk-outposts` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     outposts = Aws::Outposts::Client.new
#     resp = outposts.cancel_order(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Outposts are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Outposts::Errors::ServiceError
#       # rescues all AWS Outposts API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Outposts

  GEM_VERSION = '1.47.0'

end

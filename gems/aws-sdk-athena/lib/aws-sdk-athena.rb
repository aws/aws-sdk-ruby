# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-athena/types'
require_relative 'aws-sdk-athena/client_api'
require_relative 'aws-sdk-athena/client'
require_relative 'aws-sdk-athena/errors'
require_relative 'aws-sdk-athena/resource'
require_relative 'aws-sdk-athena/customizations'

# This module provides support for Amazon Athena. This module is available in the
# `aws-sdk-athena` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     athena = Aws::Athena::Client.new
#     resp = athena.batch_get_named_query(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Athena are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Athena::Errors::ServiceError
#       # rescues all Amazon Athena API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Athena

  GEM_VERSION = '1.33.0'

end

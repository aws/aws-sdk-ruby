# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-translate/types'
require_relative 'aws-sdk-translate/client_api'
require_relative 'aws-sdk-translate/client'
require_relative 'aws-sdk-translate/errors'
require_relative 'aws-sdk-translate/resource'
require_relative 'aws-sdk-translate/customizations'

# This module provides support for Amazon Translate. This module is available in the
# `aws-sdk-translate` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     translate = Aws::Translate::Client.new
#     resp = translate.delete_terminology(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Translate are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Translate::Errors::ServiceError
#       # rescues all Amazon Translate API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Translate

  GEM_VERSION = '1.28.0'

end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-lex/types'
require_relative 'aws-sdk-lex/client_api'
require_relative 'aws-sdk-lex/client'
require_relative 'aws-sdk-lex/errors'
require_relative 'aws-sdk-lex/resource'
require_relative 'aws-sdk-lex/customizations'

# This module provides support for Amazon Lex Runtime Service. This module is available in the
# `aws-sdk-lex` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lex = Aws::Lex::Client.new
#     resp = lex.delete_session(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Lex Runtime Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Lex::Errors::ServiceError
#       # rescues all Amazon Lex Runtime Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Lex

  GEM_VERSION = '1.43.0'

end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-macie/types'
require_relative 'aws-sdk-macie/client_api'
require_relative 'aws-sdk-macie/client'
require_relative 'aws-sdk-macie/errors'
require_relative 'aws-sdk-macie/resource'
require_relative 'aws-sdk-macie/customizations'

# This module provides support for Amazon Macie. This module is available in the
# `aws-sdk-macie` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     macie = Aws::Macie::Client.new
#     resp = macie.associate_member_account(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Macie are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Macie::Errors::ServiceError
#       # rescues all Amazon Macie API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Macie

  GEM_VERSION = '1.25.0'

end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-detective/types'
require_relative 'aws-sdk-detective/client_api'
require_relative 'aws-sdk-detective/client'
require_relative 'aws-sdk-detective/errors'
require_relative 'aws-sdk-detective/resource'
require_relative 'aws-sdk-detective/customizations'

# This module provides support for Amazon Detective. This module is available in the
# `aws-sdk-detective` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     detective = Aws::Detective::Client.new
#     resp = detective.accept_invitation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Detective are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Detective::Errors::ServiceError
#       # rescues all Amazon Detective API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Detective

  GEM_VERSION = '1.11.0'

end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-worklink/types'
require_relative 'aws-sdk-worklink/client_api'
require_relative 'aws-sdk-worklink/client'
require_relative 'aws-sdk-worklink/errors'
require_relative 'aws-sdk-worklink/resource'
require_relative 'aws-sdk-worklink/customizations'

# This module provides support for Amazon WorkLink. This module is available in the
# `aws-sdk-worklink` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     work_link = Aws::WorkLink::Client.new
#     resp = work_link.associate_domain(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon WorkLink are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::WorkLink::Errors::ServiceError
#       # rescues all Amazon WorkLink API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::WorkLink

  GEM_VERSION = '1.21.0'

end

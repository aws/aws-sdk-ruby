# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-alexaforbusiness/types'
require_relative 'aws-sdk-alexaforbusiness/client_api'
require_relative 'aws-sdk-alexaforbusiness/client'
require_relative 'aws-sdk-alexaforbusiness/errors'
require_relative 'aws-sdk-alexaforbusiness/resource'
require_relative 'aws-sdk-alexaforbusiness/customizations'

# This module provides support for Alexa For Business. This module is available in the
# `aws-sdk-alexaforbusiness` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     alexa_for_business = Aws::AlexaForBusiness::Client.new
#     resp = alexa_for_business.approve_skill(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Alexa For Business are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AlexaForBusiness::Errors::ServiceError
#       # rescues all Alexa For Business API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AlexaForBusiness

  GEM_VERSION = '1.43.0'

end

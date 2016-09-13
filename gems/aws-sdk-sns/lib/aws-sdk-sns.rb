# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-sns/types'
require_relative 'aws-sdk-sns/client_api'
require_relative 'aws-sdk-sns/client'
require_relative 'aws-sdk-sns/errors'
require_relative 'aws-sdk-sns/waiters'
require_relative 'aws-sdk-sns/resource'
require_relative 'aws-sdk-sns/platform_application'
require_relative 'aws-sdk-sns/platform_endpoint'
require_relative 'aws-sdk-sns/subscription'
require_relative 'aws-sdk-sns/topic'

# customizations for generated code
require_relative 'aws-sdk-sns/customizations.rb'

module Aws
  # This module provides support for Amazon Simple Notification Service.
  #
  # # Aws::SNS::Client
  #
  # The {Aws::SNS::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     sns = Aws::SNS::Client.new
  #     resp = sns.add_permission(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::SNS::Errors
  #
  # Errors returned from Amazon Simple Notification Service all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SNS::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module SNS

    GEM_VERSION = '1.0.0'

  end
end

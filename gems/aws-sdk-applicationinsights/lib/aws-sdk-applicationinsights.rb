# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-applicationinsights/types'
require_relative 'aws-sdk-applicationinsights/client_api'
require_relative 'aws-sdk-applicationinsights/client'
require_relative 'aws-sdk-applicationinsights/errors'
require_relative 'aws-sdk-applicationinsights/resource'
require_relative 'aws-sdk-applicationinsights/customizations'

# This module provides support for Amazon CloudWatch Application Insights. This module is available in the
# `aws-sdk-applicationinsights` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudWatch Application Insights all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ApplicationInsights::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::ApplicationInsights

  GEM_VERSION = '1.3.0'

end

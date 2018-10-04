# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-budgets/types'
require_relative 'aws-sdk-budgets/client_api'
require_relative 'aws-sdk-budgets/client'
require_relative 'aws-sdk-budgets/errors'
require_relative 'aws-sdk-budgets/resource'
require_relative 'aws-sdk-budgets/customizations'

# This module provides support for AWS Budgets. This module is available in the
# `aws-sdk-budgets` gem.
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
# Errors returned from AWS Budgets all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Budgets::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::Budgets

  GEM_VERSION = '1.10.0'

end

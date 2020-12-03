# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-dataexchange/types'
require_relative 'aws-sdk-dataexchange/client_api'
require_relative 'aws-sdk-dataexchange/client'
require_relative 'aws-sdk-dataexchange/errors'
require_relative 'aws-sdk-dataexchange/resource'
require_relative 'aws-sdk-dataexchange/customizations'

# This module provides support for AWS Data Exchange. This module is available in the
# `aws-sdk-dataexchange` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     data_exchange = Aws::DataExchange::Client.new
#     resp = data_exchange.cancel_job(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Data Exchange are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DataExchange::Errors::ServiceError
#       # rescues all AWS Data Exchange API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DataExchange

  GEM_VERSION = '1.10.0'

end

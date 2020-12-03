# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-datapipeline/types'
require_relative 'aws-sdk-datapipeline/client_api'
require_relative 'aws-sdk-datapipeline/client'
require_relative 'aws-sdk-datapipeline/errors'
require_relative 'aws-sdk-datapipeline/resource'
require_relative 'aws-sdk-datapipeline/customizations'

# This module provides support for AWS Data Pipeline. This module is available in the
# `aws-sdk-datapipeline` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     data_pipeline = Aws::DataPipeline::Client.new
#     resp = data_pipeline.activate_pipeline(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Data Pipeline are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DataPipeline::Errors::ServiceError
#       # rescues all AWS Data Pipeline API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DataPipeline

  GEM_VERSION = '1.24.0'

end

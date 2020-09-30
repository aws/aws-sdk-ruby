# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-textract/types'
require_relative 'aws-sdk-textract/client_api'
require_relative 'aws-sdk-textract/client'
require_relative 'aws-sdk-textract/errors'
require_relative 'aws-sdk-textract/resource'
require_relative 'aws-sdk-textract/customizations'

# This module provides support for Amazon Textract. This module is available in the
# `aws-sdk-textract` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     textract = Aws::Textract::Client.new
#     resp = textract.analyze_document(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Textract are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Textract::Errors::ServiceError
#       # rescues all Amazon Textract API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Textract

  GEM_VERSION = '1.21.0'

end

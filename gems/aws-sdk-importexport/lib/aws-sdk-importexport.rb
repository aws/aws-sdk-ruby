# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv2'

require_relative 'aws-sdk-importexport/types'
require_relative 'aws-sdk-importexport/client_api'
require_relative 'aws-sdk-importexport/client'
require_relative 'aws-sdk-importexport/errors'
require_relative 'aws-sdk-importexport/resource'
require_relative 'aws-sdk-importexport/customizations'

# This module provides support for AWS Import/Export. This module is available in the
# `aws-sdk-importexport` gem.
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
# Errors returned from AWS Import/Export all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ImportExport::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::ImportExport

  GEM_VERSION = '1.3.0'

end

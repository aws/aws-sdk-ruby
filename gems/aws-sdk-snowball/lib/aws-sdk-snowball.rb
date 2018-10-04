# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-snowball/types'
require_relative 'aws-sdk-snowball/client_api'
require_relative 'aws-sdk-snowball/client'
require_relative 'aws-sdk-snowball/errors'
require_relative 'aws-sdk-snowball/resource'
require_relative 'aws-sdk-snowball/customizations'

# This module provides support for Amazon Import/Export Snowball. This module is available in the
# `aws-sdk-snowball` gem.
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
# Errors returned from Amazon Import/Export Snowball all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Snowball::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::Snowball

  GEM_VERSION = '1.7.0'

end

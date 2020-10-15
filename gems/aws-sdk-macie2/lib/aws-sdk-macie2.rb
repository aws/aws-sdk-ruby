# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-macie2/types'
require_relative 'aws-sdk-macie2/client_api'
require_relative 'aws-sdk-macie2/client'
require_relative 'aws-sdk-macie2/errors'
require_relative 'aws-sdk-macie2/resource'
require_relative 'aws-sdk-macie2/customizations'

# This module provides support for Amazon Macie 2. This module is available in the
# `aws-sdk-macie2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     macie_2 = Aws::Macie2::Client.new
#     resp = macie_2.accept_invitation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Macie 2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Macie2::Errors::ServiceError
#       # rescues all Amazon Macie 2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Macie2

  GEM_VERSION = '1.13.0'

end

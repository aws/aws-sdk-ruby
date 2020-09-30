# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-greengrass/types'
require_relative 'aws-sdk-greengrass/client_api'
require_relative 'aws-sdk-greengrass/client'
require_relative 'aws-sdk-greengrass/errors'
require_relative 'aws-sdk-greengrass/resource'
require_relative 'aws-sdk-greengrass/customizations'

# This module provides support for AWS Greengrass. This module is available in the
# `aws-sdk-greengrass` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     greengrass = Aws::Greengrass::Client.new
#     resp = greengrass.associate_role_to_group(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Greengrass are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Greengrass::Errors::ServiceError
#       # rescues all AWS Greengrass API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Greengrass

  GEM_VERSION = '1.37.0'

end

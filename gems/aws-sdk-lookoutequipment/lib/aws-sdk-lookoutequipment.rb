# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-lookoutequipment/types'
require_relative 'aws-sdk-lookoutequipment/client_api'
require_relative 'aws-sdk-lookoutequipment/plugins/endpoints.rb'
require_relative 'aws-sdk-lookoutequipment/client'
require_relative 'aws-sdk-lookoutequipment/errors'
require_relative 'aws-sdk-lookoutequipment/resource'
require_relative 'aws-sdk-lookoutequipment/endpoint_parameters'
require_relative 'aws-sdk-lookoutequipment/endpoint_provider'
require_relative 'aws-sdk-lookoutequipment/endpoints'
require_relative 'aws-sdk-lookoutequipment/customizations'

# This module provides support for Amazon Lookout for Equipment. This module is available in the
# `aws-sdk-lookoutequipment` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lookout_equipment = Aws::LookoutEquipment::Client.new
#     resp = lookout_equipment.create_dataset(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Lookout for Equipment are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LookoutEquipment::Errors::ServiceError
#       # rescues all Amazon Lookout for Equipment API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LookoutEquipment

  GEM_VERSION = '1.21.0'

end

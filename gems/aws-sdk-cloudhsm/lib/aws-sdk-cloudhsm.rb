# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cloudhsm/types'
require_relative 'aws-sdk-cloudhsm/client_api'
require_relative 'aws-sdk-cloudhsm/client'
require_relative 'aws-sdk-cloudhsm/errors'
require_relative 'aws-sdk-cloudhsm/resource'
require_relative 'aws-sdk-cloudhsm/customizations'

# This module provides support for Amazon CloudHSM. This module is available in the
# `aws-sdk-cloudhsm` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_hsm = Aws::CloudHSM::Client.new
#     resp = cloud_hsm.add_tags_to_resource(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudHSM are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudHSM::Errors::ServiceError
#       # rescues all Amazon CloudHSM API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudHSM

  GEM_VERSION = '1.27.0'

end

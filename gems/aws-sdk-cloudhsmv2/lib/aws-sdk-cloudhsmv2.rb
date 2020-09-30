# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cloudhsmv2/types'
require_relative 'aws-sdk-cloudhsmv2/client_api'
require_relative 'aws-sdk-cloudhsmv2/client'
require_relative 'aws-sdk-cloudhsmv2/errors'
require_relative 'aws-sdk-cloudhsmv2/resource'
require_relative 'aws-sdk-cloudhsmv2/customizations'

# This module provides support for AWS CloudHSM V2. This module is available in the
# `aws-sdk-cloudhsmv2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_hsmv2 = Aws::CloudHSMV2::Client.new
#     resp = cloud_hsmv2.copy_backup_to_region(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS CloudHSM V2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudHSMV2::Errors::ServiceError
#       # rescues all AWS CloudHSM V2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudHSMV2

  GEM_VERSION = '1.30.0'

end

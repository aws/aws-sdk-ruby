# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-servicequotas/types'
require_relative 'aws-sdk-servicequotas/client_api'
require_relative 'aws-sdk-servicequotas/client'
require_relative 'aws-sdk-servicequotas/errors'
require_relative 'aws-sdk-servicequotas/resource'
require_relative 'aws-sdk-servicequotas/customizations'

# This module provides support for Service Quotas. This module is available in the
# `aws-sdk-servicequotas` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     service_quotas = Aws::ServiceQuotas::Client.new
#     resp = service_quotas.associate_service_quota_template(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Service Quotas are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ServiceQuotas::Errors::ServiceError
#       # rescues all Service Quotas API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ServiceQuotas

  GEM_VERSION = '1.11.0'

end

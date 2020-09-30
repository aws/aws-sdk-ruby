# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-opsworkscm/types'
require_relative 'aws-sdk-opsworkscm/client_api'
require_relative 'aws-sdk-opsworkscm/client'
require_relative 'aws-sdk-opsworkscm/errors'
require_relative 'aws-sdk-opsworkscm/waiters'
require_relative 'aws-sdk-opsworkscm/resource'
require_relative 'aws-sdk-opsworkscm/customizations'

# This module provides support for AWS OpsWorks CM. This module is available in the
# `aws-sdk-opsworkscm` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ops_works_cm = Aws::OpsWorksCM::Client.new
#     resp = ops_works_cm.associate_node(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS OpsWorks CM are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::OpsWorksCM::Errors::ServiceError
#       # rescues all AWS OpsWorks CM API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::OpsWorksCM

  GEM_VERSION = '1.40.0'

end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-simspaceweaver/types'
require_relative 'aws-sdk-simspaceweaver/client_api'
require_relative 'aws-sdk-simspaceweaver/plugins/endpoints.rb'
require_relative 'aws-sdk-simspaceweaver/client'
require_relative 'aws-sdk-simspaceweaver/errors'
require_relative 'aws-sdk-simspaceweaver/resource'
require_relative 'aws-sdk-simspaceweaver/endpoint_parameters'
require_relative 'aws-sdk-simspaceweaver/endpoint_provider'
require_relative 'aws-sdk-simspaceweaver/endpoints'
require_relative 'aws-sdk-simspaceweaver/customizations'

# This module provides support for AWS SimSpace Weaver. This module is available in the
# `aws-sdk-simspaceweaver` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sim_space_weaver = Aws::SimSpaceWeaver::Client.new
#     resp = sim_space_weaver.create_snapshot(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS SimSpace Weaver are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SimSpaceWeaver::Errors::ServiceError
#       # rescues all AWS SimSpace Weaver API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SimSpaceWeaver

  GEM_VERSION = '1.8.0'

end

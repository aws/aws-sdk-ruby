# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-robomaker/types'
require_relative 'aws-sdk-robomaker/client_api'
require_relative 'aws-sdk-robomaker/client'
require_relative 'aws-sdk-robomaker/errors'
require_relative 'aws-sdk-robomaker/resource'
require_relative 'aws-sdk-robomaker/customizations'

# This module provides support for AWS RoboMaker. This module is available in the
# `aws-sdk-robomaker` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     robo_maker = Aws::RoboMaker::Client.new
#     resp = robo_maker.batch_delete_worlds(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS RoboMaker are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::RoboMaker::Errors::ServiceError
#       # rescues all AWS RoboMaker API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::RoboMaker

  GEM_VERSION = '1.30.0'

end

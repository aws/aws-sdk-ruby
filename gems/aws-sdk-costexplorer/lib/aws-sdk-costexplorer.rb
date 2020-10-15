# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-costexplorer/types'
require_relative 'aws-sdk-costexplorer/client_api'
require_relative 'aws-sdk-costexplorer/client'
require_relative 'aws-sdk-costexplorer/errors'
require_relative 'aws-sdk-costexplorer/resource'
require_relative 'aws-sdk-costexplorer/customizations'

# This module provides support for AWS Cost Explorer Service. This module is available in the
# `aws-sdk-costexplorer` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cost_explorer = Aws::CostExplorer::Client.new
#     resp = cost_explorer.create_anomaly_monitor(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Cost Explorer Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CostExplorer::Errors::ServiceError
#       # rescues all AWS Cost Explorer Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CostExplorer

  GEM_VERSION = '1.52.0'

end

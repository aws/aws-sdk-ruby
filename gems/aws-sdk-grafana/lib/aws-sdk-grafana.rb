# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Grafana', Module.new) unless Aws.const_defined?('Grafana')

# @title Amazon Managed Grafana
# <p>Amazon Managed Grafana is a fully managed and secure data visualization service that
#             you can use to instantly query, correlate, and visualize operational metrics, logs, and
#             traces from multiple sources. Amazon Managed Grafana makes it easy to deploy, operate, and
#             scale Grafana, a widely deployed data visualization tool that is popular for its
#             extensible data support.</p>
#          <p>With Amazon Managed Grafana, you create logically isolated Grafana servers called
#                 <i>workspaces</i>. In a workspace, you can create Grafana dashboards
#             and visualizations to analyze your metrics, logs, and traces without having to build,
#             package, or deploy any hardware to run Grafana servers. </p>
module Aws::Grafana
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-grafana/types'
require_relative 'aws-sdk-grafana/paginators'
require_relative 'aws-sdk-grafana/schema'
require_relative 'aws-sdk-grafana/auth_parameters'
require_relative 'aws-sdk-grafana/auth_resolver'
require_relative 'aws-sdk-grafana/client'
require_relative 'aws-sdk-grafana/customizations'
require_relative 'aws-sdk-grafana/errors'
require_relative 'aws-sdk-grafana/endpoint_parameters'
require_relative 'aws-sdk-grafana/endpoint_provider'
require_relative 'aws-sdk-grafana/waiters'

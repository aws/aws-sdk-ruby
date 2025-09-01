# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Amp', Module.new) unless Aws.const_defined?('Amp')

# @title Amazon Prometheus Service
# <p>Amazon Managed Service for Prometheus is a serverless, Prometheus-compatible monitoring service for container metrics that makes it easier to securely monitor container environments at scale. With Amazon Managed Service for Prometheus, you can use the same open-source Prometheus data model and query language that you use today to monitor the performance of your containerized workloads, and also enjoy improved scalability, availability, and security without having to manage the underlying infrastructure.</p> <p>For more information about Amazon Managed Service for Prometheus, see the <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/what-is-Amazon-Managed-Service-Prometheus.html">Amazon Managed Service for Prometheus</a> User Guide.</p> <p>Amazon Managed Service for Prometheus includes two APIs.</p> <ul> <li> <p>Use the Amazon Web Services API described in this guide to manage Amazon Managed Service for Prometheus resources, such as workspaces, rule groups, and alert managers.</p> </li> <li> <p>Use the <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-APIReference.html#AMP-APIReference-Prometheus-Compatible-Apis">Prometheus-compatible API</a> to work within your Prometheus workspace.</p> </li> </ul>
module Aws::Amp
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-amp/types'
require_relative 'aws-sdk-amp/paginators'
require_relative 'aws-sdk-amp/schema'
require_relative 'aws-sdk-amp/auth_parameters'
require_relative 'aws-sdk-amp/auth_resolver'
require_relative 'aws-sdk-amp/client'
require_relative 'aws-sdk-amp/customizations'
require_relative 'aws-sdk-amp/errors'
require_relative 'aws-sdk-amp/endpoint_parameters'
require_relative 'aws-sdk-amp/endpoint_provider'
require_relative 'aws-sdk-amp/waiters'

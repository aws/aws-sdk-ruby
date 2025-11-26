# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Omics', Module.new) unless Aws.const_defined?('Omics')

# @title Amazon Omics
# <p>Amazon Web Services HealthOmics is a service that helps users such as bioinformaticians, researchers, and scientists to store, query, analyze, and generate insights from genomics and other biological data. It simplifies and accelerates the process of storing and analyzing genomic information for Amazon Web Services.</p> <p>For an introduction to the service, see <a href="https://docs.aws.amazon.com/omics/latest/dev/what-is-healthomics.html">What is Amazon Web Services HealthOmics?</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
module Aws::Omics
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-omics/types'
require_relative 'aws-sdk-omics/paginators'
require_relative 'aws-sdk-omics/schema'
require_relative 'aws-sdk-omics/auth_parameters'
require_relative 'aws-sdk-omics/auth_resolver'
require_relative 'aws-sdk-omics/client'
require_relative 'aws-sdk-omics/errors'
require_relative 'aws-sdk-omics/endpoint_parameters'
require_relative 'aws-sdk-omics/endpoint_provider'
require_relative 'aws-sdk-omics/waiters'
require_relative 'aws-sdk-omics/customizations'

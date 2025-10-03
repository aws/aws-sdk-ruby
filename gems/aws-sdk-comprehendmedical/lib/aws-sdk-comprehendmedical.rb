# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ComprehendMedical', Module.new) unless Aws.const_defined?('ComprehendMedical')

# @title AWS Comprehend Medical
# <p>Amazon Comprehend Medical extracts structured information from unstructured clinical text. Use these actions to gain insight in your documents. Amazon Comprehend Medical only detects entities in English language texts. Amazon Comprehend Medical places limits on the sizes of files allowed for different API operations. To learn more, see <a href="https://docs.aws.amazon.com/comprehend-medical/latest/dev/comprehendmedical-quotas.html">Guidelines and quotas</a> in the <i>Amazon Comprehend Medical Developer Guide</i>.</p>
module Aws::ComprehendMedical
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-comprehendmedical/types'
require_relative 'aws-sdk-comprehendmedical/paginators'
require_relative 'aws-sdk-comprehendmedical/schema'
require_relative 'aws-sdk-comprehendmedical/auth_parameters'
require_relative 'aws-sdk-comprehendmedical/auth_resolver'
require_relative 'aws-sdk-comprehendmedical/client'
require_relative 'aws-sdk-comprehendmedical/customizations'
require_relative 'aws-sdk-comprehendmedical/errors'
require_relative 'aws-sdk-comprehendmedical/endpoint_parameters'
require_relative 'aws-sdk-comprehendmedical/endpoint_provider'
require_relative 'aws-sdk-comprehendmedical/waiters'

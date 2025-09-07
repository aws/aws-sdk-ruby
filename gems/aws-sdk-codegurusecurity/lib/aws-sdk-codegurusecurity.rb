# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CodeGuruSecurity', Module.new) unless Aws.const_defined?('CodeGuruSecurity')

# @title Amazon CodeGuru Security
# <note> <p>On November 20, 2025, AWS will discontinue support for Amazon CodeGuru Security. After November 20, 2025, you will no longer be able to access the /codeguru/security console, service resources, or documentation. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/security-ug/end-of-support.html">https://docs.aws.amazon.com/codeguru/latest/security-ug/end-of-support.html</a>.</p> </note> <p>This section provides documentation for the Amazon CodeGuru Security API operations. CodeGuru Security is a service that uses program analysis and machine learning to detect security policy violations and vulnerabilities, and recommends ways to address these security risks.</p> <p>By proactively detecting and providing recommendations for addressing security risks, CodeGuru Security improves the overall security of your application code. For more information about CodeGuru Security, see the <a href="https://docs.aws.amazon.com/codeguru/latest/security-ug/what-is-codeguru-security.html">Amazon CodeGuru Security User Guide</a>. </p>
module Aws::CodeGuruSecurity
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-codegurusecurity/types'
require_relative 'aws-sdk-codegurusecurity/paginators'
require_relative 'aws-sdk-codegurusecurity/schema'
require_relative 'aws-sdk-codegurusecurity/auth_parameters'
require_relative 'aws-sdk-codegurusecurity/auth_resolver'
require_relative 'aws-sdk-codegurusecurity/client'
require_relative 'aws-sdk-codegurusecurity/customizations'
require_relative 'aws-sdk-codegurusecurity/errors'
require_relative 'aws-sdk-codegurusecurity/endpoint_parameters'
require_relative 'aws-sdk-codegurusecurity/endpoint_provider'
require_relative 'aws-sdk-codegurusecurity/waiters'

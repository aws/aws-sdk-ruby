# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CloudHSM', Module.new) unless Aws.const_defined?('CloudHSM')

# @title Amazon CloudHSM
# <fullname>AWS CloudHSM Service</fullname>
#          <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
#       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
#       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
#       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
#          <p>
#             <b>For information about the current version of AWS
#       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
#       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
#       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
#       Reference</a>.</p>
module Aws::CloudHSM
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cloudhsm/types'
require_relative 'aws-sdk-cloudhsm/paginators'
require_relative 'aws-sdk-cloudhsm/schema'
require_relative 'aws-sdk-cloudhsm/auth_parameters'
require_relative 'aws-sdk-cloudhsm/auth_resolver'
require_relative 'aws-sdk-cloudhsm/client'
require_relative 'aws-sdk-cloudhsm/customizations'
require_relative 'aws-sdk-cloudhsm/errors'
require_relative 'aws-sdk-cloudhsm/endpoint_parameters'
require_relative 'aws-sdk-cloudhsm/endpoint_provider'
require_relative 'aws-sdk-cloudhsm/waiters'

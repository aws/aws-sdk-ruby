# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('QLDBSession', Module.new) unless Aws.const_defined?('QLDBSession')

# @title Amazon QLDB Session
# <p>The transactional data APIs for Amazon QLDB</p>
#          <note>
#             <p>Instead of interacting directly with this API, we recommend using the QLDB driver
#             or the QLDB shell to execute data transactions on a ledger.</p>
#             <ul>
#                <li>
#                   <p>If you are working with an AWS SDK, use the QLDB driver. The driver provides
#                   a high-level abstraction layer above this <i>QLDB Session</i> data
#                   plane and manages <code>SendCommand</code> API calls for you. For information and
#                   a list of supported programming languages, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html">Getting started
#                      with the driver</a> in the <i>Amazon QLDB Developer
#                   Guide</i>.</p>
#                </li>
#                <li>
#                   <p>If you are working with the AWS Command Line Interface (AWS CLI), use the
#                   QLDB shell. The shell is a command line interface that uses the QLDB driver to
#                   interact with a ledger. For information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html">Accessing Amazon QLDB using the
#                      QLDB shell</a>.</p>
#                </li>
#             </ul>
#          </note>
module Aws::QLDBSession
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-qldbsession/types'
require_relative 'aws-sdk-qldbsession/paginators'
require_relative 'aws-sdk-qldbsession/schema'
require_relative 'aws-sdk-qldbsession/auth_parameters'
require_relative 'aws-sdk-qldbsession/auth_resolver'
require_relative 'aws-sdk-qldbsession/client'
require_relative 'aws-sdk-qldbsession/customizations'
require_relative 'aws-sdk-qldbsession/errors'
require_relative 'aws-sdk-qldbsession/endpoint_parameters'
require_relative 'aws-sdk-qldbsession/endpoint_provider'
require_relative 'aws-sdk-qldbsession/waiters'

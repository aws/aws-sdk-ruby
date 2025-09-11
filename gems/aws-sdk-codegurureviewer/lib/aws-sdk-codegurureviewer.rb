# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CodeGuruReviewer', Module.new) unless Aws.const_defined?('CodeGuruReviewer')

# @title Amazon CodeGuru Reviewer
# <p>This section provides documentation for the Amazon CodeGuru Reviewer API operations. CodeGuru Reviewer is a
#          service that uses program analysis and machine learning to detect potential defects that
#          are difficult for developers to find and recommends fixes in your Java and Python
#          code.</p>
#          <p>By proactively detecting and providing recommendations for addressing code defects and
#          implementing best practices, CodeGuru Reviewer improves the overall quality and maintainability of
#          your code base during the code review stage. For more information about CodeGuru Reviewer, see the
#                <i>
#                <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/welcome.html">Amazon CodeGuru Reviewer User Guide</a>.</i>
#          </p>
#          <p>To improve the security of your CodeGuru Reviewer API calls, you can establish a private connection
#          between your VPC and CodeGuru Reviewer by creating an <i>interface VPC endpoint</i>. For
#          more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/vpc-interface-endpoints.html">CodeGuru Reviewer and interface VPC
#             endpoints (Amazon Web Services PrivateLink)</a> in the <i>Amazon CodeGuru Reviewer User
#          Guide</i>.</p>
module Aws::CodeGuruReviewer
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-codegurureviewer/types'
require_relative 'aws-sdk-codegurureviewer/paginators'
require_relative 'aws-sdk-codegurureviewer/schema'
require_relative 'aws-sdk-codegurureviewer/auth_parameters'
require_relative 'aws-sdk-codegurureviewer/auth_resolver'
require_relative 'aws-sdk-codegurureviewer/client'
require_relative 'aws-sdk-codegurureviewer/customizations'
require_relative 'aws-sdk-codegurureviewer/errors'
require_relative 'aws-sdk-codegurureviewer/endpoint_parameters'
require_relative 'aws-sdk-codegurureviewer/endpoint_provider'
require_relative 'aws-sdk-codegurureviewer/waiters'

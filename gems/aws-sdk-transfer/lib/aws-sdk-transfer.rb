# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Transfer', Module.new) unless Aws.const_defined?('Transfer')

# @title AWS Transfer Family
# <p>Transfer Family is a fully managed service that enables the transfer of files over the File Transfer Protocol (FTP), File Transfer Protocol over SSL (FTPS), or Secure Shell (SSH) File Transfer Protocol (SFTP) directly into and out of Amazon Simple Storage Service (Amazon S3) or Amazon EFS. Additionally, you can use Applicability Statement 2 (AS2) to transfer files into and out of Amazon S3. Amazon Web Services helps you seamlessly migrate your file transfer workflows to Transfer Family by integrating with existing authentication systems, and providing DNS routing with Amazon Route 53 so nothing changes for your customers and partners, or their applications. With your data in Amazon S3, you can use it with Amazon Web Services services for processing, analytics, machine learning, and archiving. Getting started with Transfer Family is easy since there is no infrastructure to buy and set up.</p>
module Aws::Transfer
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-transfer/types'
require_relative 'aws-sdk-transfer/paginators'
require_relative 'aws-sdk-transfer/schema'
require_relative 'aws-sdk-transfer/auth_parameters'
require_relative 'aws-sdk-transfer/auth_resolver'
require_relative 'aws-sdk-transfer/client'
require_relative 'aws-sdk-transfer/customizations'
require_relative 'aws-sdk-transfer/errors'
require_relative 'aws-sdk-transfer/endpoint_parameters'
require_relative 'aws-sdk-transfer/endpoint_provider'
require_relative 'aws-sdk-transfer/waiters'

# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Odb', Module.new) unless Aws.const_defined?('Odb')

# @title odb
# <p>Oracle Database@Amazon Web Services is an offering that enables you to access Oracle Exadata infrastructure managed by Oracle Cloud Infrastructure (OCI) inside Amazon Web Services data centers. You can migrate your Oracle Exadata workloads, establish low-latency connectivity with applications running on Amazon Web Services, and integrate with Amazon Web Services services. For example, you can run application servers in a virtual private cloud (VPC) and access an Oracle Exadata system running in Oracle Database@Amazon Web Services. You can get started with Oracle Database@Amazon Web Services by using the familiar Amazon Web Services Management Console, APIs, or CLI.</p> <p>This interface reference for Oracle Database@Amazon Web Services contains documentation for a programming or command line interface that you can use to manage Oracle Database@Amazon Web Services. Oracle Database@Amazon Web Services is asynchronous, which means that some interfaces might require techniques such as polling or callback functions to determine when a command has been applied. The reference structure is as follows.</p> <note> <p>In this preview release documentation, the links in the "See Also" sections do not work.</p> </note> <p> <b>Oracle Database@Amazon Web Services API Reference</b> </p> <ul> <li> <p>For the alphabetical list of API actions, see .</p> </li> <li> <p>For the alphabetical list of data types, see .</p> </li> <li> <p>For a list of common parameters, see <a>CommonParameters</a>.</p> </li> <li> <p>For descriptions of the error codes, see <a>CommonErrors</a>.</p> </li> </ul>
module Aws::Odb
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-odb/types'
require_relative 'aws-sdk-odb/paginators'
require_relative 'aws-sdk-odb/schema'
require_relative 'aws-sdk-odb/auth_parameters'
require_relative 'aws-sdk-odb/auth_resolver'
require_relative 'aws-sdk-odb/client'
require_relative 'aws-sdk-odb/customizations'
require_relative 'aws-sdk-odb/errors'
require_relative 'aws-sdk-odb/endpoint_parameters'
require_relative 'aws-sdk-odb/endpoint_provider'
require_relative 'aws-sdk-odb/waiters'

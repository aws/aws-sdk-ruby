# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-xml'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Redshift', Module.new) unless Aws.const_defined?('Redshift')

# @title Amazon Redshift
# <fullname>Amazon Redshift</fullname>
#          <p>
#             <b>Overview</b>
#          </p>
#          <p>This is an interface reference for Amazon Redshift. It contains documentation for one of
#             the programming or command line interfaces you can use to manage Amazon Redshift clusters.
#             Note that Amazon Redshift is asynchronous, which means that some interfaces may require
#             techniques, such as polling or asynchronous callback handlers, to determine when a
#             command has been applied. In this reference, the parameter descriptions indicate whether
#             a change is applied immediately, on the next instance reboot, or during the next
#             maintenance window. For a summary of the Amazon Redshift cluster management interfaces, go to
#                 <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/using-aws-sdk.html">Using the
#                 Amazon Redshift Management Interfaces</a>.</p>
#          <p>Amazon Redshift manages all the work of setting up, operating, and scaling a data
#             warehouse: provisioning capacity, monitoring and backing up the cluster, and applying
#             patches and upgrades to the Amazon Redshift engine. You can focus on using your data to
#             acquire new insights for your business and customers.</p>
#          <p>If you are a first-time user of Amazon Redshift, we recommend that you begin by reading
#             the <a href="https://docs.aws.amazon.com/redshift/latest/gsg/getting-started.html">Amazon Redshift Getting Started Guide</a>.</p>
#          <p>If you are a database developer, the <a href="https://docs.aws.amazon.com/redshift/latest/dg/welcome.html">Amazon Redshift Database Developer Guide</a> explains how to design,
#             build, query, and maintain the databases that make up your data warehouse. </p>
module Aws::Redshift
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-redshift/types'
require_relative 'aws-sdk-redshift/paginators'
require_relative 'aws-sdk-redshift/schema'
require_relative 'aws-sdk-redshift/auth_parameters'
require_relative 'aws-sdk-redshift/auth_resolver'
require_relative 'aws-sdk-redshift/client'
require_relative 'aws-sdk-redshift/customizations'
require_relative 'aws-sdk-redshift/errors'
require_relative 'aws-sdk-redshift/endpoint_parameters'
require_relative 'aws-sdk-redshift/endpoint_provider'
require_relative 'aws-sdk-redshift/waiters'

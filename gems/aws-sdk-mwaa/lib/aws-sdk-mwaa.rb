# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MWAA', Module.new) unless Aws.const_defined?('MWAA')

# @title AmazonMWAA
# <fullname>Amazon Managed Workflows for Apache Airflow</fullname> <p>This section contains the Amazon Managed Workflows for Apache Airflow (MWAA) API reference documentation. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/what-is-mwaa.html">What is Amazon MWAA?</a>.</p> <p> <b>Endpoints</b> </p> <ul> <li> <p> <code>api.airflow.{region}.amazonaws.com</code> (use <code>api.airflow.{region}.api.aws</code> for IPv6) - This endpoint is used for environment management.</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_CreateEnvironment.html">CreateEnvironment</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_DeleteEnvironment.html">DeleteEnvironment</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_GetEnvironment.html">GetEnvironment</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_ListEnvironments.html">ListEnvironments</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_ListTagsForResource.html">ListTagsForResource</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_TagResource.html">TagResource</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_UntagResource.html">UntagResource</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_UpdateEnvironment.html">UpdateEnvironment</a> </p> </li> </ul> </li> <li> <p> <code>env.airflow.{region}.amazonaws.com</code> (use <code>env.airflow.{region}.api.aws</code> for IPv6) - This endpoint is used to operate the Airflow environment.</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_CreateCliToken.html ">CreateCliToken</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_CreateWebLoginToken.html">CreateWebLoginToken</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_InvokeRestApi.html">InvokeRestApi</a> </p> </li> </ul> </li> </ul> <p> <b>Regions</b> </p> <p>For a list of supported regions, see <a href="https://docs.aws.amazon.com/general/latest/gr/mwaa.html">Amazon MWAA endpoints and quotas</a> in the <i>Amazon Web Services General Reference</i>.</p>
module Aws::MWAA
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-mwaa/types'
require_relative 'aws-sdk-mwaa/paginators'
require_relative 'aws-sdk-mwaa/schema'
require_relative 'aws-sdk-mwaa/auth_parameters'
require_relative 'aws-sdk-mwaa/auth_resolver'
require_relative 'aws-sdk-mwaa/client'
require_relative 'aws-sdk-mwaa/errors'
require_relative 'aws-sdk-mwaa/endpoint_parameters'
require_relative 'aws-sdk-mwaa/endpoint_provider'
require_relative 'aws-sdk-mwaa/waiters'
require_relative 'aws-sdk-mwaa/customizations'

# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CodeGuruProfiler', Module.new) unless Aws.const_defined?('CodeGuruProfiler')

# @title Amazon CodeGuru Profiler
# <p>
#           This section provides documentation for the Amazon CodeGuru Profiler API operations.
#       </p>
#          <p>
#          Amazon CodeGuru Profiler collects runtime performance data from your live applications, and provides
#          recommendations that can help you fine-tune your application performance. Using machine learning
#          algorithms, CodeGuru Profiler can help you find your most expensive lines of code and suggest ways you can
#          improve efficiency and remove CPU bottlenecks.
#       </p>
#          <p>
#          Amazon CodeGuru Profiler provides different visualizations of profiling data to help you identify what code is
#          running on the CPU, see how much time is consumed, and suggest ways to reduce CPU utilization.
#       </p>
#          <note>
#             <p>Amazon CodeGuru Profiler currently supports applications written in all Java virtual machine (JVM)
#             languages and Python. While CodeGuru Profiler supports both visualizations and recommendations for applications
#             written in Java, it can also generate visualizations and a subset of recommendations for
#             applications written in other JVM languages and Python.</p>
#          </note>
#          <p>
#          For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-ug/what-is-codeguru-profiler.html">What is Amazon CodeGuru Profiler</a> in 
#          the <i>Amazon CodeGuru Profiler User Guide</i>.
#       </p>
module Aws::CodeGuruProfiler
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-codeguruprofiler/types'
require_relative 'aws-sdk-codeguruprofiler/paginators'
require_relative 'aws-sdk-codeguruprofiler/schema'
require_relative 'aws-sdk-codeguruprofiler/auth_parameters'
require_relative 'aws-sdk-codeguruprofiler/auth_resolver'
require_relative 'aws-sdk-codeguruprofiler/client'
require_relative 'aws-sdk-codeguruprofiler/customizations'
require_relative 'aws-sdk-codeguruprofiler/errors'
require_relative 'aws-sdk-codeguruprofiler/endpoint_parameters'
require_relative 'aws-sdk-codeguruprofiler/endpoint_provider'
require_relative 'aws-sdk-codeguruprofiler/waiters'

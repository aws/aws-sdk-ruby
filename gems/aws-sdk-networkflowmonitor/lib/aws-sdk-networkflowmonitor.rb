# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('NetworkFlowMonitor', Module.new) unless Aws.const_defined?('NetworkFlowMonitor')

# @title Network Flow Monitor
# <p>Network Flow Monitor is a feature of Amazon CloudWatch Network Monitoring that provides visibility into the performance of network flows for your Amazon Web Services workloads, between instances in subnets, as well as to and from Amazon Web Services. Lightweight agents that you install on the instances capture performance metrics for your network flows, such as packet loss and latency, and send them to the Network Flow Monitor backend. Then, you can view and analyze metrics from the top contributors for each metric type, to help troubleshoot issues.</p> <p>In addition, when you create a monitor, Network Flow Monitor provides a network health indicator (NHI) that informs you whether there were Amazon Web Services network issues for one or more of the network flows tracked by a monitor, during a time period that you choose. By using this value, you can independently determine if the Amazon Web Services network is impacting your workload during a specific time frame, to help you focus troubleshooting efforts.</p> <p>To learn more about Network Flow Monitor, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-NetworkFlowMonitor.html">Network Flow Monitor User Guide</a> in the Amazon CloudWatch User Guide.</p>
module Aws::NetworkFlowMonitor
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-networkflowmonitor/types'
require_relative 'aws-sdk-networkflowmonitor/paginators'
require_relative 'aws-sdk-networkflowmonitor/schema'
require_relative 'aws-sdk-networkflowmonitor/auth_parameters'
require_relative 'aws-sdk-networkflowmonitor/auth_resolver'
require_relative 'aws-sdk-networkflowmonitor/client'
require_relative 'aws-sdk-networkflowmonitor/customizations'
require_relative 'aws-sdk-networkflowmonitor/errors'
require_relative 'aws-sdk-networkflowmonitor/endpoint_parameters'
require_relative 'aws-sdk-networkflowmonitor/endpoint_provider'
require_relative 'aws-sdk-networkflowmonitor/waiters'

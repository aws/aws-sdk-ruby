# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::EventBridgeV2
  describe EndpointProvider do
    subject { Aws::EventBridgeV2::EndpointProvider.new }

    context "Bus ARN account takes precedence over the credentials-sourced account (cross-account call)." do
      let(:expected) do
        {"endpoint" => {"url" => "https://210987654321.eventsv2.us-east-1.amazonaws.com", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", event_bus_arn: "arn:aws:events:us-east-1:210987654321:event-busv2/owner-bus/abcdefghij0123456789abcde", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Bus ARN routing works without a credentials-sourced account ID." do
      let(:expected) do
        {"endpoint" => {"url" => "https://210987654321.eventsv2.us-east-1.amazonaws.com", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", event_bus_arn: "arn:aws:events:us-east-1:210987654321:event-busv2/owner-bus/abcdefghij0123456789abcde", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Disabled mode ignores the bus ARN and the credentials-sourced account." do
      let(:expected) do
        {"endpoint" => {"url" => "https://eventsv2.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", event_bus_arn: "arn:aws:events:us-east-1:210987654321:event-busv2/owner-bus/abcdefghij0123456789abcde", account_id: "123456789012", account_id_endpoint_mode: "disabled"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "An unparseable bus ARN falls through to the credentials-sourced account." do
      let(:expected) do
        {"endpoint" => {"url" => "https://123456789012.eventsv2.us-east-1.amazonaws.com", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", event_bus_arn: "not-an-arn", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "FIPS account-based endpoint from the bus ARN." do
      let(:expected) do
        {"endpoint" => {"url" => "https://210987654321.eventsv2-fips.us-east-1.amazonaws.com", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", event_bus_arn: "arn:aws:events:us-east-1:210987654321:event-busv2/owner-bus/abcdefghij0123456789abcde", account_id_endpoint_mode: "preferred", use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "DualStack account-based endpoint from the bus ARN." do
      let(:expected) do
        {"endpoint" => {"url" => "https://210987654321.eventsv2.us-east-1.api.aws", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", event_bus_arn: "arn:aws:events:us-east-1:210987654321:event-busv2/owner-bus/abcdefghij0123456789abcde", account_id_endpoint_mode: "preferred", use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "FIPS + DualStack account-based endpoint from the bus ARN." do
      let(:expected) do
        {"endpoint" => {"url" => "https://210987654321.eventsv2-fips.us-east-1.api.aws", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", event_bus_arn: "arn:aws:events:us-east-1:210987654321:event-busv2/owner-bus/abcdefghij0123456789abcde", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "FIPS account-based endpoint from the credentials-sourced account." do
      let(:expected) do
        {"endpoint" => {"url" => "https://123456789012.eventsv2-fips.us-east-1.amazonaws.com", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id: "123456789012", account_id_endpoint_mode: "preferred", use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "FIPS + DualStack account-based endpoint from the credentials-sourced account." do
      let(:expected) do
        {"endpoint" => {"url" => "https://123456789012.eventsv2-fips.us-east-1.api.aws", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id: "123456789012", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Explicit endpoint override wins over account-based routing." do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", endpoint: "https://example.com", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "FIPS cannot be combined with an endpoint override." do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", endpoint: "https://example.com", use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "DualStack cannot be combined with an endpoint override." do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", endpoint: "https://example.com", use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Account-based endpoint when mode is preferred and account ID is available." do
      let(:expected) do
        {"endpoint" => {"url" => "https://123456789012.eventsv2.us-east-1.amazonaws.com", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Regional endpoint when mode is disabled." do
      let(:expected) do
        {"endpoint" => {"url" => "https://eventsv2.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id: "123456789012", account_id_endpoint_mode: "disabled"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Regional FIPS endpoint when mode is disabled." do
      let(:expected) do
        {"endpoint" => {"url" => "https://eventsv2-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id: "123456789012", account_id_endpoint_mode: "disabled", use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Regional DualStack endpoint when mode is disabled." do
      let(:expected) do
        {"endpoint" => {"url" => "https://eventsv2.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id: "123456789012", account_id_endpoint_mode: "disabled", use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Regional FIPS + DualStack endpoint when mode is disabled." do
      let(:expected) do
        {"endpoint" => {"url" => "https://eventsv2-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id: "123456789012", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Regional endpoint when no account ID is available and mode is preferred." do
      let(:expected) do
        {"endpoint" => {"url" => "https://eventsv2.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "eu-west-1", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Error when mode is required but no account ID is available." do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id_endpoint_mode: "required"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Account-based endpoint in the aws-cn partition when mode is required (account routing works in every partition)." do
      let(:expected) do
        {"endpoint" => {"url" => "https://123456789012.eventsv2.cn-north-1.amazonaws.com.cn", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", account_id: "123456789012", account_id_endpoint_mode: "required"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Error when the credentials-sourced account ID is not a valid host label." do
      let(:expected) do
        {"error" => "Credentials-sourced account ID parameter is invalid"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id: "not/valid", account_id_endpoint_mode: "preferred"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Regional endpoint when AccountIdEndpointMode is not set at all, even with an account ID and bus ARN available. The explicit empty properties pin that regional endpoints carry no adoption metric." do
      let(:expected) do
        {"endpoint" => {"url" => "https://eventsv2.us-east-1.amazonaws.com", "properties" => {}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", event_bus_arn: "arn:aws:events:us-east-1:210987654321:event-busv2/owner-bus/abcdefghij0123456789abcde", account_id: "123456789012"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account-based endpoint in the aws-us-gov partition when mode is preferred (account routing works in every partition)." do
      let(:expected) do
        {"endpoint" => {"url" => "https://123456789012.eventsv2.us-gov-west-1.amazonaws.com", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-west-1", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account-based FIPS endpoint in the aws-us-gov partition when mode is required." do
      let(:expected) do
        {"endpoint" => {"url" => "https://123456789012.eventsv2-fips.us-gov-west-1.amazonaws.com", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-west-1", account_id: "123456789012", account_id_endpoint_mode: "required", use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account-based endpoint in the aws-iso partition when mode is preferred, composing the iso DNS suffix." do
      let(:expected) do
        {"endpoint" => {"url" => "https://123456789012.eventsv2.us-iso-east-1.c2s.ic.gov", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "DualStack account-based endpoint in the aws-iso partition, composing the iso dualstack DNS suffix." do
      let(:expected) do
        {"endpoint" => {"url" => "https://123456789012.eventsv2.us-iso-east-1.api.aws.ic.gov", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", account_id: "123456789012", account_id_endpoint_mode: "preferred", use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "A parseable bus ARN whose account is not a valid host label falls through to the credentials-sourced account." do
      let(:expected) do
        {"endpoint" => {"url" => "https://123456789012.eventsv2.us-east-1.amazonaws.com", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", event_bus_arn: "arn:aws:events:us-east-1:not_a_valid_label!:event-busv2/owner-bus/abcdefghij0123456789abcde", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "A bus ARN for another service falls through to the credentials-sourced account." do
      let(:expected) do
        {"endpoint" => {"url" => "https://123456789012.eventsv2.us-east-1.amazonaws.com", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", event_bus_arn: "arn:aws:sqs:us-east-1:210987654321:some-queue", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Cross-region bus ARN: the ARN account routes within the CLIENT region (cells are per-account per-region)." do
      let(:expected) do
        {"endpoint" => {"url" => "https://210987654321.eventsv2.us-west-2.amazonaws.com", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", event_bus_arn: "arn:aws:events:us-east-1:210987654321:event-busv2/owner-bus/abcdefghij0123456789abcde", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Required mode succeeds through the bus ARN account." do
      let(:expected) do
        {"endpoint" => {"url" => "https://210987654321.eventsv2.us-east-1.amazonaws.com", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", event_bus_arn: "arn:aws:events:us-east-1:210987654321:event-busv2/owner-bus/abcdefghij0123456789abcde", account_id_endpoint_mode: "required"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account-based endpoint in the aws-cn partition when mode is preferred, composing the cn DNS suffix." do
      let(:expected) do
        {"endpoint" => {"url" => "https://123456789012.eventsv2.cn-north-1.amazonaws.com.cn", "properties" => {"metricValues" => ["O"]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

  end
end

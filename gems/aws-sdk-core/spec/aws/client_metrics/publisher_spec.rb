require_relative '../../spec_helper'

module Aws
  module ClientSideMonitoring
    describe Publisher do

      let(:example_attempt) do
        a = RequestMetrics::ApiCallAttempt.new(
          "StubService",
          "StubOperation",
          "",
          1,
          1526502725425,
          "stub-service.us-stubbed-1.example.org",
          "us-stubbed-1",
          "my-user-agent",
          "AKID-STUB",
          "TOKEN-STUB"
        )
        a.request_latency = 95
        a.http_status_code = 200
        a.x_amz_request_id = "226FC0DC6464C2AE"
        a.x_amz_id_2 = "fWhd+V0u5IWKNLhbIZi2ZR/DoWpAt2Km8T9ZZ75UnvkZFl0MU3jlf2B2zRJYHmxqkEc6iAtctOc="
        a
      end

      let(:truncate_attempt) do
        a = RequestMetrics::ApiCallAttempt.new(
          "StubService",
          "StubOperation",
          "01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234_truncated_67890123456789012345678901234567890123456789_client",
          1,
          1526502725425,
          "stub-service.us-stubbed-1.example.org",
          "us-stubbed-1",
          "my-user-agent",
          "AKID-STUB",
          "TOKEN-STUB"
        )
        a.request_latency = 95
        a.http_status_code = 200
        a.x_amz_request_id = "226FC0DC6464C2AE"
        a.x_amz_id_2 = "fWhd+V0u5IWKNLhbIZi2ZR/DoWpAt2Km8T9ZZ75UnvkZFl0MU3jlf2B2zRJYHmxqkEc6iAtctOc="
        a
      end

      let(:example_request_metric) do
        rm = RequestMetrics.new(
          service: "StubService",
          operation: "StubOperation",
          client_id: "",
          timestamp: 1526502682104,
          region: "us-stubbed-1"
        )
        rm.add_call_attempt(example_attempt)
        rm.api_call.complete(
          latency: 123,
          attempt_count: 1,
          user_agent: "my_ua",
          final_http_status_code: 200
        )
        rm
      end

      let(:example_truncated_request_metric) do
        rm = RequestMetrics.new(
          service: "StubService",
          operation: "StubOperation",
          client_id: "01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234_truncated_67890123456789012345678901234567890123456789_client",
          timestamp: 1526502682104,
          region: "us-stubbed-1"
        )
        rm.add_call_attempt(truncate_attempt)
        rm.api_call.complete(
          latency: 123,
          attempt_count: 1,
          user_agent: "my_ua",
          final_http_status_code: 200
        )
        rm
      end

      let(:example_failed_attempt) do
        a = RequestMetrics::ApiCallAttempt.new(
          "StubService",
          "StubOperation",
          "",
          1,
          1526502725425,
          "stub-service.us-stubbed-1.example.org",
          "us-stubbed-1",
          "my-user-agent",
          "AKID-STUB",
          "TOKEN-STUB"
        )
        a.request_latency = 95
        a.http_status_code = 400
        a.x_amz_request_id = "226FC0DC6464C2AE"
        a.x_amz_id_2 = "fWhd+V0u5IWKNLhbIZi2ZR/DoWpAt2Km8T9ZZ75UnvkZFl0MU3jlf2B2zRJYHmxqkEc6iAtctOc="
        a.aws_exception = "ServiceError"
        a.aws_exception_msg = "A service problem happened."
        a.sdk_exception = "Aws::Errors::ParserError"
        a.sdk_exception_msg = "Response parsing error."
        a
      end

      let(:example_failed_metric) do
        rm = RequestMetrics.new(
          service: "StubService",
          operation: "StubOperation",
          client_id: "FooClient",
          timestamp: 1526502682104,
          region: "us-stubbed-1"
        )
        rm.add_call_attempt(example_failed_attempt)
        rm.api_call.complete(
          latency: 123,
          attempt_count: 1,
          user_agent: "my_ua",
          final_http_status_code: 400,
          final_aws_exception: example_failed_attempt.aws_exception,
          final_aws_exception_message: example_failed_attempt.aws_exception_msg,
          final_sdk_exception: example_failed_attempt.sdk_exception,
          final_sdk_exception_message: example_failed_attempt.sdk_exception_msg,
        )
        rm
      end

      it "allows the setting of an agent port" do
        publisher = Aws::ClientSideMonitoring::Publisher.new(agent_port: 1234)
        expect(publisher.agent_port).to eq(1234)
      end

      it "allow the setting of an agent host" do
        publisher = Aws::ClientSideMonitoring::Publisher.new
        expect(publisher.agent_host).to eq("127.0.0.1")

        publisher = Aws::ClientSideMonitoring::Publisher.new(agent_host: 'dnshost')
        expect(publisher.agent_host).to eq('dnshost')
      end

      it 'publishes JSON messages to a UDP socket' do
        publisher = Aws::ClientSideMonitoring::Publisher.new(agent_port: 1234)
        stub_socket = double
        allow(UDPSocket).to receive(:new) { stub_socket }
        expect(stub_socket).to receive(:connect).twice
        expect(stub_socket).to receive(:send).with(
          '{"Type":"ApiCall","Service":"StubService","Api":"StubOperation","ClientId":"","Timestamp":1526502682104,"Version":1,"AttemptCount":1,"Latency":123,"Region":"us-stubbed-1","MaxRetriesExceeded":0,"UserAgent":"my_ua","FinalHttpStatusCode":200}',
          0
        )
        expect(stub_socket).to receive(:send).with(
          '{"Type":"ApiCallAttempt","Service":"StubService","Api":"StubOperation","ClientId":"","Timestamp":1526502725425,"Version":1,"Fqdn":"stub-service.us-stubbed-1.example.org","Region":"us-stubbed-1","UserAgent":"my-user-agent","AccessKey":"AKID-STUB","SessionToken":"TOKEN-STUB","HttpStatusCode":200,"XAmzRequestId":"226FC0DC6464C2AE","XAmzId2":"fWhd+V0u5IWKNLhbIZi2ZR/DoWpAt2Km8T9ZZ75UnvkZFl0MU3jlf2B2zRJYHmxqkEc6iAtctOc=","AttemptLatency":95}',
          0
        )
        publisher.publish(example_request_metric)
      end

      it 'handles error fields' do
        publisher = Aws::ClientSideMonitoring::Publisher.new(agent_port: 1234)
        stub_socket = double
        allow(UDPSocket).to receive(:new) { stub_socket }
        expect(stub_socket).to receive(:connect).twice
        expect(stub_socket).to receive(:send).with(
          '{"Type":"ApiCall","Service":"StubService","Api":"StubOperation","ClientId":"FooClient","Timestamp":1526502682104,"Version":1,"AttemptCount":1,"Latency":123,"Region":"us-stubbed-1","MaxRetriesExceeded":0,"UserAgent":"my_ua","FinalHttpStatusCode":400,"FinalSdkException":"Aws::Errors::ParserError","FinalSdkExceptionMessage":"Response parsing error.","FinalAwsException":"ServiceError","FinalAwsExceptionMessage":"A service problem happened."}',
          0
        )
        expect(stub_socket).to receive(:send).with(
          '{"Type":"ApiCallAttempt","Service":"StubService","Api":"StubOperation","ClientId":"","Timestamp":1526502725425,"Version":1,"Fqdn":"stub-service.us-stubbed-1.example.org","Region":"us-stubbed-1","UserAgent":"my-user-agent","AccessKey":"AKID-STUB","SessionToken":"TOKEN-STUB","HttpStatusCode":400,"AwsException":"ServiceError","AwsExceptionMessage":"A service problem happened.","XAmzRequestId":"226FC0DC6464C2AE","XAmzId2":"fWhd+V0u5IWKNLhbIZi2ZR/DoWpAt2Km8T9ZZ75UnvkZFl0MU3jlf2B2zRJYHmxqkEc6iAtctOc=","AttemptLatency":95,"SdkException":"Aws::Errors::ParserError","SdkExceptionMessage":"Response parsing error."}',
          0
        )
        publisher.publish(example_failed_metric)
      end

      it 'truncates long fields' do
        publisher = Aws::ClientSideMonitoring::Publisher.new(agent_port: 1234)
        stub_socket = double
        allow(UDPSocket).to receive(:new) { stub_socket }
        expect(stub_socket).to receive(:connect).twice
        expect(stub_socket).to receive(:send).with(
          '{"Type":"ApiCall","Service":"StubService","Api":"StubOperation","ClientId":"01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234_truncated","Timestamp":1526502682104,"Version":1,"AttemptCount":1,"Latency":123,"Region":"us-stubbed-1","MaxRetriesExceeded":0,"UserAgent":"my_ua","FinalHttpStatusCode":200}',
          0
        )
        expect(stub_socket).to receive(:send).with(
          '{"Type":"ApiCallAttempt","Service":"StubService","Api":"StubOperation","ClientId":"01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234_truncated","Timestamp":1526502725425,"Version":1,"Fqdn":"stub-service.us-stubbed-1.example.org","Region":"us-stubbed-1","UserAgent":"my-user-agent","AccessKey":"AKID-STUB","SessionToken":"TOKEN-STUB","HttpStatusCode":200,"XAmzRequestId":"226FC0DC6464C2AE","XAmzId2":"fWhd+V0u5IWKNLhbIZi2ZR/DoWpAt2Km8T9ZZ75UnvkZFl0MU3jlf2B2zRJYHmxqkEc6iAtctOc=","AttemptLatency":95}',
          0
        )
        publisher.publish(example_truncated_request_metric)
      end

    end
  end
end

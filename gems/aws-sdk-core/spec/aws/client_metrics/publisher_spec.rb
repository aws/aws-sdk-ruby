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

      let(:example_request_metric) do
        rm = RequestMetrics.new(
          service: "StubService",
          operation: "StubOperation",
          client_id: "",
          timestamp: 1526502682104,
        )
        rm.add_call_attempt(example_attempt)
        rm.api_call.complete(
          latency: 123,
          attempt_count: 1
        )
        rm
      end

      it "allows the setting of an agent port" do
        publisher = Aws::ClientSideMonitoring::Publisher.new(agent_port: 1234)
        expect(publisher.agent_port).to eq(1234)
      end

      it 'publishes JSON messages to a UDP socket' do
        publisher = Aws::ClientSideMonitoring::Publisher.new(agent_port: 1234)
        stub_socket = double
        allow(UDPSocket).to receive(:new) { stub_socket }
        expect(stub_socket).to receive(:connect).twice
        expect(stub_socket).to receive(:send).with(
          '{"Type":"ApiCall","Service":"StubService","Api":"StubOperation","ClientId":"","Timestamp":1526502682104,"Version":1,"AttemptCount":1,"Latency":123}',
          0
        )
        expect(stub_socket).to receive(:send).with(
          '{"Type":"ApiCallAttempt","Service":"StubService","Api":"StubOperation","ClientId":"","Timestamp":1526502725425,"Version":1,"Fqdn":"stub-service.us-stubbed-1.example.org","Region":"us-stubbed-1","UserAgent":"my-user-agent","AccessKey":"AKID-STUB","SessionToken":"TOKEN-STUB","HttpStatusCode":200,"XAmzRequestId":"226FC0DC6464C2AE","XAmzId2":"fWhd+V0u5IWKNLhbIZi2ZR/DoWpAt2Km8T9ZZ75UnvkZFl0MU3jlf2B2zRJYHmxqkEc6iAtctOc=","AttemptLatency":95}',
          0
        )
        publisher.publish(example_request_metric)
      end

    end
  end
end

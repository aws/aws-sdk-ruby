require_relative '../../spec_helper'

module Aws
  module Plugins

    describe "Client Side Monitoring Plugins" do
      ClientMetricsSvc = ApiHelper.sample_rest_xml # S3

      let(:stub_publisher) do
        StubPublisher.new
      end

      let(:client) {
        client = ClientMetricsSvc::Client.new(
          stub_responses: true,
          client_side_monitoring_publisher: stub_publisher
        )
        client.handlers.add(
          ClientMetricsPlugin::Handler,
          step: :initialize
        )
        client.handlers.add(
          ClientMetricsSendPlugin::LatencyHandler,
          step: :sign,
          priority: 0
        )
        client.handlers.add(
          ClientMetricsSendPlugin::AttemptHandler,
          step: :sign,
          priority: 95
        )
        client
      }

      let(:env) {{}}

      before do
        stub_const("ENV", env)
      end

      before(:each) do
        stub_publisher.metrics = []
      end

      describe "configuration" do
        it 'defaults config.client_side_monitoring to false' do
          expect(client.config.client_side_monitoring).not_to be_truthy
        end

        it 'defaults to an empty string client id' do
          expect(client.config.client_side_monitoring_client_id).to eq("")
        end

        it 'does not include the plugin when client_side_monitoring is false' do
          client = ClientMetricsSvc::Client.new(
            credentials: Aws::Credentials.new('stub_akid', 'stub_secret'),
            region: "us-stubbed-1",
            client_side_monitoring: false
          )
          expect(client.handlers.to_a).not_to include(
            Aws::Plugins::ClientMetricsPlugin::Handler
          )
          expect(client.handlers.to_a).not_to include(
            Aws::Plugins::ClientMetricsSendPlugin::AttemptHandler
          )
          expect(client.handlers.to_a).not_to include(
            Aws::Plugins::ClientMetricsSendPlugin::LatencyHandler
          )
        end

        it 'does not include the plugin if an invalid port is provided' do
          client = ClientMetricsSvc::Client.new(
            credentials: Aws::Credentials.new('stub_akid', 'stub_secret'),
            region: "us-stubbed-1",
            client_side_monitoring: true,
            client_side_monitoring_port: nil
          )
          expect(client.handlers.to_a).not_to include(
            Aws::Plugins::ClientMetricsPlugin::Handler
          )
          expect(client.handlers.to_a).not_to include(
            Aws::Plugins::ClientMetricsSendPlugin::AttemptHandler
          )
          expect(client.handlers.to_a).not_to include(
            Aws::Plugins::ClientMetricsSendPlugin::LatencyHandler
          )
        end

        it 'does include the plugins when using the default port and host' do
          client = ClientMetricsSvc::Client.new(
            credentials: Aws::Credentials.new('stub_akid', 'stub_secret'),
            region: "us-stubbed-1",
            client_side_monitoring: true
          )
          expect(client.config.client_side_monitoring_port).to eq(31000)
          expect(client.config.client_side_monitoring_host).to eq("127.0.0.1")
          expect(client.handlers.to_a).to include(
            Aws::Plugins::ClientMetricsPlugin::Handler
          )
          expect(client.handlers.to_a).to include(
            Aws::Plugins::ClientMetricsSendPlugin::AttemptHandler
          )
          expect(client.handlers.to_a).to include(
            Aws::Plugins::ClientMetricsSendPlugin::LatencyHandler
          )
        end

        it 'accepts client_side_monitoring as an env variable' do
          env["AWS_CSM_ENABLED"] = "fAlSe"
          client = ClientMetricsSvc::Client.new(stub_responses: true)
          expect(client.handlers.to_a).not_to include(
            Aws::Plugins::ClientMetricsPlugin
          )
          expect(client.handlers.to_a).not_to include(
            Aws::Plugins::ClientMetricsSendPlugin
          )
          env["AWS_CSM_ENABLED"] = "F"
          client2 = ClientMetricsSvc::Client.new(stub_responses: true)
          expect(client2.handlers.to_a).not_to include(
            Aws::Plugins::ClientMetricsPlugin
          )
          expect(client2.handlers.to_a).not_to include(
            Aws::Plugins::ClientMetricsSendPlugin
          )
        end

        it 'accepts a custom client id' do
          env["AWS_CSM_CLIENT_ID"] = "env-client"
          client = ClientMetricsSvc::Client.new(
            stub_responses: true,
            client_side_monitoring_client_id: "foo-client"
          )
          expect(client.config.client_side_monitoring_client_id).to eq(
            "foo-client"
          )
        end

        it 'fetches client id from env variables' do
          env["AWS_CSM_CLIENT_ID"] = "env-client"
          client = ClientMetricsSvc::Client.new(stub_responses: true)
          expect(client.config.client_side_monitoring_client_id).to eq(
            "env-client"
          )
        end

        it 'defaults to the agent publisher' do
          client = ClientMetricsSvc::Client.new(stub_responses: true)
          expect(client.config.client_side_monitoring_publisher).to be_a(
            ClientSideMonitoring::Publisher
          )
        end
      end

      describe "ApiCall Metrics" do
        it "collects basic call data" do
          client.list_buckets
          expect(stub_publisher.metrics.size).to eq(1)
          api_call = stub_publisher.metrics[0].api_call
          expect(api_call.service).to eq("S3")
          expect(api_call.api).to eq("ListBuckets")
          expect(api_call.timestamp).to be_a_kind_of(Integer)
          expect(api_call.version).to be_a_kind_of(Integer)
          expect(api_call.attempt_count).to eq(1)
          expect(api_call.latency).to be_a_kind_of(Integer)
          expect(api_call.client_id).to eq("")
          expect(api_call.region).to eq("us-stubbed-1")
          expect(api_call.user_agent).to match(/^aws-sdk-ruby3/)
          expect(api_call.user_agent).to match(/aws-sdk-sampleapi.\/1.0.0/)
          expect(api_call.final_http_status_code).to eq(200)
        end
      end

      describe "ApiCallAttempt Metrics" do
        it "collects basic attempt data" do
          client.list_buckets
          expect(stub_publisher.metrics.size).to eq(1)
          request_metrics = stub_publisher.metrics[0]
          api_call_attempts = request_metrics.api_call_attempts
          expect(api_call_attempts.size).to eq(1)
          expect(request_metrics.api_call.max_retries_exceeded).to eq(0)
          attempt = api_call_attempts[0]
          expect(attempt.service).to eq("S3")
          expect(attempt.api).to eq("ListBuckets")
          expect(attempt.timestamp).to be_a_kind_of(Integer)
          expect(attempt.version).to be_a_kind_of(Integer)
          expect(attempt.fqdn).to eq("s3.us-stubbed-1.amazonaws.com")
          expect(attempt.region).to eq("us-stubbed-1")
          expect(attempt.user_agent).to match(/^aws-sdk-ruby3/)
          expect(attempt.user_agent).to match(/aws-sdk-sampleapi.\/1.0.0/)
          expect(attempt.access_key).to eq("stubbed-akid")
          expect(attempt.http_status_code).to eq(200)
          expect(attempt.request_latency).to be_a_kind_of(Integer)
          expect(attempt.client_id).to eq("")
        end

        it "collects exception information when an error occurs" do
          client.stub_responses(:get_object,
            {
              status_code: 404,
              body: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"\
                    "<Error>\n"\
                    "<Code>NoSuchKey</Code>\n"\
                    "<Message>The resource you requested does not exist</Message>\n"\
                    "<Resource>/mybucket/myfoto.jpg</Resource>\n"\
                    "<RequestId>4442587FB7D0A2F9</RequestId>\n"\
                    "</Error>",
              headers: {}
            },
            {}
          )
          expect {
            client.get_object(bucket: "mybucket", key: "myfoto.jpg")
          }.to raise_error("The resource you requested does not exist")
          expect(stub_publisher.metrics.size).to eq(1)
          request_metrics = stub_publisher.metrics[0]
          api_call_attempts = request_metrics.api_call_attempts
          expect(request_metrics.api_call.max_retries_exceeded).to eq(0)
          expect(request_metrics.api_call.final_aws_exception).to eq(
            "NoSuchKey"
          )
          expect(request_metrics.api_call.final_aws_exception_message).to eq(
            "The resource you requested does not exist"
          )
          expect(api_call_attempts.size).to eq(1)
          attempt = api_call_attempts[0]
          expect(attempt.aws_exception).to eq("NoSuchKey")
          expect(attempt.aws_exception_msg).to eq(
            "The resource you requested does not exist"
          )
        end

        it "collects request ID headers when available" do
          client.stub_responses(:get_object,
            {
              status_code: 404,
              body: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"\
                    "<Error>\n"\
                    "<Code>NoSuchKey</Code>\n"\
                    "<Message>The resource you requested does not exist</Message>\n"\
                    "<Resource>/mybucket/myfoto.jpg</Resource>\n"\
                    "<RequestId>4442587FB7D0A2F9</RequestId>\n"\
                    "</Error>",
              headers: {
                "x-amz-id-2" => "fWhd+V0u5IWKNLhbIZi2ZR/DoWpAt2Km8T9ZZ75UnvkZFl0MU3jlf2B2zRJYHmxqkEc6iAtctOc=",
                "x-amz-request-id" => "226FC0DC6464C2AE"
              }
            },
            {}
          )
          expect {
            client.get_object(bucket: "mybucket", key: "myfoto.jpg")
          }.to raise_error("The resource you requested does not exist")
          expect(stub_publisher.metrics.size).to eq(1)
          request_metrics = stub_publisher.metrics[0]
          api_call_attempts = request_metrics.api_call_attempts
          expect(api_call_attempts.size).to eq(1)
          expect(request_metrics.api_call.max_retries_exceeded).to eq(0)
          attempt = api_call_attempts[0]
          expect(attempt.x_amz_id_2).to eq("fWhd+V0u5IWKNLhbIZi2ZR/DoWpAt2Km8T9ZZ75UnvkZFl0MU3jlf2B2zRJYHmxqkEc6iAtctOc=")
          expect(attempt.x_amz_request_id).to eq("226FC0DC6464C2AE")
        end

        describe "failures without network requests" do
          let(:failure_client) {
            client = ClientMetricsSvc::Client.new(
              stub_responses: true,
              client_side_monitoring_publisher: stub_publisher
            )
            client.handlers.add(
              ClientMetricsPlugin::Handler,
              step: :initialize
            )
            client.handlers.add(
              ClientMetricsSendPlugin::LatencyHandler,
              step: :sign,
              priority: 0
            )
            client.handlers.add(
              ClientMetricsSendPlugin::AttemptHandler,
              step: :sign,
              priority: 95
            )
            client.handlers.add(
              FailureInjectionHandler,
              step: :validate,
              priority: 50
            )
            client
          }

          it 'correctly publishes metrics for a validation error' do
            expect {
              failure_client.list_buckets
            }.to raise_error(ArgumentError, "Injected exception.")
            expect(stub_publisher.metrics.size).to eq(1)
            request_metrics = stub_publisher.metrics[0]
            api_call_attempts = request_metrics.api_call_attempts
            expect(request_metrics.api_call.attempt_count).to eq(1)
            expect(request_metrics.api_call.max_retries_exceeded).to eq(0)
            expect(api_call_attempts.size).to eq(1)
            attempt = api_call_attempts[0]
            expect(request_metrics.api_call.final_sdk_exception).to eq(
              "ArgumentError"
            )
            expect(request_metrics.api_call.final_sdk_exception_message).to eq(
              "Injected exception."
            )
            expect(attempt.sdk_exception).to eq("ArgumentError")
            expect(attempt.sdk_exception_msg).to eq("Injected exception.")
          end
        end

        describe "failures without network requests" do
          let(:failure_client) {
            client = ClientMetricsSvc::Client.new(
              stub_responses: true,
              client_side_monitoring_publisher: stub_publisher
            )
            client.handlers.add(
              ClientMetricsPlugin::Handler,
              step: :initialize
            )
            client.handlers.add(
              ClientMetricsSendPlugin::LatencyHandler,
              step: :sign,
              priority: 0
            )
            client.handlers.add(
              ClientMetricsSendPlugin::AttemptHandler,
              step: :sign,
              priority: 95
            )
            client.handlers.add(
              ResponseFailureHandler,
              step: :validate,
              priority: 50
            )
            client
          }

          it "accounts for failures during response handling" do
            expect {
              failure_client.list_buckets
            }.to raise_error(ArgumentError, "Bad response.")
            expect(stub_publisher.metrics.size).to eq(1)
            request_metrics = stub_publisher.metrics[0]
            api_call_attempts = request_metrics.api_call_attempts
            expect(request_metrics.api_call.attempt_count).to eq(1)
            expect(request_metrics.api_call.max_retries_exceeded).to eq(0)
            expect(api_call_attempts.size).to eq(1)
            attempt = api_call_attempts[0]
            expect(request_metrics.api_call.final_sdk_exception).to eq(
              "ArgumentError"
            )
            expect(request_metrics.api_call.final_sdk_exception_message).to eq(
              "Bad response."
            )
            expect(attempt.sdk_exception).to eq("ArgumentError")
            expect(attempt.sdk_exception_msg).to eq("Bad response.")
          end

          it "can handle sdk exceptions and aws exceptions together" do
            failure_client.stub_responses(:get_object,
              {
                status_code: 404,
                body: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"\
                      "<Error>\n"\
                      "<Code>NoSuchKey</Code>\n"\
                      "<Message>The resource you requested does not exist</Message>\n"\
                      "<Resource>/mybucket/myfoto.jpg</Resource>\n"\
                      "<RequestId>4442587FB7D0A2F9</RequestId>\n"\
                      "</Error>",
                headers: {}
              },
              {}
            )
            expect {
              failure_client.get_object(bucket: "mybucket", key: "myfoto.jpg")
            }.to raise_error(ArgumentError, "Bad response.")
            expect(stub_publisher.metrics.size).to eq(1)
            request_metrics = stub_publisher.metrics[0]
            api_call_attempts = request_metrics.api_call_attempts
            expect(request_metrics.api_call.attempt_count).to eq(1)
            expect(request_metrics.api_call.max_retries_exceeded).to eq(0)
            expect(api_call_attempts.size).to eq(1)
            attempt = api_call_attempts[0]
            expect(request_metrics.api_call.final_aws_exception).to eq(
              "NoSuchKey"
            )
            expect(request_metrics.api_call.final_aws_exception_message).to eq(
              "The resource you requested does not exist"
            )
            expect(request_metrics.api_call.final_sdk_exception).to eq(
              "ArgumentError"
            )
            expect(request_metrics.api_call.final_sdk_exception_message).to eq(
              "Bad response."
            )
            expect(attempt.aws_exception).to eq("NoSuchKey")
            expect(attempt.aws_exception_msg).to eq(
              "The resource you requested does not exist"
            )
            expect(attempt.sdk_exception).to eq("ArgumentError")
            expect(attempt.sdk_exception_msg).to eq("Bad response.")
          end

          it 'recognizes retryable exceptions' do
            client.stub_responses(:get_object,
              {
                status_code: 500,
                body: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"\
                      "<Error>\n"\
                      "<Code>InternalServiceError</Code>\n"\
                      "<Message>Fake internal service error.</Message>\n"\
                      "<Resource>/mybucket/myfoto.jpg</Resource>\n"\
                      "<RequestId>4442587FB7D0A2F9</RequestId>\n"\
                      "</Error>",
                headers: {}
              },
              {}
            )
            expect {
              client.get_object(bucket: "mybucket", key: "myfoto.jpg")
            }.to raise_error("Fake internal service error.")
            expect(stub_publisher.metrics.size).to eq(1)
            request_metrics = stub_publisher.metrics[0]
            api_call_attempts = request_metrics.api_call_attempts
            expect(api_call_attempts.size).to eq(1)
            expect(request_metrics.api_call.max_retries_exceeded).to eq(1)
          end
        end

      end
    end

    class StubPublisher
      attr_accessor :metrics
      attr_accessor :agent_port
      attr_accessor :agent_host

      def initialize
        @metrics = []
      end

      def publish(request_metrics)
        @metrics << request_metrics
      end
    end

    class FailureInjectionHandler < Seahorse::Client::Handler
      def call(context)
        raise ArgumentError, "Injected exception."
      end
    end

    class ResponseFailureHandler < Seahorse::Client::Handler
      def call(context)
        @handler.call(context)
        raise ArgumentError, "Bad response."
      end
    end

  end
end

module Aws
  module ClientSideMonitoring
    # @api private
    class RequestMetrics
      attr_reader :api_call, :api_call_attempts

      def initialize(opts = {})
        @service = opts[:service]
        @api = opts[:operation]
        @client_id = opts[:client_id]
        @timestamp = opts[:timestamp] # In epoch milliseconds
        @version = 1
        @api_call = ApiCall.new(@service, @api, @client_id, @version, @timestamp)
        @api_call_attempts = []
      end

      def build_call_attempt(opts = {})
        timestamp = opts[:timestamp]
        fqdn = opts[:fqdn]
        region = opts[:region]
        user_agent = opts[:user_agent]
        access_key = opts[:access_key]
        session_token = opts[:session_token]
        ApiCallAttempt.new(
          @service,
          @api,
          @client_id,
          @version,
          timestamp,
          fqdn,
          region,
          user_agent,
          access_key,
          session_token
        )
      end

      def add_call_attempt(attempt)
        @api_call_attempts << attempt
      end

      class ApiCall
        attr_reader :service, :api, :client_id, :timestamp, :version,
          :attempt_count, :latency

        def initialize(service, api, client_id, version, timestamp)
          @service = service
          @api = api
          @client_id = client_id
          @version = version
          @timestamp = timestamp
        end

        def complete(opts = {})
          @latency = opts[:latency]
          @attempt_count = opts[:attempt_count]
        end

        def to_json(*a)
          {
            "Type" => "ApiCall",
            "Service" => @service,
            "Api" => @api,
            "ClientId" => @client_id,
            "Timestamp" => @timestamp,
            "Version" => @version,
            "AttemptCount" => @attempt_count,
            "Latency" => @latency
          }.to_json
        end
      end

      class ApiCallAttempt
        attr_reader :service, :api, :client_id, :version, :timestamp, :fqdn,
          :region, :user_agent, :access_key, :session_token
        attr_accessor :request_latency, :http_status_code, :aws_exception_msg,
          :x_amz_request_id, :x_amz_id_2, :x_amzn_request_id, :sdk_exception,
          :aws_exception, :sdk_exception_msg

        def initialize(
          service,
          api,
          client_id,
          version,
          timestamp,
          fqdn,
          region,
          user_agent,
          access_key,
          session_token
        )
          @service = service
          @api = api
          @client_id = client_id
          @version = version
          @timestamp = timestamp
          @fqdn = fqdn
          @region = region
          @user_agent = user_agent
          @access_key = access_key
          @session_token = session_token
        end

        def to_json(*a)
          json = {
            "Type" => "ApiCallAttempt",
            "Service" => @service,
            "Api" => @api,
            "ClientId" => @client_id,
            "Timestamp" => @timestamp,
            "Version" => @version,
            "Fqdn" => @fqdn,
            "Region" => @region,
            "UserAgent" => @user_agent,
            "AccessKey" => @access_key
          }
          # Optional Fields
          json["SessionToken"] = @session_token if @session_token
          json["HttpStatusCode"] = @http_status_code if @http_status_code
          json["AwsException"] = @aws_exception if @aws_exception
          json["AwsExceptionMessage"] = @aws_exception_msg if @aws_exception_msg
          json["XAmznRequestId"] = @x_amzn_request_id if @x_amzn_request_id
          json["XAmzRequestId"] = @x_amz_request_id if @x_amz_request_id
          json["XAmzId2"] = @x_amz_id_2 if @x_amz_id_2
          json["AttemptLatency"] = @request_latency if @request_latency
          json["SdkException"] = @sdk_exception if @sdk_exception
          json["SdkExceptionMessage"] = @sdk_exception_msg if @sdk_exception_msg
          json.to_json
        end
      end

    end
  end
end

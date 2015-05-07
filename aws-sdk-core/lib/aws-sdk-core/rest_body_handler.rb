module Aws
  # @api private
  class RestBodyHandler < Seahorse::Client::Handler

    # @param [Seahorse::Client::RequestContext] context
    # @return [Seahorse::Client::Response]
    def call(context)
      context.http_request.body = build_body(context)
      @handler.call(context).on_success do |response|
        response.data = extract_data(response.context) unless response.data
      end.on(200..599) do |respson|
        context[:request_id] = extract_request_id(context)
      end
    end

    private

    def extract_request_id(context)
      headers = context.http_response.headers
      headers['x-amz-request-id'] || headers['x-amzn-requestid']
    end

    def build_body(context)
      ref = context.operation.input
      case
      when ref.nil? then nil
      when streaming?(ref) then context.params[ref.shape[:payload]]
      when ref.shape[:payload]
        if params = context.params[ref.shape[:payload]]
          serialize_params(ref.shape[:payload_member], params)
        end
      else
        params = body_params(ref, context.params)
        serialize_params(ref, params) unless params.empty?
      end
    end

    def extract_data(context)
      if ref = context.operation.output
        data = Structure.new(ref.shape.member_names)
        if streaming?(ref)
          data[ref.shape[:payload]] = context.http_response.body
        elsif ref.shape[:payload]
          data[ref.shape[:payload]] = parse(context, ref.shape[:payload_member])
        else
          parse(context, ref, data)
        end
        data
      else
        EmptyStructure.new
      end
    end

    def body_params(ref, params)
      ref.shape.members.inject({}) do |hash, (member_name, member_ref)|
        if member_ref.location == 'body'
          hash[member_name] = params[member_name] if params.key?(member_name)
        end
        hash
      end
    end

    def streaming?(ref)
      ref.shape[:payload] && (
        Seahorse::Model::Shapes::BlobShape === ref.shape[:payload_member].shape ||
        Seahorse::Model::Shapes::StringShape === ref.shape[:payload_member].shape
      )
    end

    def serialize_params(ref, params)
      raise NotImplementedError, 'must be defiend in sublcasses'
    end

    def parse(context, ref, target = nil)
      body = context.http_response.body_contents
      if body.bytesize == 0
        nil
      else
        parse_body(body, ref, target)
      end
    end

    def parse_body(body, ref, target)
      raise NotImplementedError, 'must be defiend in sublcasses'
    end

  end
end

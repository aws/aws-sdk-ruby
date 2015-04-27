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
      input = context.operation.input
      case
      when input.nil?
        nil
      when streaming?(input)
        context.params[input.payload]
      when input.payload
        if params = context.params[input.payload]
          serialize_params(input.payload_member, params)
        end
      else
        params = body_params(input, context.params)
        serialize_params(input, params) unless params.empty?
      end
    end

    def extract_data(context)
      if output = context.operation.output
        data = Structure.new(output.member_names)
        if streaming?(output)
          data[output.payload] = context.http_response.body
        elsif output.payload
          data[output.payload] = parse(context, output.payload_member)
        else
          parse(context, output, data)
        end
        data
      else
        EmptyStructure.new
      end
    end

    def body_members_shape(shape)
      if shape.payload
        shape.payload_member
      else
        members = shape.members.each.with_object({}) do |(name, member), hash|
          if member.location == 'body'
            hash[name.to_s] = member.definition
          end
        end
        definition = shape.definition.merge('members' => members)
        options = { shape_map: shape.shape_map }
        Seahorse::Model::Shapes::Shape.new(definition, options)
      end
    end

    def body_params(shape, params)
      shape.members.each.with_object({}) do |(member_name, member_shape), hash|
        if member_shape.location == 'body'
          hash[member_name] = params[member_name] if params.key?(member_name)
        end
      end
    end

    def streaming?(shape)
      shape.payload && (
        Seahorse::Model::Shapes::Blob === shape.payload_member ||
        Seahorse::Model::Shapes::String === shape.payload_member
      )
    end

    def serialize_params(shape, params)
      raise NotImplementedError, 'must be defiend in sublcasses'
    end

    def body_contents(context)
      context.http_response.body_contents
    end

    def parse(context, shape, target = nil)
      body = context.http_response.body_contents
      if body.bytesize == 0
        nil
      else
        parse_body(body, shape, target)
      end
    end

    # @param [String] body
    # @param [Seahorse::Model::Shapes::Structure] shape
    # @param [Structure] target
    def parse_body(body, shape, target)
      raise NotImplementedError, 'must be defiend in sublcasses'
    end

  end
end

# frozen_string_literal: true

module OpsCpuSec
  module Validator
    # Checks that a request case sent exactly the model's params.
    module RequestChecks
      # Base64-encoded blob members (AttributeValue B and BS) on the JSON wire.
      BLOB_PATH = /\.(B|BS\[\d+\])\z/.freeze
      # One sent request: Http::Request, header Hash and body bytes.
      Sent = Struct.new(:req, :headers, :body)

      class << self
        def check(test_case, req, headers, body)
          params = test_case.spec['params']
          case test_case.protocol
          when 'awsJson1_0' then compare_wire(params, body.empty? ? {} : JSON.parse(body), blobs: :base64)
          when 'rpcv2Cbor' then compare_wire(params, body.empty? ? {} : Aws::RpcV2::CborEngine.decode(body),
                                             blobs: :raw)
          when 'awsQuery' then check_query(test_case, body)
          else check_rest(test_case, Sent.new(req, headers, body))
          end
        end

        # Recursive wire comparison for the RPC protocols, whose member names
        # are the wire names.
        def compare_wire(expected, actual, blobs:, path: '$')
          case expected
          when Hash then compare_hash(expected, actual, blobs, path)
          when Array then compare_array(expected, actual, blobs, path)
          when Numeric then compare_number(expected, actual, path)
          when String then compare_string(expected, actual, blobs, path)
          else actual == expected ? [] : ["#{path}: #{actual.inspect} != #{expected.inspect}"]
          end
        end

        def compare_hash(expected, actual, blobs, path)
          return ["#{path}: expected object, got #{actual.class}"] unless actual.is_a?(Hash)

          errors = []
          if actual.keys.sort != expected.keys.sort
            errors << "#{path}: keys #{actual.keys.sort} != #{expected.keys.sort}"
          end
          expected.each do |key, value|
            errors.concat(compare_wire(value, actual[key], blobs: blobs, path: "#{path}.#{key}"))
          end
          errors
        end

        def compare_array(expected, actual, blobs, path)
          unless actual.is_a?(Array) && actual.size == expected.size
            return ["#{path}: length #{actual&.size} != #{expected.size}"]
          end

          expected.each_with_index.flat_map do |value, i|
            compare_wire(value, actual[i], blobs: blobs, path: "#{path}[#{i}]")
          end
        end

        def compare_number(expected, actual, path)
          number = actual.is_a?(Time) ? actual.to_f : actual
          return [] if number.is_a?(Numeric) && (number - expected).abs < 1e-9

          ["#{path}: #{actual.inspect} != #{expected}"]
        end

        def compare_string(expected, actual, blobs, path)
          return [] if actual.is_a?(String) && (actual.b == expected.b || base64_blob?(expected, actual, blobs, path))

          ["#{path}: #{actual.inspect[0, 60]} != #{expected.inspect[0, 60]}"]
        end

        def base64_blob?(expected, actual, blobs, path)
          blobs == :base64 && path.match?(BLOB_PATH) && Base64.decode64(actual) == expected
        end

        # Query: every scalar param appears once in the form, plus Action/Version.
        def check_query(test_case, body)
          form = URI.decode_www_form(body)
          errors = []
          action = form.assoc('Action')&.last
          errors << "Action #{action}" unless action == test_case.operation
          errors << 'no Version' unless form.assoc('Version')
          values = form.reject { |key, _| %w[Action Version].include?(key) }.map(&:last)
          expected = Values.leaves(test_case.spec['params'])
          unless values.size == expected.size
            errors << "form has #{values.size} values, params have #{expected.size} scalars"
          end
          missing, = Values.match(expected, values)
          errors.concat(missing.map { |value| "param value #{value.inspect} not in form" })
        end

        # REST: every param is bound to the URI, a header, the query or the body.
        def check_rest(test_case, sent)
          input = test_case.client.config.api.operation(test_case.method_name).input
          errors = test_case.spec['params'].flat_map { |key, value| check_rest_param(input, key, value, sent) }
          meta_headers = sent.headers.keys.count { |name| name.start_with?('x-amz-meta-') }
          expected_meta = (test_case.spec['params']['Metadata'] || {}).size
          errors << "#{meta_headers} x-amz-meta headers != #{expected_meta}" unless meta_headers == expected_meta
          errors
        end

        def check_rest_param(input, key, value, sent)
          name = Values.underscore(key).to_sym
          ref = input.shape.member(name)
          endpoint = sent.req.endpoint
          case ref.location
          when 'uri' then endpoint.path.include?(value.to_s) ? [] : ["#{key} not in path"]
          when 'querystring' then endpoint.query.to_s.include?(ref.location_name) ? [] : ["#{key} not in query"]
          when 'header' then check_header(ref, value, sent.headers)
          when 'headers' then check_header_map(ref, value, sent.headers)
          else if name == input.shape[:payload]
                 check_payload(value,
                               sent.body)
               else
                 ["#{key} (#{ref.location.inspect}) not checked"]
               end
          end
        end

        def check_header(ref, value, headers)
          got = headers[ref.location_name.downcase] || headers[ref.location_name]
          return ["header #{ref.location_name} missing"] unless got
          return [] unless value.is_a?(String) && ref.shape.is_a?(Seahorse::Model::Shapes::StringShape)

          got == value ? [] : ["header #{ref.location_name}: #{got.inspect} != #{value.inspect}"]
        end

        def check_header_map(ref, value, headers)
          value.filter_map do |suffix, want|
            got = headers["#{ref.location_name}#{suffix}".downcase]
            "header #{ref.location_name}#{suffix}: #{got.inspect} != #{want.inspect}" unless got == want
          end
        end

        def check_payload(value, body)
          want = Base64.strict_decode64(value)
          body.b == want.b ? [] : ["body #{body.bytesize} B != #{want.bytesize} B"]
        end
      end
    end
  end
end

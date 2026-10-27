# frozen_string_literal: true

module OpsCpuSec
  module Validator
    # Checks that a response case returned the model's response and parsed
    # all of it.
    module ResponseChecks
      class << self
        # Returns [errors, summary].
        def check(test_case, responses)
          operation_ref = test_case.client.config.api.operation(test_case.method_name)
          expected = body_leaves(test_case) + header_leaves(test_case, operation_ref.output)
          actual = Values.leaves(Values.data_to_hash(responses.last.data))
          errors = canned_errors(test_case, operation_ref)
          missing, extra = Values.match(expected, actual, blobs: true)
          errors.concat(missing.map { |value| "#{value.inspect[0, 60]} missing from output" })
          errors << "output has unexpected values #{extra.first(5).inspect[0, 200]}" unless extra.empty?
          first, last = responses.map { |resp| Values.data_to_hash(resp.data) }
          errors << 'responses differ between calls' unless first == last
          [errors, " (#{test_case.canned.body.bytesize} B body, #{expected.size} values parsed)"]
        end

        # The stub returns exactly the model's response (built afresh here).
        def canned_errors(test_case, operation_ref)
          model = Cases.canned_response(test_case.spec, operation_ref)
          canned = test_case.canned
          errors = []
          errors << 'canned body != model body' unless canned.body == model.body
          errors << 'canned headers != model headers' unless canned.headers == model.headers
          errors << "canned status #{canned.status} != #{model.status}" unless canned.status == model.status
          errors
        end

        def body_leaves(test_case)
          body = test_case.canned.body
          return [] if body.empty?
          return [body] if test_case.operation == 'GetObject'

          case test_case.protocol
          when 'rpcv2Cbor' then Values.leaves(Aws::RpcV2::CborEngine.decode(body))
          when 'awsQuery', 'restXml' then xml_leaves(body)
          else Values.leaves(JSON.parse(body))
          end
        end

        def xml_leaves(body)
          doc = REXML::Document.new(body)
          request_id = REXML::XPath.first(doc, '//RequestId')&.text
          texts = REXML::XPath.match(doc, '//text()').map { |node| node.value.strip }
          texts.reject { |text| text.empty? || text == request_id }
        end

        def header_leaves(test_case, output)
          bound = output.shape.members.filter_map do |_, ref|
            ref.location_name.downcase if ref.location == 'header'
          end
          test_case.canned.headers.filter_map { |name, value| value if bound.include?(name.downcase) }
        end
      end
    end
  end
end

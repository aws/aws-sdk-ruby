require 'aws-eventstream'

module Aws
  module Stubbing
    module Protocols
      class RestXml < Rest

        include Seahorse::Model::Shapes

        def body_for(api, operation, rules, data)
          if eventstream?(rules)
            # TODO Extract this
            encode_response(rules, data)
            # stub_eventstream # from REST
          else
            xml = []
            rules.location_name = operation.name + 'Result'
            rules['xmlNamespace'] = { 'uri' => api.metadata['xmlNamespace'] }
            Xml::Builder.new(rules, target:xml).to_xml(data)
            xml.join
          end
        end

        def stub_error(error_code)
          http_resp = Seahorse::Client::Http::Response.new
          http_resp.status_code = 400
          http_resp.body = XmlError.new(error_code).to_xml
          http_resp
        end

        def xmlns(api)
          api.metadata['xmlNamespace']
        end

        private

        def eventstream?(rules)
          rules.shape.members.each do |_, ref|
            return true if ref.eventstream
          end
        end

        def encode_response(rules, data)
          data.inject('') do |stream, event_data|
            # construct message headers and payload
            opts = {headers: {}}
            event_ref = rules.shape.member(event_data.delete(:event_type))
            event_data.each do |k, v|
              member_ref = event_ref.shape.member(k)
              if member_ref.eventheader
                opts[:headers][member_ref.location_name] = Aws::EventStream::HeaderValue.new(
                  value: v,
                  type: member_ref.eventheader_type
                )
              elsif member_ref.eventpayload
                case member_ref.eventpayload_type
                when 'string'
                  opts[:payload] = StringIO.new(v)
                when 'blob'
                  opts[:payload] = v
                when 'structure'
                  #TODO
                end
              end
            end
            opts[:headers][':event-type'] = Aws::EventStream::HeaderValue.new(
              value: event_ref.location_name,
              type: "string"
            )
            stream << Aws::EventStream::Encoder.new.encode(
              Aws::EventStream::Message.new(opts))
            stream
          end
        end

      end
    end
  end
end

module Aws
  module Stubbing
    module Protocols
      class RestXml < Rest

        include Seahorse::Model::Shapes

        def body_for(api, operation, rules, data)
          xml = []
          builder = Aws::Xml::DocBuilder.new(target: xml, indent: '  ')
          rules.location_name = operation.name + 'Result'
          rules['xmlNamespace'] = { 'uri' => api.metadata['xmlNamespace'] }
          Xml::Builder.new(rules, target:xml, pad:'  ').to_xml(data)
          xml.join
        end

        def xmlns(api)
          api.metadata['xmlNamespace']
        end

      end
    end
  end
end

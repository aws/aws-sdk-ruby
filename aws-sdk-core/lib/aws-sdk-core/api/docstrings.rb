module Aws
  module Api
    # @api private
    # This module loads the API documentation for the given API.
    module Docstrings

      def self.apply(client_class, path)
        api = client_class.api.definition
        docs = File.open(path, 'r', encoding: 'UTF-8') { |f| f.read }
        docs = MultiJson.load(docs)

        api['documentation'] = docs['service']

        docs['operations'].each do |operation, doc|
          api['operations'][operation]['documentation'] = doc
        end

        docs['shapes'].each do |shape_name, shape|
          api['shapes'][shape_name]['documentation'] = shape['base']
          shape['refs'].each do |ref,doc|
            if doc.nil?
              doc = shape['base']
            end
            target_shape_name, member = ref.split('$')
            target_shape = api['shapes'][target_shape_name]
            case target_shape['type']
            when 'structure' then target_shape['members'][member]['documentation'] = doc
            when 'list' then target_shape[member]['documentation'] = doc
            when 'map' then target_shape[member]['documentation'] = doc
            else raise 'not handled'
            end
          end
        end
        client_class.set_api(Seahorse::Model::Api.new(api))
      end
    end
  end
end

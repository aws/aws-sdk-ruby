module AwsSdkCodeGenerator
  class ResourceHasAssociation
    class << self

      # @return [ResourceMethod]
      def build(options)
        assoc = options.fetch(:assoc)
        params = compute_params(assoc)
        ResourceMethod.new.tap do |m|
          m.method_name = Underscore.underscore(options.fetch(:name))
          m.arguments = arguments(params)
          m.documentation = documentation(assoc, params)
          m.code = code(assoc)
        end
      end

      private

      def code(assoc)
        parts = []
        if plural?(assoc)
          parts << 'batch = []'
          parts << ResourceBatchBuilder.new(resource: assoc['resource']).build
          parts << "#{assoc['resource']['type']}::Collection.new([batch], size: batch.size)"
        elsif nullable?(assoc) # singular association
          parts << "if #{null_checks(assoc)}"
          parts << "  #{Docstring.indent(builder(assoc))}"
          parts << 'else'
          parts << '  nil'
          parts << 'end'
        else
          parts << builder(assoc)
        end
        parts.join("\n").rstrip
      end

      def builder(assoc)
        ResourceBuilder.new(resource: assoc['resource'], request_made: false).build
      end

      def documentation(assoc, params)
        parts = []
        params.each do |param|
          parts << "# @param [#{param[:type]}] #{param[:name]}"
        end
        parts << "# @return [#{return_type(assoc)}]"
        parts.join("\n").rstrip
      end

      def return_type(assoc)
        type = assoc['resource']['type']
        if plural?(assoc)
          "#{type}::Collection"
        elsif nullable?(assoc)
          "#{type}, nil"
        else
          type
        end
      end

      def compute_params(assoc)
        params = []
        (assoc['resource']['identifiers'] || []).each do |identifier|
          if identifier['source'] == 'input'
            params << {
              name: Underscore.underscore(identifier['target']),
              type: 'String',
            }
          end
        end
        params
      end

      def arguments(params)
        if params.empty?
          nil
        else
          params.map { |p| p[:name] }.join(', ')
        end
      end

      def plural?(assoc)
        plural = false
        r = assoc['resource']
        (r['identifiers'] || []).each do |i|
          if i['path'] && i['path'].include?('[]')
            plural = true
            break
          end
        end
        plural = true if r['data'] && r['data'].include?('[]')
        plural
      end

      def nullable?(assoc)
        !data_identifiers(assoc).empty?
      end

      def data_identifiers(assoc)
        identifiers = []
        (assoc['resource']['identifiers'] || []).each do |i|
          identifiers << i if i['source'] == 'data'
        end
        identifiers
      end

      def null_checks(assoc)
        data_identifiers(assoc).map do |i|
          ResourceValueSource.new(i)
        end.join(' && ')
      end

    end
  end
end

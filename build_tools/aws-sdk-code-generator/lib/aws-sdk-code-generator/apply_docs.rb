module AwsSdkCodeGenerator
  class ApplyDocs

    def initialize(api)
      @api = api
    end

    # @param [Hash, nil] docs
    def apply(docs)
      if docs
        apply_docs(docs)
      end
    end

    private

    def apply_docs(docs)
      @api['documentation'] = docs['service']
      docs['operations'].each do |name, docstring|
        @api['operations'][name]['documentation'] = docstring
      end
      docs['shapes'].each do |shape_name, shape_docs|
        @api['shapes'][shape_name]['documentation'] = shape_docs['base']
        shape_docs['refs'].each do |ref, ref_docs|
          ref_shape, ref_member = ref.split('$')
          case @api['shapes'][ref_shape]['type']
          when 'structure'
            shape = @api['shapes'][ref_shape]
            if shape
              member = shape['members'][ref_member]
              member['documentation'] = ref_docs if member
            end
          when 'list', 'map'
            shape = @api['shapes'][ref_shape]
            if shape
              member = shape[ref_member]
              member['documentation'] = ref_docs if member
            end
          end
        end
      end
    end

  end
end

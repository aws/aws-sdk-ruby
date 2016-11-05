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
            @api['shapes'][ref_shape]['members'][ref_member]['documentation'] = ref_docs
          when 'list', 'map'
            @api['shapes'][ref_shape][ref_member]['documentation'] = ref_docs
          end
        end
      end
    end

  end
end

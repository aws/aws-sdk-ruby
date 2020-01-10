module AwsSdkCodeGenerator
  class ResourceHasManyAssociationCode

    def initialize(options)
      @assoc = options.fetch(:assoc)
      @paginators = options.fetch(:paginators, nil)
      @collection_class = "#{options.fetch(:assoc)['resource']['type']}::Collection"
    end

    def build
      if paginated?
        paginated_request
      else
        non_paginated_request
      end
    end

    private

    def paginated_request
      <<-CODE.rstrip
batches = Enumerator.new do |y|
  #{client_request}
  resp.each_page do |page|
    batch = []
    #{batch_builder(resp_var_name: 'page', indent: '    ')}
    y.yield(batch)
  end
end
#{@collection_class}.new(batches)
      CODE
    end

    def non_paginated_request
      <<-CODE.rstrip
batches = Enumerator.new do |y|
  batch = []
  #{client_request}
  #{batch_builder(indent: '  ')}
  y.yield(batch)
end
#{@collection_class}.new(batches)
      CODE
    end

    def client_request
      Docstring.indent(ResourceClientRequest.build(
        request: @assoc['request'],
        merge: true,
        resp: true,
      ), '  ')
    end

    def batch_builder(options)
      Docstring.indent(
        ResourceBatchBuilder.new(
          resource: @assoc['resource'],
          resp_var_name: options.fetch(:resp_var_name, 'resp'),
        ).build,
      options[:indent])
    end

    def paginated?
      @paginators &&
      @paginators['pagination'][operation_name] &&
      @paginators['pagination'][operation_name]['input_token']
    end

    def operation_name
      @assoc['request']['operation']
    end

  end
end

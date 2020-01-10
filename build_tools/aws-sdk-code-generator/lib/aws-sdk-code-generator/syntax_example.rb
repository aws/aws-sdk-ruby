require 'set'

module AwsSdkCodeGenerator
  class SyntaxExample

    include Helper

    # @option options [required, Hash] :api
    # @option options [required, Hash] :shape
    def initialize(options = {})
      @api = options.fetch(:api)
      @method_name = options.fetch(:method_name)
      @receiver = options.fetch(:receiver)
      @resp_var = options[:resp_var] ? "#{options[:resp_var]} = " : ''
      @shape = filter_shape(options)
      @async = options[:async] || false
      @hash = SyntaxExampleHash.new(api: @api, shape: @shape, async: @async).format('#   ') if @shape
    end

    def format
      if @shape && @shape['members'] && @shape['members'].length > 0
        <<-EXAMPLE.strip
# @example Request syntax with placeholder values
#
#   #{@resp_var}#{@receiver}.#{@method_name}(#{@hash})
#{async_format}
        EXAMPLE
      else
        nil
      end
    end

    def async_format
      if @async
        <<-ASYNC.strip
#   # => Seahorse::Client::AsyncResponse
#   async_resp.wait
#   # => Seahorse::Client::Response
#   # Or use async_resp.join!
        ASYNC
      else
        nil
      end
    end

    private

    def filter_shape(options)
      skip = Set.new(options.fetch(:skip, []))
      shape = Helper.deep_copy(options.fetch(:shape))
      options.fetch(:skip, []).each do |skip|
        shape['members'].delete(skip)
      end
      shape
    end

  end
end

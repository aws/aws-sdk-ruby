require 'delegate'

module Aws
  class ResponsePager < Delegator

    # Raised when calling {ResponsePager#next_page} on a pager that
    # is on the last page of results.  You can call {ResponsePager#last_page?}
    # or {ResponsePager#next_page?} to know if there are more pages.
    class LastPageError < RuntimeError

      # @param [Seahorse::Client::Response] response
      def initialize(response)
        @response = response
        super("unable to fetch next page, end of results reached")
      end

      # @return [Seahorse::Client::Response]
      attr_reader :response

    end

    # @param [Seahorse::Client::Response] response
    # @option options [Hash] :paging_rules (nil)
    def initialize(response, options = {})
      @response = response
      @paging_rules = options[:paging_rules]
    end

    # Returns `true` if there are no more results.  Calling {#next_page} 
    # when this method returns `false` will raise an error.
    # @return [Boolean]
    def last_page?
      !next_page?
    end

    # Returns `true` if there are more results.  Calling {#next_page} will
    # return the next response.
    # @return [Boolean]
    def next_page?
      @next_page = !!(pageable? && truncated?) if @next_page.nil?
      @next_page
    end

    # @return [Seahorse::Client::Response]
    def next_page(params = {})
      if last_page?
        raise LastPageError.new(@response)
      else
        ResponsePager.new(next_response(params), paging_rules: paging_rules)
      end
    end

    # Required by Delegator
    # @api private
    def __getobj__
      @response
    end

    # Required by Delegator
    # @api private
    def __setobj__(response)
      @response = response
    end

    private

    # @return [Boolean] Returns `true` if the API operation is pageable.
    #   Returns `false` if the API operation always returns ALL results.
    def pageable?
      !paging_rules.nil?
    end

    # @return [Boolean] Returns `true` if the response is truncated and
    #   there are more results to be had.
    def truncated?
      if condition = paging_rules['truncated_if']
        @response.data[condition]
      else
        !next_tokens.empty?
      end
    end

    # @return [Hash] Extracts a hash of request parameters from
    #   the response data that are needed to request the next response
    #   page.
    def next_tokens
      @next_tokens ||= begin
        paging_rules['tokens'].inject({}) do |tokens, (param, jamespath)|
          value = @response.data[jamespath]
          tokens[param.to_sym] = value unless value.nil?
          tokens
        end
      end
    end

    # @return [Hash, nil] Returns the rules for paging this response.
    #   Returns `nil` when the response is not pageable.
    def paging_rules
      @paging_rules ||= @response.context.operation.metadata['paging']
    end

    # @param [Hash] params A hash of additional request params to
    #   merge into the next page request.
    # @return [Seahorse::Client::Response] Returns the next page of
    #   results.
    def next_response(params)
      c = @response.context
      req = c.client.build_request(c.operation_name, next_page_params(params))
      req.send_request
    end

    # @param [Hash] params A hash of additional request params to
    #   merge into the next page request.
    # @return [Hash] Returns the hash of request parameters for the
    #   next page, merging any given params.
    def next_page_params(params)
      @response.context.params.merge(next_tokens.merge(params))
    end

  end
end

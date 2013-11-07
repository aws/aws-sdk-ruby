require 'delegate'

module Aws

  # A simple response pager.
  #
  # ## Basic Usage
  #
  # A pager is constructed with a response and a paging configuration.
  # Typically, the paging configuration will already be present in
  # the response context.
  #
  # The pager becomes a delegate to the response that allows you to
  # discover if there are additional response pages to be requested.
  #
  #     page = PageableResponse.new(response)
  #     page.last_page?(false)
  #
  #     # sends a request to receive the next response page
  #     page = page.next_page
  #     page.last_page?(true)
  #
  #     page.next_page
  #     #=> raises PageableResponse::LastPageError
  #
  # You can still access all of the attributes and methods of the
  # wrapped response.
  #
  #     # same
  #     response.data
  #     PageableResponse.new(response).data
  #
  # ## Paging Rules
  #
  # You can configure paging behavior by passing a `:paging_rules`
  # hash to the constructor. If the hash is empty, then paging
  # will be disabled.
  #
  #     # disables pagigng
  #     page = PageableResponse.new(response, paging_rules: {})
  #     page.last_page?
  #     #=> true
  #
  # ### Tokens
  #
  # If you want to configure paging you must specify at least
  # the `tokens` entry:
  #
  #     paging_rules = {
  #       'tokens' => {
  #         'input_param' => 'response_key',
  #       }
  #     }
  #
  # Tokens should be a hash of request parameter names as keys, and
  # response data member names as values.  The `response.data` is
  # inspected for a `response_key` member.  If it is present,
  # it will be sent to the next page request as `:input_param`.
  #
  # If all of the configured tokens return `nil` values, the response
  # is assumed to be the last page of results.
  #
  # ### Truncation Indicator
  #
  # Some services do not specify a token, but rather expect you to
  # extract the final value from some list to request the next page.
  # When this is the case, they will typically provide some boolean
  # response data value that indicates if the response is truncated.
  # You can configure this via `truncated_if`:
  #
  #     paging_rules['truncated_if'] = 'is_truncated'
  #
  # When `truncated_if` is configured, the tokens will not be checked,
  # unless the configured member is `true`.
  #
  # @stability Unstable
  #   PageableResponse public methods should be considered stable.
  #   The structure of `:paging_rules` should be considered unstable
  #   and subject to change.  If you are not providing custom
  #   paging rules, then you should not worry about backwards
  #   incompatible changes.
  #
  class PageableResponse < Delegator

    # Raised when calling {PageableResponse#next_page} on a pager that
    # is on the last page of results.  You can call {PageableResponse#last_page?}
    # or {PageableResponse#next_page?} to know if there are more pages.
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
    #
    # @option options [Hash] :paging_rules Defaults to the `paging`
    #   configuration in the response context.  If one is not configured
    #   or you wish to override this paging configuration, you can
    #   pass the `:paging_rules` option.  Passing an empty hash
    #   disable paging for this operation.
    #
    #   See class level documentation above for more information about the
    #   structure of `:paging_rules`.
    #
    # @stability Experimental
    #   The structure of the `:paging_rules` option is subject to change.
    #   Using this class without a custom set of paging rules should
    #   be considered stable.
    #
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
        PageableResponse.new(next_response(params), paging_rules: paging_rules)
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
      paging_rules.key?('tokens')
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
      @paging_rules ||= @response.context.operation.metadata['paging'] || {}
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

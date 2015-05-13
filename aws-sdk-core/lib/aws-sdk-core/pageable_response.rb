module Aws

  # Decorates a {Seahorse::Client::Response} with paging methods:
  #
  #     page = PageableResponse.new(response, pager)
  #     page.last_page?
  #     #=> false
  #
  #     # sends a request to receive the next response page
  #     page = page.next_page
  #     page.last_page?
  #     #=> true
  #
  #     page.next_page
  #     #=> raises PageableResponse::LastPageError
  #
  # You can enumerate all response pages with a block
  #
  #     page = PageableResponse.new(response, pager)
  #     page.each do |page|
  #       # yields once per page
  #     end
  #
  # Or using {#next_page} and {#last_page?}:
  #
  #     page = PageableResponse.new(response, pager)
  #     page = page.next_page until page.last_page?
  #
  # @note Normally you should not need to construct a {PageableResponse}
  #   directly. The {Plugins::ResponsePaging} plugin automatically
  #   decorates all responses with a {PageableResponse}.
  #
  module PageableResponse

    def self.included(base)
      base.send(:include, Enumerable)
    end

    # @return [Paging::Pager]
    attr_accessor :pager

    # Returns `true` if there are no more results.  Calling {#next_page}
    # when this method returns `false` will raise an error.
    # @return [Boolean]
    def last_page?
      if @last_page.nil?
        @last_page = !@pager.truncated?(self)
      end
      @last_page
    end

    # Returns `true` if there are more results.  Calling {#next_page} will
    # return the next response.
    # @return [Boolean]
    def next_page?
      !last_page?
    end

    # @return [Seahorse::Client::Response]
    def next_page(params = {})
      if last_page?
        raise LastPageError.new(self)
      else
        next_response(params)
      end
    end

    # Yields the current and each following response to the given block.
    # @yieldparam [Response] response
    # @return [Enumerable,nil] Returns a new Enumerable if no block is given.
    def each(&block)
      return enum_for(:each_page) unless block_given?
      response = self
      yield(response)
      until response.last_page?
        response = response.next_page
        yield(response)
      end
    end
    alias each_page each

    # @api private
    def count
      if respond_to?(:count)
        data.count
      else
        raise NotImplementedError
      end
    end

    # @api private
    def respond_to?(method_name, *args)
      if method_name == :count
        data.respond_to?(:count)
      else
        super
      end
    end

    private

    # @param [Hash] params A hash of additional request params to
    #   merge into the next page request.
    # @return [Seahorse::Client::Response] Returns the next page of
    #   results.
    def next_response(params)
      params = next_page_params(params)
      request = context.client.build_request(context.operation_name, params)
      request.send_request
    end

    # @param [Hash] params A hash of additional request params to
    #   merge into the next page request.
    # @return [Hash] Returns the hash of request parameters for the
    #   next page, merging any given params.
    def next_page_params(params)
      context.params.merge(@pager.next_tokens(self).merge(params))
    end

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

  end
end

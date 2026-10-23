# frozen_string_literal: true

module Aws
  # Represents the response from an AWS service operation.
  # Provides the Seahorse response interface and paging convenience methods.
  # @see PageableResponse
  class Response < Seahorse::Client::Response
    include PageableResponse::Extension

    def initialize(options = {})
      super
      @pager = nil
      @last_page = nil
      @more_results = nil
    end
  end
end

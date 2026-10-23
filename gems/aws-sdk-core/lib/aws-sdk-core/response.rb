# frozen_string_literal: true

module Aws
  # Represents the response from an AWS service operation.
  # Provides the Seahorse response interface and paging convenience methods.
  #
  # SDK clients return responses with paging ready to use. When constructing
  # a response directly or inspecting it before paging setup in a custom handler,
  # use {#data} to access or enumerate its fields. {#first} returns the response
  # itself; page-state checks and complete page enumeration require a pager.
  #
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

# frozen_string_literal: true

module Aws
  # Represents static AWS credentials.
  class Credentials
    # @option options [String] :access_key_id
    # @option options [String] :secret_access_key
    # @option options [String, nil] :session_token
    # @option options [String, nil] :account_id
    def initialize(options = {})
      @access_key_id = options[:access_key_id]
      @secret_access_key = options[:secret_access_key]
      @session_token = options[:session_token]
      @account_id = options[:account_id]
    end

    # @return [String]
    attr_reader :access_key_id

    # @return [String]
    attr_reader :secret_access_key

    # @return [String, nil]
    attr_reader :session_token

    # @return [String, nil]
    attr_reader :account_id

    # @return [Boolean]
    def set?
      !@access_key_id.nil? && !@access_key_id.empty? &&
        !@secret_access_key.nil? && !@secret_access_key.empty?
    end

    # @api private
    def inspect
      super
        .gsub(/@secret_access_key=\S+/, '@secret_access_key=[FILTERED]')
        .gsub(/@session_token=\S+/, '@session_token=[FILTERED]')
    end
  end
end

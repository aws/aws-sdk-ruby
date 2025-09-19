# frozen_string_literal: true

module Aws
  module Core
    # Represents static AWS credentials.
    class Credentials < Smithy::Client::Identity
      # @param [String] access_key_id
      # @param [String] secret_access_key
      # @param [String] session_token (nil)
      # @param [String] account_id (nil)
      # (see Smithy::Client::Identity#initialize)
      def initialize(access_key_id:, secret_access_key:, session_token: nil, account_id: nil, **)
        @access_key_id = access_key_id
        @secret_access_key = secret_access_key
        @session_token = session_token
        @account_id = account_id
        super(**)
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
end

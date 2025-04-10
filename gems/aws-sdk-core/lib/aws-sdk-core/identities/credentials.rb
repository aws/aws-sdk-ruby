# frozen_string_literal: true

module Aws
  module Core
    module Identities
      # Credentials identity type.
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

        # Removing the secret access key from the default inspect string.
        # @api private
        def inspect
          "#<#{self.class.name} access_key_id=#{access_key_id.inspect}>"
        end
      end
    end
  end
end

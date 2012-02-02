# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'aws/sts'
require 'thread'

module AWS
  module Core

    # @private
    class SessionSigner
  
      @create_mutex = Mutex.new
  
      def self.for config
        @create_mutex.synchronize do
          @session_signers ||= {}
          @session_signers[config.signer.access_key_id] ||= self.new(config)
        end
      end
  
      def initialize config
        @config = config
        @session_mutex = Mutex.new
      end
  
      def sign *args
        short_term_signer.sign(*args)
      end
  
      def access_key_id
        session.credentials[:access_key_id]
      end
  
      def secret_access_key
        session.credentials[:secret_access_key]
      end
  
      def session_token
        session.credentials[:session_token]
      end
  
      def refresh_session
        sts = AWS::STS.new(:config => @config, :use_ssl => true)
        @session_mutex.synchronize do
          @session = sts.new_session
        end
      end

      protected
      def get_session
        local_session = nil
        @session_mutex.synchronize do
          local_session =  @session
        end
        local_session
      end
  
      protected
      def session

        session = get_session

        if session.nil?
          refresh_session 
          session = get_session
        end

        session

      end
  
      protected
      def short_term_signer
        DefaultSigner.new(access_key_id, secret_access_key, session_token)
      end
  
    end
  end
end

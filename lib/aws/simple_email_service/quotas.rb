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

module AWS
  class SimpleEmailService

    # Returns information about your SimpleEmailService quotas.
    class Quotas

      include Core::Model

      # @return [Integer] The maximum number of emails the user is allowed
      #   to send in a 24-hour interval.
      def max_24_hour_send
        to_h[:max_24_hour_send]
      end

      # @return [Float] The maximum number of emails the user is allowed 
      #   to send per second.
      def max_send_rate
        to_h[:max_send_rate]
      end

      # @return [Integer] Returns the number of emails sent during the 
      #   previous 24 hours.
      def sent_last_24_hours
        to_h[:sent_last_24_hours]
      end

      # @example
      #
      #   @ses.quotas.to_h
      #   # {:max_24_hour_send=>200, :max_send_rate=>1.0, :sent_last_24_hours=>22}
      #
      # @return [Hash] Returns a hash of the SES quotas.
      def to_h
        response = client.get_send_quota({})
        {
          :max_24_hour_send => response.max_24_hour_send.to_i,
          :max_send_rate => response.max_send_rate.to_f,
          :sent_last_24_hours => response.sent_last_24_hours.to_i,  
        }
      end

      # @private
      def inspect
        "<#{self.class} #{to_h.inspect}>"
      end
        
    end
  end
end

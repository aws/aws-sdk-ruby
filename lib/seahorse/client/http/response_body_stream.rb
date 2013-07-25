# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'thread'

module Seahorse::Client::Http
  class ResponseBodyStream

    include ResponseBody

    def initialize(&block)
      @block = Proc.new
      @yielded = false
      @bytes_yielded = 0
      @yield_mutex = Mutex.new
    end

    def write(chunk)
      @yield_mutex.synchronize do
        @yielded = true
        @bytes_yielded += chunk.bytesize
        @block.call(chunk)
        chunk
      end
    end

    def read
      nil
    end

    def available?
      false
    end

    def size
      @yield_mutex.synchronize do
        @bytes_yielded
      end
    end

    def can_reset?
      @yield_mutex.synchronize do
        !@yielded
      end
    end

    def reset!
      unless can_reset?
        msg = 'unable to reset after data has been yielded'
        raise ResetNotPossibleError, msg
      end
    end

  end
end

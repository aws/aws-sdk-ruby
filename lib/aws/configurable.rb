# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'aws/configuration'

module AWS

  # @private
  module Configurable

    module ClassMethods

      def make_configurable(name, opts = {})
        Configuration.add_parameter_type(self, name, opts)
      end

    end

    def self.included(m)
      m.extend ClassMethods
      super
    end

  end

end

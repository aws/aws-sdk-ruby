# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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


module Aws
  module Plugins
    class GlobalConfiguration < Seahorse::Client::Plugin

      def pre_init(client_class, options)
        defaults(client_class).each do |opt_name, opt_value|
          options[opt_name] = opt_value unless options.key?(opt_name)
        end
      end

      private

      def defaults(client_class)
        aws_opts.merge(client_opts(client_class))
      end

      def aws_opts
        Aws.config.inject({}) do |defaults, (opt_name, default)|
          defaults[opt_name] = default unless Aws.service_classes.key?(opt_name)
          defaults
        end
      end

      def client_opts(client_class)
        identifier = client_class.name.split('::')[1].downcase.to_sym
        Aws.config[identifier] || {}
      end

    end
  end
end

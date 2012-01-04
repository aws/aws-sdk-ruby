# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.

module AWS
  class EC2

    # @private
    class ConfigTransform

      class << self

        def transform(api_config)
          ["RunInstances",
           "DetachVolume",
           "AttachVolume",
           "CreateSnapshot",
           "CreateVolume",
           "DescribeImageAttribute",
           "DescribeInstanceAttribute"].each do |(op, wrapper)|
            if op_config = api_config[:operations][op]
              op_config[:output] = op_config[:output].first.values.first
            end
          end

          api_config[:operations].each do |op, op_config|
            op_config[:input] =
              capitalize_input_structure(op_config[:input])
          end

          api_config
        end

        private
        def capitalize_input_structure(struct)
          struct.inject({}) do |m, (name, desc)|

            name = name[0,1].upcase + name[1..-1]
            m[name] = capitalize_input_descriptors(desc)
            m
          end
        end

        private
        def capitalize_input_descriptors(desc)
          desc.map do |d|
            case
            when d.kind_of?(Hash) && d.key?(:structure)
              d.merge(:structure =>
                      capitalize_input_structure(d[:structure]))
            when d.kind_of?(Hash) && d.key?(:list)
              d.merge(:list =>
                      capitalize_input_descriptors(d[:list]))
            else
              d
            end
          end
        end

      end

    end

  end
end

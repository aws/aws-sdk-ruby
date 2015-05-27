module Aws
  module Stubbing
    module Protocols
      class RestJson < Rest

        def body_for(_, _, rules, data)
          Aws::Json::Builder.new(rules).serialize(data)
        end

      end
    end
  end
end

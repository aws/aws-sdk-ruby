module Aws
  module Plugins
    module Protocols
      class EC2 < Seahorse::Client::Plugin

        class Handler < Aws::Query::Handler

          def apply_params(param_list, params, rules)
            Aws::Query::EC2ParamBuilder.new(param_list).apply(rules, params)
          end

          def parse_xml(context)
            if rules = context.operation.output
              data = Xml::Parser.new(rules).parse(xml(context)) do |h|
                context.metadata[:request_id] = h['requestId']
              end
              data
            else
              EmptyStructure.new
            end
          end

        end

        handler(Handler)

        handler(Xml::ErrorHandler, step: :sign)

      end
    end
  end
end

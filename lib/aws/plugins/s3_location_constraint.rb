module Aws
  module Plugins
    class S3LocationConstraint < Seahorse::Client::Plugin

      class Handler < Seahorse::Client::Handler

        def call(context)
          s3_endpoint = context.config.endpoint
          region = context.config.region
          create_bucket_params = context.params[:create_bucket_configuration]
          location_constraint = nil

          if create_bucket_params
            location_constraint = create_bucket_params[:location_constraint]
          end

          if s3_endpoint != "s3.amazonaws.com" && !location_constraint
            set_location_constraint(context, region)
          end
          
          @handler.call(context)
        end

        def set_location_constraint(context, region)
          if context.params[:create_bucket_configuration].nil?
            context.params[:create_bucket_configuration] = {}
          end
          context.params[:create_bucket_configuration][:location_constraint] = region
        end

      end

      handler(Handler, priority: 90, operations: [:create_bucket])

    end
  end
end

# frozen_string_literal: true

module Aws
  module S3
    # @api private
    class ObjectLambdaARN < Aws::ARN
      def initialize(options)
        super(options)
        @type, @access_point_name, @extra = @resource.split(/[:,\/]/)
      end

      attr_reader :access_point_name

      def support_dualstack?
        false
      end

      def support_fips?
        true
      end

      def validate_arn!
        unless @service == 's3-object-lambda'
          raise ArgumentError, 'Must provide a valid S3 Object Lambdas ARN.'
        end

        if @region.empty? || @account_id.empty?
          raise ArgumentError,
                'S3 Object Lambdas ARNs must contain both a region '\
                'and an account id.'
        end

        if @type != 'accesspoint'
          raise ArgumentError, 'Invalid ARN, resource format is not correct.'
        end

        if @access_point_name.nil? || @access_point_name.empty?
          raise ArgumentError, 'Missing ARN accesspoint name.'
        end

        if @extra
          raise ArgumentError,
                'ARN accesspoint resource must be a single value.'
        end

        unless Seahorse::Util.host_label?(
          "#{@access_point_name}-#{@account_id}"
        )
          raise ArgumentError,
                "#{@access_point_name}-#{@account_id} is not a valid "\
                'host label.'
        end
      end

      def host_url(region, _dualstack = false, custom_endpoint = nil)
        pfx = "#{@access_point_name}-#{@account_id}"
        if custom_endpoint
          "#{pfx}.#{custom_endpoint}"
        else
          sfx = Aws::Partitions::EndpointProvider.dns_suffix_for(region)
          "#{pfx}.s3-object-lambda.#{region}.#{sfx}"
        end
      end
    end
  end
end

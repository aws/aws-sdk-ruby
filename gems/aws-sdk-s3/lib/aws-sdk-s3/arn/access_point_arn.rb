# frozen_string_literal: true

module Aws
  module S3
    # @api private
    class AccessPointARN < Aws::ARN
      def initialize(options)
        super(options)
        @type, @access_point_name, @extra = @resource.split(/[:,\/]/)
      end

      attr_reader :access_point_name

      def support_dualstack?
        true
      end

      def support_fips?
        true
      end

      def validate_arn!
        unless @service == 's3'
          raise ArgumentError, 'Must provide a valid S3 accesspoint ARN.'
        end

        if @region.empty? || @account_id.empty?
          raise ArgumentError,
                'S3 accesspoint ARNs must contain both a region '\
                'and an account id.'
        end

        if @type != 'accesspoint'
          raise ArgumentError, 'Invalid ARN, resource format is not correct'
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

      def host_url(region, dualstack = false)
        sfx = Aws::Partitions::EndpointProvider.dns_suffix_for(region)
        "#{@access_point_name}-#{@account_id}"\
        ".s3-accesspoint#{'.dualstack' if dualstack}.#{region}.#{sfx}"
      end
    end
  end
end

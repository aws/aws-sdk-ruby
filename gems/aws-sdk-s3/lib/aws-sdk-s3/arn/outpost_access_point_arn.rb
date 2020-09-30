# frozen_string_literal: true

module Aws
  module S3
    # @api private
    class OutpostAccessPointARN < Aws::ARN
      def initialize(options)
        super(options)
        @type, @outpost_id, @subtype, @access_point_name, @extra =
          @resource.split(/[:,\/]/)
      end

      attr_reader :outpost_id, :access_point_name

      def support_dualstack?
        false
      end

      def support_fips?
        false
      end

      def validate_arn!
        unless @service == 's3-outposts'
          raise ArgumentError, 'Must provide a valid S3 outposts ARN.'
        end

        if @region.empty? || @account_id.empty?
          raise ArgumentError,
                'S3 accesspoint ARNs must contain both a region '\
                'and an account id.'
        end

        if @type != 'outpost' && @subtype != 'accesspoint'
          raise ArgumentError, 'Invalid ARN, resource format is not correct'
        end

        if @outpost_id.nil? || @outpost_id.empty?
          raise ArgumentError, 'Missing ARN outpost id.'
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

        unless Seahorse::Util.host_label?(@outpost_id)
          raise ArgumentError, "#{@outpost_id} is not a valid host label."
        end
      end

      # Outpost ARNs currently do not support dualstack
      def host_url(region, _dualstack = false)
        "#{@access_point_name}-#{@account_id}.#{@outpost_id}"\
        ".s3-outposts.#{region}.amazonaws.com"
      end
    end
  end
end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AppTest
  # @api private
  module Endpoints

    class CreateTestCase
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class CreateTestConfiguration
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class CreateTestSuite
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DeleteTestCase
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DeleteTestConfiguration
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DeleteTestRun
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class DeleteTestSuite
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetTestCase
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetTestConfiguration
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetTestRunStep
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class GetTestSuite
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListTagsForResource
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListTestCases
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListTestConfigurations
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListTestRunSteps
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListTestRunTestCases
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListTestRuns
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class ListTestSuites
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class StartTestRun
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class TagResource
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class UntagResource
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class UpdateTestCase
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class UpdateTestConfiguration
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

    class UpdateTestSuite
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::AppTest::EndpointParameters.new(
          region: context.config.region,
          use_dual_stack: context.config.use_dualstack_endpoint,
          use_fips: context.config.use_fips_endpoint,
          endpoint: endpoint,
        )
      end
    end

  end
end

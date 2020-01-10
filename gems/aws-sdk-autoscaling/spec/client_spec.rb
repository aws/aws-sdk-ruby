require_relative 'spec_helper'

module Aws
  module AutoScaling
    describe Client do

      describe '#wait_until' do
        describe ':group_in_service' do

          # This waiter was failing due to an incorrect inflection
          # of the JMESPath argument path. The `InService` literal
          # string was being snake_cased to `in_service`
          it 'correct matches an in-service group' do
            client = Client.new(stub_responses: {
              describe_auto_scaling_groups: {
                auto_scaling_groups: [
                  {
                    auto_scaling_group_name: 'group',
                    instances: [
                      {
                        instance_id: 'i-12345678',
                        lifecycle_state: 'InService',
                        availability_zone: 'us-east-1a',
                        health_status: 'status',
                        launch_configuration_name: 'cfg',
                        protected_from_scale_in: false,
                      },
                      {
                        instance_id: 'i-12345679',
                        lifecycle_state: 'InService',
                        availability_zone: 'us-east-1a',
                        health_status: 'status',
                        launch_configuration_name: 'cfg',
                        protected_from_scale_in: false,
                      },
                    ],
                    min_size: 2,
                    max_size: 2,
                    desired_capacity: 2,
                    default_cooldown: 0,
                    availability_zones: ['us-east-1a'],
                    health_check_type: 'abc',
                    created_time: Time.now,
                  }
                ]
              }
            })
            params = { auto_scaling_group_names:['group'] }
            yield_count = 0
            resp = client.wait_until(:group_in_service, params) do |waiter|
              yield_count += 1
            end
            expect(yield_count).to eq(1)
          end

        end
      end
    end
  end
end

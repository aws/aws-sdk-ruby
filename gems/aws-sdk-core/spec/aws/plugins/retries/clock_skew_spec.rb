
require_relative '../../../spec_helper'
require_relative '../../../support/retry_errors_helper'

module Aws
  module Plugins
    describe Retries::ClockSkew do
      let(:clock_skew) { Retries::ClockSkew.new }

      describe '#initialize' do
        it 'is initialized with max capacity' do
          expected_max = 100
          retry_quota = Retries::RetryQuota.new(max_capacity: expected_max)
          expect(retry_quota.instance_variable_get(:@available_capacity))
            .to eq(expected_max)
        end
      end

      describe '#checkout_capacity' do
        let(:error) { double('ErrorInspector', networking?: false) }

        it 'returns the requested capacity when available' do
          initial_capacity = retry_quota.instance_variable_get(:@available_capacity)

          checked_out_capacity = retry_quota.checkout_capacity(error)
          expect(checked_out_capacity).to eq(Retries::RetryQuota::RETRY_COST)

          expect(retry_quota.instance_variable_get(:@available_capacity))
            .to eq(initial_capacity - checked_out_capacity)
        end

        it 'checks out the timeout cost when the error is a networking error' do
          error = double('ErrorInspector', networking?: true)

          checked_out_capacity = retry_quota.checkout_capacity(error)
          expect(checked_out_capacity).to eq(Retries::RetryQuota::TIMEOUT_RETRY_COST)
        end

        it 'returns 0 when there is insufficient capacity' do
          retry_quota.instance_variable_set(:@available_capacity, 1)

          expect(retry_quota.checkout_capacity(error)).to eq(0)
        end
      end

      describe '#release' do
        it 'releases the capacity back to available capacity' do
          retry_quota.instance_variable_set(:@available_capacity, 0)

          retry_quota.release(1)

          expect(retry_quota.instance_variable_get(:@available_capacity)).to be 1
        end

        it 'releases NO_RETRY_INCREMENT back to available capacity when capacity_amount is not set' do
          retry_quota.instance_variable_set(:@available_capacity, 0)

          retry_quota.release(nil)

          expect(retry_quota.instance_variable_get(:@available_capacity))
            .to be Retries::RetryQuota::NO_RETRY_INCREMENT
        end

        it 'does not increase available_capacity above max_capacity' do
          retry_quota.instance_variable_set(:@available_capacity,
                                            retry_quota.instance_variable_get(:@max_capacity) - 1)

          retry_quota.release(2)

          expect(retry_quota.instance_variable_get(:@available_capacity))
            .to be retry_quota.instance_variable_get(:@max_capacity)
        end
      end
    end
  end
end

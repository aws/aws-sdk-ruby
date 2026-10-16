# frozen_string_literal: true

# Helpers for the asynchronous lifecycle of temporary MRAP resources.
module S3MrapHelpers
  def mrap_access_point
    @mrap_control.get_multi_region_access_point(
      account_id: @mrap_account, name: @mrap_name
    ).access_point
  rescue Aws::S3Control::Errors::ServiceError => e
    raise unless e.context.http_response.status_code == 404
  end

  # MRAP control-plane operations can take up to 30 minutes.
  def wait_for_mrap(deadline = Process.clock_gettime(Process::CLOCK_MONOTONIC) + 1800)
    loop do
      access_point = mrap_access_point
      return access_point if yield(access_point)

      raise "Timed out waiting for MRAP #{@mrap_name}" if Process.clock_gettime(Process::CLOCK_MONOTONIC) >= deadline

      sleep 10
    end
  end

  def cleanup_mrap
    return unless @mrap_bucket

    if @mrap_name
      deadline = Process.clock_gettime(Process::CLOCK_MONOTONIC) + 1800
      # A timed-out create can still be running. Wait before requesting delete.
      wait_for_mrap(deadline) { |point| point && point.status != 'CREATING' }
      @mrap_control.delete_multi_region_access_point(
        account_id: @mrap_account, details: { name: @mrap_name }
      )
      wait_for_mrap(deadline, &:nil?)
      @mrap_name = nil
    end
    Aws::S3::Bucket.new(@mrap_bucket, client: @client).delete!
    @client.wait_until(:bucket_not_exists, bucket: @mrap_bucket)
    @mrap_bucket = nil
  rescue StandardError => e
    raise "Cleanup failed for MRAP/bucket #{@mrap_bucket}: #{e.class}: #{e.message}"
  end
end

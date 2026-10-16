# frozen_string_literal: true

require 'securerandom'

# A private, single-bucket fixture for exercising MRAP SigV4a requests.
class S3MrapFixture
  attr_reader :name

  def initialize(s3_client:, control:, identity:)
    @s3 = s3_client
    @control = control
    @account_id = identity.account
    @partition = identity.arn.split(':')[1]
    @name = "aws-sdk-mrap-#{SecureRandom.hex(12)}"
  end

  def create
    options = { bucket: @name }
    if @s3.config.region != 'us-east-1'
      options[:create_bucket_configuration] = {
        location_constraint: @s3.config.region
      }
    end
    @s3.create_bucket(options)
    @bucket_created = true
    @s3.wait_until(:bucket_exists, bucket: @name)

    # Record ownership before the asynchronous request, including an ambiguous
    # response caused by a network error. Only this fixture uses this name.
    @mrap_requested = true
    @control.create_multi_region_access_point(
      account_id: @account_id,
      details: {
        name: @name,
        public_access_block: {
          block_public_acls: true, ignore_public_acls: true,
          block_public_policy: true, restrict_public_buckets: true
        },
        regions: [{ bucket: @name, bucket_account_id: @account_id }]
      }
    )
    response = wait_for_mrap(deleted: false)
    "arn:#{@partition}:s3::#{@account_id}:accesspoint/#{response.access_point.alias}"
  end

  def cleanup
    errors = []
    if @bucket_created
      attempt_cleanup(errors) do
        @s3.list_objects_v2(bucket: @name).each_page do |page|
          page.contents.each do |object|
            @s3.delete_object(bucket: @name, key: object.key)
          end
        end
      end
    end
    if @mrap_requested
      attempt_cleanup(errors) do
        begin
          @control.delete_multi_region_access_point(
            account_id: @account_id, details: { name: @name }
          )
        rescue Aws::S3Control::Errors::ServiceError => e
          raise unless e.context.http_response.status_code == 404
        end
        wait_for_mrap(deleted: true)
        @mrap_requested = false
      end
    end
    if @bucket_created && !@mrap_requested
      attempt_cleanup(errors) do
        @s3.delete_bucket(bucket: @name)
        @s3.wait_until(:bucket_not_exists, bucket: @name)
        @bucket_created = false
      end
    end
    return if errors.empty?

    raise "Cleanup failed for MRAP/bucket #{@name}: #{errors.join('; ')}"
  end

  private

  def attempt_cleanup(errors)
    yield
  rescue StandardError => e
    errors << "#{e.class}: #{e.message}"
  end

  def wait_for_mrap(deleted:)
    acceptors = [
      { 'state' => deleted ? 'success' : 'retry', 'matcher' => 'status',
        'expected' => 404 }
    ]
    unless deleted
      acceptors << { 'state' => 'success', 'matcher' => 'path',
                     'argument' => 'access_point.status', 'expected' => 'READY' }
      %w[INCONSISTENT_ACROSS_REGIONS PARTIALLY_CREATED PARTIALLY_DELETED DELETING].each do |status|
        acceptors << { 'state' => 'failure', 'matcher' => 'path',
                       'argument' => 'access_point.status', 'expected' => status }
      end
    end
    # MRAP control-plane operations can take up to 30 minutes.
    waiter = Aws::Waiters::Waiter.new(
      max_attempts: 181, delay: 10,
      poller: Aws::Waiters::Poller.new(
        operation_name: :get_multi_region_access_point, acceptors: acceptors
      )
    )
    waiter.wait(client: @control, params: { account_id: @account_id, name: @name })
  end
end

module Aws::S3
  # should be code generated but manual define for now
  class EndpointParameters < Struct.new(
    :bucket,
    :region,
    :use_fips,
    :use_dualstack,
    :endpoint,
    :force_path_style,
    :accelerate,
    :disable_access_points,
    :disable_mrap)
    include Aws::Structure
  end
end

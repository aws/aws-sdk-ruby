# customizations to generated classes
require 'aws-sdk-ec2/customizations/resource'
require 'aws-sdk-ec2/customizations/instance'

Aws::EC2::Instance::Collection.send(:extend, Aws::Deprecations)
{
  create_tags: :batch_create_tags,
  monitor: :batch_create_tags,
  reboot: :batch_reboot,
  start: :batch_start,
  stop: :batch_stop,
  terminate: :batch_terminate!,
  unmonitor: :batch_unmonitor,
}.each do |old, new|
  Aws::EC2::Instance::Collection.send(:alias_method, old, new)
  Aws::EC2::Instance::Collection.send(:deprecated, old, use: new)
end

Aws::EC2::Tag::Collection.send(:alias_method, :delete, :batch_delete!)
Aws::EC2::Tag::Collection.send(:extend, Aws::Deprecations)
Aws::EC2::Tag::Collection.send(:deprecated, :delete, use: :batch_delete!)

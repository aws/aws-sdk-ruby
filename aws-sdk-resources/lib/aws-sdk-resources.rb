require 'aws-sdk-core'

module Aws

  module Resources
    autoload :Batch, 'aws-sdk-resources/batch'
    autoload :Builder, 'aws-sdk-resources/builder'
    autoload :BuilderSources, 'aws-sdk-resources/builder_sources'
    autoload :Collection, 'aws-sdk-resources/collection'
    autoload :Definition, 'aws-sdk-resources/definition'
    autoload :Documenter, 'aws-sdk-resources/documenter'
    autoload :Errors, 'aws-sdk-resources/errors'
    autoload :OperationMethods, 'aws-sdk-resources/operation_methods'
    autoload :Operations, 'aws-sdk-resources/operations'
    autoload :Options, 'aws-sdk-resources/options'
    autoload :Request, 'aws-sdk-resources/request'
    autoload :RequestParams, 'aws-sdk-resources/request_params'
    autoload :Resource, 'aws-sdk-resources/resource'
    autoload :Source, 'aws-sdk-resources/source'
  end

  service_added do |name, svc_module, options|
    # load customizations
    svc = File.join(
      File.dirname(__FILE__),
      'aws-sdk-resources',
      'services',
      "#{name.downcase}.rb")
    require(svc) if File.exist?(svc)
  end

  # In version 2.2, all batch resource operations were renamed:
  #
  # * All operations are now prefixed with `batch_`, e.g. `#start`
  #   became `#batch_start`.
  #
  # * All batch operations with "delete" or "terminate" in the name
  #   are now suffixed with `!`, e.g. `#delete` is now `#batch_delete!`
  #
  # For backwards compatibility, existing batch methods must still respond
  # to their old names. This callback registers these methods with their
  # old names.
  service_added do |name, svc_module, options|
    unless ENV['DOCSTRINGS']
      case name
      when 'EC2'
        EC2::InstanceCollection.send(:extend, Aws::Deprecations)
        {
          create_tags: :batch_create_tags,
          monitor: :batch_create_tags,
          reboot: :batch_reboot,
          start: :batch_start,
          stop: :batch_stop,
          terminate: :batch_terminate!,
          unmonitor: :batch_unmonitor,
        }.each do |old, new|
          EC2::Instance::Collection.send(:alias_method, old, new)
          EC2::Instance::Collection.send(:deprecated, old, use: new)
        end
        EC2::Tag::Collection.send(:alias_method, :delete, :batch_delete!)
        EC2::Tag::Collection.send(:extend, Aws::Deprecations)
        EC2::Tag::Collection.send(:deprecated, :delete, use: :batch_delete!)
      when 'S3'
        [S3::Object, S3::ObjectSummary, S3::ObjectVersion].each do |klass|
          klass = klass.const_get(:Collection)
          klass.send(:alias_method, :delete, :batch_delete!)
          klass.send(:extend, Aws::Deprecations)
          klass.send(:deprecated, :delete, use: :batch_delete!)
        end
      end

    end
  end
end

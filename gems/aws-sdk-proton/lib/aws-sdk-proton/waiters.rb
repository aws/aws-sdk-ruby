# frozen_string_literal: true

# This is generated code!

module Aws::Proton
  # @api private
  module Waiters

    # @api private
    #
    # Wait until a Component is deleted. Use this after invoking DeleteComponent
    #
    class ComponentDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 4999,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_component,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "ResourceNotFoundException"
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "component.deployment_status",
                    "expected" => "DELETE_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    # Wait until a Component is deployed. Use this after invoking CreateComponent or UpdateComponent
    #
    class ComponentDeployed
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 4999,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_component,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "component.deployment_status",
                    "expected" => "SUCCEEDED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "component.deployment_status",
                    "expected" => "FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    # Wait until an Environment is deployed. Use this after invoking CreateEnvironment or UpdateEnvironment
    #
    class EnvironmentDeployed
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 4999,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_environment,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "environment.deployment_status",
                    "expected" => "SUCCEEDED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "environment.deployment_status",
                    "expected" => "FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    # Wait until an EnvironmentTemplateVersion is registered. Use this after invoking CreateEnvironmentTemplateVersion
    #
    class EnvironmentTemplateVersionRegistered
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 2,
          max_delay: options[:max_delay] || 300,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_environment_template_version,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "environment_template_version.status",
                    "expected" => "DRAFT",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "environment_template_version.status",
                    "expected" => "PUBLISHED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "environment_template_version.status",
                    "expected" => "REGISTRATION_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    # Wait until an Service has deployed its instances and possibly pipeline. Use this after invoking CreateService
    #
    class ServiceCreated
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 4999,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_service,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "service.status",
                    "expected" => "ACTIVE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "service.status",
                    "expected" => "CREATE_FAILED_CLEANUP_COMPLETE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "service.status",
                    "expected" => "CREATE_FAILED_CLEANUP_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "service.status",
                    "expected" => "CREATE_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    # Wait until a Service, its instances, and possibly pipeline have been deleted after DeleteService is invoked
    #
    class ServiceDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 4999,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_service,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "ResourceNotFoundException"
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "service.status",
                    "expected" => "DELETE_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    # Wait until a ServiceInstance is deployed. Use this after invoking CreateService or UpdateServiceInstance
    #
    class ServiceInstanceDeployed
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 4999,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_service_instance,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "service_instance.deployment_status",
                    "expected" => "SUCCEEDED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "service_instance.deployment_status",
                    "expected" => "FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    # Wait until an ServicePipeline is deployed. Use this after invoking CreateService or UpdateServicePipeline
    #
    class ServicePipelineDeployed
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 10,
          max_delay: options[:max_delay] || 3600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_service,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "service.pipeline.deployment_status",
                    "expected" => "SUCCEEDED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "service.pipeline.deployment_status",
                    "expected" => "FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    # Wait until a ServiceTemplateVersion is registered. Use this after invoking CreateServiceTemplateVersion
    #
    class ServiceTemplateVersionRegistered
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 2,
          max_delay: options[:max_delay] || 300,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_service_template_version,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "service_template_version.status",
                    "expected" => "DRAFT",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "service_template_version.status",
                    "expected" => "PUBLISHED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "service_template_version.status",
                    "expected" => "REGISTRATION_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    # Wait until a Service, its instances, and possibly pipeline have been deployed after UpdateService is invoked
    #
    class ServiceUpdated
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 4999,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_service,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "service.status",
                    "expected" => "ACTIVE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "service.status",
                    "expected" => "UPDATE_FAILED_CLEANUP_COMPLETE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "service.status",
                    "expected" => "UPDATE_FAILED_CLEANUP_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "service.status",
                    "expected" => "UPDATE_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "service.status",
                    "expected" => "UPDATE_COMPLETE_CLEANUP_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

  end
end

# frozen_string_literal: true

# This is generated code!

module Aws::SageMaker

  # @api private
  module Waiters
    # @api private
    #
    #
    class EndpointDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 1800,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_endpoint,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "ValidationException"
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "endpoint_status",
                    "expected" => "Failed",
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
    #
    class EndpointInService
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 3600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_endpoint,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "endpoint_status",
                    "expected" => "InService",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "endpoint_status",
                    "expected" => "Failed",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "ValidationException"
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
    #
    class ImageCreated
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 60,
          max_delay: options[:max_delay] || 3600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_image,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "image_status",
                    "expected" => "CREATED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "image_status",
                    "expected" => "CREATE_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "ValidationException"
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
    #
    class ImageDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 60,
          max_delay: options[:max_delay] || 3600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_image,
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
                    "path" => "image_status",
                    "expected" => "DELETE_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "ValidationException"
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
    #
    class ImageUpdated
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 60,
          max_delay: options[:max_delay] || 3600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_image,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "image_status",
                    "expected" => "CREATED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "image_status",
                    "expected" => "UPDATE_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "ValidationException"
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
    #
    class ImageVersionCreated
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 60,
          max_delay: options[:max_delay] || 3600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_image_version,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "image_version_status",
                    "expected" => "CREATED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "image_version_status",
                    "expected" => "CREATE_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "ValidationException"
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
    #
    class ImageVersionDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 60,
          max_delay: options[:max_delay] || 3600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_image_version,
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
                    "path" => "image_version_status",
                    "expected" => "DELETE_FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "ValidationException"
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
    #
    class NotebookInstanceDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 1800,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_notebook_instance,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "ValidationException"
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "notebook_instance_status",
                    "expected" => "Failed",
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
    #
    class NotebookInstanceInService
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 1800,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_notebook_instance,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "notebook_instance_status",
                    "expected" => "InService",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "notebook_instance_status",
                    "expected" => "Failed",
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
    #
    class NotebookInstanceStopped
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 1800,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_notebook_instance,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "notebook_instance_status",
                    "expected" => "Stopped",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "notebook_instance_status",
                    "expected" => "Failed",
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
    #
    class ProcessingJobCompletedOrStopped
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 60,
          max_delay: options[:max_delay] || 3600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_processing_job,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "processing_job_status",
                    "expected" => "Completed",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "processing_job_status",
                    "expected" => "Stopped",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "processing_job_status",
                    "expected" => "Failed",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "ValidationException"
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
    #
    class TrainingJobCompletedOrStopped
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 120,
          max_delay: options[:max_delay] || 21600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_training_job,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "training_job_status",
                    "expected" => "Completed",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "training_job_status",
                    "expected" => "Stopped",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "training_job_status",
                    "expected" => "Failed",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "ValidationException"
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
    #
    class TransformJobCompletedOrStopped
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 60,
          max_delay: options[:max_delay] || 3600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_transform_job,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "transform_job_status",
                    "expected" => "Completed",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "transform_job_status",
                    "expected" => "Stopped",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "transform_job_status",
                    "expected" => "Failed",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "ValidationException"
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

# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('AppMesh', Module.new) unless Aws.const_defined?('AppMesh')

# @title AWS App Mesh
# <p>App Mesh is a service mesh based on the Envoy proxy that makes it easy to
#          monitor and control microservices. App Mesh standardizes how your microservices
#          communicate, giving you end-to-end visibility and helping to ensure high availability for
#          your applications.</p>
#          <p>App Mesh gives you consistent visibility and network traffic controls for
#          every microservice in an application. You can use App Mesh with Amazon Web Services Fargate, Amazon ECS, Amazon EKS, Kubernetes on Amazon Web Services, and
#             Amazon EC2.</p>
#          <note>
#             <p>App Mesh supports microservice applications that use service discovery
#             naming for their components. For more information about service discovery on Amazon ECS, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
#                Discovery</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. Kubernetes
#                <code>kube-dns</code> and <code>coredns</code> are supported. For more information,
#             see <a href="https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/">DNS
#                for Services and Pods</a> in the Kubernetes documentation.</p>
#          </note>
module Aws::AppMesh
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-appmesh/types'
require_relative 'aws-sdk-appmesh/paginators'
require_relative 'aws-sdk-appmesh/schema'
require_relative 'aws-sdk-appmesh/auth_parameters'
require_relative 'aws-sdk-appmesh/auth_resolver'
require_relative 'aws-sdk-appmesh/client'
require_relative 'aws-sdk-appmesh/errors'
require_relative 'aws-sdk-appmesh/endpoint_parameters'
require_relative 'aws-sdk-appmesh/endpoint_provider'
require_relative 'aws-sdk-appmesh/waiters'
require_relative 'aws-sdk-appmesh/customizations'

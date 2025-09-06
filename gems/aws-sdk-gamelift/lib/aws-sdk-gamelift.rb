# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('GameLift', Module.new) unless Aws.const_defined?('GameLift')

# @title Amazon GameLift
# <p>Amazon GameLift Servers provides solutions for hosting session-based multiplayer game servers in the
#             cloud, including tools for deploying, operating, and scaling game servers. Built on
#             Amazon Web Services global computing infrastructure, GameLift helps you deliver high-performance,
#             high-reliability, low-cost game servers while dynamically scaling your resource usage to
#             meet player demand. </p>
#          <p>
#             <b>About Amazon GameLift Servers solutions</b>
#          </p>
#          <p>Get more information on these Amazon GameLift Servers solutions in the <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/">Amazon GameLift Servers Developer Guide</a>.</p>
#          <ul>
#             <li>
#                <p>Amazon GameLift Servers managed hosting -- Amazon GameLift Servers offers a fully managed service to set up
#                     and maintain computing machines for hosting, manage game session and player
#                     session life cycle, and handle security, storage, and performance tracking. You
#                     can use automatic scaling tools to balance player demand and hosting costs,
#                     configure your game session management to minimize player latency, and add
#                     FlexMatch for matchmaking.</p>
#             </li>
#             <li>
#                <p>Managed hosting with Amazon GameLift Servers Realtime -- With Amazon GameLift Servers Amazon GameLift Servers Realtime, you can quickly configure
#                     and set up ready-to-go game servers for your game. Amazon GameLift Servers Realtime provides a game server
#                     framework with core Amazon GameLift Servers infrastructure already built in. Then use the full
#                     range of Amazon GameLift Servers managed hosting features, including FlexMatch, for your
#                     game.</p>
#             </li>
#             <li>
#                <p>Amazon GameLift Servers FleetIQ -- Use Amazon GameLift Servers FleetIQ as a standalone service while hosting your games using EC2
#                     instances and Auto Scaling groups. Amazon GameLift Servers FleetIQ provides optimizations for game
#                     hosting, including boosting the viability of low-cost Spot Instances gaming. For
#                     a complete solution, pair the Amazon GameLift Servers FleetIQ and FlexMatch standalone services.</p>
#             </li>
#             <li>
#                <p>Amazon GameLift Servers FlexMatch -- Add matchmaking to your game hosting solution. FlexMatch is a
#                     customizable matchmaking service for multiplayer games. Use FlexMatch as
#                     integrated with Amazon GameLift Servers managed hosting or incorporate FlexMatch as a standalone
#                     service into your own hosting solution.</p>
#             </li>
#          </ul>
#          <p>
#             <b>About this API Reference</b>
#          </p>
#          <p>This reference guide describes the low-level service API for Amazon GameLift Servers. With each topic
#             in this guide, you can find links to language-specific SDK guides and the Amazon Web Services CLI
#             reference. Useful links:</p>
#          <ul>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html">Amazon GameLift Servers API
#                         operations listed by tasks</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-components.html"> Amazon GameLift Servers tools
#                         and resources</a>
#                </p>
#             </li>
#          </ul>
module Aws::GameLift
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-gamelift/types'
require_relative 'aws-sdk-gamelift/paginators'
require_relative 'aws-sdk-gamelift/schema'
require_relative 'aws-sdk-gamelift/auth_parameters'
require_relative 'aws-sdk-gamelift/auth_resolver'
require_relative 'aws-sdk-gamelift/client'
require_relative 'aws-sdk-gamelift/customizations'
require_relative 'aws-sdk-gamelift/errors'
require_relative 'aws-sdk-gamelift/endpoint_parameters'
require_relative 'aws-sdk-gamelift/endpoint_provider'
require_relative 'aws-sdk-gamelift/waiters'

# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'net/http/connection_pool/session'
require 'net/http/connection_pool/connection'
require 'thread'
require 'logger'

# @private
class Net::HTTP::ConnectionPool

  SOCKET_ERRORS = [
    EOFError, 
    IOError, 
    Errno::ECONNABORTED, 
    Errno::ECONNRESET, 
    Errno::EPIPE, 
    Errno::EINVAL 
  ]

  # @param [Hash] options
  #
  # @option options [Numeric] :http_idle_timeout (60) The number of seconds a
  #   connection is allowed to sit idle before it is closed and removed
  #   from the pool.
  #
  # @option options [Numeric] :http_open_timeout (15) The number of seconds to
  #   wait when opening a http session before raising a timeout exception.
  #
  # @option options [Boolean] :http_wire_trace (false) When +true+, HTTP
  #   debug output will be sent to the +:logger+.
  #
  # @option options [Logger] :logger (Logger.new($stdout)) Where debug out
  #   is sent (wire traces).
  # 
  def initialize options = {}
    @pool = []
    @pool_mutex = Mutex.new
    @open_timeout = options[:http_open_timeout] || 15
    @idle_timeout = options[:http_idle_timeout] || 60
    @http_wire_trace = !!options[:http_wire_trace]
    if logger = options[:logger]
      @logger = logger
    elsif http_wire_trace?
      @logger = Logger.new($stdout)
    end
  end

  # @return [Integer] 
  attr_reader :idle_timeout

  # @return [Integer]
  attr_accessor :open_timeout

  # @return [Boolean] Returns +true+ when HTTP debug output (wire traces)
  #   will be logged.
  attr_reader :http_wire_trace

  alias_method :http_wire_trace?, :http_wire_trace
  alias_method :log_wire_trace?, :http_wire_trace
  alias_method :log_wire_trace, :http_wire_trace

  # @return [Logger] Where debug output is sent.
  attr_reader :logger

  # Requests a connection object from the connection pool.
  #
  #   connection = pool.connection_for('domain.com')
  #   connection.request(Net::HTTP::Get.new('/index.html'))
  #   connection.request(Net::HTTP::Get.new('/about.html'))
  #
  #   # same thing in block form
  #   pool.connection_for('domain.com') do |connection|
  #     connection.request(Net::HTTP::Get.new('/index.html'))
  #     connection.request(Net::HTTP::Get.new('/about.html'))
  #   end
  #
  # Because the pool manages HTTP sessions you do not have to
  # worry about closing a connection or returning a connection
  # to the pool.  Every time you call request on a connection
  # object, a HTTP session received from the pool and returned after
  # the request is complete.
  #
  # @param [String] host
  #
  # @param [Hash] options
  #
  # @option options [Integer] :port Which port the connection should use.
  #   Defaults to 80, unless +:ssl+ is +true+, then it defaults to 443.
  #
  # @option options [Boolean] :ssl If the connection should be made over
  #   SSL.  Defaults to +false+, unless +:port+ is 443, then it defaults
  #   to +true+.
  #
  # @option options [Boolean] :ssl_verify_peer (true) If true, ssl 
  #   connections should verify peer certificates.  This should only ever be
  #   set false false for debugging purposes.
  #
  # @option options [String] :ssl_ca_file Full path to the SSL certificate
  #   authority bundle file that should be used when verifying peer 
  #   certificates.  If you do not pass +:ssl_ca_file+ or +:ssl_ca_path+
  #   the the system default will be used if available.
  #
  # @option options [String] :ssl_ca_path Full path of the directory that
  #   contains the unbundled SSL certificate authority files for verifying
  #   peer certificates.  If you do not pass +:ssl_ca_file+ or +:ssl_ca_path+
  #   the the system default will be used if available.
  #
  # @option options [URI::HTTP,String] :proxy_uri (nil) A URI string or
  #   URI::HTTP object to use as a proxy.  You should not provide 
  #   +:proxy_uri+ with any other proxy options.
  #
  #     :proxy_uri => 'http://user:pass@host.com:80'
  #
  # @option options [String] :proxy_address
  #
  # @option options [String] :proxy_port
  #
  # @option options [String] :proxy_user
  #
  # @option options [String] :proxy_password
  #
  # @yield [connection]
  #
  # @yieldparam [optional,Connection] connection
  #
  # @return [Connection]
  #
  def connection_for host, options = {}, &block
    connection = Connection.new(self, host, options)
    yield(connection) if block_given?
    connection
  end

  # @private
  def request connection, *request_args, &block

    session = nil
    response = nil
    retried = false

    begin

      session = session_for(connection, retried)
      session.http_session.read_timeout = connection.read_timeout
      response = session.request(*request_args, &block)

    rescue Exception => error

      # close the http session to prevent the connection from being
      # left open and risk the other side sending data
      session.finish if session

      # retry socket errors once on a new session
      if SOCKET_ERRORS.include?(error.class) and !retried
        retried = true
        retry
      end

      raise error

    else
      @pool_mutex.synchronize { @pool << session }
    end

    response

  end

  # Returns the number of sessions currently in the pool, not counting those
  # currently in use.
  def size
    @pool_mutex.synchronize { @pool.size }  
  end

  # Removes stale http sessions from the pool (that have exceeded 
  # the idle timeout).
  def clean!
    @pool_mutex.synchronize { _clean }
  end

  # Closes and removes removes all sessions from the pool.  
  # If empty! is called while there are outstanding requests they may
  # get checked back into the pool, leaving the pool in a non-empty state.
  def empty!
    @pool_mutex.synchronize do
      @pool.each(&:finish)
      @pool = []
    end
  end

  # Returns a suitable session from the pool or creates a new one
  private
  def session_for connection, force_new = false

    session = nil

    unless force_new
      @pool_mutex.synchronize do
        _clean
        session = @pool.find{|idle_session| idle_session.key == connection.key }
        @pool.delete(session) if session
      end
    end

    if session.nil?
      logger = http_wire_trace? ? self.logger : nil 
      session = Session.for(connection, open_timeout, logger)
    end

    session
  end

  private
  def _clean
    now = Time.now
    @pool.delete_if do |idle_session|
      if 
        idle_session.last_used_at.nil? or
        now - idle_session.last_used_at > idle_timeout
      then
        idle_session.finish
        true
      end
    end
  end

end

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

# A wrapper around Net::HTTP that provides a manged pool of persistant HTTP
# connections.
#
#   pool = Net::HTTP::ConnectionPool.new
#   connection = pool.connection_for('domain.com')
#   connection.request(Net::HTTP::Get.new('/')) do |resp|
#     # Connection#request yields Net::HTTPResponse objects
#     puts resp.body
#   end
#
# @private
class Net::HTTP::ConnectionPool

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
    @pool_mutex = Mutex.new
    @pool = []
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
  #   connection.request(Net::HTTP::Get.new('/index.html')) {|resp|}
  #   connection.request(Net::HTTP::Get.new('/about.html')) {|resp|}
  #
  #   # same thing in block form
  #   pool.connection_for('domain.com') do |connection|
  #     connection.request(Net::HTTP::Get.new('/index.html')) {|resp|}
  #     connection.request(Net::HTTP::Get.new('/about.html')) {|resp|}
  #   end
  #
  # Because the pool manages HTTP sessions you do not have to
  # worry about closing a connection or returning a connection
  # to the pool.
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

  # Makes a single HTTP request.  See {Connection#request} for more information
  # on making an HTTP request.
  # @return [nil]
  # @private
  def request connection, *args, &block
    session_for(connection) do |session|
      session.read_timeout = connection.read_timeout
      session.request(*args, &block)
    end
  end

  protected

  # Yields an open http session for the given connection.
  def session_for connection, &block

    session = nil

    # search the pool for an idle session that can be used
    @pool_mutex.synchronize do
      _clean # removes stale sessions
      session = @pool.find{|idle_session| idle_session.key == connection.key }
      @pool.delete(session) if session
    end

    begin
      # opens a new HTTP session if no suitable idle session was found
      session = _create_session(connection) unless session
      yield(session)
    rescue Exception => error
      session.finish if session
      raise error
    else
      # only check the session back into the pool if no errors were raised
      @pool_mutex.synchronize { @pool << session }
    end

    nil

  end

  def _create_session connection
    Session.start(connection,
      :open_timeout => open_timeout,
      :debug_logger => log_wire_trace? ? logger : nil)
  end

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

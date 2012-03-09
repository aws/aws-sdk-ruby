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
  # @option options [Numeric] :idle_timeout (60) The number of seconds a 
  #   connection is allowed to sit idle before it is closed and removed
  #   from the pool.
  #
  # @option options [Numeric] :open_timeout (15) The number of seconds to 
  #   wait when opening a http session before raising a timeout exception.
  # 
  def initialize options = {}
    @pool = []
    @pool_mutex = Mutex.new
    @open_timeout = options[:open_timeout] || 15
    @idle_timeout = options[:idle_timeout] || 60
  end

  # @return [Integer] 
  attr_reader :idle_timeout

  # @return [Integer]
  attr_accessor :open_timeout

  # Requests a http session from the connection pool.  
  #
  #   pool.connection_for('domain.com') do |connection|
  #
  #     # make 
  #     connection.request(Net::HTTP::Get.new('/index.html'))
  #     connection.request(Net::HTTP::Get.new('/about.html'))
  #
  #   end
  #
  # The yielded connection object is a thin wrapper around the persistent 
  # http session object.  You generally want to call {Connection#request}
  # on the yielded object.  When the block is complete the connection
  # will be returned to the pool.
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
  #   connections will verify peer certificates.  This should only ever be
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
  #   URI::HTTP for a proxy reqeusts should be made through.  You should
  #   not pass both +:proxy_uri+ with any of the other proxy options.
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
  # @yieldparam [Connection] connection
  #
  # @return [nil]
  #
  def connection_for host, options = {}, &block
    connection = Connection.new(self, host, options)
    if block_given?
      yield(connection)
    else
      connection
    end
  end

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
      session = Session.for(connection, open_timeout)
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

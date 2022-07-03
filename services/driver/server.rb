#!/usr/bin/env ruby
# frozen_string_literal: true

require "bundler/setup"
require "grpc"
require "mobility"

class DriverService < Mobility::Services::DriverServices::Service
  def list_drivers(req, _unused_call)
    puts "Request: #{req}"

    driver = Mobility::Services::Driver.new(
      driver_id: "",
      name: "",
      identification: "",
      phone_number: "",
      created_at: "",
      modified_at: "",
      deleted_at: ""
    )

    Mobility::Services::ListDriversResponse.new(
      successful: true,
      drivers_list: Mobility::Services::DriversList.new(drivers: [driver])
    )
  end
end

class MobilityServer
  class << self
    def start
      start_grpc_server
    end

    private

    def start_grpc_server
      # create server
      @server = GRPC::RpcServer.new
      @server.add_http2_port("0.0.0.0:50053", :this_port_is_insecure)
      # assign server to a grpc handler
      @server.handle(DriverService)
      @server.run_till_terminated
    end
  end
end

MobilityServer.start

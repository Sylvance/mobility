#!/usr/bin/env ruby
# frozen_string_literal: true

require "bundler/setup"
require "grpc"
require "mobility"

class SwapService < Mobility::Services::SwapServices::Service
  def get_swap(req, _unused_call)
    puts "Response: #{req}"

    swap = Mobility::Services::Swap.new(
      issue_name: nil,
      type: nil,
      created_at: nil,
      modified_at: nil,
      deleted_at: nil,
      charge_percentage: nil,
      below_threshold: nil,
      at_station: nil,
      in_swap: nil,
      swap_id: nil
    )

    Mobility::Services::GetSwapResponse.new(
      successful: true,
      swap: swap
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
      @server.add_http2_port("0.0.0.0:50062", :this_port_is_insecure)
      # assign server to a grpc handler
      @server.handle(SwapService)
      @server.run_till_terminated
    end
  end
end

MobilityServer.start

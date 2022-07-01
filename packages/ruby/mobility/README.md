# Mobility

Gem that aids mobility microservices to talk to each other.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add mobility

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install mobility

## Usage

You need to implement a server and a client. Then you can use this gem to connect between
the two.

### Server side service implementation

1. Create a `Gemfile` below then run `bundle` install:

```ruby
# frozen_string_literal: true

source "https://rubygems.org"

gem "grpc"
gem "mobility"
```

2. Setup the gRPC server in `server.rb`:

```ruby
#!/usr/bin/env ruby

require 'grpc'
require 'mobility'

class DriverServer < DriverServices::Service
  def ListDrivers(direction_req, _unused_call)
    # build response from object
    ListDriversResponse.new(
      drivers: []
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
      @server.add_http2_port("0.0.0.0:50052", :this_port_is_insecure)
      # assign server to a grpc handler
      @server.handle(DriverServer)
      @server.run_till_terminated
    end
  end
end

MobilityServer.start
```

3. Run server with;

```sh
ruby server.rb
```

### Client side 

1. Do a client RPC call:

```ruby
#!/usr/bin/env ruby

require 'grpc'
require 'route_guide'

def client_call
  # 1. connect to server service
  stub = Mobility::DriversServices::Stub.new('0.0.0.0:50052', :this_channel_is_insecure)
  # 2. build request object
  req = Mobility::ListDriversRequest.new()
  # 3. call the remote method with request object as parameter
  resp_obj = stub.ListDrivers(req)
  puts "Response: #{resp_obj}"
end

client_call
```

2. Then run the client in a separate terminal. Run client with;

```sh
ruby client.rb
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Sylvance/mobility.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

#!/usr/bin/env bash

grpc_tools_ruby_protoc -I ./protos --ruby_out=./packages/ruby/mobility/lib/mobility/services --grpc_out=./packages/ruby/mobility/lib/mobility/services ./protos/battery.proto
grpc_tools_ruby_protoc -I ./protos --ruby_out=./packages/ruby/mobility/lib/mobility/services --grpc_out=./packages/ruby/mobility/lib/mobility/services ./protos/driver.proto
grpc_tools_ruby_protoc -I ./protos --ruby_out=./packages/ruby/mobility/lib/mobility/services --grpc_out=./packages/ruby/mobility/lib/mobility/services ./protos/flight.proto
grpc_tools_ruby_protoc -I ./protos --ruby_out=./packages/ruby/mobility/lib/mobility/services --grpc_out=./packages/ruby/mobility/lib/mobility/services ./protos/motorcycle.proto
grpc_tools_ruby_protoc -I ./protos --ruby_out=./packages/ruby/mobility/lib/mobility/services --grpc_out=./packages/ruby/mobility/lib/mobility/services ./protos/operator.proto
grpc_tools_ruby_protoc -I ./protos --ruby_out=./packages/ruby/mobility/lib/mobility/services --grpc_out=./packages/ruby/mobility/lib/mobility/services ./protos/prediction.proto
grpc_tools_ruby_protoc -I ./protos --ruby_out=./packages/ruby/mobility/lib/mobility/services --grpc_out=./packages/ruby/mobility/lib/mobility/services ./protos/swap.proto
grpc_tools_ruby_protoc -I ./protos --ruby_out=./packages/ruby/mobility/lib/mobility/services --grpc_out=./packages/ruby/mobility/lib/mobility/services ./protos/distance.proto
grpc_tools_ruby_protoc -I ./protos --ruby_out=./packages/ruby/mobility/lib/mobility/services --grpc_out=./packages/ruby/mobility/lib/mobility/services ./protos/energy.proto
grpc_tools_ruby_protoc -I ./protos --ruby_out=./packages/ruby/mobility/lib/mobility/services --grpc_out=./packages/ruby/mobility/lib/mobility/services ./protos/location.proto
grpc_tools_ruby_protoc -I ./protos --ruby_out=./packages/ruby/mobility/lib/mobility/services --grpc_out=./packages/ruby/mobility/lib/mobility/services ./protos/notification.proto
grpc_tools_ruby_protoc -I ./protos --ruby_out=./packages/ruby/mobility/lib/mobility/services --grpc_out=./packages/ruby/mobility/lib/mobility/services ./protos/payment.proto
grpc_tools_ruby_protoc -I ./protos --ruby_out=./packages/ruby/mobility/lib/mobility/services --grpc_out=./packages/ruby/mobility/lib/mobility/services ./protos/station.proto

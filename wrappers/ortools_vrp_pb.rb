# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: ortools_vrp.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "ortools_vrp.Matrix" do
    repeated :data, :uint32, 2
  end
  add_message "ortools_vrp.TimeWindow" do
    optional :start, :int64, 1
    optional :end, :int64, 2
    optional :late_multiplier, :uint32, 3
  end
  add_message "ortools_vrp.Service" do
    repeated :time_windows, :message, 1, "ortools_vrp.TimeWindow"
    repeated :quantities, :uint32, 2
    optional :duration, :uint32, 3
    repeated :vehicle_indices, :uint32, 4
  end
  add_message "ortools_vrp.Rest" do
    repeated :time_windows, :message, 1, "ortools_vrp.TimeWindow"
    optional :duration, :uint32, 2
  end
  add_message "ortools_vrp.Capacity" do
    optional :limit, :int32, 1
    optional :overload_multiplier, :float, 2
  end
  add_message "ortools_vrp.Vehicle" do
    optional :time_matrix, :message, 1, "ortools_vrp.Matrix"
    optional :distance_matrix, :message, 2, "ortools_vrp.Matrix"
    repeated :capacities, :message, 3, "ortools_vrp.Capacity"
    optional :time_window, :message, 4, "ortools_vrp.TimeWindow"
    repeated :rests, :message, 5, "ortools_vrp.Rest"
  end
  add_message "ortools_vrp.Problem" do
    repeated :vehicles, :message, 3, "ortools_vrp.Vehicle"
    repeated :services, :message, 4, "ortools_vrp.Service"
  end
end

module OrtoolsVrp
  Matrix = Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Matrix").msgclass
  TimeWindow = Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.TimeWindow").msgclass
  Service = Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Service").msgclass
  Rest = Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Rest").msgclass
  Capacity = Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Capacity").msgclass
  Vehicle = Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Vehicle").msgclass
  Problem = Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Problem").msgclass
end

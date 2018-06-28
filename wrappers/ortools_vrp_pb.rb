# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: ortools_vrp.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "ortools_vrp.Matrix" do
    repeated :time, :float, 2
    repeated :distance, :float, 3
    repeated :value, :float, 4
  end
  add_message "ortools_vrp.TimeWindow" do
    optional :start, :int64, 1
    optional :end, :int64, 2
  end
  add_message "ortools_vrp.Service" do
    repeated :time_windows, :message, 1, "ortools_vrp.TimeWindow"
    repeated :quantities, :int32, 2
    optional :duration, :uint32, 3
    optional :priority, :uint32, 4
    repeated :vehicle_indices, :int32, 5
    optional :matrix_index, :uint32, 6
    optional :setup_duration, :uint32, 7
    optional :id, :string, 9
    optional :late_multiplier, :float, 10
    repeated :setup_quantities, :int32, 11
    optional :additional_value, :uint32, 12
    optional :exclusion_cost, :int32, 13
    repeated :refill_quantities, :bool, 14
    optional :problem_index, :int32, 15
  end
  add_message "ortools_vrp.Rest" do
    repeated :time_windows, :message, 1, "ortools_vrp.TimeWindow"
    optional :duration, :uint32, 2
    optional :id, :string, 3
  end
  add_message "ortools_vrp.Capacity" do
    optional :limit, :int32, 1
    optional :overload_multiplier, :float, 2
    optional :counting, :bool, 3
  end
  add_message "ortools_vrp.Vehicle" do
    optional :id, :string, 1
    repeated :capacities, :message, 3, "ortools_vrp.Capacity"
    optional :time_window, :message, 4, "ortools_vrp.TimeWindow"
    repeated :rests, :message, 5, "ortools_vrp.Rest"
    optional :cost_fixed, :float, 6
    optional :cost_distance_multiplier, :float, 7
    optional :cost_time_multiplier, :float, 8
    optional :cost_waiting_time_multiplier, :float, 9
    optional :matrix_index, :uint32, 10
    optional :start_index, :int32, 11
    optional :end_index, :int32, 12
    optional :duration, :int64, 13
    optional :shift_preference, :string, 14
    optional :cost_late_multiplier, :float, 15
    optional :day_index, :int32, 16
    optional :value_matrix_index, :uint32, 17
    optional :cost_value_multiplier, :float, 18
    optional :max_ride_time, :int64, 19
    optional :max_ride_distance, :int64, 20
    optional :distance, :int64, 22
    optional :coef_service, :float, 23
    optional :coef_setup, :float, 24
    optional :additional_service, :int64, 25
    optional :additional_setup, :int64, 26
    optional :free_approach, :bool, 27
    optional :free_return, :bool, 28
  end
  add_message "ortools_vrp.Relation" do
    optional :type, :string, 1
    repeated :linked_ids, :string, 2
    optional :lapse, :int32, 3
    repeated :linked_vehicle_ids, :string, 4
  end
  add_message "ortools_vrp.Route" do
    optional :vehicle_id, :string, 1
    repeated :service_ids, :string, 2
  end
  add_message "ortools_vrp.Problem" do
    repeated :vehicles, :message, 3, "ortools_vrp.Vehicle"
    repeated :services, :message, 4, "ortools_vrp.Service"
    repeated :matrices, :message, 5, "ortools_vrp.Matrix"
    repeated :relations, :message, 6, "ortools_vrp.Relation"
    repeated :routes, :message, 7, "ortools_vrp.Route"
  end
end

module OrtoolsVrp
  Matrix = Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Matrix").msgclass
  TimeWindow = Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.TimeWindow").msgclass
  Service = Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Service").msgclass
  Rest = Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Rest").msgclass
  Capacity = Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Capacity").msgclass
  Vehicle = Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Vehicle").msgclass
  Relation = Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Relation").msgclass
  Route = Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Route").msgclass
  Problem = Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Problem").msgclass
end

-- Copyright 2016 The Cartographer Authors
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

include "map_builder.lua"
include "trajectory_builder.lua"

robot_name = os.getenv("ROBOT_NAME")

options = {
  map_builder = MAP_BUILDER,
  trajectory_builder = TRAJECTORY_BUILDER,
  map_frame = robot_name .. "/map",
  tracking_frame = robot_name .. "/base_link",
  published_frame = robot_name .. "/odom",
  odom_frame = robot_name .. "/odom",
  provide_odom_frame = false,
  use_odometry = false,
  use_nav_sat = false,
  use_landmarks = false,
  publish_frame_projected_to_2d = false,
  num_laser_scans = 1,
  num_multi_echo_laser_scans = 0,
  num_subdivisions_per_laser_scan = 16,
  num_point_clouds = 0,
  lookup_transform_timeout_sec = 0.2,
  submap_publish_period_sec = 0.3,
  pose_publish_period_sec = 5e-3,
  trajectory_publish_period_sec = 10e-3,
  rangefinder_sampling_ratio = 1.,
  odometry_sampling_ratio = 1.,
  imu_sampling_ratio = 1.,
  fixed_frame_pose_sampling_ratio = 1.,
  landmarks_sampling_ratio = 1.,
  use_pose_extrapolator = false,
}

MAP_BUILDER.use_trajectory_builder_2d = true

TRAJECTORY_BUILDER_2D.use_online_correlative_scan_matching = true
TRAJECTORY_BUILDER_2D.use_imu_data = false
TRAJECTORY_BUILDER_2D.real_time_correlative_scan_matcher.linear_search_window = 0.15
TRAJECTORY_BUILDER_2D.real_time_correlative_scan_matcher.angular_search_window = math.rad(0.1)
TRAJECTORY_BUILDER_2D.num_accumulated_range_data = 16
TRAJECTORY_BUILDER_2D.ceres_scan_matcher.occupied_space_weight = 3
TRAJECTORY_BUILDER_2D.ceres_scan_matcher.translation_weight = 0.1
TRAJECTORY_BUILDER_2D.ceres_scan_matcher.rotation_weight = 0.1

--SPARSE_POSE_GRAPH.optimization_problem.huber_scale = 1e2

return options

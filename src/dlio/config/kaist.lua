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

include "basic_config_3d.lua"

options.tracking_frame = "imu"
options.sensor_type = "velodyne-xyzi"
options.num_point_clouds = 2

POSE_GRAPH.optimize_every_n_nodes = 100
POSE_GRAPH.max_radius_eable_loop_detection = 5.
POSE_GRAPH.num_close_submaps_loop_with_initial_value = 30

TRAJECTORY_BUILDER_3D.min_range = 1.0
TRAJECTORY_BUILDER_3D.submaps.high_resolution = 0.2

TRAJECTORY_BUILDER_3D.enable_gravity_factor = true
TRAJECTORY_BUILDER_3D.imu.prior_gravity_noise = 0.1
 
TRAJECTORY_BUILDER_3D.scan_period = 0.1
TRAJECTORY_BUILDER_3D.eable_mannually_discrew = true
TRAJECTORY_BUILDER_3D.frames_for_static_initialization = 7
TRAJECTORY_BUILDER_3D.frames_for_dynamic_initialization = 7
TRAJECTORY_BUILDER_3D.frames_for_online_gravity_estimate = 3
TRAJECTORY_BUILDER_3D.enable_ndt_initialization = false

TRAJECTORY_BUILDER_3D.imu.acc_noise= 3.9939570888238808e-02
TRAJECTORY_BUILDER_3D.imu.gyr_noise= 1.5636343949698187e-02
TRAJECTORY_BUILDER_3D.imu.acc_bias_noise= 6.4356659353532566e-05
TRAJECTORY_BUILDER_3D.imu.gyr_bias_noise= 3.5640318696367613e-05

TRAJECTORY_BUILDER_3D.imu.gravity= 9.80

TRAJECTORY_BUILDER_3D.imu.ceres_pose_noise_t = 0.1
TRAJECTORY_BUILDER_3D.imu.ceres_pose_noise_r = 0.1
TRAJECTORY_BUILDER_3D.imu.ceres_pose_noise_t_drift = 0.01
TRAJECTORY_BUILDER_3D.imu.ceres_pose_noise_r_drift = 0.01

TRAJECTORY_BUILDER_3D.imu.prior_pose_noise = 0.1
TRAJECTORY_BUILDER_3D.imu.prior_vel_noise = 0.1
TRAJECTORY_BUILDER_3D.imu.prior_bias_noise = 1e-03

return options
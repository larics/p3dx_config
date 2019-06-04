include "cartographer.lua"

TRAJECTORY_BUILDER.pure_localization_trimmer = {
  max_submaps_to_keep = 3,
}
POSE_GRAPH.optimize_every_n_nodes = 20

--POSE_GRAPH.global_sampling_ratio = 0.0015
--POSE_GRAPH.constraint_builder.sampling_ratio = 0.15

return options

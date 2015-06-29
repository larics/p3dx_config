cmake_minimum_required(VERSION 2.8.3)

project(p3dx_config)

find_package(catkin REQUIRED)

catkin_package()

# Install launch files
install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

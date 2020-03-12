# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Aldebarans libqi: a core library for NAOqiOS development"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/libqi-release/archive/release/kinetic/naoqi_libqi/2.5.0-3.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
    dev-libs/boost
"
DEPEND="${RDEPEND}
    ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

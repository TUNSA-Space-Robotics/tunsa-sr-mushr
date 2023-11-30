mviz() {
    rviz -d $(rospack find cse478)/config/default.rviz
}

export UW_TOOLS_SHELL_FLAVOR=zsh
. /home/robotics/mushr_ws/src/mushr478/cse478/config/env.sh
export SOURCES_ROOT="/home/robotics/mushr_ws/src/mushr478/cse478/src/uw_tools"

export PATH="/home/robotics/mushr_ws/src/mushr478/cse478/scripts/available_client/:$PATH"
. "/home/robotics/mushr_ws/src/mushr478/cse478/scripts/uw_tools_client"


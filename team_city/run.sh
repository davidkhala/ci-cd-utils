set -e

dockerRun() {
    local port=${1:-8111}
    local name=${2:-teamcity-server-instance}
    docker run -it --name teamcity-server-instance  \
        -v teamCityData:/data/teamcity_server/datadir \
        -v teamCityLogs:/opt/teamcity/logs  \
        -p ${port}:8111 jetbrains/teamcity-server

}
"$@"

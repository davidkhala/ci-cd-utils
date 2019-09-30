set -e
remain_params=""
for ((i = 2; i <= ${#}; i++)); do
    j=${!i}
    remain_params="$remain_params $j"
done
dockerRun() {
    local port=${1:-8111}
    local name=${2:-teamcity-server-instance}
    docker run -it --name teamcity-server-instance  \
        -v teamCityData:/data/teamcity_server/datadir \
        -v teamCityLogs:/opt/teamcity/logs  \
        -p ${port}:8111 jetbrains/teamcity-server

}
$1 $remain_params

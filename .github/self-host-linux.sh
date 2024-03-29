set -e
githubUrl=$1
token=$2

# Create a folder
mkdir actions-runner && cd actions-runner
# Download the latest runner package
curl -o actions-runner-linux-x64-2.277.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.277.1/actions-runner-linux-x64-2.277.1.tar.gz
# Extract the installer
tar xzf ./actions-runner-linux-x64-2.277.1.tar.gz

# Create the runner and start the configuration experience
./config.sh --url $githubUrl --token $token
# Configuring the self-hosted runner application as a service
sudo ./svc.sh install
chcon system_u:object_r:usr_t:s0 runsvc.sh # fix SELinux blocking issue 

# Last step, run it!
sudo ./svc.sh start



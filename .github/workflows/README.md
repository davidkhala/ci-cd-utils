# Github Workflow

![githubWorkflow.yml](https://github.com/davidkhala/ci-cd-utils/workflows/.github/workflows/githubWorkflow.yml/badge.svg?branch=master)

- [self-hosted support](https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners)
  - Step 1: [Adding self hosted runners](https://docs.github.com/en/actions/hosting-your-own-runners/adding-self-hosted-runners)
    - Settings -> Actions -> Add runner
    - [Script for Linux runner 20210414](self-host-linux.sh)
- [Clout hosts Runner hardware](https://docs.github.com/en/actions/using-github-hosted-runners/about-github-hosted-runners#supported-runners-and-hardware-resources)
  - Hardware specification for Windows and Linux virtual machines: [`Standard_DS2_v2` in Microsoft Azure](https://docs.microsoft.com/en-us/azure/virtual-machines/dv2-dsv2-series#dsv2-series)
    - 2-core CPU
    - 7 GB of RAM memory
    - 14 GB of SSD disk space
  - GitHub hosts macOS runners in GitHub's own macOS Cloud. Hardware specification for macOS virtual machines
    - 3-core CPU
    - 14 GB of RAM memory
    - 14 GB of SSD disk space
  - The GitHub-hosted runner application is a fork of the Azure Pipelines Agent. Inbound ICMP packets are blocked for all Azure virtual machines, so ping or traceroute commands might not work. 
  - To get a list of IP address ranges that GitHub Actions uses for GitHub-hosted runners, you can use the GitHub REST API. The list of GitHub Actions IP addresses returned by the API is updated once a week.

- Get Badge
  - Repository tab `Actions` -> Select a workflow (listed at left) -> [Create status badge] button (upper-right of workflow details) -> Event: default
## Env, Var
- Variables in the env map cannot be defined in terms of other variables in the map

### Reusable workflows
https://docs.github.com/en/actions/using-workflows/reusing-workflows
- reusable workflows should be referenced at the top-level `jobs.*.uses` key, not within steps




### virtual-environments preinstalled software
Workflow logs include a link to the preinstalled tools on the exact runner. 
To find this information in the workflow log, 
1. expand the `Set up job` section. 
2. Under that section, expand the `Virtual Environment` section. 
3. The link following `Included Software` will tell you the the preinstalled tools on the runner that ran the workflow.

Or you can go to some readme collections in source.
- [Ubuntu 20](https://github.com/actions/virtual-environments/blob/main/images/linux/Ubuntu2004-README.md)
- [MacOS 11](https://github.com/actions/virtual-environments/blob/main/images/macos/macos-11-Readme.md)
- [Windows Server 2022](https://github.com/actions/virtual-environments/blob/main/images/win/Windows2022-Readme.md)
### Github Actions: self-lift OpenSource 
- https://github.com/actions/checkout
- https://github.com/actions/virtual-environments
  - Github hosted runner

### Triggers
- Manual events
  - `workflow_dispatch` to trigger specific workflows in a repository
  - `repository_dispatch` to trigger more than one workflow in a repository and create custom events and event types

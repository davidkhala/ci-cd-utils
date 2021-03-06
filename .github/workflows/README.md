# Github Workflow

![githubWorkflow.yml](https://github.com/davidkhala/ci-cd-utils/workflows/.github/workflows/githubWorkflow.yml/badge.svg?branch=master)

- [self-hosted support](https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners)
  - Step 1: [Adding self hosted runners](https://docs.github.com/en/actions/hosting-your-own-runners/adding-self-hosted-runners)
    - Settings -> Actions -> Add runner
    - [Script for Linux runner 20210414](self-host-linux.sh)
- [Runner hardware](https://docs.github.com/en/actions/using-github-hosted-runners/about-github-hosted-runners#supported-runners-and-hardware-resources)
  - Hardware specification for Windows and Linux virtual machines:
    - 2-core CPU
    - 7 GB of RAM memory
    - 14 GB of SSD disk space
  - Hardware specification for macOS virtual machines
    - 3-core CPU
    - 14 GB of RAM memory
    - 14 GB of SSD disk space
- Get Badge
  - Repository tab `Actions` -> Select a workflow (listed at left) -> [Create status badge] button (upper-right of workflow details) -> Event: default

### Preinstalled software
Workflow logs include a link to the preinstalled tools on the exact runner. 
To find this information in the workflow log, 
1. expand the `Set up job` section. 
2. Under that section, expand the `Virtual Environment` section. 
3. The link following `Included Software` will tell you the the preinstalled tools on the runner that ran the workflow.

### Github Actions: self-lift OpenSource 
- https://github.com/actions/checkout
- https://github.com/actions/virtual-environments
  - Github hosted runner

### Triggers
- Manual events
  - `workflow_dispatch` to trigger specific workflows in a repository
  - `repository_dispatch` to trigger more than one workflow in a repository and create custom events and event types

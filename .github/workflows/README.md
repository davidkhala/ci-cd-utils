# Github Workflow



## Environment, Variables, Path
- Variables in the env map cannot be defined in terms of other variables in the map
- Multiple checkout
  - No matter how many time you `actions/checkout`, the default working directory is always `/home/runner/work/${{ github.event.repository.name }}/${{ github.event.repository.name }}`, even checkout other repository. The only different in checkout other repository, are those repository files.

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


### Triggers
- Manual events
  - `workflow_dispatch` to trigger specific workflows in a repository
  - `repository_dispatch` to trigger more than one workflow in a repository and create custom events and event types

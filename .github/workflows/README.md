# Github Workflow

![githubWorkflow.yml](https://github.com/davidkhala/ci-cd-utils/workflows/.github/workflows/githubWorkflow.yml/badge.svg?branch=master)
## Badge 

### URL Syntax
- If your workflow uses the name keyword, you must reference the workflow by name. 
  > `https://github.com/<OWNER>/<REPOSITORY>/workflows/<WORKFLOW_NAME>/badge.svg`

- Else if your workflow doesn't have a name, you must reference the workflow file using the file path relative to the repository's root directory.

  > `https://github.com/<OWNER>/<REPOSITORY>/workflows/<WORKFLOW_FILE_PATH>/badge.svg`

- Using the branch parameter, Add `?branch=<branchName>` to the end of SVG URL


### Easy to get URL
- Repository tab `Actions` -> Select a workflow (listed at left) -> [Create status badge] button (upper-right of workflow details) -> Event: default
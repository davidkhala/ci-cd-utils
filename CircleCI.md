# CircleCI
- available docker public image: https://circleci.com/docs/2.0/circleci-images/
- checkout another private project in [`run.command`](https://circleci.com/docs/2.0/gh-bb-integration/#enable-your-project-to-check-out-additional-private-repositories), we will need access right 'admin:public_key' granted to cicleCI
- [sequential jobs](https://circleci.com/docs/2.0/workflows/#sequential-job-execution-example)
- [Buggy] when run command  `cd $CIRCLE_WORKING_DIRECTORY; `
```
cd $CIRCLE_WORKING_DIRECTORY; 
/bin/bash: line 0: cd: ~/project: No such file or directory
Exited with code 1

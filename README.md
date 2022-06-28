# docker-github-self-hosted-runner

## Build

```
docker build -t "githubrunner:latest" .
```

## Run

```
docker run -it  --name "githubrunner" -v "$pwd\actions-runner:c:\actions-runner:rw" --rm --env-file "actions.env" githubrunner:latest
```

## Compose

```
docker-compose up
```

##Run this script before everything 


```
.\runner-setup.ps1 -repo "3ShapeInternal/ThreeShape.CICD.GithubActions.Runners" -githubPersonalAccessToken "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"
```


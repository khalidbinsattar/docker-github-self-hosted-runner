# escape=`

FROM eugithubactionsrunnerst.azurecr.io/winrunner:20220608.2

LABEL org.opencontainers.image.source https://github.com/khalidbinsattar/docker-github-self-hosted-runner
LABEL org.opencontainers.image.documentation https://github.com/khalidbinsattar/docker-github-self-hosted-runner/README.md
LABEL org.opencontainers.image.authors Khalid
LABEL org.opencontainers.image.title Self Hosted GitHub Runner on Docker
LABEL org.opencontainers.image.description This image helps you to develop debug GitHub Workflow by running it in a self-hosted runner on Docker

ADD runner-setup.ps1 C:/runner-setup.ps1

WORKDIR /actions-runner

SHELL [ "powershell" ]

#RUN "Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force; `
  #  iwr -useb get.scoop.sh | iex; `
 #  scoop install git"

ADD runner.ps1 C:/runner.ps1
CMD C:/runner.ps1

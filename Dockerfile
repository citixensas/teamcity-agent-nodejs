FROM jetbrains/teamcity-minimal-agent

RUN apt-get update && apt-get install -y git sudo
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
RUN apt-get install -y nodejs
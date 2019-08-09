FROM jetbrains/teamcity-minimal-agent

RUN apt-get update && apt-get install -y git sudo
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -E bash -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN apt-get install -y nodejs
RUN apt install --no-install-recommends yarn
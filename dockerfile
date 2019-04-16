FROM debian:9.5-slim

LABEL "com.github.actions.name" = "Github Create Release"
LABEL "com.github.actions.description" = "Action to create a Github Release always that user push on master branch"

LABEL "com.github.actions.icon"="git-merge"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository" = "https://github.com/frankjuniorr/github-create-release-action"

LABEL "homepage" = "https://github.com/frankjuniorr/github-create-release-action"
LABEL "maintainer"="Frank Junior"

RUN apt-get update && apt-get install -y \
	--no-install-recommends \
		ca-certificates \
		curl \
		unzip \
		git \
		bash \
		bc

RUN	apt-get clean -y
RUN rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

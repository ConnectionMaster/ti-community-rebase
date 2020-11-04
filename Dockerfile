FROM alpine:latest

LABEL version="1.0.0"
LABEL repository="http://github.com/tidb-community-bots/ti-community-rebase"
LABEL homepage="http://github.com/tidb-community-bots/ti-community-rebase"
LABEL maintainer="hi-rustin"
LABEL "com.github.actions.name"="Automatic Rebase"
LABEL "com.github.actions.description"="Automatically rebases PR on '/rebase' comment"
LABEL "com.github.actions.icon"="git-pull-request"
LABEL "com.github.actions.color"="purple"

RUN apk --no-cache add jq bash curl git git-lfs

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

#!/bin/sh

if [ -e ~/gerrit-ci-scripts ]; then
    cd ~/gerrit-ci-scripts && git pull --rebase
else
    git clone https://gerrit.googlesource.com/gerrit-ci-scripts ~/gerrit-ci-scripts
fi

jenkins-jobs update ~/gerrit-ci-scripts/jenkins/

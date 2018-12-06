source ~/git-completion.bash

# mobile android
export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_NDK_HOME=/Library/Android/sdk/ndk-bundle
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=/Users/americothomas/Development/flutter/bin:$PATH
export PATH=$HOME/.yarn/bin:$PATH
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$PATH

export REACT_DEBUGGER="open -g 'rndebugger://set-debugger-loc?host=localhost&port=8081' ||"

# git auto detect
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# aliases
alias ll='ls -la'

# most used paths
alias fm='cd ~/Repo/FuseMobile'
alias am='cd ~/Repo/atafs'
alias amlearn='cd ~/Repo/atafs/fe-snippets-vscode-react'
alias ampayraise='cd ~/Repo/atafs/fe-react16-the-complete-guide'
alias ma='cd ~/Repo/atafs/fed-mobile-react-native-apps'

# mobile react-navive ios
alias m='ttab ms && ml && mr'
alias ms='yarn start --reset-cache'
alias ml='react-native link'
alias mr='react-native run-ios --simulator="iPhone XS"'
alias mt='yarn run test:watch'
alias md='open "rndebugger://set-debugger-loc?host=localhost&port=8081"'

# mobile react-native android (run in a fisical device or the simulator)
# 1- start the server (ms); 2- start the emulator (mar); 3- delete the fuse app from android; 4- install the app (mai);
# alias ms='yarn start --reset-cache'
alias ma='ttab ms && ttab mar && mai'
alias mar='cd ${ANDROID_HOME}/emulator && ./emulator -avd Pixel_2_XL_API_27 -netdelay none -netspeed full'
alias mai='yarn run android:installMainDebug'
alias mal='adb reverse tcp:8081 tcp:8081'

# mobile react-native android to create a new build (https://facebook.github.io/react-native/docs/running-on-device.html)
## build and run the app
alias marg='react-native run-android'
## build only
alias mab='cd android && ./gradlew installDebug; cd ..'

# git (version control)
alias gs='git status'
alias gd='git diff'
alias gc='git checkout'
alias gb='git branch'
alias gl='git log -5'
alias gk='gitk &'
alias gg='github .'
alias gaca='git add .; git commit --amend'
## example: git tag -a v1.0.0 -m 'my first react app'
alias gt='git tag -a'
alias gtp='git push origin --tags'

# delete all traces and start again
alias gcleanc='git checkout .'
alias gcleanrh='git reset --hard'
alias gcleand='git clean -f -d'
alias gcleanorig='find . -name "*.orig" -delete'

# -> git set changes into master from my branch
# ---------------------------------
alias gpmaster='git push origin HEAD:master'

# jest unit tests
alias jus='jest --updateSnapshot'
alias jc='jest --coverage'

# detox e2e tests
alias e2e='yarn run e2e:build && yarn run e2e:test'

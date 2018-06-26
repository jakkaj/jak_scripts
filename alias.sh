#!/bin/bash

#kubes
alias kk='watch -n 3 kubectl get nodes,svc,pods'
alias krun='kubectl run -i -t jordoutils --image=jakkaj/jordoutils:latest --restart=Never -- bash'
alias kexec='kubectl exec -it jordoutils -- bash'
alias kstop='kubectl stop jordoutils'


#dockers
alias dbuild='docker build -t jkbuild .'
alias dstop='docker stop $(docker ps -q)'
alias drun='docker run -it jkbuild bash'

#helms
alias hdry='helm install -f values.yaml --dry-run --debug .'

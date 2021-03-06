#!/bin/bash



#kubes
alias kk='watch -n 1 kubectl get nodes,svc,pods'
alias krun='kubectl run -i -t jordoutils --image=jakkaj/jordoutils:latest --restart=Never -- bash'
alias kexec='kubectl exec -it jordoutils -- bash'
alias kstop='kubectl stop jordoutils'
alias kdel='kubectl delete pod'
alias kinfo='kubectl cluster-info'
alias kp='watch -n 1 kubectl get pods'
alias kbomb='echo "Killing everthing!!" && sleep 3 && kubectl delete --all deployments && kubectl delete --all svc && kubectl delete --all statefulsets && kubectl delete --all pods' 


#dockers
alias dbuild='docker build -t jkbuild .'
alias dstop='docker stop $(docker ps -q)'
alias drun='docker run -it --rm jkbuild bash'

#helms
alias hdry='helm install -f values.yaml --dry-run --debug .'
alias hkill='helm del --purge $(helm ls --all -q)'
alias hdeploy='helm install -f values.yaml .'
alias htup='helm template -f ./values.yaml . | kubectl create -f -'
alias htdown='helm template -f ./values.yaml . | kubectl delete -f -'
alias htapply='helm template -f ./values.yaml . | kubectl apply -f -'

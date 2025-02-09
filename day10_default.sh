 1  mkdir default; cd default
    2  kubeclt get ns
    3  kubectl get ns
    4  cat > config.yml    # specific to kind only
    5  kind create cluster --image=kindest/node:v1.30.8@sha256:17cd608b3971338d9180b00776cb766c50d0a0b6b904ab4ff52fd3fc5c6369bf --name cka-cluster1 --config config.yml
    6  cleat
    7  clear
    8  kubectl get ns
    9  kubectl get all --namespace=kube-system
   10  kubectl get context
   11  kubectl get cluster context
   12  kubectl config get-contexts                          # display list of contexts
   13  cat > Namespace.yaml
   14  rm Namespace.yaml 
   15  clear
   16  kubectl create deploy nginx-def --image=nginx 
   17  kubectl get deploy
   18  kubectl get pods 
   19  kubectl get pods -o wide
   20  kubectl exec -it nginx-def-6954cf7bb4-tq8z8 -- sh
   21  clear
   22  kubectl scale --replicas=3 deploy nginx-def 
   23  kubectl get pods
   24  kubectl  expose deploy nginx-def --name=svc-demo --port=80
   25  kubectl get svc
   26  kubectl get po -o wide
   27  kubectl exec it nginx-def-6954cf7bb4-6wlg5 -- sh
   28  kubectl exec it nginx-def-6954cf7bb4-6wlg5 --  sh
   29  kubectl exec it nginx-def-6954cf7bb4-6wlg5 -- sh
   30  kubectl exec -it nginx-def-6954cf7bb4-6wlg5 -- sh
   31  history > day10_default.sh

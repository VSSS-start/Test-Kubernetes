1  vi DaemonSet.yaml
    2  kubectl get po -A | grep scheduler
    3  kubectl get po -A | grep apiserver
    4  kubectl run nginx --image=nginx
    5  kubectl get po
    6  kubectl describe po | grep Node Status
    7  kubectl describe po nginx  | grep Node Status 
    8  kubectl describe po nginx  | grep Node 
    9  kubectl describe po nginx  | grep status
   10  kubectl describe po nginx  | grep SAtus
   11  kubectl describe po nginx  | grep Status
   12  kubectl get po
   13  kubectl run nginx --image=nginx --dry-run=client -o yaml > manualschedulingpod.yaml
   14  cat manualschedulingpod.yaml 
   15  kubectl get nodes
   16  kubectl describe po nginx 
   17  kubectl describe po nginx | grep Node
   18  kubectl delete po nginx
   19  kubectl describe po nginx | grep Node
   20  cat > manualschedulingpod.yaml 
   21  kubectl create -f manualschedulingpod.yaml 
   22  kubectl describe po nginx | grep Node
   23  kubectl delete po nginx
   24  kubectl create -f manualschedulingpod.yaml 
   25  kubectl describe po nginx | grep Node
   26  kubectl delete po nginx
   27  kubectl describe po nginx | grep Node
   28  kubectl create -f manualschedulingpod.yaml 
   29  kubectl describe po nginx | grep Node
   30  kubectl get po -A -o wide | grep scheduler
   31  history > day13_2.sh

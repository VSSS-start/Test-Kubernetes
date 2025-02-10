 1  kubectl get confih-contexts
    2  kubectl get config-contexts
    3  kubectl config get-contexts
    4  kubectl get po -n kube-system
    5  kubectl get nodes
    6  cat > DeployPodService.yaml
    7  kubectl create -f DeployPodService.yaml 
    8  kubectl autoscale deploy  php-apache --cpu-percent=50 --min=1 --max=10
    9  kubectl get hpa 
   10  clear
   11  kubectl get hpa 
   12  curl 10.96.70.222
   13  kubectl get hpa 
   14  kubectl get po
   15  kubectl describe po php-apache-c7fc89dc4-grlqv
   16  kubectl edit po php-apache-c7fc89dc4-grlqv
   17  kubectl get po
   18  cat > DeployPodService.yaml
   19  kubectl create -f DeployPodService.yaml 
   20  kubectl delete po
   21  kubectl delete po -A
   22  kubectl delete po php-apache-c7fc89dc4-grlqv
   23  kubectl create -f DeployPodService.yaml 
   24  kubectl delete deploy php-apache
   25  kubectl delete svc php-apache
   26  kubectl create -f DeployPodService.yaml 
   27  kubectl get hpa watch
   28  kubectl get hpa -watch
   29  kubectl get hpa php-apache --watch
   30  kubectl get pd --watch
   31  kubectl get po --watch
1  kubectl run -i --tty load-generator --rm --image=busybox:1.28 --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://php-apache; done"
    2  kubectl get hpa 
   32  history > day18.sh

 cat > liveness-c.yaml
   35  kubectl create -f liveness-c.yaml 
   36  kubectl get po --watch
   37  kubectl describe po liveness-exec
   38  kubectl get po --watch
   39  kubectl describe po liveness-exec
   40  cat > liveness-http.yaml
   41  kubectl create -f liveness-http.yaml 
   42  kubectl get po --watch
   43  kubectl describe po hello
   44  cat > liveness-tcp.yaml
   45  kubectl create -f liveness-tcp.yaml 
   46  kubectl get po --watch
   47  cat > liveness-readiness-http.yaml
   48  kubectl create -f liveness-readiness-http.yaml 
   49  kubectl delete po hello
   50  kubectl create -f liveness-readiness-http.yaml 
   51  kubectl get po --watch
   52  kubectl create ---force f liveness-readiness-http.yaml 
   53  kubectl create --force -f liveness-readiness-http.yaml 
   54  kubectl apply --force -f liveness-readiness-http.yaml 
   55  kubectl get po --watch
   56  history > day18
   57  cat  day18
   58  kubectl delete po -A
   59  kubectl get po |grep kubectl delete po 
   60  kubectl delete po (kubectl get po |grep)
   61  kubectl delete po [kubectl get po |grep]
   62  kubectl get po
   63  kubectl delete po hello liveness-exec php-apache-678865dd57-2kjwk tcp-pod
   64  cat> pod.yaml
   65  kubectl apply --force -f pod.yaml 
   66  kubectl get po
   67  kubectl exec -it myapp-pod -- sh
   68  kubectl describe po myapp-pod
   69  cat> pod.yaml
   70  kubectl apply --force -f pod.yaml 
   71  kubectl exec -it myapp-pod -- sh
   72  kubectl create cm app-cm --from-literal=firstname=john --from-literal 
   73  kubectl create cm app-cm --from-literal=firstname=john --from-literal=lastname=smith
   74  kubectl get cm
   75  kubectl get cm app-cm
   76  kubectl describe cm app-cm
   77  cat> pod.yaml
   78  kubectl apply --force -f pod.yaml 
   79  kubectl get po
   80  kubectl apply --force -f pod.yaml 
   81  cat> pod.yaml
   82  kubectl apply --force -f pod.yaml 
   83  cat> pod.yaml
   84  kubectl apply --force -f pod.yaml 
   85  kubectl get po
   86  kubectl exec -it myapp-pod -- sh
   87  kubectl describe po myapp-pod
   88  cat> pod.yaml
   89  kubectl exec -it myapp-pod -- sh
   90  kubectl apply --force -f pod.yaml 
   91  kubectl exec -it myapp-pod -- sh
   92  kubectl describe po myapp-pod
   93  kubectl create cm app-cm --from-literal=firstname=john --from-literal=lastname=smith --dry-run=client -o yaml > cm.yaml
   94  cat cm.yaml
   95  history > day19.yaml

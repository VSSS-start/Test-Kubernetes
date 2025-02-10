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

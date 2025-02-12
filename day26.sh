    9  mkdir day26;cd day26
   10  cat > KindCalico.yaml
   11  kind create cluster --image=kindest/node:v1.30.8@sha256:17cd608b3971338d9180b00776cb766c50d0a0b6b904ab4ff52fd3fc5c6369bf --name cka-cluster1 --config KindCalico.yaml
   12  kubectl get nodes
   13  kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.29.2/manifests/calico.yaml
   14  kubectl get nodes
   15  watch kubectl get pods -l k8s-app=calico-node -A
   16  cat > ApplicationManifest.yaml
   17  kubectl apply -f ApplicationManifest.yaml 
   18  cat > ApplicationManifest.yaml
   19  kubectl get po
   20  kubectl delete po frontend mysql
   21  cat > ApplicationManifest.yaml
   22  kubectl apply -f ApplicationManifest.yaml 
   23  kubectl get po
   24  kubectl get svc
   25  kubectl exec -it frontend -- bash
   26  kubectl exec -it backend -- bash
   27  cat > NetworkPolicy.yaml
   28  kubectl apply -f NetworkPolicy.yaml 
   29  kubectl get netpol
   30  kubectl exec -it frontend -- bash
   31  kubectl exec -it backend -- bash
   32  history

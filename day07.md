    1  curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.18.0/kind-linux-amd64
    2  chmod +x ./kind
    3  sudo mv ./kind /usr/local/bin/kind
    4  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    5  chmod +x ./kubectl
    6  sudo mv ./kubectl /usr/local/bin/kubectl
    7  echo 'export PATH=$PATH:/usr/local/bin' >> ~/.bashrc
    8  source ~/.bashrc
    9  kind --version
   10  kubectl version --client
   11  vi config.yml
   12  kind create cluster --image=kindest/node:v1.30.8@sha256:17cd608b3971338d9180b00776cb766c50d0a0b6b904ab4ff52fd3fc5c6369bf --name cka-cluster1 --config config.yml 
   13  kubectl run ngnix-pod --image=nignix:latest
   14  kubectl explain pod
   15  vi sa.yml
   16  mv sa.yml samplepod.yml
   17  ls
   18  kubectl create -f samplepod.yml 
   19  vi samplepod.yml
   20* 
   21  vi samplepod.yml
   22  rm samplepod.yml 
   23  vi samplepod.yml
   24  ls -ltr
   25  ls -a
   26  rm .samplepod.yml.sw*
   27  ls -a
   28  kubectl create -f samplepod.yml 
   29  vi samplepod.yml 
   30  rm samplepod.yml 
   31  vi samplepod.yml 
   32  kubectl create -f samplepod.yml 
   33  kubectl delete pod nginx
   34  kubectl delete pod nginx-pod
   35  kucbectl get nodes
   36  kubectl get nodes
   37  kubectl delete pod nginx-pod
   38  kubectl create -f samplepod.yml 
   39  kubectl get pods
   40  kubectl get pods | grep kubectl delete pod
   41  kubectl -n my-ns delete pod,svc --all                             # Delete all pods and services in namespace my-ns,
   42  kubectl delete pod unwanted --now                                 # Delete a pod with no grace period
   43  kubectl describle pod ngnix-pod
   44  kubectl describe pod ngnix-pod
   45  kubectl edit pod ngnix-pod
   46  kubectl edit pod ngnix-pod 
   47  kubectl get pods 
   48  kubectl edit pod ngnix-pod
   49  kubectl get pods 
   50  kubectl delete pod unwanted --now                                 # Delete a pod with no grace period
   51  kubectl edit pod ngnix-pod
   52  vi samplepod.yml 
   53  cat > samplepod.yml 
   54  kubectl create -f samplepod.yml 
   55  kubectl get pods 
   56  kubectl describe pod ngnix-pod
   57  kubectl edit pod ngnix-pod
   58  kubectl get pods 
   59  kubectl exec -it ngnix-po
   60  kubectl exec -it ngnix-po -sh
   61  kubectl exec -it ngnix-po --sh
   62  kubectl exec -it ngnix-po -- sh
   63  kubectl run ngnix --image=ngnix --dry-run=client 
   64  kubectl run ngnix --image=ngnix --dry-run=client -o yaml > pod.yml
   65  ls
   66  cat pod.yml
   67  kubectl run ngnix --image=ngnix --dry-run=client -o json > pod.json
   68  ls
   69  cat . pod.json
   70  kubectl describe pod ngnix-po
   71  kubectl describe pod ngnix-po -o yaml >img.yml
   72  kubectl get pods ngnix-po --show-labels
   73  kubectl get pods -o wide
   74  kubectl delete pod ngnix-pod
   75  kubectl get pods
   76  history > day07

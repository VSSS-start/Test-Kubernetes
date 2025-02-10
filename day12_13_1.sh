1  curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.18.0/kind-linux-amd64
    2  chmod +x ./kind
    3  sudo mv ./kind /usr/local/bin/kind
    4  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    5  chmod +x ./kubectl
    6  sudo mv ./kubectl /usr/local/bin/kubectl
    7  echo 'export PATH=$PATH:/usr/local/bin' >> ~/.bashrc
    8  source ~/.bashrc
    9  cat > config.yml    # specific to kind only
   10  kind create cluster --image=kindest/node:v1.30.8@sha256:17cd608b3971338d9180b00776cb766c50d0a0b6b904ab4ff52fd3fc5c6369bf --name cka-cluster1 --config config.yml
   11  kubectl get po
   12  kubectl create -f DaemonSet.yaml 
   13  cat > DaemonSet.yaml 
   14  kubectl create -f DaemonSet.yaml 
   15  cat > DaemonSet.yaml 
   16  kubectl create -f DaemonSet.yaml 
   17  cat > DaemonSet.yaml 
   18  kubectl create -f DaemonSet.yaml 
   19  kubectl get po
   20  kubectl delete po nginx-ds-fts7q
   21  kubectl get po
   22  kubectl get ds
   23  kubectl get ds -n 
   24  kubectl get ds -n kube-system
   25  kubectl get ds -n all
   26  kubectl get ds -n *
   27  kubectl get ds -n .
   28  kind get clusters
   29  kubectl get config conetxa
   30  kubectl get config contexts
   31  kubectl get pod -A
   32  kubectl get ds -n -A
   33  kubectl get po
   34  kubectl describe po nginx-ds-fts7q
   35  nginx-ds-dg584
   36  kubectl describe po nginx-ds-dg584
   37  kubectl delete ds
   38  kubectl delete ds nginx-ds
   39  kubectl get po -A | grep scheduler
   40  kubectl get po-n kind-systemA | grep scheduler
   41  kubectl get po-n kube-system | grep scheduler
   42  kubectl get po -n kube-system | grep scheduler
   43  kubectl get po -n kube-system -o wide | grep scheduler
   44  docker exec -it cka-cluster1-control-plane bash
   45  history > day12&13_1.sh
   46  history > day12_13_1.sh

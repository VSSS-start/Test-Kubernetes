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
   12  kubectl get no
   13  kubectl taint node cka-cluster1-worker gpu=true:NoSchedule
   14  kubectl taint node cka-cluster1-worker2 gpu=true:NoSchedule
   15  kubectl describe node cka-cluster1-worker2 | grep -i taint
   16  kubectl run nginx --image=nginx 
   17  kubectl get po
   18  kubectl describe po nginx
   19  kubectl run redis --image=redis --dry-run=client -o yaml > RedisPod.yaml
   20  cat RedisPod.yaml 
   21  cat > TolerationRedisPod.yaml
   22  kubectl create -f TolerationRedisPod.yaml 
   23  cat > TolerationRedisPod.yaml
   24  kubectl create -f TolerationRedisPod.yaml 
   25  kubectl get po
   26  kubectl get po -o wide
   27  kubectl taint node cka-cluster1-worker2 gpu=true:NoSchedule-
   28  kubectl get po -o wide
   29  kubectl run ngni-newx --imagenginxs --dry-run=client -o yaml >NodeSelectorPod.yaml
   30  kubectl run nginx-new --image=nginx --dry-run=client -o yaml >NodeSelectorPod.yaml
   31  cat NodeSelectorPod.yaml 
   32  cat > NodeSelectorPod.yaml 
   33  kubectl create -f NodeSelectorPod.yaml 
   34  kubectl get po -o wide
   35  kubectl describe po nginx-new
   36  kubectl get no -o wide
   37  kubectl label no cka-cluster1-worker2 gpu=false
   38  kubectl get po -o wide
   39  kubectl get no --show-label
   40  kubectl get no --show-labels
   41  cat > AffinityPod.yaml
   42  kubectl create -f AffinityPod.yaml 
   43  kubectl get po
   44  kubectl delete nginx-new
   45  kubectl delete no  nginx-new
   46  kubectl delete po  nginx-new
   47  cat > AffinityPod.yaml
   48  kubectl create -f AffinityPod.yaml 
   49  cat > AffinityPod.yaml
   50  kubectl create -f AffinityPod.yaml 
   51  cat > AffinityPod.yaml
   52  kubectl create -f AffinityPod.yaml 
   53  kubectl get po - o wide
   54  kubectl get po -o wide
   55  kubectl get no --show-label
   56  kubectl get no --show-label 
   57  kubectl label no cka-cluster1-worker disk=ssd
   58  kubectl get po -o wide
   59  kubectl label no cka-cluster1-worker2 disk=ssd
   60  kubectl get po -o wide
   61  kubectl get no --show-labels 
   62  kubectl label no cka-cluster1-worker2 gpu=false-
   63  cat > AffinityPrefPod.yaml
   64  kubectl label no --help
   65  kubectl label no cka-cluster1-worker2 foo gpu=false-
   66  kubectl label no cka-cluster1-worker2 foo gpu=false -
   67  kubectl delete po nginx-new
   68  kubectl create -f AffinityPrefPodV1.yaml 
   69  kubectl get po -o wide
   70  kubectl get no --show-labels 
   71  kubectl label no cka-cluster1-worker2  gpu-
   72  kubectl get no --show-labels 
   73  kubectl get po -o wide
   74  kubectl delete po nginx-new
   75  cat > AffinityPrefPodV1.yaml
   76  cat > AffinityReqPodV1.yaml
   77  kubectl label no cka-cluster1-worker2  disk=
   78  kubectl label no cka-cluster1-worker  disk=
   79  kubectl label --overwrite  no cka-cluster1-worker  disk= 
   80  kubectl create -f AffinityReqPodV1.yaml 
   81  kubectl get po -o wide
   82  history > day14_15.sh

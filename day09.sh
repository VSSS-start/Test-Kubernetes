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
   11  vi config.yaml
   12  kind create cluster --image=kindest/node:v1.30.8@sha256:17cd608b3971338d9180b00776cb766c50d0a0b6b904ab4ff52fd3fc5c6369bf --name cka-cluster1 --config config.yml
   13  kind create cluster --image=kindest/node:v1.30.8@sha256:17cd608b3971338d9180b00776cb766c50d0a0b6b904ab4ff52fd3fc5c6369bf --name cka-cluster1 --config config.yaml
   14  kubectl get svc
   15  vi deployment.yaml
   16  kubectl apply -f deployment.yaml 
   17  vi NodePort.yaml
   18  kubectl apply -f NodePort.yaml 
   19  kubectl get svc
   20  kubectl get po -o wide
   21  curl 10.244.2.2:30001
   22  kubectl describe pod | grep IP
   23  kubectl describe pod 
   24  kubectl describe pod | grep Node
   25  curl 172.18.0.3:30001
   26  kubectl describe svc nodeport-svc
   27  localhost:30001
   28  kubectl describe pod | grep Name
   29  kubectl delete pod nginx-deploy-89456454f-qvgj9
   30  kubectl describe pod | grep Node
   31  kubectl describe pod | grep IP
   32  vi ClusterIp.yaml
   33  kubectl describe svc
   34  kubectl get svc
   35  kubectl create -f ClusterIp.yaml 
   36  cat > ClusterIp.yaml 
   37  kubectl create -f ClusterIp.yaml 
   38  kubectl get svc
   39  kubectl describe svc nodeport-svc
   40  kubectl describe svc clusterip-svc
   41  kubectl describe svc/clusterip-svc
   42  kubectl describe svc clusterip-svc | grep Name Endpoints
   43  kubectl describe svc clusterip-svc | grep Name 
   44  vi LoadBalancer.yaml
   45  kubectl create -f LoadBalancer.yaml 
   46  cat > LoadBalancer.yaml 
   47  kubectl create -f LoadBalancer.yaml 
   48  kubectl get svc
   49  kubectl get svc | get NAME
   50  kubectl get svc | grep NAME
   51  history > day09.sh

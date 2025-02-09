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
   11  cat > config.yml
   12  three node (two workers) cluster config
   13  kind: Cluster apiVersion: kind.x-k8s.io/v1alpha4 nodes:
   14  role: control-plane
   15  role: worker
   16  cat config.yml
   17  cat > config.yml 
   18  cat > config.yml
   19  # three node (two workers) cluster config
   20  kind: Cluster
   21  apiVersion: kind.x-k8s.io/v1alpha4
   22  nodes:
   23  - role: control-plane
   24  - role: worker
   25  cat config.ymal
   26  cat config.yml
   27  vi config.yml
   28  kind create cluster --image=kindest/node:v1.30.8@sha256:17cd608b3971338d9180b00776cb766c50d0a0b6b904ab4ff52fd3fc5c6369bf --name cka-cluster1 --config config.yml
   29  kubectl cluster-info --context kind-cka-cluster1
   30  kubectl get nodes
   31  ls
   32  mkdir day08 ; cd day08
   33  vi ReplicationController.yaml
   34  kubectl apply -f ReplicationController.yaml 
   35  kubectl get pods
   36  kubectl get po
   37  kubectl describe po
   38  kubectl explain rc
   39  kubectl explain rs
   40  vi ReplicaSets.yaml
   41  kubectl apply -f ReplicaSets.yaml 
   42  cat > ReplicaSets.yaml 
   43  kubectl apply -f ReplicaSets.yaml 
   44  kubectl get po
   45  kubectl delete rc/ngnix-rc
   46  kubectl edit rs/ngnix-rs
   47  kubectl get po
   48  kubectl scale --replicas=10 rs/ngnix-rs
   49  kubectl get po
   50  kubectl scale --help
   51  kubectl delete rs/ngnix-rs
   52  cat > Deployment.yaml
   53  kubectl apply -f Deployment.yaml 
   54  cat > Deployment.yaml
   55  kubectl apply -f Deployment.yaml 
   56  kubectl get po
   57  kubectl get deploy
   58  kubectl getall
   59  kubectl get all
   60  kubectl describe deploy
   61  kubectl set image deploy/ngnix-deploy ngnix=ngnix:1.9.1
   62  kubectl get all
   63  kubectl set image deploy/deployment.apps/nginx-deploy ngnix=ngnix:1.9.1
   64  kubectl set image deploy/nginx-deploy ngnix=ngnix:1.9.1
   65  kubectl set image deploy/ngnix-deploy ngnix=ngnix:1.9.1
   66  kubectl set image deploy/nginx-deploy nginx=nginx:1.9.1
   67  kubectl describe deploy/nginx-deploy 
   68  kubectl get all
   69  kubectl rollback history deploy/ngnix-deploy
   70  kubectl rollout history deploy/ngnix-deploy
   71  kubectl rollout history deploy/nginx-deploy
   72  kubectl rollout undo deploy/nginx-deploy
   73  kubectl rollout history deploy/nginx-deploy
   74  kubectl describe deploy/nginx-deploy 
   75  kubectl create deploy/nginx-new-deploy --image= nginx --dry-run=client
   76  kubectl create deploy/nginx-new-deploy --image=nginx --dry-run=client
   77  kubectl create deploy/nginx-new --image=nginx --dry-run=client
   78  kubectl create --help
   79  kubectl create deploy/nginx-new ment--image=nginx --dry-run=client
   80  kubectl create deployment/nginx-new --image=nginx --dry-run=client
   81  kubectl create deployment --help
   82  kubectl create deploy nginx-new --image=nginx --dry-run=client
   83  kubectl create deploy  deploy/nginx-new ment--image=nginx --dry-run=client -o yml >deploy.yml
   84  kubectl create deploy  deploy/nginx-new --image=nginx --dry-run=client -o yml >deploy.yml
   85  kubectl create deploy  deploy/nginx-new --image=nginx --dry-run=client -o yaml >deploy.yaml
   86  cat deploy.yaml 
   87  history > day08.sh

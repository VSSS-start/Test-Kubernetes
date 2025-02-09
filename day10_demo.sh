  1  curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.18.0/kind-linux-amd64
    2* 
    3  sudo mv ./kind /usr/local/bin/kind
    4  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    5  chmod +x ./kubectl
    6  sudo mv ./kubectl /usr/local/bin/kubectl
    7  echo 'export PATH=$PATH:/usr/local/bin' >> ~/.bashrc
    8  source ~/.bashrc
    9  kind --version
   10  kubectl version --client
   11  clear
   12  mkdir demo;cd demo
   13  kubectl version --client
   14  cat > config.yml    # specific to kind only
   15  kind create cluster --image=kindest/node:v1.30.8@sha256:17cd608b3971338d9180b00776cb766c50d0a0b6b904ab4ff52fd3fc5c6369bf --name cka-cluster2 --config config.yml
   16  cat > config.yml    # specific to kind only
   17  kind create cluster --image=kindest/node:v1.30.8@sha256:17cd608b3971338d9180b00776cb766c50d0a0b6b904ab4ff52fd3fc5c6369bf --name cka-cluster2 --config config.yml
   18  cat > config.yml    # specific to kind only
   19  kind create cluster --image=kindest/node:v1.30.8@sha256:17cd608b3971338d9180b00776cb766c50d0a0b6b904ab4ff52fd3fc5c6369bf --name cka-cluster2 --config config.yml
   20  kubectl config get-contexts                          # display list of contexts
   21  cat> Namespace.yaml
   22  kubectl getns
   23  kubectl get ns
   24  cat Namespace.yaml 
   25  kubectl create -f Namespace.yaml 
   26  kubectl get ns
   27  kubectl delete ns demo
   28  clear
   29  kubectl create ns demo
   30  kubectl deploy nginx-demo --image=nginx -n demo
   31  kubectl create deploy nginx-demo --image=nginx -n demo
   32  kubectl get deploy
   33  kubectl get deploy -n demo
   34  kubectl get pods -n demo
   35  kubectl exec -it nginx-demo-745b695d7d-4gkvt -- sh
   36  kubectl exec -it nginx-demo-745b695d7d-4gkvt --sh
   37  kubectl exec -it nginx-demo-745b695d7d-4gkvt -n demo  -- sh
   38  kubectl get pods -n demo -o wide
   39  kubectl exec -it nginx-demo-745b695d7d-4gkvt -n demo -- sh
   40  clear
   41  kubectl scale --replicas=3 deploy nginx-demo -n demo
   42  kubectl get pods -n demo
   43  kubectl expose deploy nginx-demo --name=svc-demo --port=80-n demo
   44  kubectl expose deploy nginx-demo --name=svc-demo --port=80-n=demo
   45  kubectl expose deploy/nginx-demo --name=svc-demo --port=80-n=demo
   46  kubectl expose deploy/nginx-demo --name=svc-demo --port=80-n demo
   47  kubectl expose deploy/nginx-demo --name=svc-demo --port=80 -n demo
   48  kubectl get svc -n demo
   49  kubectl get po -o wide
   50  kubectl exec -it nginx-def-6954cf7bb4-6wlg5 -n demo -- sh
   51  kubectl get po -n demo -o wide
   52  kubectl exec -it nginx-demo-745b695d7d-4gkvt  -n demo -- sh
   53  story > day10_demo.sh
   54  history > day10_demo.sh

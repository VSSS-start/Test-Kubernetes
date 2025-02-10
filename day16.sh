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
   11  cat > Metrics-Server.yam
   12  clear
   13  kubectl create -f Metrics-Server.yam
   14  kubectl get po -n kube-system 
   15  kubectl top
   16  kubectl top --help
   17  kubectl top no
   18  kubectl top po
   19  kubectl create ns mem-example
   20  cat > mem-demo.yaml
   21  mv mem-demo.yaml mem-request.yaml
   22  kubectl create -f mem-request.yaml -n  mem-example
   23  cat mem-request.yaml 
   24  cat >  mem-request.yaml 
   25  kubectl create -f mem-request.yaml -n  mem-example
   26  kubectl get po -n mem-example
   27  kubectl top po -n mem-example
   28  cat >  mem-request2.yaml 
   29  kubectl create -f mem-request2.yaml -n  mem-example
   30  kubectl top po -n mem-example
   31  kubectl get po -n mem-example
   32  kubectl describe po memory-demo-2 -n mem-example
   33  cat >  mem-request3.yaml 
   34  kubectl create -f mem-request3.yaml -n  mem-example
   35  cat >  mem-request3.yaml 
   36  kubectl create -f mem-request3.yaml -n  mem-example
   37  kubectl describe po memory-demo-3  -n mem-example
   38  kubectl get po -n mem-example
   39  kubectl describe po memory-demo-3  -n mem-example
   40  history > day16.sh

1  curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.18.0/kind-linux-amd64
    2  chmod +x ./kind
    3  sudo mv ./kind /usr/local/bin/kind
    4  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    5  chmod +x ./kubectl
    6  sudo mv ./kubectl /usr/local/bin/kubectl
    7  echo 'export PATH=$PATH:/usr/local/bin' >> ~/.bashrc
    8  source ~/.bashrc && cat > config.yml    # specific to kind only
    9  kind create cluster --image=kindest/node:v1.30.8@sha256:17cd608b3971338d9180b00776cb766c50d0a0b6b904ab4ff52fd3fc5c6369bf --name cka-cluster1 --config config.yml
   10  kubectl create -f pod_init.yaml 
   11  cat > pod_init.yaml 
   12  kubectl create -f pod_init.yaml 
   13  cat > pod_init.yaml 
   14  kubectl create -f pod_init.yaml 
   15  kubectl explain pod
   16  cat > pod_init.yaml 
   17  kubectl create -f pod_init.yaml 
   18  kubectl get po
   19  clear
   20  kubectl get po
   21  kubectl describe po myapp
   22  kubectl logs myapp
   23  kubectl logs pod myapp initContainer init-myservice
   24  kubectl logs pod myapp initContainer init-myservice -c
   25  kubectl logs pod myapp -c initContainer init-myservice 
   26  kubectl logs pod myapp -c init-myservice 
   27  kubectl logs pod myapp -c init-myservice
   28  kubectl logs po myapp -c init-myservice
   29  kubectl logs pods myapp -c init-myservice
   30  kubectl logs pod/myapp -c init-myservice
   31  kubectl logs pod/MyApp -c init-myservice
   32  kubectl logs pod/myapp-pod -c init-myservice
   33  kubetl create deploy ngnix-deploy -image=ngnix --port 80
   34  kubectl create deploy ngnix-deploy -image=ngnix --port 80
   35  kubectl create deploy ngnix-deploy --image=ngnix --port 80
   36  kubectl expose deploy ngninx-deploy --name myservice --port 80
   37  kubectl expose deploy nginx-deploy --name myservice --port 80
   38  kubectl expose deploy ngnix-deploy --name myservice --port 80
   39  kubectl logs pod/myapp-pod -c init-myservice
   40  kubectl get po
   41  kubectl logs pod/myapp-pod -c init-myservice
   42  kubectl get po
   43  kubectl logs pod/myapp-pod -c init-myservice
   44  kubectl get po
   45  kubectl create deploy ngnix-deploy --image=nginx --port 80
   46  kubectl get po
   47  kubectl edit ngnix-deploy-58b5667665-gpnlm
   48  kubectl edit --help
   49  kubectl edit ngnix-deploy/ngnix-deploy-58b5667665-gpnlm
   50  kubectl edit deploy ngnix-deploy
   51  kubectl get po
   52  ls
   53  cat pod_init.yaml
   54  kubectl expose deploy ngnix-deploy --name mydb --port 80
   55  kubectl get po
   56  kubectl exec -it myapp-pod
   57  kubectl exec -it myapp-pod -- sh
   58  kubectl exec -it myapp-pod -- printenv
   59  history > day11.

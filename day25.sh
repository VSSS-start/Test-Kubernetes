46  kubectl get sa
   47  kubectl get sa -A
   48  kubectl get sa -A| grep default 
   49  kubectl describe sa default
   50  kubectl get sa default -o yaml
   51  kubectl create sa build-sa
   52  kubectl describe sa buil-sa
   53  kubectl describe sa build-sa
   54  cat> sasecret.yaml
   55  kubectl apply -f sasecret.yaml 
   56  kubectl describe sa build-sa
   57  kubectl describe secret build-sa
   58  kubectl describe secrets build-sa
   59  kubectl describe secrets build-robot-secret
   60  kubectl get secrets 
   61  kubectl describe secret build-robot-secret
   62  kubectl get secret
   63  kubectl describe secrets build-sa
   64  kubectl apply -f sasecret.yaml 
   65  kubectl get secret
   66  kubectl config get-contexts
   67  kubectl get secret -n deafult
   68* 
   69  kubectl get secret 
   70  kubectl apply -f sasecret.yaml 
   71  cat sasecret.yaml 
   72  kubectl describe secret build-robot-secret 
   73  cat> sasecret.yaml
   74  kubectl apply -f sasecret.yaml 
   75  kubectl describe secret build-robot-secret 
   76  kubectl get secret 
   77  kubectl describe secrets build-sa
   78  kubectl describe sa build-sa
   79  kind: Cluster
   80  kubectl get nodes --as build-sa
   81  kubectl auth can-i get pods --as build-sa
   82  kubectl create clusterrole --help
   83  kubectl get clusterrole 
   84  kubectl describe clusterrole clusteradmin
   85  kubectl get clusterrolebinding 
   86  kubectl describe clusterrolebinding cr-reader-binding
   87  kubectl create clusterrolebinding cr-reader-binding --user=build-sa
   88  kubectl create clusterrolebinding --h
   89* kubectl create clusterrolebinding sa-node-reader
   90* 
   91  kubectl create clusterrole --verb=get,watch,list resource=nodes
   92  kubectl create clusterrole cr-reader-binding --verb=get,watch,list resource=nodes
   93  kubectl auth can-i get pods --as build-sa
   94  kubectl create clusterrole
   95  kubectl create clusterrole -h
   96  kubectl create clusterrolebinding -h
   97  kubectl create clusterrolebinding sa-bindings --clusterrole=sa-node-reader --serviceaccount=default:build-sa
   98  kubectl auth can-i get pods --as build-sa
   99  kubectl describe secrets build-sa
  100  kubectl create clusterrole cr-reader-binding --verb=get,watch,list resource=nodes
  101  kubectl create clusterrole "cr-reader-binding" --verb=get,watch,list resource=nodes
  102  kubectl create clusterrole cr --verb=get,watch,list resource=nodes
  103  kubectl create clusterrolebinding a-bindings --clusterrole=node-reader --user=build-sa
  104  kubectl auth can-i get nodes --as build-sa
  105  kubectl delete clusterrolebindings a-bindings
  106  kubectl auth can-i get nodes --as build-sa
  107  history > day25

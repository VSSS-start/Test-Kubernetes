 19  kubectl api-resources --namespaced=true
   20  kubectl api-resources --namespaced=false
   21  kubectl create clusterrole --help
   22  kubectl create clusterrole NAME --verb=get,list,watch --resource=nodes
   23  kubectl delete clusterrole NAME --verb=get,list,watch --resource=nodes
   24  kubectl delete clusterrole NAME 
   25  kubectl delete clusterrole clusteradmin --verb=get,list,watch --resource=nodes
   26  kubectl create clusterrole clusteradmin --verb=get,list,watch --resource=nodes
   27  kubectl create clusterrolebinding --help
   28  kubectl create clusterrolebinding NAME --clusterrole=clusteradmin --user=john
   29  kubectl delete clusterrolebinding NAME --clusterrole=clusteradmin 
   30  kubectl delete clusterrolebinding NAME 
   31  kubectl create clusterrolebinding crbinding --clusterrole=clusteradmin --user=john
   32  kubectl create clusterrole node-reader --verb=get,list,watch --resource=nodes
   33  kubectl create clusterrolebinding crbinding --clusterrole=node-reader --user=john
   34  kubectl delete clusterrolebinding crbinding
   35  kubectl get node| grep node-reader
   36  kubectl get clusterrole| grep node-reader
   37  kubectl describe clusterrole node-reader
   38  kubectl create clusterrolebinding cr-reader-binding --clusterrole=node-reader --user=john
   39  kubectl get clusterrolebinding | grep cr
   40  kubectl describe clusterrolebinding cr-reader-binding
   41  kubectl auth can-i get nodes --as john
   42  kubectl config get-contexts
   43  kubectl config set-context --user=john
   44  history > day24

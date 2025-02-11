 1  cd day21
    2  ls
    3  kubectl get csr -o yaml > newadmin.crt
    4  cat newadmin.crt
    5  cat newadmin.csr
    6  echo"MIICWDCCAUACAQAwEzERMA8GA1UEAwwIbmV3YWRtaW4wggEiMA0GCSqGSIb3DQEB
AQUAA4IBDwAwggEKAoIBAQCo8ivy/KZSwIRFS4gow+83A5sqs5TvCx0n+OOoQZ+j
+Qaf6F68SV6efhfzSQ3BiIMJG4rfiW3rkE//Otr7STMhDELCDu6W9HBDoEiGri85
xb/OBMOcWRzC+AdwcgTY0jdpV8V2GXi1HZ6qdocBhfjI66VTTVnpJTVJJDUiXQc8
3ZUV87QL5tdfqU4vSo5PEDccvKC+Z0mJyuGDYR4IzJi5/EzR4TBtT7VQa4+13A53
G5ay0+VkFNYZis7PfvqiGZcidaJ2AsoCr+dG8rT3rhpH8JU56rcTxNziKv4d5VOa
pJd6lWZIDjp0YdLYuhdR1wapghl7NoWZYpLmWofNU0mjAgMBAAGgADANBgkqhkiG
9w0BAQsFAAOCAQEAhoK/6KXpZ5KtoDOobBqZEXbEP1bD9R5NlrYstYkPU/mcxrUX
eY2Fins8Fg4ty7qoSFencPDF3yemQE1v4Y/W0rrdGTAPKqnlNQxBxagh+Fe35y11
gIT7SmpsAsQpPgCeuJXr92I7kP+bHGmAB1phW6g0RdzVhMYl/qRlsH/eQwWaVeBi
Q3ScbGi516C3OMGwtrHIbl80VCdgeoPTINf3y9O8rgTeJrVKqrs7OBHWravbJyGY
Nv5quvh7QOTmDJPCZnmoGPxR7sXIzcGwgZvUASo3ul1pYQzjl+wpoxIZF/CtFRzW
PnZ2KAUBM7olAjzVx4BvfqyM9FjMqET7tn4zcg=="| base64 -d | tr -d "/n"
    7  cat > newadmin.crt
    8  kubectl config set-credentials newadmin --client-key=admin.key \
    9  kubectl config set-credentials newadmin --client-key=newadmin.key --client-certificate=newadmin.crt --embed-certs=true
   10  kubectl config get-contexts
   11  kubectl use context newadmin
   12  kubectl set use-context newadmin
   13  kubectl set use-contexts newadmin
   14  kubectl config use-contexts newadmin
   15  kubectl config use-context newadmin
   16  kubectl get roles pod-reader
   17  kubectl get rolebinding 
   18  kubectl config set-context newadmin 
   19  kubectl config get-contexts
   20  kubectl config set-context newadmin 
   21  kubectl config use-context newadmin
   22  kubectl auth whoami
   23  kubectl auth can-i get po
   24  kubectl get po 
   25  kubectl config use-context kind-cka-cluster1
   26  kubectl create run ngnix --image=nginx 
   27  kubectl  run ngnix --image=nginx 
   28  kubectl config use-context newadmin
   29  kubectl get po
   30  kubectl config use-context kind-cka-cluster1
   31  kubectl get po 
   32  kubectl config use-context newadmin
   33  kubectl get po 
   34  kubectl auth can-i get pods
   35  kubectl auth can-i get po
   36  kubectl get roles pod-reader
   37  cd ../day23
   38  cd ..
   39  ls
   40  cd day24
   41  ls
   42  kubectl config use-context kind-cka-cluster1
   43  kubectl apply -f role.yaml 
   44  kubectl apply -f rolebinding.yaml
   45  kubectl config use-context newadmin
   46  kubectl auth can-i get po
   47  history > day23
    1  kubectl config get-context
    2  kubectl config get-contexts
    3  kubectl config set-contexts newadmin
    4  kubectl config set-context newadmin
    5  kubectl config get-contexts
    6  kubectl get pods
    7  kubectl whoami
    8  kubectl auth  whoami
    9  kubectl config get-contexts
   10* 
   11  kubectl auth  whoami
   12  kubectl auth whoami
   13  kubectl get po
   14  kubectl create run nginx --image=nginx
   15  kubectl run nginx --image=nginx
   16  kubectl create  run nginx --image=nginx
   17  kubectl create --help
   18  kubectl create po nginx --image=nginx
   19  kubectl run nginx --image=nginx
   20  kubectl auth whoami
   21  kubectl config view
   22  cd day24
   23  cat day24
   24  ls
   25  cat day23
   26  history>> day23

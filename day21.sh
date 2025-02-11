1  mkdir day21;cd day21
    2  curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.18.0/kind-linux-amd64
    3  chmod +x ./kind
    4  sudo mv ./kind /usr/local/bin/kind
    5  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    6  chmod +x ./kubectl
    7  sudo mv ./kubectl /usr/local/bin/kubectl
    8  echo 'export PATH=$PATH:/usr/local/bin' >> ~/.bashrc
    9  source ~/.bashrc
   10  cat > config.yml    # specific to kind only
   11  kind create cluster --image=kindest/node:v1.30.8@sha256:17cd608b3971338d9180b00776cb766c50d0a0b6b904ab4ff52fd3fc5c6369bf --name cka-cluster1 --config config.yml
   12  openssl genrsa -out adam.key 2048
   13  openssl genrsa -out newadmin.key 2048
   14  rm adam.key
   15  ls
   16  openssl req -new -key newadmin.key -out newadmin.csr -subj "/CN=newadmin"
   17  ls
   18  cat > CertificateSigningRequest.yaml
   19  kubectl create -f CertificateSigningRequest.yaml 
   20  $(cat newadmin.csr | base64 | tr -d '\n')
   21  kubectl create -f CertificateSigningRequest.yaml 
   22  cat > CertificateSigningRequest.yaml
   23  kubectl create -f CertificateSigningRequest.yaml 
   24  kubectl get csr
   25  kubectl describe csr newadmin
   26  kubectl certificate approve newadmin
   27  kubectl get csr
   28  kubectl get csr newadmin -o yaml > issuecert.yaml
   29  cat issuecert.yaml 
   30  echo"LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMrRENDQWVDZ0F3SUJBZ0lRUmtXZmZMY0JwVGRBVTdWSnBpSnhsekFOQmdrcWhraUc5dzBCQVFzRkFEQVYKTVJNd0VRWURWUVFERXdwcmRXSmxjbTVsZEdWek1CNFhEVEkxTURJeE1UQTVNak16TWxvWERUSTFNREl5TVRBNQpNak16TWxvd0V6RVJNQThHQTFVRUF4TUlibVYzWVdSdGFXNHdnZ0VpTUEwR0NTcUdTSWIzRFFFQkFRVUFBNElCCkR3QXdnZ0VLQW9JQkFRQ284aXZ5L0taU3dJUkZTNGdvdys4M0E1c3FzNVR2Q3gwbitPT29RWitqK1FhZjZGNjgKU1Y2ZWZoZnpTUTNCaUlNSkc0cmZpVzNya0UvL090cjdTVE1oREVMQ0R1Nlc5SEJEb0VpR3JpODV4Yi9PQk1PYwpXUnpDK0Fkd2NnVFkwamRwVjhWMkdYaTFIWjZxZG9jQmhmakk2NlZUVFZucEpUVkpKRFVpWFFjODNaVVY4N1FMCjV0ZGZxVTR2U281UEVEY2N2S0MrWjBtSnl1R0RZUjRJekppNS9FelI0VEJ0VDdWUWE0KzEzQTUzRzVheTArVmsKRk5ZWmlzN1BmdnFpR1pjaWRhSjJBc29DcitkRzhyVDNyaHBIOEpVNTZyY1R4TnppS3Y0ZDVWT2FwSmQ2bFdaSQpEanAwWWRMWXVoZFIxd2FwZ2hsN05vV1pZcExtV29mTlUwbWpBZ01CQUFHalJqQkVNQk1HQTFVZEpRUU1NQW9HCkNDc0dBUVVGQndNQ01Bd0dBMVVkRXdFQi93UUNNQUF3SHdZRFZSMGpCQmd3Rm9BVXBNTVpYczR1eUM0OVo5K0wKSC93SFdwYXNJNGN3RFFZSktvWklodmNOQVFFTEJRQURnZ0VCQUdCc0l5ZzFkaUZPYkFCUzhFZHlib2c4NlhIQgpEQzhOWWd2UmFOOXVwR2t0U3BuNXlMNUllclZPekNEUndvREVpQUlhcnNSNkl6bmFkY1pQNWUxWW5ZdlQ3Ym9OClFONzRzL1RHVG9DQ0dwN3RkdTdJTEJFc2d3RDBRbEx3eDE3MzdEbmNIbnNMMGdkRWIxWFdVdnB6ck5WbFVGeWQKNVZEWUF2Tmtabnkya1c1SUFaQ0dkK3JPMXFRekZVYWIrbS9Xa3l2cHFoejU4T1hhWllDSHNMbW01dTZPeTk1SQpjeUZMb1hXeWZqeStxWVlJYUZiUnE5eWlrU21QcS9CTDRBNWNJZ1llZ1B1aWxrcUdseVNpVkd1a1BMSnpCcWl6ClFWcWY4eVVjUy9EOEsvVlEyM1JaMUN6SVZnRXlPYmtzbkl0eXc2YTA1Q241aGJKWVF3ZnBySVhUdlI4PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==" | base64 -d
   31  history > day21.sh

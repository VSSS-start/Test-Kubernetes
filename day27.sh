mkdir day27 ;cd day27
   35  git clone https://github.com/docker/getting-started-app.git
   36  ls
   37  cd getting-started-app/
   38  ls
   39  cat > Dockerfile
   40  docker build -t Dockerfile 
   41  docker build -t day02-todo .
   42  docker images
   43  docker ps
   44  docker run -itdp 3000:3000 --name=todo day02-todo
   45  docker ps 
   46  docker exec -it 5882d34ad044
   47  docker exec -it 5882d34ad044 sh
   48  docker exrm -f 882d34ad044 s
   49  docker rm 5882d34ad044 -f
   50  docker ps -a
   51  docker volume create data_vol
   52  cd /var/lib/docker/
   53  cd /var/lib/docker
   54  sudo cd /var/lib/docker
   55  sudo cd /var/lib/docker -s
   56  sudo cd /var/lib/docker -sD
   57  cd voulmes/
   58  cd volumes/
   59  cd /volumes/
   60  $HOME
   61  echo $HOME
   62  cd /home
   63  ls
   64  cd vscode
   65  ls
   66  cd workspaces/Test-Kubernetes/day27/getting-started-app
   67  cd /workspaces/Test-Kubernetes/day27/getting-started-app
   68  docker run -v data_vol:/app -dp 3000:3000 --name=todo today02-todo 
   69  docker run -v data_vol:/app -dp 3000:3000 --name=todo today02-todo .
   70  docker run -v data_vol:/app -dp 3000:3000 --name=todo c43c0dc81b31
   71  docker ps
   72  docker exec -it fcc2ab3fef0b sh
   73  docker rm fcc2ab3fef0b -f
   74  docker ps -a
   75  docker run -v data_vol:/app -dp 3000:3000 --name=todo c43c0dc81b31
   76  docker ps
   77  docker exec -it 3b79981f89f6 sh
   78  history

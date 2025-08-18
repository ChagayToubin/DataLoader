*/level 1
oc delet all --all

*/level 2
oc create -f deployment.yaml

oc create -f mysql-pvc.yaml

oc creat -f mysql-pvc
.....

oc expose service/mysql

co get pods

uvicorn services.dataLoader.fastApi:app --reload

mysql -u chagaytoubin -h  -P 3036 -dbfg


oc get svc

oc apply -f infrastructure/k8s/mysql-secret.yaml -n chagaytoubin-dev
oc apply -f infrastructure/k8s/mysql-pvc.yaml -n chagaytoubin-dev
oc apply -f infrastructure/k8s/mysql-deployment.yaml -n chagaytoubin-dev
oc apply -f infrastructure/k8s/mysql-service.yaml -n chagaytoubin-dev


oc cp . mysql-1-z9xv7:/tmp


oc exec -it svc/mysql -- bash


mysql -u"chagay" -p"1234" < create_table.sql
mysql -u"chagay" -p"1234" < insert_data.sql


oc port-forward svc/mysql 33006:3306 -n chagaytoubin-dev

docker build -t dataloader .

docker run -d -p 8000:8000 --name data-loader-container dataloader:latest

docker tag dataloader chagay2025/dataloader:latest
docker push chagay2025/dataloader:latest


oc new-app chagay2025/dataloader


oc expose svc/dataloader

oc get route

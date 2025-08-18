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

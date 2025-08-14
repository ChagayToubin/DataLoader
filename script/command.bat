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
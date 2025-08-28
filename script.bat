docker build -t marcondesborba/dio-projeto-beckend:1.0 backend/.
docker build -t marcondesborba/dio-projeto-database:1.0 database/.

docker push marcondesborba/dio-projeto-backend:1.0
docker push marcondesborba/dio-projeto-database:1.0

kubectl apply -f ./services.yml

kubectl apply -f ./deployment.yml
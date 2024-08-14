echo "production environment"
pod=$(kubectl get pods -n main | grep Running | grep 'onelink' | awk '{print $1}')

echo "Update standard theme library"
kubectl cp themes $pod:/htdocs/ -c onelink -n main

echo "Done"

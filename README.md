# Image classifer microservice to predict the image label 
Image classifier Microservice using Flask framework

To run this project after installing dependendies from `requirements.txt`
```python
python ./app.py

curl -X POST -H "Content-Type: multipart/form-data" http://localhost:30000/predict-image-label -F "file=@flamingo-standing.ngsversion.1396530994611.adapt.1900.1.jpg"
```

or pull the docker image I have already build 
```docker
docker pull shivaniarbat/image-classifier
```

or deploy on kubernetes using below .yaml file 
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  namespace: testing
  labels:
    app: image-classifier
  name: image-classifier
spec:
  replicas: 1
  selector:
    matchLabels:
      app: image-classifier
  template:
    metadata:
      labels:
        app: image-classifier
    spec: 
      containers:
      - image: shivaniarbat/image-classifier:latest
        name: image-classifier
```

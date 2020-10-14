## [Filebench Ubuntu](https://hub.docker.com/r/viniciusbds/filebench-ubuntu)

This is a Docker image of latest version of Ubuntu with the following dependencies:


- filebench 


#### Build and push the image
    sudo docker build -t <your-user-name>/filebench-ubuntu:0.0.1 .
    sudo docker push <your-user-name>/filebench-ubuntu:0.0.1 



#### Pod example

    apiVersion: v1
    kind: Pod
    metadata:
        name: app-test
        labels:
            app: app-test-label1
    spec:
        containers:
        - name: filebench-ubuntu
          image: <your-user-name>/filebench-ubuntu:0.0.1

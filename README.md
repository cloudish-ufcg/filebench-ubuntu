## [Filebench Ubuntu](https://hub.docker.com/r/viniciusbds/filebench-ubuntu)

This is a Docker image of latest version of Ubuntu with the following dependencies:


- filebench 
- bison
- flex


#### Build and push the image

``` bash
sudo docker build -t <your-user-name>/filebench-ubuntu:0.0.1 .
sudo docker push <your-user-name>/filebench-ubuntu:0.0.1 
```


#### Running on a k8s pod

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

#### Running using Docker

``` bash
sudo docker run -it viniciusbds/filebench-ubuntu:0.0.1 /bin/bash
```
#### Warning

You may need to set the variable **randomize_va_space** to **0** if filebench hangs during test startup. (see more [here](https://github.com/filebench/filebench/issues/60))

``` bash
sudo su
echo 0 > /proc/sys/kernel/randomize_va_space
```

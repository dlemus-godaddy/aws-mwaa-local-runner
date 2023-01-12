# Set up your AirFlow local environment

## step 1: install docker in your machine

you may install docker following the instructions for your OS from the get-docker page 

https://docs.docker.com/get-docker/

Once is installed make sure your docker engine is running

## step 2: Download the aws-mwaa-local-runner repository

```
git clone --branch v2.2.2 https://github.com/aws/aws-mwaa-local-runner.git
cd aws-mwaa-local-runner
```

## step 3: build the docker images necessary for your local environment

````
./mwaa-local-env build-image
````

## step 4: start your local environment
````
./mwaa-local-env start
````

## step 5: review your local environment

Review your local environment by going to http://localhost:8080/ in your browser
credentials are:
user: admin
pass: test

## Notes: 

If your local machine OS is MacOS

make sure to comment the following lines in the file `docker/docker-compose-local.yml`

````
    local-runner:
        image: amazon/mwaa-local:2_2
        # platform: "linux/amd64/"
        restart: always
        depends_on:
            - postgres
        environment:
````



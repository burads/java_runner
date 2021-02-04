# java_runner
Simple java runner dockerfile that allows for jar files to be run adhoc in a docker container

Dockerfile creates a simple OpenJDK container that only adds a run shell script.
Dockerfile is writen to expose ports 8080 - 8083

Runner takes the following environment variables:
Environemnt Variable | Description
------------ | ------------
"JAVA_WORKDIR" | the working directory mounted in the container
"JAVA_FILE" | Defines the java jar file to run
"JAVA_ARGS" | (optional) adds additional arguments to the java jar command.

Example starts a Java Rest server returning the hostname of the server on 0.0.0.0:8080/host

example can be started using the command:
```
docker run -it --rm -p 8080:8080 -v $(pwd)/example:/example -e JAVA_WORKDIR=/example -e JAVA_FILE=HostName.jar simonstiil/java_runner:latest
```

example depends on the following jar files:
*org.json.jar
*org.restlet.ext.json.jar
*org.restlet.jar
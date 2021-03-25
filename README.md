# JPF-docker
This repository contains the dockerfile used to build an image of OpenJDK 8 with JPF binaries available.

# Start container
```
docker run \
-d \
--name <container-name> \
--mount type=bind,source="<source-dir>",target="/home/jpf/app" \
alexsperanza/jpf-docker
```

# Container console
```
docker exec -ti <container-name> /bin/bash
```

# Run JPF

## With convenience script
Inside the home directory there is a convenience script called `jpf.sh` which runs `jpf` with the provided arguments. Below is shown an example of the usage of the script:

```
/home/jpf/jpf.sh +classpath=/home/jpf/app/bin <package-chain>.<classname> <arg1> <arg2>
```

## With path to JPF
```
/home/jpf/JPF/bin/jpf +classpath=/home/jpf/app/bin <package-chain>.<classname> <arg1> <arg2>
```
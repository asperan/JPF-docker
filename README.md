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
```
/home/jpf/JPF/bin/jpf +classpath=/home/jpf/app/bin <package-chain>.<classname> <arg1> <arg2>
```
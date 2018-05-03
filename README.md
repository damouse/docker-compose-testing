# Docker Testing

Operate directly on the snowbot container (needs the volume flag):

```
docker build . -t pytest
docker run -it pytest
```

Operate on docker-compose:

```
docker-compose up
docker-compose up --build  # to rebuild the underlying container
docker-compose down
```

Source code changes are picked up in the container without requiring intervention. Changes to requirements.txt are not.

## Problems

What don't I like about this architecture?

- Have both Setup.py and requirements.txt
- Both direct file entry point and CLI entry point
- Probably doesn't handle vendored well, though we can add that as its own step of the build process
- docker-compose logging is ugly

What do I like about this architecture?

- Can easily map pure docker commands to monolith top-level utility commands 
- Going to production dockerfiles seems easy
- Much simpler env setup process
- Internalized VPN handling
- Likely easy config

What do I have to do next?

- Get the roc database dump in here
- Containerize the actual snowbot
- Figure out what top-level API looks like and wire it up (what commands do we have to use to run stuff? Who runs these commands?)

Problems
- What happens with native packages? Scipy, numpy, matplotlib?
    + https://gist.github.com/orenitamar/f29fb15db3b0d13178c1c4dd611adce2
    + https://medium.com/google-cloud/deploying-scipy-numpy-with-docker-205e9afac3b0

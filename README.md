# docker_tools_container
Docker tools container with perl, terraform, and packer. Use instead of trying to mess around with Cygwin.

Build with:
```
docker build -t tools .
```

Run with:
```
docker run --rm -it -v ${PWD}:/infrastructure-games -v ~/.aws:/root/.aws tools /bin/bash
```

>A Note for windows users:

You will not be able to use the docker run as mentioned above.  Replace the ${PWD} and ~/.aws with absolute paths such as C:\windows\users\me\my-repo.  Don’t worry about the C: and :/my-repo, two “:”.  Docker knows you are on a windows machine and figures it out.

The other thing for windows users with git repos.  You will need to set your line endings otherwise bash scripts shared from your repo into the container will not run properly.  In your .gitattributes you will need to set shell line endings.

```
# Force LF line endings for Bash scripts.   
# On Windows, source files will typically 
# have CR+LF endings (Git default on Windows), 
# but Bash scripts need to have LF endings 
*.sh text eol=lf
```

With the above, windows, mac, and linux users can share tools without having to jump through a bunch of hoops and hurdles. Not to mention it should make providing instructions to team members consistent.

# github_actions
testing github_actions


## Testing Locally:

Installation docs can be found here: https://nektosact.com/installation/, but here is A TLDR:

### Installation
- Install nektos/act with CLI:
    - MacOS: `brew install act`. 
    - Linux, you can use `make install` using the binaries found on github from the developer: https://github.com/nektos/act. I haven't tested this, but it seems that all you need to do is clone the repo and run `make install` while `cd`'d into the repo. Otherwise
    - Windows: probably should use `chocolatey`
- Install using executables found on the developer website: https://nektosact.com/installation/

### Running
1. Make sure docker is up and running
1. run this for silicon MacOS: `act <github_event_name> --container-architecture linux/amd64`
    - you may need a different command line argument depending on chip architecture being used locally, and the OS being used.
    - if on Mac you run into a permission denied error, use `sudo chmod 755 './.github/scripts/<file>'`
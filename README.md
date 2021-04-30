# Welcome!

This is a minimal python project starter repo with a makefile, and a Docker dev setup 


## Installation 

#### On Mac
``` shell
make mac-install
```

or if you're not a fan of Make
``` shell
# Create and activate a virtual env
python3 -m venv venv;
source venv/bin/activate

# Install deps
pip3 install -r requirements.txt;
```


#### Non-mac
Sorry, I haven't needed this on my linux machine. Eventually...


## Running
``` shell
make server
```

#### or via Docker

To run a development container:
``` shell
make docker-dev-server
```

This will mount your local dev copy into the container, and the server will restart when changes are detected

# MoveOffTrac

Some code and documentation to support the migration off Trac.

## Abstract

For a while, the Tahoe-LAFS project has been using a self-hosted Trac as an issue traker, a wiki and a landing page.
This repository is an attempt to consolidate the code, the documentation of the project and the tools supporting the migration of those features elsewhere.

The starting point of this repository was to use Docker containers to emulate local environments similar to the source and target, so we can test and improve the migration itself before the D-day (so we do NOT care about secrets, for instance in the `gitea/app.ini`).

In addition, the [documentation](./docs) folder should help the reader to understand scope and plan for the migration itself (aside from the tooling describes below).

## Requirements

Docker compose (tested with v1.29)
Docker (tested with 20.10)

## Basic usage

### Import the remote Trac

There is a shell script which might help doing that on the remote Trac instance:

`helper/trac_dump.sh <trac_dir> <dump_dir> <extra_dir_or_file1> ...` 

The content of the `dump_dir` should end up in the local `trac/project` directory.

### Configure the local Trac

Some part of the `trac/project/conf/trac.ini` will need attention.

In this specific case (Tahoe-LAFS), we have to care about the following:

* the `htdigest_file` may have to point to an other place.
* the `public_html` content may be mounted under `project/ht_docs`.
* ...

### Start the local instances

* Trac: `docker-compose up trac` -> http://localhost:8000/
* Gitea: `docker-compose up gitea` -> http://localhost:3000/

REM: `docker-compose up` alone will also start a third container we do not need yet (see next step).

To troubleshoot, attach a bash session to one of the container:

```
NAME=trac # or gitea
docker exec -it $(docker ps -f "name=${NAME}.local" -ql) bash
```

To start with:

* Trac: `trac-admin project help`
* Gitea: `gitea help`

### Prepare the migration tool

Checkout the [trac2gitea](https://github.com/Tahoe-LAFS/trace2gitea) migration tool linked here as a submodule:

`git submodule init trac2gitea`

Start the Docker `go-shell` container:

`docker-compose run --rm go-shell`

Build the tool following the instruction in `trac2gitea/README.md`:

```
make alldeps
make
```

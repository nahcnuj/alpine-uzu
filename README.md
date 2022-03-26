# alpine-uzu

Docker container with [Uzu](https://github.com/scmorrison/uzu), the static site generator written in Raku

## Usage

Execute `uzu` command following by `docker run`.
Mount your project directory to `/home/user`.

```console
$ docker run --rm -i nahcnuj/alpine-uzu uzu
Usage:
  uzu init          - Initialize new project
  uzu webserver     - Start local web server
  uzu build         - Render all templates to build
  uzu clear         - Delete build directory and all of its contents
  uzu watch         - Start web server and re-render
                      build on template modification
  uzu version       - Print uzu version and exit

Optional arguments:

  --config=         - Specify a custom config file
                      Default is `config`

  e.g. uzu --config=path/to/config.yml init

  --no-livereload   - Disable livereload when
                      running uzu watch.

  --clear           - Delete build directory before
                      render when running with build.

  --page-filter     - Restrict build to pages starting
                      from this directory

  --theme           - Limit build / watch to single theme

  e.g. uzu --theme=default build

```

To build your project, execute the following command on its directory:

```sh
docker run --rm -i -v $(pwd):/home/user nahcnuj/alpine-uzu uzu build
```

You can omit `uzu build` as follows:

```sh
docker run --rm -i -v $(pwd):/home/user nahcnuj/alpine-uzu
```

To start a web server, execute `uzu watch`, publishing 3000 port on container to the host:

```sh
docker run --rm -i -v $(pwd):/home/user -p 3000:3000 nahcnuj/alpine-uzu uzu watch
```

## License

MIT License

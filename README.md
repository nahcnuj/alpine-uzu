# alpine-uzu

Docker container with [Uzu](https://github.com/scmorrison/uzu), the static site generator written in Raku

## Usage

### Basic

- To run `uzu build`,
  ```sh
  docker run --rm -v $(pwd):/home/user nahcnuj/alpine-uzu
  ```
- To run `uzu watch`,
  ```sh
  docker run --rm -i -v $(pwd):/home/user -p 3000:3000 nahcnuj/alpine-uzu watch
  ```

### Specify a user

Pass your UID and GID as environment variables `LOCAL_UID` and `LOCAL_GID` respectively.
For example,
```sh
docker run --rm -v $(pwd):/home/user -e LOCAL_UID=`id -u ${USER}` -e LOCAL_GID=`id -g ${USER}` nahcnuj/alpine-uzu
```

## License

MIT License

# alpine-uzu

Docker container with [Uzu](https://github.com/scmorrison/uzu), the static site generator written in Raku

## Usage

- To run `uzu build`,
  ```sh
  docker run --rm -w /workdir -v $(pwd):/workdir nahcnuj/alpine-uzu
  ```
- To run `uzu watch`,
  ```sh
  docker run --rm -i -w /workdir -v $(pwd):/workdir -p 3000:3000 nahcnuj/alpine-uzu watch
  ```

## License

MIT License

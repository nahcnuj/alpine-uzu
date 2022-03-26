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

## License

MIT License

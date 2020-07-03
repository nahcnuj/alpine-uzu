# alpine-uzu

Docker container with [Uzu](https://github.com/scmorrison/uzu), the static site generator written in Raku

## Usage

```sh
docker run --rm -w /workdir -v $(pwd):/workdir nahcnuj/alpine-uzu
#=> run `uzu build`
```

## License

MIT License

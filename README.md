# semantic-release

## What is it

We often use `semantic-release` in differents `CI systems` like `Gitlab` & `Github` and to reduce the effort of seting up and maintaining a lot of pipelines we use this image as starting point for `semantic-release`.

## How to use

Nothing simpler than this just use `docker run docker.pkg.github.com/caos/semantic-release/semantic-release:latest semantic-release`.
The last command `semantic-release` is important. Because the `entrypoint` in the docker images points to `npx`.

### Gitlab CI

You can use the image as stage e.g `version`. We usualy use the `only: - branches` option so that it not triggers itself.
To run it simply pass `npx semantic-release` along.

```yaml
semantic_release:
  stage: version
  image: docker.pkg.github.com/caos/semantic-release/semantic-release:latest
  only:
    - branches
  script:
    - npx semantic-release
```

## License

As usual Apache-2.0 see [here](./LICENSE)
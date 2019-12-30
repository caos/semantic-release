# semantic-release

![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)
![github-actions](https://github.com/caos/semantic-release/workflows/Release/badge.svg)

## What is it

We often use `semantic-release` in differents `CI systems` like `Gitlab` & `Github`. In order to reduce the effort of seting up and maintaining a lot of pipelines, we use this image as starting point for `semantic-release`.

## How to use

Nothing simpler than this. Just run `docker run docker.pkg.github.com/caos/semantic-release/semantic-release:latest semantic-release`.
The last command `semantic-release` is important. Because the `entrypoint` in the docker images points to `npx`.

### Gitlab CI

You can use the image as stage e.g `version`. We usualy use the `only: - branches` option so that it not triggers itself.
To run it, simply pass `npx semantic-release` along.

```yaml
semantic_release:
  stage: version
  image: docker.pkg.github.com/caos/semantic-release/semantic-release:latest
  only:
    - branches
  script:
    - npx semantic-release
```

### Github Actions

To use this this image with `Github Actions` you can create a `step` which invokes the command `npx semantic-release` within the image.

```yaml
jobs:
  semantic-release:
      runs-on: ubuntu-18.04
    steps:
    - name: Source checkout
      uses: actions/checkout@v1
    - name: Create Version
      uses: caos/semantic-release@v0.1.7
      with:
        args: "semantic-release --dry-run"
```

## License

As usual Apache-2.0 see [here](./LICENSE)

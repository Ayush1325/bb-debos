# Debos Recipes

[Debos](https://github.com/go-debos/debos) recipes to allow building distribution images in a reproducible manner.

# Build Image

- Using Docker

```
docker run --rm --interactive --tty --device /dev/kvm --user $(id -u) --workdir /recipes --mount "type=bind,source=$(pwd),destination=/recipes" --security-opt label=disable godebos/debos pocketbeagle2.yaml
```

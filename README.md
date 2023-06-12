# README

## Live reload

### Prerequisites

Live reloading requires [browser-sync](https://browsersync.io/).
```sh
npm install -g browser-sync
```

### Run live reload

In the root of this repository, run,
```sh
elmstatic watch
```
In `_site`,
```sh
browser-sync start --server --files "." --no-ui  --reload-delay 500 --reload-debounce 
```
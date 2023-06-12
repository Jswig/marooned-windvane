# README

Personal websites implemented with [Elm](https://elm-lang.org/) and [elmstatic](https://github.com/alexkorban/elmstatic).

## Install dependencies

```sh
npm install
```

## Build the site

```sh
npm run build
```

## Live reload

### Prerequisites

Live reloading requires [browser-sync](https://browsersync.io/).
```sh
npm install -g browser-sync
```

### Run live reload

In the root of this repository run
```sh
elmstatic watch
```
In `_site`,
```sh
browser-sync start --server --files "." --no-ui  --reload-delay 500 --reload-debounce 
```
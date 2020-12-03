Github action for linting the C code.
Uses cppcheck.

Example of usage:
```
name: c-linter

on: [pull_request]
jobs:
  c-linter:
    name: c-linter
    runs-on: ubuntu-latest
    steps:
      - name: c-linter
        uses: tonybaloney/cppcheck-action@master
```

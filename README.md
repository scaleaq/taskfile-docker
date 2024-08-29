## Taskfile docker wrapper

This is a simple wrapper for the [Taskfile](https://taskfile.dev) CLI tool that allows you to run it in a Docker container.

### Usage

```bash
alias task='docker run --rm -it -w $(PWD) -v $(PWD):$(PWD) --env-file <(env) scaleaq/taskfile'

task -l
```
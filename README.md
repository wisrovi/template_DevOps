# Template DevOps

## VM

This command will create a VM with the name of the project and the version of the project.

```
make vm-create
```

```
make vm-start
```

```
make vm-install
```

```
make vm-stop
```

## build

This command will build the docker image.

```
make build
```

## run

This command will run the docker image.

```
make up
```

```
make upall
```

## Validate QA

This command will validate the QA of the project.
Quality code and test.

```
make app-lint
```

```
make app-flake8
```

```
make app-pyflake
```

```
make app-lint-graph
```

```
make app-test-report
```

```
make app-test-report-html
```

```
make app-test-report
```

```
make app-test-report-html
```

## auto-test

This command will run the unit test

```
make app-test-dev
```

## Coverage

This command will find coverage of test of the project.

```
make app-coverage
```

## requirements

This command will create the requirements of the project.

```
make app-requirements
```

## bash python

This command will run the bash of the project.

```
make sidecar-bash
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
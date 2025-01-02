# Conventional Commits Check Action

A [GitHub Action](https://github.com/features/actions) / [Gitea Action](https://docs.gitea.com/usage/actions/overview) for enforcing adherance to [Conventional Commits](https://pypi.org/project/conventional-pre-commit/).

You can use the Action as follows:

```yaml
name: Validate PR Title
on:
  pull_request_target:
    types:
      - opened
      - edited
      - synchronize
      - reopened
      - labeled
      - unlabeled
jobs:
  validate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - uses: https://git.tainton.uk/actions/conventional-commits-docker-action@v1.0.0
        with:
          commit-message: ${{ github.event.pull_request.title }}
```

```yaml
name: Validate Commit Message
on:
  push:
    branches:
      - main
jobs:
  validate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - uses: https://git.tainton.uk/actions/conventional-commits-docker-action@v1.0.0
        with:
          commit-message: ${{ github.event.head_commit.message }}
```

## Properties

The Conventional Commits Check Action has a property which is passed to the underlying script. These are passed to the action using `with`.

| Property       | Description                                    |
| -------------- | ---------------------------------------------- |
| commit-message | The commit message you would like to validate. |

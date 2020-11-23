# ytt-github-actions

YTT library for creating github actions.

## Installation

To add this library to a repository, the recommended way is via git submodules.

In the root folder of the repository that should use the `github_actions` library:

```sh
git submodule add -b master https://github.com/minddocdev/ytt-github-actions .github/WORKFLOW_TEMPLATE/_ytt_lib/github_actions
git submodule init
```

## Usage

This repository should be managed as a submodule in those repos that require the creation of
Github Actions YAML files through the YTT library

To update submodules in a repository just run `git submodule update --remote`.

Any changes that a client requires for this library should be pushed directly to master. Backwards
compatibility should always be kept (for all functions).

## Development

Changes in this library should be pushed directly to this repo (and not to the submodule), as it is
easier to handle.

Therefore, push the changes directly to the `master` branch on this repo, and then update the
submodule in the required repository with `git submodule update --remote`.

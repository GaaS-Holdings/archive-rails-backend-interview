# README

## Setup
`docker compose up`

## Debugging
For vscode/cursor open `Run and Debug` section. Select `Attach with rdbg local` and click run.
In the code add breakpoint with `debugger` keyword.

## Database Setup
Run the following commands in terminal:
```
docker compose run --rm application ./bin/rails db:prepare
docker compose run --rm application ./bin/rails db:seed
```

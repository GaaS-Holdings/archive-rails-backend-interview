# README

## Technical Task
https://link.excalidraw.com/l/AhWi3ozBSB2/4BPt0gs1dov

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

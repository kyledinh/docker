## Utilize search in a registry

### Usage
`docker search [OPTIONS] TERM`

| Options |	Description |
|---------|-------------|
| --filter , -f		| Filter output based on conditions provided |
| --format		| Pretty-print search using a Go template |
| --limit	25	| Max number of search results |
| --no-trunc	| Don’t truncate output |

### Example

`docker search --limit=10 --no-trunc datawasher`

[docs](https://docs.docker.com/engine/reference/commandline/search/)

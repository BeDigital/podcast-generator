# podcast-generator

A GitHub Action that generates a podcast RSS feed (`podcast.xml`) from a `feed.yaml` file and commits the result back to the repository.

## Usage

```yaml
- uses: BeDigital/podcast-generator@main
  with:
    email: ${{ github.actor }}@localhost   # committer e-mail (default)
    name: ${{ github.actor }}              # committer name (default)
```

## Inputs

| Input   | Description          | Required | Default                          |
|---------|----------------------|----------|----------------------------------|
| `email` | Committer's email    | true     | `${{ github.actor }}@localhost`  |
| `name`  | Committer's name     | true     | `${{ github.actor }}`            |

## What it does

1. Reads `feed.yaml` from the repository root.
2. Generates `podcast.xml` (RSS 2.0 / iTunes-compatible feed).
3. Commits and pushes `podcast.xml` back to `main`.

# GitHub Action for Installing Lix

### Usage:

```yaml
- uses: actions/setup-node@v4
  with:
    node-version: 24

- uses: lix-pm/setup-lix@2.0.0
  with:
    lix-version: 15.12.0 # optional
```

It is recommended to run `actions/setup-node` before this action for a consistent npm environment.

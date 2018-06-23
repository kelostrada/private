## Simple case to reproduce bug in hex private repos
github.com/hexpm/hex/issues/576

# Steps to reproduce

```elixir
(cd plug && mix deps.get)
(cd plug && ORGANIZATION=[org_name] mix hex.publish)
(cd private && ORGANIZATION=[org_name] mix deps.get)
(cd private && ORGANIZATION=[org_name] mix hex.publish)
```

# Results:

```
==> private_project
Compiling 1 file (.ex)
Generated private_project app
Docs successfully generated.
View them at "doc/index.html".
Local password:
Publishing package...
[#########################] 100%
Publishing failed
Internal server error
```

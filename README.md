# golobitch/homebrew-tap

Homebrew formulae and casks for [TigerBeetle Explorer](https://github.com/golobitch/tb-explorer) —
read-only browsers for [TigerBeetle](https://tigerbeetle.com) clusters.

```sh
brew install --cask golobitch/tap/tb-explorer   # the macOS app
brew install golobitch/tap/tb-tui               # the terminal UI, macOS and Linux
```

No `brew tap` first: naming the tap in the install command is enough.

| | What it is |
| --- | --- |
| `Casks/tb-explorer.rb` | The native macOS app (SwiftUI). Notarized, universal. |
| `Formula/tb-tui.rb` | A terminal UI (Rust, ratatui) with k9s-style navigation. macOS and Linux, arm64 and x86_64. |

## These files are generated

Both are written by [`bump-tap.yml`](https://github.com/golobitch/tb-explorer/blob/main/.github/workflows/bump-tap.yml)
in the tb-explorer repository, from templates in
[`packaging/homebrew/`](https://github.com/golobitch/tb-explorer/tree/main/packaging/homebrew), each
time a `ui-v*` or `cli-v*` release publishes. The checksums are computed from the published release
assets, so what Homebrew verifies is what the release actually contains.

**Edit the templates, not the output.** A change made here is overwritten by the next release.

## Reporting things

Issues and pull requests belong in
[golobitch/tb-explorer](https://github.com/golobitch/tb-explorer/issues) — this repository is only
the delivery mechanism.

MIT licensed, like what it installs.

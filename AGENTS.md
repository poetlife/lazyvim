# Repository Guidelines

## Project Structure & Module Organization
This repository is a personal Neovim configuration built on LazyVim. `init.lua` is the entrypoint and loads [`lua/config/lazy.lua`](/root/.config/nvim/lua/config/lazy.lua), which bootstraps `lazy.nvim` and imports plugin specs.

- `lua/config/`: core editor behavior such as options, keymaps, autocommands, and LazyVim bootstrap logic.
- `lua/plugins/`: one file per customization area or language, returning Lazy plugin specs; examples include `go.lua`, `rust.lua`, and `general.lua`.
- `lazyvim.json`: enabled LazyVim extras.
- `lazy-lock.json`: pinned plugin versions; update it only when intentionally changing dependencies.
- `stylua.toml`: Lua formatting rules.

## Build, Test, and Development Commands
- `nvim`: start the config locally and let LazyVim install missing plugins.
- `nvim --headless "+Lazy! sync" +qa`: install or update plugins without opening the UI.
- `nvim --headless "+checkhealth" +qa`: verify runtime dependencies, language tooling, and plugin health.
- `stylua .`: format all Lua files using the repository rules.

## Coding Style & Naming Conventions
Use Lua with 2-space indentation and a 120-column limit, matching `stylua.toml`. Keep plugin specs small and focused; add new behavior to an existing domain file when it clearly fits, otherwise create a new file under `lua/plugins/` with a concise lowercase name such as `python.lua` or `colorschema.lua`. Prefer descriptive option tables over helper abstractions unless duplication becomes real.

## Testing Guidelines
There is no automated test suite in this repo. Validate changes by formatting with `stylua`, starting `nvim`, and running `:checkhealth`. For plugin changes, confirm the affected filetype or workflow manually, for example opening a Go file after editing [`lua/plugins/go.lua`](/root/.config/nvim/lua/plugins/go.lua).

## Commit & Pull Request Guidelines
Recent history uses Conventional Commit style, especially `feat:` prefixes, for example `feat: add golangci-lint and goimports/gofumpt for Go`. Follow that pattern with clear scopes when useful, such as `fix(go): disable conform for proto`. Pull requests should describe the user-facing editor change, list any new external dependencies, and include screenshots or short recordings when the change affects UI-heavy plugins.

## Configuration Notes
Target Neovim `v0.10.x`, as documented in `README.md`. Avoid editing generated lock data casually, and call out any required system tools such as `npm`, `golangci-lint`, or language servers in the PR description.

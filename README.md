# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Installation

WARNING: support neovim v0.10.x only

```bash
git clone https://github.com/poetlife/lazyvim ~/.config/nvim
```

then `nvim` start lazyvim

### ubuntu install stable nvim from source

> <https://github.com/neovim/neovim/blob/master/BUILD.md>

- install build essential

```bash
sudo apt-get install ninja-build gettext cmake unzip curl build-essential
```

- Get source code

```bash
git clone https://github.com/neovim/neovim
# checkout stable branch
cd neovim
git checkout stable
```

- compile & install

```bash
make CMAKE_BUILD_TYPE=RelWithDebInfo
# install
sudo make install
```

# lazyvim plugins

> [all available lazyvim plugins](https://www.lazyvim.org/plugins)

1. [lazyvim.plugins.extras.lang.go](https://www.lazyvim.org/extras/lang/go) Go语言的LSP
2. [lazyvim.plugins.extras.editor.outline](https://www.lazyvim.org/extras/editor/outline) 大纲支持
    > 从symbols-outline切换到outline插件，详见：<https://github.com/LazyVim/LazyVim/pull/2535>
3. [lazyvim.plugins.extras.lang.json](https://www.lazyvim.org/extras/lang/json) Json支持
    > 安装这个插件需要`npm`的支持
4. [lazyvim.plugins.extras.lang.markdown](https://www.lazyvim.org/extras/lang/markdown) Markdown支持
5. [lazyvim.plugins.extras.lang.yaml](https://www.lazyvim.org/extras/lang/yaml) YAML支持

# nvim plugins

# keymaps

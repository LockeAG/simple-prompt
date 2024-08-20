# Simple Shell and Vim Configuration for Remote Servers

This repository provides configuration files for Bash, Zsh, and Vim to create a consistent, clean, and easy-to-navigate environment on remote servers. These configurations are inspired by the Tokyo Night Storm theme, offering a visually appealing and functional interface that works well in terminal environments.

## Overview

When deploying a new server, these configuration files can be used to quickly set up your environment, making it easier to navigate and use remote servers. The setup includes:

- **Bash (`.bashrc`)**: Custom prompt and useful aliases for Bash.
- **Zsh (`.zshrc`)**: Simple, colorful prompt and efficient settings for Zsh.
- **Vim (`.vimrc`)**: A dark-themed Vim configuration with less distracting line numbers and essential editor settings.

## Installation Instructions

### 1. Set Up Bash (`.bashrc`)

Copy the provided `.bashrc` configuration to your home directory:

```sh
cp .bashrc ~/.bashrc
```

### 2. Set Up Zsh (`.zshrc`)

Copy the provided `.zshrc` configuration to your home directory:

```sh
cp .zshrc ~/.zshrc
```

### 3. Set Up Vim (`.vimrc`)

Copy the provided `.vimrc` configuration to your home directory:

```sh
cp .vimrc ~/.vimrc
```

### 4. Apply Changes

To apply the changes, reload the shell configuration:

```sh
source ~/.bashrc

# If using zshrc
source ~/.zshrc
```

## Usage

1. Deploy the configuration files to your remote server by copying them to your home directory.
2. Apply the changes by reloading the shell configuration.
3. Enjoy a clean and consistent environment across all your remote servers.

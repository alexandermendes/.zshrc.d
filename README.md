# .bashrc.d

Clone:

```
git clone https://github.com/alexandermendes/.zshrc.d ~/.zshrc.d
```

Set permissions:

```
chmod 700 ~/.zshrc.d
```

Add the code below to your `~/.zshrc` file.

```bash
for file in ~/.zshrc.d/*.zshrc;
do
 source "$file"
done
```

Install [oh-my-zsh](https://ohmyz.sh/) and [Homebrew](https://brew.sh/), then:

```
brew update
brew install autojump
brew install jq
```

Source:

```
. ~/.zshrc
```

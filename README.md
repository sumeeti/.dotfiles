## .dotfiles

My dotfiles.

```sh
> cd
> git clone https://github.com/harman28/.dotfiles.git
> echo "source ~/.dotfiles/bashrc" >> ~/.bashrc
```

You're done.

For the full setup, do this instead
```sh
> . ~/.dotfiles/setup.sh
```

### That `bashrc.vars` file
I use the `vars` to hold secrets, i.e. usually passwords, access tokens and the like.
The repo is public, so the file you see is a dummy one, and it's gitignored. After cloning, you can update it with your actual secrets and use it directly.

If you've got Dropbox or Drive set up, it might be a good idea to keep `bashrc.vars` in your synced folder, and run something like this.
```sh
ln -s ~/Dropbox/vars/bashrc.vars ~/.dotfiles/files/bashrc.vars
```
This way you don't need to worry about those secrets being the only part of the repo not backed up on Github.

### TODO
* Add setup script. Lol.

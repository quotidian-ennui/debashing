# debashing

Random .deb things post install

I find myself provisioning debian and ubuntu instances w/o a care in the world on HyperV / Virtualbox etc. Instances that I don't care about but I want to work on meaningfully in a throwaway fashion, it's like it's 2015 again. This then is a repo that gets me up and running as quick as possible so the _toolchain_ is present in case I need it; but not so much that I'm putting my personal stuff on (the friction is there on purpose).

- What? you're still using rcm what about chezmoi / dotter / dotbot / _insert your preferred tool of choice here, that is so much more awesome_
  - yes, rcm because it's available w/o thinking hard about it.
  - yes, because sometimes treating my dotfiles as an exercise in learning another templating language (even though it might be handlebars _again_) doesn't fill me with joy.


## Base Minimum user-env


```
git clone https://github.com/quotidian-ennui/debashing .dotfiles
cd .dotfiles
export SKIP_DOCKER=true
export TAILSCALE_DISABLE=true
./bootstrap.sh all
```

> - probably want to have gnome-terminal execute as login shell
> - probably need to exit current shell and restart


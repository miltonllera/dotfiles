dotfiles
========

This is a repository for bootstrapping your dotfiles with [Dotbot][dotbot].

It is based on the [template][template] from [anishathalye](https://github.com/anishathalye). Run:
```
./install
```
to create the relevant symlinks to all the config values. To upgrade your submodules to their latest versions, you can periodically run
```
git submodule update --init --remote
```

## Updating
To update submodules, do:

```
cd mysubmoduledir
git fetch
git checkout master # or any other branch that you need the latest of
git merge origin/master
cd -  # go back to the top repo
git status # should show that your submodule changed
git add mysubmoduledir
git commit -m "Updated my solution to use latest sub project."
```

or this if you do not have any other modifications and you are already in the correct branch.

```
cd mysubmoduledir
git pull # assumes you are already on the branch you need to be on
cd -
git commit -am "Updated submodule" # assumes you had no other modified files
```

See this [StackOverflow issue for more details](https://stackoverflow.com/questions/13844996/git-submodule-init-not-pulling-latest-commit).

## Saving modifications to submodules

If changes are made and commited to any submodule (e.g. Neovim), said commit will be left in a headless state, i.e. the branch will not move forward. Thus, the changes will not be reflected in the origin repository of said submodule. To fix this, we have several options:

1. If you have already commited the changes, then reate a branch at the headless commit, checkout master and merge:
``` bash

git checkout master  # this is fine as long as we create the branch just afterwards
git branch <branch-name> <commit-hash>
git merge <branch-name>
git branch -d <branch-name>
git push origin master
```
Note that in this case running submodule updates is not required as we made the modifications in the submodule version itself.

2. Use options in command line

```bash
# cd back to project root
git submodule update --remote --merge
# or
git submodule update --remote --rebase
```

Recommended alias:

```bash
git config alias.supdate 'submodule update --remote --merge'
# do submodule update with
git supdate
```

As far as I understand, this will update **all** submodules, so it may not be ideal.

3. Add options into config file

Another solution is to change submodule update behavior in the gitmodule file by by setting submodule.$name.update to merge or rebase. It basically means you can do git submodule update --remote without passing --merge or --rebase explcitly, but read from config file automatically.

Here's an example about how to config the default update behavior of submodule update in .gitmodule.

```bash
[submodule "bash/plugins/dircolors-solarized"]
    path = bash/plugins/dircolors-solarized
    url = https://github.com/seebi/dircolors-solarized.git
    update = merge # <-- this is what you need to add
```
Or configure it through command line,

```bash
# replace $name with a real submodule name
git config -f .gitmodules submodule.$name.update merge
```

See [this StackOverflow issue](https://stackoverflow.com/questions/18770545/why-is-my-git-submodule-head-detached-from-master/55570998#55570998) for more details.

License
-------

I am keeping the original license and attribution information as requested:


This software is hereby released into the public domain. That means you can do
whatever you want with it without restriction. See `LICENSE.md` for details.

That being said, I would appreciate it if you could maintain a link back to
Dotbot (or this repository) to help other people discover Dotbot.

[dotbot]: https://github.com/anishathalye/dotbot
[fork]: https://github.com/anishathalye/dotfiles_template/fork
[template]: https://github.com/anishathalye/dotfiles_template/generate
[anishathalye_dotfiles]: https://github.com/anishathalye/dotfiles
[csivanich_dotfiles]: https://github.com/csivanich/dotfiles
[m45t3r_dotfiles]: https://github.com/m45t3r/dotfiles
[alexwh_dotfiles]: https://github.com/alexwh/dotfiles
[azd325_dotfiles]: https://github.com/Azd325/dotfiles
[wazery_dotfiles]: https://github.com/wazery/dotfiles
[thirtythreeforty_dotfiles]: https://github.com/thirtythreeforty/dotfiles
[dotbot-users]: https://github.com/anishathalye/dotbot/wiki/Users

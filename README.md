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

# Archway configuration workflow

These instructions apply to work on the Archway dotfiles in the user's home directory and in `$HOME/Github/archway` (currently `/home/zenith/Github/archway`). They do not require synchronizing unrelated projects or home files.

- When asked to change an Archway configuration, keep the live home copy and the repository copy synchronized as part of the task. Copying the relevant files in either direction is authorized; no additional confirmation is needed for routine configuration updates.
- Paths in the repository mirror paths relative to `$HOME`: for example, `$HOME/.config/waybar/config.jsonc` corresponds to `$HOME/Github/archway/.config/waybar/config.jsonc`, and `.bashrc` maps the same way.
- Before editing or copying, inspect both copies and the repository's Git status. If they differ, preserve existing changes in both and reconcile the relevant content before synchronizing. Do not blindly overwrite either copy.
- Copy only files relevant to the requested task. Create missing parent directories when needed. Never copy the whole home directory, `.git`, credentials, private data, caches, or unrelated files into the repository.
- Repository-only files such as `README.md`, `assets/`, and `pkglist.txt` stay in the repository unless explicitly requested otherwise.
- Keep this `AGENTS.md` identical at `$HOME/AGENTS.md` and `$HOME/Github/archway/AGENTS.md` when updating these instructions.
- Check that the synchronized files match, perform appropriate configuration validation, and reload the affected application when possible. Report if reloading is unavailable.
- Do not commit or push changes unless requested.

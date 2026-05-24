{ ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user.name = "Keisuke ANDO";
      user.email = "ando_k@iwate-pu.ac.jp";
      commit.template = "~/.config/git/commit-template";
      core.editor = "nvim";
      url = {
        "git@github.com:" = {
	  insteadOf = "https://github.com/";
	};
      };
    };
  };

  home.file.".config/git/commit-template".text = ''
    
    # ============================== Format ==============================
    # :emoji: Subject
    #
    # Commit body...
    #
    # ============================== Emojis ==============================
    # 🎉  :tada:             Initial commit
    # ✨  :sparkles:         Introduce new feature
    # ⚡️  :zap:              Inprove performance
    # 🔥  :fire:             Remove code or files
    # 🐛  :bug:              Fix a bug
    # 🚑️  :ambulance:        Critical hotfix
    # 🩹  :adhesive_bandage: Simple fix a non-critical issue
    # 📝  :memo:             Add or update documentation
    # ✅  :white_check_mark: Add, update, or pass a test
    # ♻️  :recycle:          Refator code
    # 🚚  :truck:            Move or rename resources
    # 🎨  :art:              Improve structure / Format of the code
    # 🚧  :construction:     Work in progress
    # 🚀  :rocket:           Deploy stuff
    # 🔖  :bookmark:         Version tag
    # 🙈  :see_no_evil:      Add or update ignore files
    # ✏️  :pencil2:          Fix typos
  '';
}

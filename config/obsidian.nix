{ ... }:

{
  plugins.obsidian = {
    enable = true;
    workspaces = [
      {
	name = "Main";
	path = "~/sync/Obsidian/";
	overrides = {
	  ui.enable = false;
	  notesSubdir = "Notes";
	  completion.newNotesLocation = "Inbox";
	  dailyNotes.folder = "Daily";
	};
      }
    ];
  };
}

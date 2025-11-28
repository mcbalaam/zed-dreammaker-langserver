use std::env;
use zed_extension_api as zed;

struct DreamMakerExtension;

impl zed::Extension for DreamMakerExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &zed::LanguageServerId,
        _worktree: &zed::Worktree,
    ) -> zed::Result<zed::Command> {
        let binary_path =
            env::var("DM_LANGSERVER_PATH").unwrap_or_else(|_| "dm-langserver".to_string());

        Ok(zed::Command {
            command: binary_path,
            args: vec![],
            env: Default::default(),
        })
    }
}

zed::register_extension!(DreamMakerExtension);

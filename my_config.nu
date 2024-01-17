export def main [] {
    {
        show_banner: false # disable the welcome banner at startup
        shell_integration: true # enable shell integration
        use_kitty_protocol: ("kitty" in $env.TERM) # use kitty protocol when running inside kitty
        history: {
            file_format: "sqlite"
        }
        render_right_prompt_on_last_line: true
        hooks: {
            env_change: {
                PWD: [
                    {|before, after| # This hook runs onefetch when the current directory is a git repository
                        if ".git\n" in ($after | ls -a | str join) {
                            ^onefetch
                        }
                    }
                ]
            }
        }
    }
}
export def create_left_prompt [] {
    (
        ^starship prompt
            --cmd-duration $env.CMD_DURATION_MS
            $"--status=($env.LAST_EXIT_CODE)"
            --terminal-width (term size).columns
    )
}

export def create_right_prompt [] {
    (
        ^starship prompt
            --right
            --cmd-duration $env.CMD_DURATION_MS
            $"--status=($env.LAST_EXIT_CODE)"
            --terminal-width (term size).columns
    )
}

export def create_continuation_prompt [] {
    (
        ^starship prompt
            --continuation
            --cmd-duration $env.CMD_DURATION_MS
            $"--status=($env.LAST_EXIT_CODE)"
            --terminal-width (term size).columns
    )
}
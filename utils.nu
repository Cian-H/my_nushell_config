export def 'exists' [ app: string ] {
    (which $app | length) > 0
}

export def 'sysfetch' [] {
    if (exists fastfetch) {
        if ("kitty" in $env.TERM) and ("~/.config/fastfetch/kitty.conf" | path exists) {
            fastfetch --load-config "~/.config/fastfetch/kitty.conf"
        } else {
            fastfetch
        }
    } else if (exists neofetch) {
        neofetch
    } else if (exists screenfetch) {
        screenfetch
    } else if (exists archey) {
        archey
    } else if (exists lsb_release) {
        lsb_release -a
    } else if (exists uname) {
        uname -a
    }
}
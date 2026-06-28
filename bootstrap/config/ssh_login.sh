#!/data/data/com.termux/files/usr/bin/bash

# Skip non-interactive sessions (scp, sftp, rsync, etc.)
if [ -t 0 ] && [ -z "$SSH_ORIGINAL_COMMAND" ]; then
    termux-media-player play "$HOME/system_scripts/login.mp3" >/dev/null 2>&1
    termux-toast "SSH Login Detected" >/dev/null 2>&1

    if [ -n "$SSH_CLIENT" ]; then
        set -- $SSH_CLIENT
        client="$1:$2"

        termux-notification \
            --title "SSH Login" \
            --content "$client SSHed" >/dev/null 2>&1
    fi
fi

exec "$SHELL" -l

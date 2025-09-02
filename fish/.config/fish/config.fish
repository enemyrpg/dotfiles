source /usr/share/cachyos-fish-config/cachyos-config.fish

# initialize starship prompt
starship init fish | source

# use theme for MANPAGER
export MANPAGER="less -R --use-color -Dd+r -Du+b"

# add y alias helper for yazi
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

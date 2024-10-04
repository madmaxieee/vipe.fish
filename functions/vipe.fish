# ported from https://github.com/juliangruber/vipe/blob/master/vipe.sh

function vipe -d "edit pipe with \$EDITOR"
    # accepts no arguments
    if test (count $argv) -gt 0
        echo "usage: vipe"
        return 1
    end

    set tmp_file /tmp/vipe.(random).txt
    touch $tmp_file

    if not isatty stdin
        command cat >$tmp_file
    end

    # spawn editor with stdio connected
    $EDITOR $tmp_file </dev/tty >/dev/tty || return $status

    command cat $tmp_file

    rm $tmp_file
end

#!/usr/bin/env bash
set -e
STUDIO="$HOME/StudioProjects"; mkdir -p "$STUDIO"
declare -A REPO=( [QuillInks]=quillinks [PaperRuner]=livewall [ACSIIGIFER]=asciigif [Lyrical]=Lyrical [Listenermerge]=listening-stats [TermFetch]=termfetch [EchoHis]=echoterm [Moodkonsole]=Moodkonsole [FamiliarGoof]=FamiliarGoof [wallflow]=wallflow )
for name in QuillInks PaperRuner ACSIIGIFER Lyrical Listenermerge TermFetch EchoHis Moodkonsole FamiliarGoof wallflow; do
    dir="$STUDIO/${REPO[$name]}"
    echo "==> $name"
    if [ -d "$dir/.git" ]; then git -C "$dir" pull --ff-only || true
    else git clone "https://github.com/Apersonwithtoenail/$name.git" "$dir"; fi
    [ -x "$dir/install.sh" ] && (cd "$dir" && ./install.sh) || echo "   no install.sh"
    echo
done
echo "✅ All installed: quillinks · paperruner · asciigifer · lyrical · lsm · termfetch · echoterm · moodterm · familiarterm · wallflow"

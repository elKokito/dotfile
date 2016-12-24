#!/bin/bash

get_monitors_name() {
        i3-msg -t get_outputs | jq '.[] | select(.active==true).name'
}

get_unfocused_monitor() {
        focused_monitor=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).output')
        outputs=$(get_monitors_name)
        othermonitor=""
        for o in $outputs;do
                if [ $o != $focused_monitor ]; then
                        othermonitor=$o
                fi
        done
        echo $othermonitor
}

focused_workspace() {
        i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name'
}

move_to_other_monitor() {
        othermonitor=$(get_unfocused_monitor)
        focused_workspace=$(focused_workspace)
        i3-msg "[workspace=$focused_workspace] move workspace to output $othermonitor"
}

move_to_other_monitor

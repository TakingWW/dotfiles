from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

mod = "mod4"
terminal = "alacritty"
browser = "firefox"

topbar = Screen(
        top=bar.Bar([
            widget.GroupBox(highlight_method="line", active="FF90BB", padding=10, background='2D4356', inactive="001C30"),
            widget.Prompt(),
            widget.Spacer(length=1370),
            widget.Chord(
                chords_colors={
                    "launch": ("#ff0000", "#ffffff"),
                    },
                name_transform=lambda name: name.upper(),
                ),
            widget.Systray(),
            widget.Clock(foreground="e893cf", format="%Y-%m-%d %a %I:%M %p"),
            ],
            35,
            border_width=[2, 0, 2, 0],
        ),
    )


screens = [
        topbar,
]

keys = [
    Key([mod], "l", lazy.to_screen(0)),
    Key([mod], "h", lazy.to_screen(1)),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(), desc="Toggle between split and unsplit sides of stack", ),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([mod], "i", lazy.spawn(browser), desc="Launch terminal"),
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
    Key([mod], "b", lazy.hide_show_bar(), desc="testando"),
]
groups = [
    Group(
        "1",
        label="",
        layout="max",
    ),
    Group(
        "2",
        label="",
        layout="tile",
    ),
    Group(
        "3",
        label="",
        layout="tile",
    ),
    Group(
        "4",
        label="",
        layout="tile",
    ),
    Group(
        "5",
        label="",
        layout="tile",
    ),
    Group(
        "6",
        label="",
        layout="tile",
    ),
    Group(
        "7",
        label="",
        layout="tile",
    ),
    Group(
        "8",
        label="",
        layout="Tile",
    ),
    Group(
        "9",
        label="",
        matches=[Match(wm_class="discord")],
        layout="max",
    ),]

for i in groups:
    keys.extend(
        [
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(i.name),
            ),
        ]
    )

layouts = [
    layout.Max(),
]

widget_defaults = dict(
    font="JetBrainsMono Nerd Font",
    fontsize=20,
    padding=5,
)
extension_defaults = widget_defaults.copy()

mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),
        Match(wm_class="makebranch"),
        Match(wm_class="maketag"),
        Match(wm_class="ssh-askpass"),
        Match(title="branchdialog"),
        Match(title="pinentry"),
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = True
wl_input_rules = None

wmname = "LG3D"

# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()

# Load a restored tab as soon as it takes focus.
# Type: Bool
c.session.lazy_restore = True

# Always restore open sites when qutebrowser is reopened.
# Type: Bool
c.auto_save.session = True

# Value to send in the `Accept-Language` header.
# Type: String
c.content.headers.accept_language = 'es-MX,es_MX,es-mx,es,en-US,en'

# Allow JavaScript to read from or write to the clipboard. With
# QtWebEngine, writing the clipboard as response to a user interaction
# is always allowed.
# Type: Bool
c.content.javascript.can_access_clipboard = True

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'file://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Enable plugins in Web pages.
# Type: Bool
c.content.plugins = True

# Where to show the downloaded files.
# Type: VerticalPosition
# Valid values:
#   - top
#   - bottom
c.downloads.position = 'bottom'

# Editor (and arguments) to use for the `open-editor` command. The
# following placeholders are defined: * `{file}`: Filename of the file
# to be edited. * `{line}`: Line in which the caret is found in the
# text. * `{column}`: Column in which the caret is found in the text. *
# `{line0}`: Same as `{line}`, but starting from index 0. * `{column0}`:
# Same as `{column}`, but starting from index 0.
# Type: ShellCommand
c.editor.command = ['gedit', '{file}']

# Characters used for hint strings.
# Type: UniqueCharString
c.hints.chars = 'asdfjklñ'

# Languages to use for spell checking. You can check for available
# languages and install dictionaries using scripts/dictcli.py. Run the
# script with -h/--help for instructions.
# Type: List of String
# Valid values:
#   - af-ZA: Afrikaans (South Africa)
#   - bg-BG: Bulgarian (Bulgaria)
#   - ca-ES: Catalan (Spain)
#   - cs-CZ: Czech (Czech Republic)
#   - da-DK: Danish (Denmark)
#   - de-DE: German (Germany)
#   - el-GR: Greek (Greece)
#   - en-AU: English (Australia)
#   - en-CA: English (Canada)
#   - en-GB: English (United Kingdom)
#   - en-US: English (United States)
#   - es-ES: Spanish (Spain)
#   - et-EE: Estonian (Estonia)
#   - fa-IR: Farsi (Iran)
#   - fo-FO: Faroese (Faroe Islands)
#   - fr-FR: French (France)
#   - he-IL: Hebrew (Israel)
#   - hi-IN: Hindi (India)
#   - hr-HR: Croatian (Croatia)
#   - hu-HU: Hungarian (Hungary)
#   - id-ID: Indonesian (Indonesia)
#   - it-IT: Italian (Italy)
#   - ko: Korean
#   - lt-LT: Lithuanian (Lithuania)
#   - lv-LV: Latvian (Latvia)
#   - nb-NO: Norwegian (Norway)
#   - nl-NL: Dutch (Netherlands)
#   - pl-PL: Polish (Poland)
#   - pt-BR: Portuguese (Brazil)
#   - pt-PT: Portuguese (Portugal)
#   - ro-RO: Romanian (Romania)
#   - ru-RU: Russian (Russia)
#   - sh: Serbo-Croatian
#   - sk-SK: Slovak (Slovakia)
#   - sl-SI: Slovenian (Slovenia)
#   - sq: Albanian
#   - sr: Serbian
#   - sv-SE: Swedish (Sweden)
#   - ta-IN: Tamil (India)
#   - tg-TG: Tajik (Tajikistan)
#   - tr-TR: Turkish (Turkey)
#   - uk-UA: Ukrainian (Ukraine)
#   - vi-VN: Vietnamese (Viet Nam)
c.spellcheck.languages = ['es-ES', 'en-US']

# Open new tabs (middleclick/ctrl+click) in the background.
# Type: Bool
c.tabs.background = True
# base16-qutebrowser (https://github.com/theova/base16-qutebrowser)
# Base16 qutebrowser template by theova
# Gruvbox dark, hard scheme by Dawid Kurek (dawikur@gmail.com), morhetz (https://github.com/morhetz/gruvbox)


base00 = "#1d2021"
base01 = "#3c3836"
base02 = "#504945"
base03 = "#665c54"
base04 = "#bdae93"
base05 = "#d5c4a1"
base06 = "#ebdbb2"
base07 = "#fbf1c7"
base08 = "#fb4934"
base09 = "#fe8019"
base0A = "#fabd2f"
base0B = "#b8bb26"
base0C = "#8ec07c"
base0D = "#83a598"
base0E = "#d3869b"
base0F = "#d65d0e"


# set qutebrowser colors
c.colors.completion.category.bg = base00
c.colors.completion.category.border.bottom= base00
c.colors.completion.category.border.top= base00
c.colors.completion.category.fg = base0A
c.colors.completion.fg = base05
c.colors.completion.item.selected.bg = base0A
c.colors.completion.item.selected.border.bottom = base0A
c.colors.completion.item.selected.border.top = base0A
c.colors.completion.item.selected.fg = base01
c.colors.completion.match.fg = base0B
c.colors.completion.odd.bg = base03
c.colors.completion.even.bg = base00
c.colors.completion.scrollbar.bg = base00
c.colors.completion.scrollbar.fg = base05
c.colors.downloads.bar.bg = base00
c.colors.downloads.error.fg = base08
c.colors.downloads.start.bg = base0D
c.colors.downloads.start.fg = base00
c.colors.downloads.stop.bg = base0C
c.colors.downloads.stop.fg = base00
c.colors.hints.bg = base0A
c.colors.hints.fg = base00
c.colors.hints.match.fg = base05
c.colors.keyhint.bg = base00
c.colors.keyhint.fg = base05
c.colors.keyhint.suffix.fg = base05
c.colors.messages.error.fg = base00
c.colors.messages.error.bg = base08
c.colors.messages.error.border = base08
c.colors.messages.info.bg = base00
c.colors.messages.info.border = base00
c.colors.messages.info.fg = base05
c.colors.messages.warning.bg = base0E
c.colors.messages.warning.border = base0E
c.colors.messages.warning.fg = base00
c.colors.prompts.bg = base00 
c.colors.prompts.border = base00 
c.colors.prompts.fg = base05 
c.colors.prompts.selected.bg = base0A 
c.colors.statusbar.caret.bg = base0E
c.colors.statusbar.caret.fg = base00
c.colors.statusbar.caret.selection.bg = base0D
c.colors.statusbar.caret.selection.fg = base00
c.colors.statusbar.command.bg = base00
c.colors.statusbar.command.fg = base05
c.colors.statusbar.command.private.bg = base00
c.colors.statusbar.command.private.fg = base05
c.colors.statusbar.insert.bg = base0D
c.colors.statusbar.insert.fg = base00
c.colors.statusbar.normal.bg = base00
c.colors.statusbar.normal.fg = base0B
c.colors.statusbar.passthrough.bg = base0C
c.colors.statusbar.passthrough.fg = base00
c.colors.statusbar.private.bg = base03
c.colors.statusbar.private.fg = base00
c.colors.statusbar.progress.bg = base0D
c.colors.statusbar.url.error.fg = base08
c.colors.statusbar.url.fg = base05
c.colors.statusbar.url.hover.fg = base05
c.colors.statusbar.url.success.http.fg = base0C
c.colors.statusbar.url.success.https.fg =base0B 
c.colors.statusbar.url.warn.fg = base0E
c.colors.tabs.bar.bg = base00
c.colors.tabs.even.bg = base00
c.colors.tabs.even.fg = base05
c.colors.tabs.indicator.error = base08
c.colors.tabs.indicator.start = base0D
c.colors.tabs.indicator.stop = base0C
c.colors.tabs.odd.bg = base03
c.colors.tabs.odd.fg = base05
c.colors.tabs.selected.even.bg = base05
c.colors.tabs.selected.even.fg = base00
c.colors.tabs.selected.odd.bg = base05
c.colors.tabs.selected.odd.fg = base00
# c.colors.webpage.bg = base00

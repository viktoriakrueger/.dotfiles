# Autogenerated config.py
#
# NOTE: config.py is intended for advanced users who are comfortable
# with manually migrating the config file on qutebrowser upgrades. If
# you prefer, you can also configure qutebrowser using the
# :set/:bind/:config-* commands without having to write a config.py
# file.
#
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Change the argument to True to still load settings configured via autoconfig.yml
config.load_autoconfig(False)

# Which cookies to accept. With QtWebEngine, this setting also controls
# other features with tracking capabilities similar to those of cookies;
# including IndexedDB, DOM storage, filesystem API, service workers, and
# AppCache. Note that with QtWebKit, only `all` and `never` are
# supported as per-domain values. Setting `no-3rdparty` or `no-
# unknown-3rdparty` per-domain on QtWebKit will have the same effect as
# `all`. If this setting is used with URL patterns, the pattern gets
# applied to the origin/first party URL of the page making the request,
# not the request URL. With QtWebEngine 5.15.0+, paths will be stripped
# from URLs, so URL patterns using paths will not match. With
# QtWebEngine 5.15.2+, subdomains are additionally stripped as well, so
# you will typically need to set this setting for `example.com` when the
# cookie is set on `somesubdomain.example.com` for it to work properly.
# To debug issues with this setting, start qutebrowser with `--debug
# --logfilter network --debug-flag log-cookies` which will show all
# cookies being set.
# Type: String
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
config.set('content.cookies.accept', 'no-3rdparty', 'chrome-devtools://*')

# Value to send in the `Accept-Language` header. Note that the value
# read from JavaScript is always the global value.
# Type: String
config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:90.0) Gecko/20100101 Firefox/90.0', 'https://accounts.google.com/*')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'chrome-devtools://*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome-devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Encoding to use for the editor.
# Type: Encoding
c.editor.encoding = 'utf-8'

# Always restore open sites when qutebrowser is reopened.
# Type: Bool
c.auto_save.session = True

# prevent autoplay when opening qutebrowser
content.autoplay = False

# scroll with mousewheel tabs type:bool
config.set('tabs.mousewheel_switching', False)

# keybinding for password manager 'pass'
config.bind('p', 'spawn --userscript qute-pass --dmenu-invocation dmenu')
config.bind('P', 'spawn --userscript qute-pass --dmenu-invocation dmenu --password-only')

# magnets home
# c.url.start_pages = ('~/.dotfiles/qutebrowser/.qutebrowser/search/startpage.html')

# how long will the downloads files apear in a tab (milliseconds)
c.downloads.remove_finished = 1

# open instant pdf
c.content.pdfjs = True

# default 'startpage.com' startpage

#c.url.default_page = ('~/Dropbox/.config/.qutebrowser/startpages/search/startpage.html')
c.url.default_page = ('https://www.startpage.com/do/mypage.pl?prfe=2c5fae38196589d04bfd7217a019dee984f5eb60c1382f9db128da03f37b263a10deea6b7de567fe6df59597283725ae2294dc7c6e2706b450e89a583d967c1b84506ddfb8ea1895567309f04b4b')
# c.url.start_pages = ('~/Dropbox/.config/.qutebrowser/startpages/search/startpage.html')
c.url.start_pages = ('https://www.startpage.com/do/mypage.pl?prfe=2c5fae38196589d04bfd7217a019dee984f5eb60c1382f9db128da03f37b263a10deea6b7de567fe6df59597283725ae2294dc7c6e2706b450e89a583d967c1b84506ddfb8ea1895567309f04b4b')

c.url.searchengines = {
    'DEFAULT':      'https://www.startpage.com/sp/search?query={}',
    'yt':           'https://www.youtube.com/results?search_query={}',
    'en':           'https://www.dict.cc/?s={}',
    'fr':           'https://defr.dict.cc/?s={}',
    'ru':           'https://deru.dict.cc/?s={}'

}

###### darkmode
config.set("colors.webpage.darkmode.enabled", True)

# dracula css
# c.content.user_stylesheets = '~/Dropbox/.config/.qutebrowser/css/dracula_for_stackoverflow.user.css'

# config.bind('<Ctrl-R>', 'config-cycle content.user_stylesheets "~/Dropbox/.config/.qutebrowser/css/dracula_for_stackoverflow.user.css" ""')

# paywall
c.aliases = {
    'paywall': "open https://12ft.io/proxy?q={url}"
}

#spellchecking
# Spell checking languages. You can check for available languages and
# install dictionaries using scripts/install_dict.py. Run the script
# with -h/--help for instructions.
# Type: List of String
# Valid values:
#   - af-ZA: Afrikaans (South Africa)
#   - bg-BG: Bulgarian (Bulgaria)
#   - ca-ES: Catalan (Spain)
#   - cs-CZ: Czech (Czech Republic)
#   - da-DK: Danish (Denmark)
#   - de-DE: German (Germany)
#   - el-GR: Greek (Greece)
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
##### c.spellcheck.languages = ["en-US", "de-DE"]

#### ad block

# ==== yt add-blocking ====== {{{

from qutebrowser.api import interceptor

def ytfilter(info: interceptor.Request):
     url = info.request_url
     if(url.host() == "www.youtube.com"
        and url.path() == "/get_video_info"
        and "&adformat" in url.query()
        ):
         info.block()

interceptor.register(ytfilter)
# }}}

c.content.blocking.adblock.lists = [ \
        "https://easylist.to/easylist/easylist.txt", \
        "https://easylist.to/easylist/easyprivacy.txt", \
        "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt", \
        "https://easylist.to/easylist/fanboy-annoyance.txt", \
        "https://secure.fanboy.co.nz/fanboy-annoyance.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2020.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt" \
        ]

c.content.blocking.enabled = True
c.content.blocking.hosts.lists = ['https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts']
c.content.blocking.method = 'both'

# keybinding view videos with mpv
config.bind('M', 'hint links spawn /usr/local/bin/mpv {hint-url}')

# keybindings navigation
config.unbind('<q>', mode='normal')
config.unbind('<d>', mode='normal')
config.unbind('<H>', mode='normal')

config.bind('q', 'tab-close')
config.bind('b', 'back')
config.bind('B', 'forward')
config.bind('t', 'open -t')
config.bind('H', 'home')

# # Default font families to use. Whenever "default_family" is used in a
# # font setting, it's replaced with the fonts listed here. If set to an
# # empty value, a system-specific monospace default is used.
# # Type: List of Font, or Font
# c.fonts.default_family = 'Sauce Code Pro Nerd Font Complete'

# # Default font size to use. Whenever "default_size" is used in a font
# # setting, it's replaced with the size listed here. Valid values are
# # either a float value with a "pt" suffix, or an integer value with a
# # "px" suffix.
# # Type: String
# c.fonts.default_size = '11pt'

# # Font used in the completion widget.
# # Type: Font
# c.fonts.completion.entry = '11pt "Source Code Pro"'

# # Font used for the debugging console.
# # Type: Font
# c.fonts.debug_console = '11pt "Source Code Pro"'

# # Font used for prompts.
# # Type: Font
# # c.fonts.prompts = 'default_size sans-serif'

# # Font used in the statusbar.
# # Type: Font
# c.fonts.statusbar = '11pt "Source Code Pro"'


##### dracula

import dracula.draw

# Load existing settings made via :set
config.load_autoconfig()

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})


def blood(c, options = {}):
    palette = {
        'background': '#282a36',
        'background-alt': '#282a36',
        'background-attention': '#181920',
        'border': '#282a36',
        'current-line': '#44475a',
        'selection': '#44475a',
        'foreground': '#f8f8f2',
        'foreground-alt': '#e0e0e0',
        'foreground-attention': '#ffffff',
        'comment': '#6272a4',
        'cyan': '#8be9fd',
        'green': '#50fa7b',
        'orange': '#ffb86c',
        'pink': '#ff79c6',
        'purple': '#bd93f9',
        'red': '#ff5555',
        'yellow': '#f1fa8c'
    }

    spacing = options.get('spacing', {
        'vertical': 5,
        'horizontal': 5
    })

    padding = options.get('padding', {
        'top': spacing['vertical'],
        'right': spacing['horizontal'],
        'bottom': spacing['vertical'],
        'left': spacing['horizontal']
    })

    ## Background color of the completion widget category headers.
    c.colors.completion.category.bg = palette['background']

    ## Bottom border color of the completion widget category headers.
    c.colors.completion.category.border.bottom = palette['border']

    ## Top border color of the completion widget category headers.
    c.colors.completion.category.border.top = palette['border']

    ## Foreground color of completion widget category headers.
    c.colors.completion.category.fg = palette['foreground']

    ## Background color of the completion widget for even rows.
    c.colors.completion.even.bg = palette['background']

    ## Background color of the completion widget for odd rows.
    c.colors.completion.odd.bg = palette['background-alt']

    ## Text color of the completion widget.
    c.colors.completion.fg = palette['foreground']

    ## Background color of the selected completion item.
    c.colors.completion.item.selected.bg = palette['selection']

    ## Bottom border color of the selected completion item.
    c.colors.completion.item.selected.border.bottom = palette['selection']

    ## Top border color of the completion widget category headers.
    c.colors.completion.item.selected.border.top = palette['selection']

    ## Foreground color of the selected completion item.
    c.colors.completion.item.selected.fg = palette['foreground']

    ## Foreground color of the matched text in the completion.
    c.colors.completion.match.fg = palette['orange']

    ## Color of the scrollbar in completion view
    c.colors.completion.scrollbar.bg = palette['background']

    ## Color of the scrollbar handle in completion view.
    c.colors.completion.scrollbar.fg = palette['foreground']

    ## Background color for the download bar.
    c.colors.downloads.bar.bg = palette['background']

    ## Background color for downloads with errors.
    c.colors.downloads.error.bg = palette['background']

    ## Foreground color for downloads with errors.
    c.colors.downloads.error.fg = palette['red']

    ## Color gradient stop for download backgrounds.
    c.colors.downloads.stop.bg = palette['background']

    ## Color gradient interpolation system for download backgrounds.
    ## Type: ColorSystem
    ## Valid values:
    ##   - rgb: Interpolate in the RGB color system.
    ##   - hsv: Interpolate in the HSV color system.
    ##   - hsl: Interpolate in the HSL color system.
    ##   - none: Don't show a gradient.
    c.colors.downloads.system.bg = 'none'

    ## Background color for hints. Note that you can use a `rgba(...)` value
    ## for transparency.
    c.colors.hints.bg = palette['background']

    ## Font color for hints.
    c.colors.hints.fg = palette['purple']

    ## Hints
    c.hints.border = '1px solid ' + palette['background-alt']

    ## Font color for the matched part of hints.
    c.colors.hints.match.fg = palette['foreground-alt']

    ## Background color of the keyhint widget.
    c.colors.keyhint.bg = palette['background']

    ## Text color for the keyhint widget.
    c.colors.keyhint.fg = palette['purple']

    ## Highlight color for keys to complete the current keychain.
    c.colors.keyhint.suffix.fg = palette['selection']

    ## Background color of an error message.
    c.colors.messages.error.bg = palette['background']

    ## Border color of an error message.
    c.colors.messages.error.border = palette['background-alt']

    ## Foreground color of an error message.
    c.colors.messages.error.fg = palette['red']

    ## Background color of an info message.
    c.colors.messages.info.bg = palette['background']

    ## Border color of an info message.
    c.colors.messages.info.border = palette['background-alt']

    ## Foreground color an info message.
    c.colors.messages.info.fg = palette['comment']

    ## Background color of a warning message.
    c.colors.messages.warning.bg = palette['background']

    ## Border color of a warning message.
    c.colors.messages.warning.border = palette['background-alt']

    ## Foreground color a warning message.
    c.colors.messages.warning.fg = palette['red']

    ## Background color for prompts.
    c.colors.prompts.bg = palette['background']

    # ## Border used around UI elements in prompts.
    c.colors.prompts.border = '1px solid ' + palette['background-alt']

    ## Foreground color for prompts.
    c.colors.prompts.fg = palette['cyan']

    ## Background color for the selected item in filename prompts.
    c.colors.prompts.selected.bg = palette['selection']

    ## Background color of the statusbar in caret mode.
    c.colors.statusbar.caret.bg = palette['background']

    ## Foreground color of the statusbar in caret mode.
    c.colors.statusbar.caret.fg = palette['orange']

    ## Background color of the statusbar in caret mode with a selection.
    c.colors.statusbar.caret.selection.bg = palette['background']

    ## Foreground color of the statusbar in caret mode with a selection.
    c.colors.statusbar.caret.selection.fg = palette['orange']

    ## Background color of the statusbar in command mode.
    c.colors.statusbar.command.bg = palette['background']

    ## Foreground color of the statusbar in command mode.
    c.colors.statusbar.command.fg = palette['pink']

    ## Background color of the statusbar in private browsing + command mode.
    c.colors.statusbar.command.private.bg = palette['background']

    ## Foreground color of the statusbar in private browsing + command mode.
    c.colors.statusbar.command.private.fg = palette['foreground-alt']

    ## Background color of the statusbar in insert mode.
    c.colors.statusbar.insert.bg = palette['background-attention']

    ## Foreground color of the statusbar in insert mode.
    c.colors.statusbar.insert.fg = palette['foreground-attention']

    ## Background color of the statusbar.
    c.colors.statusbar.normal.bg = palette['background']

    ## Foreground color of the statusbar.
    c.colors.statusbar.normal.fg = palette['foreground']

    ## Background color of the statusbar in passthrough mode.
    c.colors.statusbar.passthrough.bg = palette['background']

    ## Foreground color of the statusbar in passthrough mode.
    c.colors.statusbar.passthrough.fg = palette['orange']

    ## Background color of the statusbar in private browsing mode.
    c.colors.statusbar.private.bg = palette['background-alt']

    ## Foreground color of the statusbar in private browsing mode.
    c.colors.statusbar.private.fg = palette['foreground-alt']

    ## Background color of the progress bar.
    c.colors.statusbar.progress.bg = palette['background']

    ## Foreground color of the URL in the statusbar on error.
    c.colors.statusbar.url.error.fg = palette['red']

    ## Default foreground color of the URL in the statusbar.
    c.colors.statusbar.url.fg = palette['foreground']

    ## Foreground color of the URL in the statusbar for hovered links.
    c.colors.statusbar.url.hover.fg = palette['cyan']

    ## Foreground color of the URL in the statusbar on successful load
    c.colors.statusbar.url.success.http.fg = palette['green']

    ## Foreground color of the URL in the statusbar on successful load
    c.colors.statusbar.url.success.https.fg = palette['green']

    ## Foreground color of the URL in the statusbar when there's a warning.
    c.colors.statusbar.url.warn.fg = palette['yellow']

    ## Status bar padding
    c.statusbar.padding = padding

    ## Background color of the tab bar.
    ## Type: QtColor
    c.colors.tabs.bar.bg = palette['selection']

    ## Background color of unselected even tabs.
    ## Type: QtColor
    c.colors.tabs.even.bg = palette['selection']

    ## Foreground color of unselected even tabs.
    ## Type: QtColor
    c.colors.tabs.even.fg = palette['foreground']

    ## Color for the tab indicator on errors.
    ## Type: QtColor
    c.colors.tabs.indicator.error = palette['red']

    ## Color gradient start for the tab indicator.
    ## Type: QtColor
    c.colors.tabs.indicator.start = palette['orange']

    ## Color gradient end for the tab indicator.
    ## Type: QtColor
    c.colors.tabs.indicator.stop = palette['green']

    ## Color gradient interpolation system for the tab indicator.
    ## Type: ColorSystem
    ## Valid values:
    ##   - rgb: Interpolate in the RGB color system.
    ##   - hsv: Interpolate in the HSV color system.
    ##   - hsl: Interpolate in the HSL color system.
    ##   - none: Don't show a gradient.
    c.colors.tabs.indicator.system = 'none'

    ## Background color of unselected odd tabs.
    ## Type: QtColor
    c.colors.tabs.odd.bg = palette['selection']

    ## Foreground color of unselected odd tabs.
    ## Type: QtColor
    c.colors.tabs.odd.fg = palette['foreground']

    # ## Background color of selected even tabs.
    # ## Type: QtColor
    c.colors.tabs.selected.even.bg = palette['background']

    # ## Foreground color of selected even tabs.
    # ## Type: QtColor
    c.colors.tabs.selected.even.fg = palette['foreground']

    # ## Background color of selected odd tabs.
    # ## Type: QtColor
    c.colors.tabs.selected.odd.bg = palette['background']

    # ## Foreground color of selected odd tabs.
    # ## Type: QtColor
    c.colors.tabs.selected.odd.fg = palette['foreground']

    ## Tab padding
    c.tabs.padding = padding
    c.tabs.indicator.width = 1
    c.tabs.favicons.scale = 1

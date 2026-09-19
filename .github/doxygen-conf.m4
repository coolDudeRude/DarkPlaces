PROJECT_BRIEF             = "Quake 1 Engine by LadyHavoc"

HAVE_DOT                  = YES
DOT_IMAGE_FORMAT          = svg
DOT_TRANSPARENT           = YES
DOCS_CALL_GRAPHS          = 1
CALL_GRAPH                = NO
CALLER_GRAPH              = NO
EXCLUDE                   += __BUILD_DIR .git .github html makefile.inc build-obj
EXCLUDE_PATTERNS          += */__BUILD_DIR/* */.git/* .github/* build-obj/*
INLINE_SOURCES            = NO
NUM_PROC_THREADS          = 0
QUIET                     = NO
#WARN_LOGFILE             = __BUILD_DIR/doxygen-warnings.log
SEARCHENGINE              = YES
SERVER_BASED_SEARCH       = NO
GENERATE_TREEVIEW         = YES
DISABLE_INDEX             = NO
FULL_SIDEBAR              = NO

HTML_COLORSTYLE           = LIGHT
HTML_COLORSTYLE_HUE       = 209
HTML_COLORSTYLE_SAT       = 255
HTML_COLORSTYLE_GAMMA     = 113


HTML_HEADER               = __HEADER_FILE


HTML_EXTRA_STYLESHEET     = __THEME_DIR/doxygen-awesome.css \
                            __THEME_DIR/doxygen-awesome-sidebar-only.css \
                            __THEME_DIR/doxygen-awesome-sidebar-only-darkmode-toggle.css \
                            __THEME_DIR/doxygen-custom/custom.css \
                            __THEME_DIR/doxygen-custom/theme-robot.css \
                            __THEME_DIR/doxygen-custom/theme-round.css

HTML_EXTRA_FILES          = __THEME_DIR/doxygen-awesome-darkmode-toggle.js \
                            __THEME_DIR/doxygen-awesome-fragment-copy-button.js \
                            __THEME_DIR/doxygen-awesome-paragraph-link.js \
                            __THEME_DIR/doxygen-awesome-interactive-toc.js \
                            __THEME_DIR/doxygen-awesome-tabs.js \
                            __THEME_DIR/doxygen-custom/toggle-alternative-theme.js

# doxygen-awesome-css provides this.
HTML_COPY_CLIPBOARD       = NO


SHOW_ENUM_VALUES          = YES
TREEVIEW_WIDTH            = 335


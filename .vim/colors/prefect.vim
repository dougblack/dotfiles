" prefect.vim color scheme

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "prefect"

" Interface elements {{{1
hi Cursor                       guifg=#000000   guibg=#fffd00   gui=NONE
hi Visual                       guifg=NONE      guibg=#333333   gui=NONE
hi CursorLine                   guifg=NONE      guibg=#1b1b1b   gui=NONE
hi CursorColumn                 guifg=NONE      guibg=#1b1b1b   gui=NONE
hi LineNr                       guifg=#868686   guibg=#141414   gui=NONE
hi VertSplit                    guifg=#3f3f3f   guibg=#3f3f3f   gui=NONE
hi MatchParen                   guifg=#000000   guibg=#999700   gui=NONE
hi StatusLine                   guifg=#3f3f3f   guibg=#d6d6d6   gui=bold
hi StatusLineNC                 guifg=#f8f8f8   guibg=#3f3f3f   gui=NONE
hi Pmenu                        guifg=#cf6a4c   guibg=NONE      gui=NONE
hi PmenuSel                     guifg=NONE      guibg=#919309   gui=NONE
hi IncSearch                    guifg=NONE      guibg=#343a44   gui=NONE
hi Search                       guifg=NONE      guibg=#343a44   gui=NONE
hi SignColumn                   guifg=#A6E22E   guibg=#141414
hi Directory                    guifg=#cf6a4c   guibg=NONE      gui=NONE
hi Folded                       guifg=#5f5a60   guibg=#141414   gui=NONE

hi ErrorMsg                     guifg=NONE      guibg=NONE      gui=NONE
hi WarningMsg                   guifg=NONE      guibg=NONE      gui=NONE
hi NonText                      guifg=#4f4f4f   guibg=#1b1b1b   gui=NONE

hi Title                        guifg=#f8f8f8   guibg=NONE      gui=bold
hi SpecialKey                   guifg=#4f4f4f   guibg=#1b1b1b   gui=NONE

" Syntax elements {{{1
" Basic elements {{{2
hi Normal                       guifg=#f8f8f8   guibg=#141414   gui=NONE
hi Comment                      guifg=#5f5a60   guibg=NONE      gui=italic

" Constants {{{2
hi Constant                     guifg=#cf6a4c   guibg=NONE      gui=NONE
hi Character                    guifg=#cf6a4c   guibg=NONE      gui=NONE
hi Number                       guifg=#cf6a4c   guibg=NONE      gui=NONE
hi Boolean                      guifg=#cf6a4c   guibg=NONE      gui=NONE
hi Float                        guifg=#cf6a4c   guibg=NONE      gui=NONE
hi String                       guifg=#8f9d6a   guibg=NONE      gui=NONE

" Identifiers {{{2
hi Function                     guifg=#cf6a4c   guibg=NONE      gui=NONE
hi Identifier                   guifg=#b1d631   guibg=NONE      gui=NONE

" Preprocessor instructions {{{2
hi Define                       guifg=#cf6a4c   guibg=NONE      gui=NONE
hi Include                      guifg=#728aa2   guibg=NONE      gui=NONE
hi PreProc                      guifg=#728aa2   guibg=NONE      gui=NONE

" Keywords {{{2
hi Keyword                      guifg=#728aa2   guibg=NONE      gui=NONE
hi Statement                    guifg=#728aa2   guibg=NONE      gui=NONE
hi Conditional                  guifg=#728aa2   guibg=NONE      gui=NONE
hi Operator                     guifg=#728aa2   guibg=NONE      gui=NONE
hi Label                        guifg=#8f9d6a   guibg=NONE      gui=NONE

" Types {{{2
hi Type                         guifg=#cf6a4c   guibg=NONE      gui=NONE
hi StorageClass                 guifg=#f9ee98   guibg=NONE      gui=NONE

" Special symbols {{{2
hi Special                      guifg=#728aa2   guibg=NONE      gui=NONE
hi SpecialChar                  guifg=#f8f8f8   guibg=NONE      gui=NONE
hi SpecialComment               guifg=#f8f8f8   guibg=NONE      gui=NONE
hi Delimiter                    guifg=#f8f8f8   guibg=NONE      gui=NONE
hi Debug                        guifg=#f8f8f8   guibg=NONE      gui=NONE
hi Tag                          guifg=#cf6a4c   guibg=NONE      gui=NONE

" Diff {{{2
hi DiffAdd                      guifg=#D2EBBE guibg=#437019
hi DiffDelete                   guifg=#40000A guibg=#700009
hi DiffChange                   guibg=#2B5B77
hi DiffText                     guifg=#8FBFDC guibg=#000000 gui=reverse

hi! link diffRemoved Constant
hi! link diffAdded String

" Extra attention {{{2
hi Todo                         guifg=#5f5a60   guibg=NONE      gui=inverse,bold,italic
hi Underlined                   guifg=NONE      guibg=NONE      gui=underline

" Filetype highlighting {{{1
" Ruby {{{2
hi rubyClass                    guifg=#728aa2   guibg=NONE      gui=NONE
hi rubyFunction                 guifg=#cf6a4c   guibg=NONE      gui=NONE
hi rubyInterpolationDelimiter   guifg=NONE      guibg=NONE      gui=NONE
hi rubySymbol                   guifg=#cf6a4c   guibg=NONE      gui=NONE
hi rubyConstant                 guifg=#9b859d   guibg=NONE      gui=NONE
hi rubyStringDelimiter          guifg=#8f9d6a   guibg=NONE      gui=NONE
hi rubyBlockParameter           guifg=#7587a6   guibg=NONE      gui=NONE
hi rubyInstanceVariable         guifg=#7587a6   guibg=NONE      gui=NONE
hi rubyInclude                  guifg=#728aa2   guibg=NONE      gui=NONE
hi rubyGlobalVariable           guifg=#7587a6   guibg=NONE      gui=NONE
hi rubyRegexp                   guifg=#e9c062   guibg=NONE      gui=NONE
hi rubyRegexpDelimiter          guifg=#e9c062   guibg=NONE      gui=NONE
hi rubyEscape                   guifg=#cf6a4c   guibg=NONE      gui=NONE
hi rubyControl                  guifg=#728aa2   guibg=NONE      gui=NONE
hi rubyClassVariable            guifg=#7587a6   guibg=NONE      gui=NONE
hi rubyOperator                 guifg=#728aa2   guibg=NONE      gui=NONE
hi rubyException                guifg=#728aa2   guibg=NONE      gui=NONE
hi rubyPseudoVariable           guifg=#7587a6   guibg=NONE      gui=NONE
" Ruby on Rails {{{2
hi rubyRailsUserClass           guifg=#9b859d   guibg=NONE      gui=NONE
hi rubyRailsARAssociationMethod guifg=#dad085   guibg=NONE      gui=NONE
hi rubyRailsARMethod            guifg=#dad085   guibg=NONE      gui=NONE
hi rubyRailsRenderMethod        guifg=#dad085   guibg=NONE      gui=NONE
hi rubyRailsMethod              guifg=#dad085   guibg=NONE      gui=NONE
" ERB {{{2
hi erubyDelimiter               guifg=NONE      guibg=NONE      gui=NONE
hi erubyComment                 guifg=#5f5a60   guibg=NONE      gui=italic
hi erubyRailsMethod             guifg=#dad085   guibg=NONE      gui=NONE
" HTML {{{2
hi htmlTag                      guifg=#ac885b   guibg=NONE      gui=NONE
hi htmlEndTag                   guifg=#ac885b   guibg=NONE      gui=NONE
hi htmlTagName                  guifg=#ac885b   guibg=NONE      gui=NONE
hi htmlArg                      guifg=#ac885b   guibg=NONE      gui=NONE
hi htmlSpecialChar              guifg=#cf6a4c   guibg=NONE      gui=NONE
" JavaScript {{{2
hi javaScriptFunction           guifg=#f9ee98   guibg=NONE      gui=NONE
hi javaScriptRailsFunction      guifg=#dad085   guibg=NONE      gui=NONE
hi javaScriptBraces             guifg=NONE      guibg=NONE      gui=NONE
" YAML {{{2
hi yamlKey                      guifg=#cf6a4c   guibg=NONE      gui=NONE
hi yamlAnchor                   guifg=#7587a6   guibg=NONE      gui=NONE
hi yamlAlias                    guifg=#7587a6   guibg=NONE      gui=NONE
hi yamlDocumentHeader           guifg=#8f9d6a   guibg=NONE      gui=NONE
" CSS {{{2
hi cssURL                       guifg=#7587a6   guibg=NONE      gui=NONE
hi cssFunctionName              guifg=#dad085   guibg=NONE      gui=NONE
hi cssColor                     guifg=#cf6a4c   guibg=NONE      gui=NONE
hi cssPseudoClassId             guifg=#cf6a4c   guibg=NONE      gui=NONE
hi cssClassName                 guifg=#cf6a4c   guibg=NONE      gui=NONE
hi cssValueLength               guifg=#cf6a4c   guibg=NONE      gui=NONE
hi cssCommonAttr                guifg=#cf6a4c   guibg=NONE      gui=NONE
hi cssBraces                    guifg=NONE      guibg=NONE      gui=NONE
" Python {{{2
hi link pythonFunction Identifier
hi link pythonBuiltinFunc Statement
hi link pythonStrFormatting SpecialComment

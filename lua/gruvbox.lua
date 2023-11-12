local colors = {
  bg0     = "#282828",
  bg1     = "#3c3836",
  bg2     = "#504945",
  bg3     = "#665c54",
  bg4     = "#7c6f64",
  fg0     = "#fbf1c7",
  fg1     = "#ebdbb2",
  fg2     = "#d5c4a1",
  fg3     = "#bdae93",
  fg4     = "#a89984",
  red     = "#ff461f", -- 朱砂色
  dred    = "#cc241d",
  green   = "#b8bb26",
  lgreen  = "#afd787",
  dgreen  = "#98971a",
  yellow  = "#fabd2f",
  dyellow = "#d79921",
  lyellow = "#d8ff1f",
  blue    = "#88abda",
  dblue   = "#83a598",
  cyan    = "#1fd8ff", -- 青蓝色
  dcyan   = "#a59aca", -- 雪青色
  purple  = "#d3869b",
  dpurple = "#b16286",
  aqua    = "#8ec07c",
  daqua   = "#689d6a",
  orange  = "#f0945d",
  dorange = "#d65d0e",
  gray    = "#928374",
  lgray   = "#ebeee8",
  violet  = "#a9a1e1", -- 紫罗兰
  magenta = "#c678dd", -- 品红色
}

local M = {}

M.setcolor = function()
  local config = M.config

  vim.g.terminal_color_0 = colors.bg0
  vim.g.terminal_color_8 = colors.gray
  vim.g.terminal_color_1 = colors.dred
  vim.g.terminal_color_9 = colors.red
  vim.g.terminal_color_2 = colors.dgreen
  vim.g.terminal_color_10 = colors.green
  vim.g.terminal_color_3 = colors.dyellow
  vim.g.terminal_color_11 = colors.yellow
  vim.g.terminal_color_4 = colors.dblue
  vim.g.terminal_color_12 = colors.dblue
  vim.g.terminal_color_5 = colors.dpurple
  vim.g.terminal_color_13 = colors.purple
  vim.g.terminal_color_6 = colors.daqua
  vim.g.terminal_color_14 = colors.aqua
  vim.g.terminal_color_7 = colors.fg4
  vim.g.terminal_color_15 = colors.fg1

  local groups = {
    -- Base groups
    GruvboxFg0 = { fg = colors.fg0 },
    GruvboxFg1 = { fg = colors.fg1 },
    GruvboxFg2 = { fg = colors.fg2 },
    GruvboxFg3 = { fg = colors.fg3 },
    GruvboxFg4 = { fg = colors.fg4 },
    GruvboxGray = { fg = colors.gray },
    GruvboxBg0 = { fg = colors.bg0 },
    GruvboxBg1 = { fg = colors.bg1 },
    GruvboxBg2 = { fg = colors.bg2 },
    GruvboxBg3 = { fg = colors.bg3 },
    GruvboxBg4 = { fg = colors.bg4 },
    GruvboxRed = { fg = colors.red },
    GruvboxRedBold = { fg = colors.red, bold = config.bold },
    GruvboxGreen = { fg = colors.green },
    GruvboxGreenBold = { fg = colors.green, bold = config.bold },
    GruvboxYellow = { fg = colors.yellow },
    GruvboxYellowBold = { fg = colors.yellow, bold = config.bold },
    GruvboxBlue = { fg = colors.dblue },
    GruvboxBlueBold = { fg = colors.dblue, bold = config.bold },
    GruvboxPurple = { fg = colors.purple },
    GruvboxPurpleBold = { fg = colors.purple, bold = config.bold },
    GruvboxAqua = { fg = colors.aqua },
    GruvboxAquaBold = { fg = colors.aqua, bold = config.bold },
    GruvboxOrange = { fg = colors.orange },
    GruvboxOrangeBold = { fg = colors.orange, bold = config.bold },
    GruvboxRedSign = { fg = colors.red, reverse = config.invert_signs },
    GruvboxGreenSign = { fg = colors.green, reverse = config.invert_signs },
    GruvboxYellowSign = { fg = colors.yellow, reverse = config.invert_signs },
    GruvboxLYellowSign = { fg = colors.lyellow, reverse = config.invert_signs },
    GruvboxBlueSign = { fg = colors.blue, reverse = config.invert_signs },
    GruvboxPurpleSign = { fg = colors.purple, reverse = config.invert_signs },
    GruvboxAquaSign = { fg = colors.aqua, reverse = config.invert_signs },
    GruvboxOrangeSign = { fg = colors.orange, reverse = config.invert_signs },
    GruvboxCyanSign = { fg = colors.cyan, reverse = config.invert_signs },
    GruvboxDCyanSign = { fg = colors.dcyan, reverse = config.invert_signs },
    GruvboxLGraySign = { fg = colors.lgray, reverse = config.invert_signs },
    GruvboxMagentaSign = { fg = colors.magenta, reverse = config.invert_signs },
    GruvboxRedUnderline = { undercurl = config.undercurl, sp = colors.red },
    GruvboxGreenUnderline = { undercurl = config.undercurl, sp = colors.green },
    GruvboxYellowUnderline = { undercurl = config.undercurl, sp = colors.yellow },
    GruvboxBlueUnderline = { undercurl = config.undercurl, sp = colors.dblue },
    GruvboxPurpleUnderline = { undercurl = config.undercurl, sp = colors.purple },
    GruvboxAquaUnderline = { undercurl = config.undercurl, sp = colors.aqua },
    GruvboxOrangeUnderline = { undercurl = config.undercurl, sp = colors.orange },
    Normal = { fg = colors.fg1, bg = colors.bg0 },
    NormalFloat = { fg = colors.fg1, bg = colors.bg0 },
    FloatWin = { fg = colors.fg0, bg = colors.bg0 },
    FloatWinU = { fg = colors.fg0, bg = colors.bg1 },
    NormalNC = { link = "Normal" },
    CursorLine = { bg = colors.bg1 },
    CursorColumn = { link = "CursorLine" },
    TabLineFill = { fg = colors.bg0, bg = colors.bg0, bold = config.bold },
    TabLineTop = { fg = colors.bg0, bg = colors.bg0, bold = config.bold },
    TabLineSel = { fg = colors.lgreen, bg = colors.bg0, bold = config.bold },
    TabLine = { fg = colors.bg1, bg = colors.bg0, bold = config.bold },
    MatchParen = { bg = colors.bg3, bold = config.bold },
    ColorColumn = { bg = colors.bg1 },
    Conceal = { fg = colors.dblue },
    CursorLineNr = { fg = colors.yellow, bg = colors.bg1 },
    NonText = { link = "GruvboxBg2" },
    SpecialKey = { link = "GruvboxFg4" },
    --Visual = { bg = colors.bg3, reverse = config.invert_selection },
    Visual = { reverse = config.inverse },
    VisualNOS = { link = "Visual" },
    Search = { fg = colors.yellow, bg = colors.bg0, reverse = config.inverse },
    IncSearch = { fg = colors.orange, bg = colors.bg0, reverse = config.inverse },
    CurSearch = { link = "IncSearch" },
    QuickFixLine = { fg = colors.bg0, bg = colors.yellow, bold = config.bold },
    Underlined = { fg = colors.dblue, underline = config.underline },
    StatusLine = { fg = colors.bg0, bg = colors.bg0, reverse = config.inverse },
    StatusLineNC = { fg = colors.bg0, bg = colors.bg0, reverse = config.inverse },
    StatusLineGreen = { fg = colors.lgreen, bg = colors.bg0 },
    StatusLineBlue = { fg = colors.blue, bg = colors.bg0 },
    StatusLineYellow = { fg = colors.yellow, bg = colors.bg0 },
    WinBar = { fg = colors.fg4, bg = colors.bg0 },
    WinBarNC = { fg = colors.fg3, bg = colors.bg0 },
    WinSeparator = { fg = colors.bg3, bg = colors.bg0 },
    WildMenu = { fg = colors.dblue, bg = colors.bg2, bold = config.bold },
    Directory = { link = "GruvboxBlueBold" },
    Title = { link = "GruvboxGreenBold" },
    ErrorMsg = { fg = colors.bg0, bg = colors.red, bold = config.bold },
    MoreMsg = { link = "GruvboxYellowBold" },
    ModeMsg = { link = "GruvboxYellowBold" },
    Question = { link = "GruvboxOrangeBold" },
    WarningMsg = { link = "GruvboxRedBold" },
    LineNr = { fg = colors.bg4 },
    SignColumn = { bg = colors.bg0 },
    Folded = { fg = colors.gray, bg = colors.bg1, italic = config.italic.folds },
    FoldColumn = { fg = colors.gray, bg = colors.bg1 },
    Cursor = { reverse = config.inverse },
    vCursor = { link = "Cursor" },
    iCursor = { link = "Cursor" },
    lCursor = { link = "Cursor" },
    Special = { link = "GruvboxOrange" },
    Comment = { fg = colors.gray, italic = config.italic.comments },
    -- Todo         anything that needs extra attention; mostly the
    --              keywords TODO FIXME and XXX
    Todo = { fg = colors.bg0, bg = colors.yellow, bold = config.bold, italic = config.italic.comments },
    Done = { fg = colors.orange, bold = config.bold, italic = config.italic.comments },
    Error = { fg = colors.red, bold = config.bold, reverse = config.inverse },
    Statement = { link = "GruvboxRed" },
    Conditional = { link = "GruvboxRed" },
    Repeat = { link = "GruvboxRed" },
    Label = { link = "GruvboxRed" },
    Exception = { link = "GruvboxRed" },
    Operator = { fg = colors.orange, italic = config.italic.operators },
    Keyword = { link = "GruvboxRed" },
    Identifier = { link = "GruvboxBlue" },
    Function = { link = "GruvboxGreenBold" },
    PreProc = { link = "GruvboxAqua" },
    Include = { link = "GruvboxAqua" },
    Define = { link = "GruvboxAqua" },
    Macro = { link = "GruvboxAqua" },
    PreCondit = { link = "GruvboxAqua" },
    Constant = { link = "GruvboxPurple" },
    Character = { link = "GruvboxPurple" },
    String = { fg = colors.green, italic = config.italic.strings },
    Boolean = { link = "GruvboxPurple" },
    Number = { link = "GruvboxPurple" },
    Float = { link = "GruvboxPurple" },
    Type = { link = "GruvboxYellow" },
    StorageClass = { link = "GruvboxOrange" },
    Structure = { link = "GruvboxAqua" },
    Typedef = { link = "GruvboxYellow" },
    --Pmenu = { fg = colors.fg1, bg = colors.bg2 },
    --PmenuSel = { fg = colors.bg2, bg = colors.dblue, bold = config.bold },
    PmenuSbar = { bg = colors.bg2 },
    PmenuThumb = { bg = colors.bg4 },
    DiffDelete = { fg = colors.red, bg = colors.bg0, reverse = config.inverse },
    DiffAdd = { fg = colors.green, bg = colors.bg0, reverse = config.inverse },
    DiffChange = { fg = colors.aqua, bg = colors.bg0, reverse = config.inverse },
    DiffText = { fg = colors.yellow, bg = colors.bg0, reverse = config.inverse },
    SpellCap = { link = "GruvboxBlueUnderline" },
    SpellBad = { link = "GruvboxRedUnderline" },
    SpellLocal = { link = "GruvboxAquaUnderline" },
    SpellRare = { link = "GruvboxPurpleUnderline" },
    Whitespace = { fg = colors.bg2 },
    -- NetRw
    netrwDir = { link = "GruvboxAqua" },
    netrwClassify = { link = "GruvboxAqua" },
    netrwLink = { link = "GruvboxGray" },
    netrwSymLink = { link = "GruvboxFg1" },
    netrwExe = { link = "GruvboxYellow" },
    netrwComment = { link = "GruvboxGray" },
    netrwList = { link = "GruvboxBlue" },
    netrwHelpCmd = { link = "GruvboxAqua" },
    netrwCmdSep = { link = "GruvboxFg3" },
    netrwVersion = { link = "GruvboxGreen" },
    -- LSP Diagnostic
    DiagnosticError = { link = "GruvboxRed" },
    DiagnosticSignError = { link = "GruvboxRedSign" },
    DiagnosticUnderlineError = { link = "GruvboxRedUnderline" },
    DiagnosticWarn = { link = "GruvboxYellow" },
    DiagnosticSignWarn = { link = "GruvboxYellowSign" },
    DiagnosticUnderlineWarn = { link = "GruvboxYellowUnderline" },
    DiagnosticInfo = { link = "GruvboxBlue" },
    DiagnosticSignInfo = { link = "GruvboxBlueSign" },
    DiagnosticUnderlineInfo = { link = "GruvboxBlueUnderline" },
    DiagnosticHint = { link = "GruvboxAqua" },
    DiagnosticSignHint = { link = "GruvboxAquaSign" },
    DiagnosticUnderlineHint = { link = "GruvboxAquaUnderline" },
    DiagnosticFloatingError = { link = "GruvboxRed" },
    DiagnosticFloatingWarn = { link = "GruvboxOrange" },
    DiagnosticFloatingInfo = { link = "GruvboxBlue" },
    DiagnosticFloatingHint = { link = "GruvboxAqua" },
    DiagnosticVirtualTextError = { link = "GruvboxRed" },
    DiagnosticVirtualTextWarn = { link = "GruvboxYellow" },
    DiagnosticVirtualTextInfo = { link = "GruvboxBlue" },
    DiagnosticVirtualTextHint = { link = "GruvboxAqua" },
    LspReferenceRead = { link = "GruvboxYellowBold" },
    LspReferenceText = { link = "GruvboxYellowBold" },
    LspReferenceWrite = { link = "GruvboxOrangeBold" },
    LspCodeLens = { link = "GruvboxGray" },
    LspSignatureActiveParameter = { link = "Search" },

    -- nvim-treesitter
    -- See `nvim-treesitter/CONTRIBUTING.md`

    --
    -- Misc
    --
    -- @comment               ; line and block comments
    ["@comment"] = { link = "Comment" },
    -- @comment.documentation ; comments documenting code
    -- @none                  ; completely disable the highlight
    ["@none"] = { bg = "NONE", fg = "NONE" },
    -- @preproc               ; various preprocessor directives & shebangs
    ["@preproc"] = { link = "PreProc" },
    -- @define                ; preprocessor definition directives
    ["@define"] = { link = "Define" },
    -- @operator              ; symbolic operators (e.g. `+` / `*`)
    ["@operator"] = { link = "Operator" },

    --
    -- Punctuation
    --
    -- @punctuation.delimiter ; delimiters (e.g. `;` / `.` / `,`)
    ["@punctuation.delimiter"] = { link = "Delimiter" },
    -- @punctuation.bracket   ; brackets (e.g. `()` / `{}` / `[]`)
    ["@punctuation.bracket"] = { link = "Delimiter" },
    -- @punctuation.special   ; special symbols (e.g. `{}` in string interpolation)
    ["@punctuation.special"] = { link = "Delimiter" },

    --
    -- Literals
    --
    -- @string               ; string literals
    ["@string"] = { link = "String" },
    -- @string.documentation ; string documenting code (e.g. Python docstrings)
    -- @string.regex         ; regular expressions
    ["@string.regex"] = { link = "String" },
    -- @string.escape        ; escape sequences
    ["@string.escape"] = { link = "SpecialChar" },
    -- @string.special       ; other special strings (e.g. dates)
    ["@string.special"] = { link = "SpecialChar" },

    -- @character            ; character literals
    ["@character"] = { link = "Character" },
    -- @character.special    ; special characters (e.g. wildcards)
    ["@character.special"] = { link = "SpecialChar" },

    -- @boolean              ; boolean literals
    ["@boolean"] = { link = "Boolean" },
    -- @number               ; numeric literals
    ["@number"] = { link = "Number" },
    -- @float                ; floating-point number literals
    ["@float"] = { link = "Float" },

    --
    -- Functions
    --
    -- @function         ; function definitions
    ["@function"] = { link = "Function" },
    -- @function.builtin ; built-in functions
    ["@function.builtin"] = { link = "Special" },
    -- @function.call    ; function calls
    ["@function.call"] = { link = "Function" },
    -- @function.macro   ; preprocessor macros
    ["@function.macro"] = { link = "Macro" },

    -- @method           ; method definitions
    ["@method"] = { link = "Function" },
    -- @method.call      ; method calls
    ["@method.call"] = { link = "Function" },

    -- @constructor      ; constructor calls and definitions
    ["@constructor"] = { link = "Special" },
    -- @parameter        ; parameters of a function
    ["@parameter"] = { link = "Identifier" },

    --
    -- Keywords
    --
    -- @keyword             ; various keywords
    ["@keyword"] = { link = "Keyword" },
    -- @keyword.coroutine   ; keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
    -- @keyword.function    ; keywords that define a function (e.g. `func` in Go, `def` in Python)
    ["@keyword.function"] = { link = "Keyword" },
    -- @keyword.operator    ; operators that are English words (e.g. `and` / `or`)
    ["@keyword.operator"] = { link = "GruvboxRed" },
    -- @keyword.return      ; keywords like `return` and `yield`
    ["@keyword.return"] = { link = "Keyword" },

    -- @conditional         ; keywords related to conditionals (e.g. `if` / `else`)
    ["@conditional"] = { link = "Conditional" },
    -- @conditional.ternary ; ternary operator (e.g. `?` / `:`)

    -- @repeat              ; keywords related to loops (e.g. `for` / `while`)
    ["@repeat"] = { link = "Repeat" },
    -- @debug               ; keywords related to debugging
    ["@debug"] = { link = "Debug" },
    -- @label               ; GOTO and other labels (e.g. `label:` in C)
    ["@label"] = { link = "Label" },
    -- @include             ; keywords for including modules (e.g. `import` / `from` in Python)
    ["@include"] = { link = "Include" },
    -- @exception           ; keywords related to exceptions (e.g. `throw` / `catch`)
    ["@exception"] = { link = "Exception" },

    --
    -- Types
    --
    -- @type            ; type or class definitions and annotations
    ["@type"] = { link = "Type" },
    -- @type.builtin    ; built-in types
    ["@type.builtin"] = { link = "Type" },
    -- @type.definition ; type definitions (e.g. `typedef` in C)
    ["@type.definition"] = { link = "Typedef" },
    -- @type.qualifier  ; type qualifiers (e.g. `const`)
    ["@type.qualifier"] = { link = "Type" },

    -- @storageclass    ; modifiers that affect storage in memory or life-time
    ["@storageclass"] = { link = "StorageClass" },
    -- @attribute       ; attribute annotations (e.g. Python decorators)
    ["@attribute"] = { link = "PreProc" },
    -- @field           ; object and struct fields
    ["@field"] = { link = "Identifier" },
    -- @property        ; similar to `@field`
    ["@property"] = { link = "Identifier" },

    --
    -- Identifiers
    --
    -- @variable         ; various variable names
    ["@variable"] = { link = "GruvboxFg1" },
    -- @variable.builtin ; built-in variable names (e.g. `this`)
    ["@variable.builtin"] = { link = "Special" },

    -- @constant         ; constant identifiers
    ["@constant"] = { link = "Constant" },
    -- @constant.builtin ; built-in constant values
    ["@constant.builtin"] = { link = "Special" },
    -- @constant.macro   ; constants defined by the preprocessor
    ["@constant.macro"] = { link = "Define" },

    -- @namespace        ; modules or namespaces
    ["@namespace"] = { link = "GruvboxFg1" },
    -- @symbol           ; symbols or atoms
    ["@symbol"] = { link = "Identifier" },

    --
    -- Text
    --
    -- @text                  ; non-structured text
    ["@text"] = { link = "GruvboxFg1" },
    -- @text.strong           ; bold text
    ["@text.strong"] = { bold = config.bold },
    -- @text.emphasis         ; text with emphasis
    ["@text.emphasis"] = { italic = config.italic.strings },
    -- @text.underline        ; underlined text
    ["@text.underline"] = { underline = config.underline },
    -- @text.strike           ; strikethrough text
    ["@text.strike"] = { strikethrough = config.strikethrough },
    -- @text.title            ; text that is part of a title
    ["@text.title"] = { link = "Title" },
    -- @text.literal          ; literal or verbatim text (e.g., inline code)
    ["@text.literal"] = { link = "String" },
    -- @text.quote            ; text quotations
    -- @text.uri              ; URIs (e.g. hyperlinks)
    ["@text.uri"] = { link = "Underlined" },
    -- @text.math             ; math environments (e.g. `$ ... $` in LaTeX)
    ["@text.math"] = { link = "Special" },
    -- @text.environment      ; text environments of markup languages
    ["@text.environment"] = { link = "Macro" },
    -- @text.environment.name ; text indicating the type of an environment
    ["@text.environment.name"] = { link = "Type" },
    -- @text.reference        ; text references, footnotes, citations, etc.
    ["@text.reference"] = { link = "Constant" },

    -- @text.todo             ; todo notes
    ["@text.todo"] = { link = "Todo" },
    -- @text.note             ; info notes
    ["@text.note"] = { link = "SpecialComment" },
    -- @text.note.comment     ; XXX in comments
    ["@text.note.comment"] = { fg = colors.purple, bold = config.bold },
    -- @text.warning          ; warning notes
    ["@text.warning"] = { link = "WarningMsg" },
    -- @text.danger           ; danger/error notes
    ["@text.danger"] = { link = "ErrorMsg" },
    -- @text.danger.comment   ; FIXME in comments
    ["@text.danger.comment"] = { fg = colors.fg0, bg = colors.red, bold = config.bold },

    -- @text.diff.add         ; added text (for diff files)
    ["@text.diff.add"] = { link = "diffAdded" },
    -- @text.diff.delete      ; deleted text (for diff files)
    ["@text.diff.delete"] = { link = "diffRemoved" },

    --
    -- Tags
    --
    -- @tag           ; XML tag names
    ["@tag"] = { link = "Tag" },
    -- @tag.attribute ; XML tag attributes
    ["@tag.attribute"] = { link = "Identifier" },
    -- @tag.delimiter ; XML tag delimiters
    ["@tag.delimiter"] = { link = "Delimiter" },

    --
    -- Conceal
    --
    -- @conceal ; for captures that are only used for concealing

    --
    -- Spell
    --
    -- @spell   ; for defining regions to be spellchecked
    -- @nospell ; for defining regions that should NOT be spellchecked

    -- Treesitter
    -- See `:help treesitter`
    -- Those are not part of the nvim-treesitter
    ["@punctuation"] = { link = "Delimiter" },
    ["@macro"] = { link = "Macro" },
    ["@structure"] = { link = "Structure" },

    -- Semantic token
    -- See `:help lsp-semantic-highlight`
    ["@lsp.type.class"] = { link = "@constructor" },
    ["@lsp.type.comment"] = {}, -- do not overwrite comments
    ["@lsp.type.decorator"] = { link = "@parameter" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.interface"] = { link = "@keyword" },
    ["@lsp.type.macro"] = { link = "@macro" },
    ["@lsp.type.method"] = { link = "@method" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.struct"] = { link = "@constructor" },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.typeParameter"] = { link = "@type.definition" },
    ["@lsp.type.variable"] = { link = "@variable" },

    -- gitcommit
    gitcommitSelectedFile = { link = "GruvboxGreen" },
    gitcommitDiscardedFile = { link = "GruvboxRed" },
    -- gitsigns.nvim
    GitSignsAdd = { link = "GruvboxGreenSign" },
    GitSignsChange = { link = "GruvboxMagentaSign" },
    GitSignsDelete = { link = "GruvboxRedSign" },
    GitSignsAddLn = { link = "GruvboxGreenSign" },
    GitSignsChangeLn = { link = "GruvboxMagentaSign" },
    GitSignsDeleteLn = { link = "GruvboxRedSign" },
    -- termdebug
    debugPC = { bg = colors.faded_blue },
    debugBreakpoint = { link = "GruvboxRedSign" },
    -- telescope.nvim
    TelescopeNormal = { link = "GruvboxFg1" },
    TelescopeSelection = { link = "GruvboxOrangeBold" },
    TelescopeSelectionCaret = { link = "GruvboxRed" },
    TelescopeMultiSelection = { link = "GruvboxGray" },
    TelescopeBorder = { link = "TelescopeNormal" },
    TelescopePromptBorder = { link = "TelescopeNormal" },
    TelescopeResultsBorder = { link = "TelescopeNormal" },
    TelescopePreviewBorder = { link = "TelescopeNormal" },
    TelescopeMatching = { link = "GruvboxBlue" },
    TelescopePromptPrefix = { link = "GruvboxRed" },
    TelescopePrompt = { link = "TelescopeNormal" },
    diffAdded = { link = "GruvboxGreen" },
    diffRemoved = { link = "GruvboxRed" },
    diffChanged = { link = "GruvboxAqua" },
    diffFile = { link = "GruvboxOrange" },
    diffNewFile = { link = "GruvboxYellow" },
    diffOldFile = { link = "GruvboxOrange" },
    diffLine = { link = "GruvboxBlue" },
    diffIndexLine = { link = "diffChanged" },
    -- html
    htmlTag = { link = "GruvboxAquaBold" },
    htmlEndTag = { link = "GruvboxAquaBold" },
    htmlTagName = { link = "GruvboxBlue" },
    htmlArg = { link = "GruvboxOrange" },
    htmlTagN = { link = "GruvboxFg1" },
    htmlSpecialTagName = { link = "GruvboxBlue" },
    htmlLink = { fg = colors.fg4, underline = config.underline },
    htmlSpecialChar = { link = "GruvboxRed" },
    htmlBold = { fg = colors.fg0, bg = colors.bg0, bold = config.bold },
    htmlBoldUnderline = { fg = colors.fg0, bg = colors.bg0, bold = config.bold, underline = config.underline },
    htmlBoldItalic = { fg = colors.fg0, bg = colors.bg0, bold = config.bold, italic = true },
    htmlBoldUnderlineItalic = {
      fg = colors.fg0,
      bg = colors.bg0,
      bold = config.bold,
      italic = true,
      underline = config.underline,
    },
    htmlUnderline = { fg = colors.fg0, bg = colors.bg0, underline = config.underline },
    htmlUnderlineItalic = {
      fg = colors.fg0,
      bg = colors.bg0,
      italic = true,
      underline = config.underline,
    },
    htmlItalic = { fg = colors.fg0, bg = colors.bg0, italic = true },
    -- xml
    xmlTag = { link = "GruvboxAquaBold" },
    xmlEndTag = { link = "GruvboxAquaBold" },
    xmlTagName = { link = "GruvboxBlue" },
    xmlEqual = { link = "GruvboxBlue" },
    docbkKeyword = { link = "GruvboxAquaBold" },
    xmlDocTypeDecl = { link = "GruvboxGray" },
    xmlDocTypeKeyword = { link = "GruvboxPurple" },
    xmlCdataStart = { link = "GruvboxGray" },
    xmlCdataCdata = { link = "GruvboxPurple" },
    dtdFunction = { link = "GruvboxGray" },
    dtdTagName = { link = "GruvboxPurple" },
    xmlAttrib = { link = "GruvboxOrange" },
    xmlProcessingDelim = { link = "GruvboxGray" },
    dtdParamEntityPunct = { link = "GruvboxGray" },
    dtdParamEntityDPunct = { link = "GruvboxGray" },
    xmlAttribPunct = { link = "GruvboxGray" },
    xmlEntity = { link = "GruvboxRed" },
    xmlEntityPunct = { link = "GruvboxRed" },
    -- clojure
    clojureKeyword = { link = "GruvboxBlue" },
    clojureCond = { link = "GruvboxOrange" },
    clojureSpecial = { link = "GruvboxOrange" },
    clojureDefine = { link = "GruvboxOrange" },
    clojureFunc = { link = "GruvboxYellow" },
    clojureRepeat = { link = "GruvboxYellow" },
    clojureCharacter = { link = "GruvboxAqua" },
    clojureStringEscape = { link = "GruvboxAqua" },
    clojureException = { link = "GruvboxRed" },
    clojureRegexp = { link = "GruvboxAqua" },
    clojureRegexpEscape = { link = "GruvboxAqua" },
    clojureRegexpCharClass = { fg = colors.fg3, bold = config.bold },
    clojureRegexpMod = { link = "clojureRegexpCharClass" },
    clojureRegexpQuantifier = { link = "clojureRegexpCharClass" },
    clojureParen = { link = "GruvboxFg3" },
    clojureAnonArg = { link = "GruvboxYellow" },
    clojureVariable = { link = "GruvboxBlue" },
    clojureMacro = { link = "GruvboxOrange" },
    clojureMeta = { link = "GruvboxYellow" },
    clojureDeref = { link = "GruvboxYellow" },
    clojureQuote = { link = "GruvboxYellow" },
    clojureUnquote = { link = "GruvboxYellow" },
    -- C
    cOperator = { link = "GruvboxPurple" },
    cppOperator = { link = "GruvboxPurple" },
    cStructure = { link = "GruvboxOrange" },
    -- python
    pythonBuiltin = { link = "GruvboxOrange" },
    pythonBuiltinObj = { link = "GruvboxOrange" },
    pythonBuiltinFunc = { link = "GruvboxOrange" },
    pythonFunction = { link = "GruvboxAqua" },
    pythonDecorator = { link = "GruvboxRed" },
    pythonInclude = { link = "GruvboxBlue" },
    pythonImport = { link = "GruvboxBlue" },
    pythonRun = { link = "GruvboxBlue" },
    pythonCoding = { link = "GruvboxBlue" },
    pythonOperator = { link = "GruvboxRed" },
    pythonException = { link = "GruvboxRed" },
    pythonExceptions = { link = "GruvboxPurple" },
    pythonBoolean = { link = "GruvboxPurple" },
    pythonDot = { link = "GruvboxFg3" },
    pythonConditional = { link = "GruvboxRed" },
    pythonRepeat = { link = "GruvboxRed" },
    pythonDottedName = { link = "GruvboxGreenBold" },
    -- CSS
    cssBraces = { link = "GruvboxBlue" },
    cssFunctionName = { link = "GruvboxYellow" },
    cssIdentifier = { link = "GruvboxOrange" },
    cssClassName = { link = "GruvboxGreen" },
    cssColor = { link = "GruvboxBlue" },
    cssSelectorOp = { link = "GruvboxBlue" },
    cssSelectorOp2 = { link = "GruvboxBlue" },
    cssImportant = { link = "GruvboxGreen" },
    cssVendor = { link = "GruvboxFg1" },
    cssTextProp = { link = "GruvboxAqua" },
    cssAnimationProp = { link = "GruvboxAqua" },
    cssUIProp = { link = "GruvboxYellow" },
    cssTransformProp = { link = "GruvboxAqua" },
    cssTransitionProp = { link = "GruvboxAqua" },
    cssPrintProp = { link = "GruvboxAqua" },
    cssPositioningProp = { link = "GruvboxYellow" },
    cssBoxProp = { link = "GruvboxAqua" },
    cssFontDescriptorProp = { link = "GruvboxAqua" },
    cssFlexibleBoxProp = { link = "GruvboxAqua" },
    cssBorderOutlineProp = { link = "GruvboxAqua" },
    cssBackgroundProp = { link = "GruvboxAqua" },
    cssMarginProp = { link = "GruvboxAqua" },
    cssListProp = { link = "GruvboxAqua" },
    cssTableProp = { link = "GruvboxAqua" },
    cssFontProp = { link = "GruvboxAqua" },
    cssPaddingProp = { link = "GruvboxAqua" },
    cssDimensionProp = { link = "GruvboxAqua" },
    cssRenderProp = { link = "GruvboxAqua" },
    cssColorProp = { link = "GruvboxAqua" },
    cssGeneratedContentProp = { link = "GruvboxAqua" },
    -- javascript
    javaScriptBraces = { link = "GruvboxFg1" },
    javaScriptFunction = { link = "GruvboxAqua" },
    javaScriptIdentifier = { link = "GruvboxRed" },
    javaScriptMember = { link = "GruvboxBlue" },
    javaScriptNumber = { link = "GruvboxPurple" },
    javaScriptNull = { link = "GruvboxPurple" },
    javaScriptParens = { link = "GruvboxFg3" },
    -- typescript
    typescriptReserved = { link = "GruvboxAqua" },
    typescriptLabel = { link = "GruvboxAqua" },
    typescriptFuncKeyword = { link = "GruvboxAqua" },
    typescriptIdentifier = { link = "GruvboxOrange" },
    typescriptBraces = { link = "GruvboxFg1" },
    typescriptEndColons = { link = "GruvboxFg1" },
    typescriptDOMObjects = { link = "GruvboxFg1" },
    typescriptAjaxMethods = { link = "GruvboxFg1" },
    typescriptLogicSymbols = { link = "GruvboxFg1" },
    typescriptDocSeeTag = { link = "Comment" },
    typescriptDocParam = { link = "Comment" },
    typescriptDocTags = { link = "vimCommentTitle" },
    typescriptGlobalObjects = { link = "GruvboxFg1" },
    typescriptParens = { link = "GruvboxFg3" },
    typescriptOpSymbols = { link = "GruvboxFg3" },
    typescriptHtmlElemProperties = { link = "GruvboxFg1" },
    typescriptNull = { link = "GruvboxPurple" },
    typescriptInterpolationDelimiter = { link = "GruvboxAqua" },
    -- purescript
    purescriptModuleKeyword = { link = "GruvboxAqua" },
    purescriptModuleName = { link = "GruvboxFg1" },
    purescriptWhere = { link = "GruvboxAqua" },
    purescriptDelimiter = { link = "GruvboxFg4" },
    purescriptType = { link = "GruvboxFg1" },
    purescriptImportKeyword = { link = "GruvboxAqua" },
    purescriptHidingKeyword = { link = "GruvboxAqua" },
    purescriptAsKeyword = { link = "GruvboxAqua" },
    purescriptStructure = { link = "GruvboxAqua" },
    purescriptOperator = { link = "GruvboxBlue" },
    purescriptTypeVar = { link = "GruvboxFg1" },
    purescriptConstructor = { link = "GruvboxFg1" },
    purescriptFunction = { link = "GruvboxFg1" },
    purescriptConditional = { link = "GruvboxOrange" },
    purescriptBacktick = { link = "GruvboxOrange" },
    -- coffescript
    coffeeExtendedOp = { link = "GruvboxFg3" },
    coffeeSpecialOp = { link = "GruvboxFg3" },
    coffeeCurly = { link = "GruvboxOrange" },
    coffeeParen = { link = "GruvboxFg3" },
    coffeeBracket = { link = "GruvboxOrange" },
    -- ruby
    rubyStringDelimiter = { link = "GruvboxGreen" },
    rubyInterpolationDelimiter = { link = "GruvboxAqua" },
    rubyDefinedOperator = { link = "rubyKeyword" },
    -- objc
    objcTypeModifier = { link = "GruvboxRed" },
    objcDirective = { link = "GruvboxBlue" },
    -- go
    goDirective = { link = "GruvboxAqua" },
    goConstants = { link = "GruvboxPurple" },
    goDeclaration = { link = "GruvboxRed" },
    goDeclType = { link = "GruvboxBlue" },
    goBuiltins = { link = "GruvboxOrange" },
    -- lua
    luaIn = { link = "GruvboxRed" },
    luaFunction = { link = "GruvboxAqua" },
    luaTable = { link = "GruvboxOrange" },
    -- moonscript
    moonSpecialOp = { link = "GruvboxFg3" },
    moonExtendedOp = { link = "GruvboxFg3" },
    moonFunction = { link = "GruvboxFg3" },
    moonObject = { link = "GruvboxYellow" },
    -- java
    javaAnnotation = { link = "GruvboxBlue" },
    javaDocTags = { link = "GruvboxAqua" },
    javaCommentTitle = { link = "vimCommentTitle" },
    javaParen = { link = "GruvboxFg3" },
    javaParen1 = { link = "GruvboxFg3" },
    javaParen2 = { link = "GruvboxFg3" },
    javaParen3 = { link = "GruvboxFg3" },
    javaParen4 = { link = "GruvboxFg3" },
    javaParen5 = { link = "GruvboxFg3" },
    javaOperator = { link = "GruvboxOrange" },
    javaVarArg = { link = "GruvboxGreen" },
    -- elixir
    elixirDocString = { link = "Comment" },
    elixirStringDelimiter = { link = "GruvboxGreen" },
    elixirInterpolationDelimiter = { link = "GruvboxAqua" },
    elixirModuleDeclaration = { link = "GruvboxYellow" },
    -- scala
    scalaNameDefinition = { link = "GruvboxFg1" },
    scalaCaseFollowing = { link = "GruvboxFg1" },
    scalaCapitalWord = { link = "GruvboxFg1" },
    scalaTypeExtension = { link = "GruvboxFg1" },
    scalaKeyword = { link = "GruvboxRed" },
    scalaKeywordModifier = { link = "GruvboxRed" },
    scalaSpecial = { link = "GruvboxAqua" },
    scalaOperator = { link = "GruvboxFg1" },
    scalaTypeDeclaration = { link = "GruvboxYellow" },
    scalaTypeTypePostDeclaration = { link = "GruvboxYellow" },
    scalaInstanceDeclaration = { link = "GruvboxFg1" },
    scalaInterpolation = { link = "GruvboxAqua" },
    -- markdown
    markdownItalic = { fg = colors.fg3, italic = true },
    markdownBold = { fg = colors.fg3, bold = config.bold },
    markdownBoldItalic = { fg = colors.fg3, bold = config.bold, italic = true },
    markdownH1 = { link = "GruvboxGreenBold" },
    markdownH2 = { link = "GruvboxGreenBold" },
    markdownH3 = { link = "GruvboxYellowBold" },
    markdownH4 = { link = "GruvboxYellowBold" },
    markdownH5 = { link = "GruvboxYellow" },
    markdownH6 = { link = "GruvboxYellow" },
    markdownCode = { link = "GruvboxAqua" },
    markdownCodeBlock = { link = "GruvboxAqua" },
    markdownCodeDelimiter = { link = "GruvboxAqua" },
    markdownBlockquote = { link = "GruvboxGray" },
    markdownListMarker = { link = "GruvboxGray" },
    markdownOrderedListMarker = { link = "GruvboxGray" },
    markdownRule = { link = "GruvboxGray" },
    markdownHeadingRule = { link = "GruvboxGray" },
    markdownUrlDelimiter = { link = "GruvboxFg3" },
    markdownLinkDelimiter = { link = "GruvboxFg3" },
    markdownLinkTextDelimiter = { link = "GruvboxFg3" },
    markdownHeadingDelimiter = { link = "GruvboxOrange" },
    markdownUrl = { link = "GruvboxPurple" },
    markdownUrlTitleDelimiter = { link = "GruvboxGreen" },
    markdownLinkText = { fg = colors.gray, underline = config.underline },
    markdownIdDeclaration = { link = "markdownLinkText" },
    -- haskell
    haskellType = { link = "GruvboxBlue" },
    haskellIdentifier = { link = "GruvboxAqua" },
    haskellSeparator = { link = "GruvboxFg4" },
    haskellDelimiter = { link = "GruvboxOrange" },
    haskellOperators = { link = "GruvboxPurple" },
    haskellBacktick = { link = "GruvboxOrange" },
    haskellStatement = { link = "GruvboxPurple" },
    haskellConditional = { link = "GruvboxPurple" },
    haskellLet = { link = "GruvboxRed" },
    haskellDefault = { link = "GruvboxRed" },
    haskellWhere = { link = "GruvboxRed" },
    haskellBottom = { link = "GruvboxRedBold" },
    haskellImportKeywords = { link = "GruvboxPurpleBold" },
    haskellDeclKeyword = { link = "GruvboxOrange" },
    haskellDecl = { link = "GruvboxOrange" },
    haskellDeriving = { link = "GruvboxPurple" },
    haskellAssocType = { link = "GruvboxAqua" },
    haskellNumber = { link = "GruvboxAqua" },
    haskellPragma = { link = "GruvboxRedBold" },
    haskellTH = { link = "GruvboxAquaBold" },
    haskellForeignKeywords = { link = "GruvboxGreen" },
    haskellKeyword = { link = "GruvboxRed" },
    haskellFloat = { link = "GruvboxAqua" },
    haskellInfix = { link = "GruvboxPurple" },
    haskellQuote = { link = "GruvboxGreenBold" },
    haskellShebang = { link = "GruvboxYellowBold" },
    haskellLiquid = { link = "GruvboxPurpleBold" },
    haskellQuasiQuoted = { link = "GruvboxBlueBold" },
    haskellRecursiveDo = { link = "GruvboxPurple" },
    haskellQuotedType = { link = "GruvboxRed" },
    haskellPreProc = { link = "GruvboxFg4" },
    haskellTypeRoles = { link = "GruvboxRedBold" },
    haskellTypeForall = { link = "GruvboxRed" },
    haskellPatternKeyword = { link = "GruvboxBlue" },
    -- json
    jsonKeyword = { link = "GruvboxGreen" },
    jsonQuote = { link = "GruvboxGreen" },
    jsonBraces = { link = "GruvboxFg1" },
    jsonString = { link = "GruvboxFg1" },
    -- mail
    mailQuoted1 = { link = "GruvboxAqua" },
    mailQuoted2 = { link = "GruvboxPurple" },
    mailQuoted3 = { link = "GruvboxYellow" },
    mailQuoted4 = { link = "GruvboxGreen" },
    mailQuoted5 = { link = "GruvboxRed" },
    mailQuoted6 = { link = "GruvboxOrange" },
    mailSignature = { link = "Comment" },
    -- c#
    csBraces = { link = "GruvboxFg1" },
    csEndColon = { link = "GruvboxFg1" },
    csLogicSymbols = { link = "GruvboxFg1" },
    csParens = { link = "GruvboxFg3" },
    csOpSymbols = { link = "GruvboxFg3" },
    csInterpolationDelimiter = { link = "GruvboxFg3" },
    csInterpolationAlignDel = { link = "GruvboxAquaBold" },
    csInterpolationFormat = { link = "GruvboxAqua" },
    csInterpolationFormatDel = { link = "GruvboxAquaBold" },
    -- rust btw
    rustSigil = { link = "GruvboxOrange" },
    rustEscape = { link = "GruvboxAqua" },
    rustStringContinuation = { link = "GruvboxAqua" },
    rustEnum = { link = "GruvboxAqua" },
    rustStructure = { link = "GruvboxAqua" },
    rustModPathSep = { link = "GruvboxFg2" },
    rustCommentLineDoc = { link = "Comment" },
    rustDefault = { link = "GruvboxAqua" },
    -- ocaml
    ocamlOperator = { link = "GruvboxFg1" },
    ocamlKeyChar = { link = "GruvboxOrange" },
    ocamlArrow = { link = "GruvboxOrange" },
    ocamlInfixOpKeyword = { link = "GruvboxRed" },
    ocamlConstructor = { link = "GruvboxOrange" },
    -- lspsaga.nvim
    LspSagaCodeActionTitle = { link = "Title" },
    LspSagaCodeActionBorder = { link = "GruvboxFg1" },
    LspSagaCodeActionContent = { fg = colors.green, bold = config.bold },
    LspSagaLspFinderBorder = { link = "GruvboxFg1" },
    LspSagaAutoPreview = { link = "GruvboxOrange" },
    TargetWord = { fg = colors.dblue, bold = config.bold },
    FinderSeparator = { link = "GruvboxAqua" },
    LspSagaDefPreviewBorder = { link = "GruvboxBlue" },
    LspSagaHoverBorder = { link = "GruvboxOrange" },
    LspSagaRenameBorder = { link = "GruvboxBlue" },
    LspSagaDiagnosticSource = { link = "GruvboxOrange" },
    LspSagaDiagnosticBorder = { link = "GruvboxPurple" },
    LspSagaDiagnosticHeader = { link = "GruvboxGreen" },
    LspSagaSignatureHelpBorder = { link = "GruvboxGreen" },
    SagaShadow = { link = "GruvboxBg0" },

    -- dashboard-nvim
    DashboardShortCut = { link = "GruvboxOrange" },
    DashboardHeader = { link = "GruvboxAqua" },
    DashboardCenter = { link = "GruvboxYellow" },
    DashboardFooter = { fg = colors.purple, italic = true },
    -- mason
    MasonHighlight = { link = "GruvboxAqua" },
    MasonHighlightBlock = { fg = colors.bg0, bg = colors.dblue },
    MasonHighlightBlockBold = { fg = colors.bg0, bg = colors.dblue, bold = true },
    MasonHighlightSecondary = { fg = colors.yellow },
    MasonHighlightBlockSecondary = { fg = colors.bg0, bg = colors.yellow },
    MasonHighlightBlockBoldSecondary = { fg = colors.bg0, bg = colors.yellow, bold = true },
    MasonHeader = { link = "MasonHighlightBlockBoldSecondary" },
    MasonHeaderSecondary = { link = "MasonHighlightBlockBold" },
    MasonMuted = { fg = colors.fg4 },
    MasonMutedBlock = { fg = colors.bg0, bg = colors.fg4 },
    MasonMutedBlockBold = { fg = colors.bg0, bg = colors.fg4, bold = true },
    -- lsp-inlayhints.nvim
    LspInlayHint = { link = "comment" },
    -- carbon.nvim
    CarbonFile = { link = "GruvboxFg1" },
    CarbonExe = { link = "GruvboxYellow" },
    CarbonSymlink = { link = "GruvboxAqua" },
    CarbonBrokenSymlink = { link = "GruvboxRed" },
    CarbonIndicator = { link = "GruvboxGray" },
    CarbonDanger = { link = "GruvboxRed" },
    CarbonPending = { link = "GruvboxYellow" },

    -- notify.nvim
    NotifyDEBUGBorder = { link = "GruvboxBlue" },
    NotifyDEBUGIcon = { link = "GruvboxBlue" },
    NotifyDEBUGTitle = { link = "GruvboxBlue" },
    NotifyERRORBorder = { link = "GruvboxRed" },
    NotifyERRORIcon = { link = "GruvboxRed" },
    NotifyERRORTitle = { link = "GruvboxRed" },
    NotifyINFOBorder = { link = "GruvboxAqua" },
    NotifyINFOIcon = { link = "GruvboxAqua" },
    NotifyINFOTitle = { link = "GruvboxAqua" },
    NotifyTRACEBorder = { link = "GruvboxGreen" },
    NotifyTRACEIcon = { link = "GruvboxGreen" },
    NotifyTRACETitle = { link = "GruvboxGreen" },
    NotifyWARNBorder = { link = "GruvboxYellow" },
    NotifyWARNIcon = { link = "GruvboxYellow" },
    NotifyWARNTitle = { link = "GruvboxYellow" },
    -- ts-rainbow2 (maintained fork)
    TSRainbowRed = { fg = colors.red },
    TSRainbowOrange = { fg = colors.orange },
    TSRainbowYellow = { fg = colors.yellow },
    TSRainbowGreen = { fg = colors.green },
    TSRainbowBlue = { fg = colors.dblue },
    TSRainbowViolet = { fg = colors.purple },
    TSRainbowCyan = { fg = colors.cyan },
    -- translator
    TranslatorBorder = { link = "FloatWindow" },
    BufferLineIndicatorSelected = { fg = colors.dblue },
    -- lazy
    LazyNormal = { link = "FloatWinU" },
    -- Indent
    MiniIndentscopeSymbol = { fg = "#504945" },
    -- Simpline
    StatusLineMode = { link = "StatusLineGreen" },
    StatusLineFileInfo = { link = "StatusLineBlue" },
    StatlsLineBranch = { link = "StatusLineBlue" },
    StatlsLineLnum = { link = "StatusLineGreen" },
    StatusLineReadOnly = { link = "StatusLineGreen" },
    StatusLineEncoding = { link = "StatusLineGreen" },
    -- cmp
    PmenuSel = { bg = "#282C34", fg = "NONE" },
    -- Pmenu = { fg = "#C5CDD9", bg = "#22252A" },
    Pmenu = { fg = "#C5CDD9", bg = "NONE" },

    CmpItemAbbrDeprecated = { fg = "#7E8294", bg = "NONE", strikethrough = true },
    CmpItemAbbrMatch = { fg = "#82AAFF", bg = "NONE", bold = true },
    CmpItemAbbrMatchFuzzy = { fg = "#82AAFF", bg = "NONE", bold = true },
    CmpItemMenu = { fg = "#C792EA", bg = "NONE", italic = true },

    CmpItemKindField = { fg = "#EED8DA", bg = "#B5585F" },
    CmpItemKindProperty = { fg = "#EED8DA", bg = "#B5585F" },
    CmpItemKindEvent = { fg = "#EED8DA", bg = "#B5585F" },

    CmpItemKindText = { fg = "#C3E88D", bg = "#9FBD73" },
    CmpItemKindEnum = { fg = "#C3E88D", bg = "#9FBD73" },
    CmpItemKindKeyword = { fg = "#C3E88D", bg = "#9FBD73" },

    CmpItemKindConstant = { fg = "#FFE082", bg = "#D4BB6C" },
    CmpItemKindConstructor = { fg = "#FFE082", bg = "#D4BB6C" },
    CmpItemKindReference = { fg = "#FFE082", bg = "#D4BB6C" },

    CmpItemKindFunction = { fg = "#EADFF0", bg = "#A377BF" },
    CmpItemKindStruct = { fg = "#EADFF0", bg = "#A377BF" },
    CmpItemKindClass = { fg = "#EADFF0", bg = "#A377BF" },
    CmpItemKindModule = { fg = "#EADFF0", bg = "#A377BF" },
    CmpItemKindOperator = { fg = "#EADFF0", bg = "#A377BF" },

    CmpItemKindVariable = { fg = "#C5CDD9", bg = "#7E8294" },
    CmpItemKindFile = { fg = "#C5CDD9", bg = "#7E8294" },

    CmpItemKindUnit = { fg = "#F5EBD9", bg = "#D4A959" },
    CmpItemKindSnippet = { fg = "#F5EBD9", bg = "#D4A959" },
    CmpItemKindFolder = { fg = "#F5EBD9", bg = "#D4A959" },

    CmpItemKindMethod = { fg = "#DDE5F5", bg = "#6C8ED4" },
    CmpItemKindValue = { fg = "#DDE5F5", bg = "#6C8ED4" },
    CmpItemKindEnumMember = { fg = "#DDE5F5", bg = "#6C8ED4" },

    CmpItemKindInterface = { fg = "#D8EEEB", bg = "#58B5A8" },
    CmpItemKindColor = { fg = "#D8EEEB", bg = "#58B5A8" },
    CmpItemKindTypeParameter = { fg = "#D8EEEB", bg = "#58B5A8" },
  }

  for group, hl in pairs(config.overrides) do
    if groups[group] then
      groups[group].link = nil
    end

    groups[group] = vim.tbl_extend("force", groups[group] or {}, hl)
  end

  return groups
end

M.config = {
  undercurl            = true,
  underline            = true,
  bold                 = true,
  italic               = {
    strings   = true,
    comments  = true,
    operators = false,
    folds     = true,
  },
  strikethrough        = true,
  invert_selection     = false,
  invert_signs         = false,
  invert_tabline       = false,
  invert_intend_guides = false,
  inverse              = true, -- invert background for search, diffs, statuslines and errors
  contrast             = "",   -- can be "hard", "soft" or empty string
  palette_overrides    = {},
  overrides            = {},
  dim_inactive         = false,
  transparent_mode     = false,
}

function M.setup(config)
  if config ~= nil and type(config.italic) == "boolean" then
    vim.notify(
      "[gruvbox] italic config has change. please check https://github.com/ellisonleao/gruvbox.nvim/issues/220",
      vim.log.levels.WARN
    )
    config.italic = M.config.italic
  end
  M.config = vim.tbl_deep_extend("force", M.config, config or {})
end

M.load = function()
  if vim.version().minor < 8 then
    vim.notify_once("gruvbox.nvim: you must use neovim 0.8 or higher")
    return
  end

  -- reset colors
  if vim.g.colors_name then
    vim.cmd.hi("clear")
  end

  vim.g.colors_name = "gruvbox"
  vim.o.termguicolors = true

  local groups = M.setcolor()

  -- add highlights
  for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M

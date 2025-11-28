; Comments
(line_comment) @comment
(block_comment) @comment

; Keywords
[
  "proc"
  "verb"
  "var"
  "if"
  "else"
  "while"
  "for"
  "do"
  "switch"
  "return"
  "break"
  "continue"
  "new"
  "del"
  "spawn"
  "sleep"
  "try"
  "catch"
  "throw"
] @keyword

; Types
(type) @type.builtin

; Functions
(function_definition name: (identifier) @function)
(call_expression function: (identifier) @function)

; Built-ins
(builtin_function) @function.builtin
(builtin_variable) @variable.builtin
(builtin_constant) @constant.builtin

; Literals
(string) @string
(number) @number
(boolean) @boolean
(null) @constant.builtin

; Operators
[
  "="
  "+"
  "-"
  "*"
  "/"
  "&&"
  "||"
] @operator

; Punctuation
["(" ")" "[" "]" "{" "}"] @punctuation.bracket
["," ";" "."] @punctuation.delimiter

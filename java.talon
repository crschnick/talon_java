tag: user.java
-
(call | funk | function) <user.prose>$:
    user.insert_formatted(prose, "camel")
    user.idea("action CodeCompletion")
    key(enter)

(call | funk | function) <user.prose> with:
    user.insert_formatted(prose, "camel")
    user.idea("action CodeCompletion")
    key(enter)

annotation <user.prose>$:
    key(@)
    user.insert_formatted(prose, "hammer")
    user.idea("action CodeCompletion")


annotation <user.prose> with:
    key(@)
    user.insert_formatted(prose, "hammer")
    key("(")

(del | declare) function <user.prose>$:
    key(space)
    user.insert_formatted(prose, "camel")
    key("(")
    user.idea("action EditorCompleteStatement")

(del | declare) function <user.prose> with:
    key(space)
    user.insert_formatted(prose, "camel")
    key("(")

new$:
  insert("new ")
  user.idea("action CodeCompletion")


new <user.text> generic$:
  insert("new ")
  user.insert_formatted(text, "hammer")
  insert("<")
new <user.text> open:
  insert("new ")
  user.insert_formatted(text, "hammer")
  insert("(")
new <user.text>$:
  insert("new ")
  user.insert_formatted(text, "hammer")
  insert("(")
new <user.text> diamond$:
  insert("new ")
  user.insert_formatted(text, "hammer")
  insert("<>()")

class <user.text>$: user.insert_formatted(text, "hammer")
class <user.text> generic:
  user.insert_formatted(text, "hammer")
  insert("<")
class <user.text> dot:
  user.insert_formatted(text, "hammer")
  key(.)

class <user.text> dot <user.prose>:
  user.insert_formatted(text, "hammer")
  key(.)
  user.insert_formatted(prose, "camel")
  user.idea("action CodeCompletion")

(del | declare) <user.text> with <user.prose>:
  user.insert_formatted(text, "hammer")
  key(space)
  user.insert_formatted(prose, "camel")

(del | declare) variable <user.text>$:
  user.insert_with_history("var ")
  user.insert_formatted(text, "camel")

(del | declare) variable <user.text> with:
  user.insert_with_history("var ")
  user.insert_formatted(text, "camel")
  insert(" = ")


(del | declare) auto <user.text>:
  user.insert_formatted(text, "hammer")
  key(space)
  user.idea("action CodeCompletion,action CodeCompletion")
  key(enter)

variable <user.text>$:
  user.insert_formatted(text, "camel")


variable <user.text> dot:
  user.insert_formatted(text, "camel")
  key(.)

variable <user.text> dot <user.prose>:
  user.insert_formatted(text, "camel")
  key(.)
  user.insert_formatted(prose, "camel")
  user.idea("action CodeCompletion")

closing add:
  key(end)
  key(left)
  key(")")

extends:
  insert(" extends "  )

instance of:
  insert(" instanceof "  )

implements:
  insert(" implements "  )


closing remove:
  key(end)
  key(left)
  key(backspace)


diamond:
    insert("<>")

open:
    insert("(")

close:
    insert(")")


set to | assign:
    key(space)
    key(=)
    key(space)

javadoc:
    key(/)
    key(*)
    key(*)
    key(enter)

line:
    key(end)
    key(;)

next line:
    key(end)
    key(;)
    key(enter)

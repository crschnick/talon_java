app: jetbrains
-

template {user.live_template}:
    user.insert_live_template(live_template)

(wrap | rap) {user.postfix_template}:
    user.wrap_postfix_template(postfix_template)

project overview:
    key(alt-home)
    key(home)
    key(enter)


go to file:
    key(alt-f1)
    key(1)


take:
  mouse_click(0)
  key(ctrl-w)

double:
  mouse_click(0)
  mouse_click(0)
  sleep(40ms)
  key(ctrl-w)

triple:
  mouse_click(0)
  mouse_click(0)
  sleep(40ms)
  key(ctrl-w)
  sleep(40ms)
  key(ctrl-w)

quad:
  mouse_click(0)
  mouse_click(0)
  sleep(40ms)
  key(ctrl-w)
  sleep(40ms)
  key(ctrl-w)
  sleep(40ms)
  key(ctrl-w)


fifth:
  mouse_click(0)
  mouse_click(0)
  sleep(40ms)
  key(ctrl-w)
  sleep(40ms)
  key(ctrl-w)
  sleep(40ms)
  key(ctrl-w)
  sleep(40ms)
  key(ctrl-w)

more:
  key(ctrl-w)


less:
  key(ctrl-shift-w)


replace:
    key(delete)
    user.idea("action CodeCompletion")

auto <user.letters>:
    insert(letters)
    user.idea("action CodeCompletion,action CodeCompletion")
    key(enter)


auto <user.text>:
    insert(text)
    user.idea("action CodeCompletion,action CodeCompletion")
    key(enter)

new file:
    key(alt-insert)

run application:
    key(ctrl-f5)

stop application:
    key(ctrl-f2)

auto:
    key(ctrl-space)
    sleep(20ms)
    key(enter)

cancel: key(escape)
ok: key(enter)


to do:
  insert("/*")
  key(enter)
  insert("TODO: ")

fix next:
    user.idea("action GotoNextError")
    user.idea("action ShowIntentionActions")
    sleep(340ms)
    key(enter)
    sleep(140ms)
    #key(enter)
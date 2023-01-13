from talon import Module, actions, Context

from user.knausj_talon.core.user_settings import get_list_from_csv


mod = Module()
mod.list("postfix_template", desc="A valid IntelliJ postfix template.")
mod.list("live_template", desc="A valid IntelliJ live template.")

ctx = Context()
ctx.lists["self.postfix_template"] = get_list_from_csv(
    "postfix_templates.csv",
    headers=("shortcut", "name"),
    default={}
)
ctx.lists["self.live_template"] = get_list_from_csv(
    "live_templates.csv",
    headers=("shortcut", "name"),
    default={}
)
@mod.action_class
class Actions:
    def insert_live_template(template: str):
        """"abc"""
        actions.insert(template)
        actions.key("tab")

    def wrap_postfix_template(template: str):
        """"abc"""
        actions.key(".")
        actions.insert(template)
        actions.key("tab")
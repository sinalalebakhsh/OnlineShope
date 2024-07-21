from django import templates

register = templates.Library()



@register.filter
def only_active_comments(comments):
    return comments.filter(active=True)







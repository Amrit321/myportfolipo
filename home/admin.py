from django.contrib import admin

from .models import Personal_info, Blog

class personal_info(admin.ModelAdmin):
    list_display = ['name', 'email', 'phone', 'address']



class blog(admin.ModelAdmin):
    list_display = ['writer_name', 'type', 'title']


admin.site.register(Personal_info)
admin.site.register(Blog, blog)

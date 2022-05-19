from django.contrib import admin

from .models import Personal_info, Blog, Services, Portfolio

class personal_info(admin.ModelAdmin):
    list_display = ['name', 'email', 'phone', 'address']


class blog(admin.ModelAdmin):
    list_display = ['writer_name', 'type', 'title']


class services(admin.ModelAdmin):
    list_display = ['service']


class portfolio(admin.ModelAdmin):
    list_display = ['title']


admin.site.register(Personal_info, personal_info)
admin.site.register(Blog, blog)
admin.site.register(Services, services)
admin.site.register(Portfolio, portfolio)

from django.shortcuts import render
from django.views import View


class Index(View):
    def get(self, request):
        return render(request, 'home/index.html')


class About(View):
    def get(self, request):
        return render(request, 'home/about.html')

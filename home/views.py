from django.shortcuts import render
from django.views import View

from .models import Personal_info, Blog, Services

content = Personal_info.objects.all()[:1]
blog = Blog.objects.all()
service = Services.objects.all()

context = {
    'content': content,
    'blog': blog,
    'service': service,
}


class Index(View):
    def get(self, request):
        return render(request, 'home/index.html', context)


class About(View):
    def get(self, request):
        return render(request, 'home/about.html')


class Services(View):
    def get(self, request):
        return render(request, 'home/services.html')


class Portfolio(View):
    def get(self, request):
        return render(request, 'home/portfolio.html')

class Contact(View):
    def get(self, request):
        return render(request, 'home/contact.html')


class Blogs(View):
    def get(self, request):
        return render(request, 'home/blogs.html')


class BlogDetail(View):
    def get(self, request):
        return render(request, 'home/blog_detail.html')



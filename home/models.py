from django.db import models

class Personal_info(models.Model):
    name = models.CharField(max_length=20)
    email = models.EmailField(max_length=50)
    phone = models.PositiveIntegerField()
    image = models.ImageField(upload_to='media/personal/')
    address = models.CharField(max_length=50)
    post = models.CharField(max_length=50)
    post_desc = models.TextField()
    fb_link =  models.CharField(max_length=254)
    linkedin_link = models.CharField(max_length=254)
    insta_link = models.CharField(max_length=254)
    twitter_link = models.CharField(max_length=254)
    github_link = models.CharField(max_length=254)
    about_myself = models.TextField()


class Blog(models.Model):
    writer_name = models.CharField(max_length=50)
    type = models.CharField(max_length=50)
    title = models.CharField(max_length=50)
    content = models.TextField()
    image = models.ImageField(upload_to='media/blog/')
    date = models.DateField()





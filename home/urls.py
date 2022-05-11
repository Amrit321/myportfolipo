from django.urls import path

from . import views
from .views import About, Index, Services, Portfolio

urlpatterns = [
    path('', Index.as_view(), name='index'),
    path('about', About.as_view(),  name='about'),
    path('services', Services.as_view(), name='services'),
    path('portfolio', Portfolio.as_view(), name='portfolio'),
]
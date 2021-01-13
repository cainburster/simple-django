from django.urls import path
from . import views


urlpatterns = [
    path('index', views.test_view, name='index'),  
]
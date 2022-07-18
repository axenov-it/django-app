from django.urls import path

from . import views

urlpatterns = [
    path('posts/<str:slug>/', views.post, name='post'),
]

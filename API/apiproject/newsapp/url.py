from django.urls import path
from .import views 
from rest_framework_simplejwt.views import TokenVerifyView
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)
urlpatterns = [
    path("allFondateur", views.getFondateur),
    path("allVideo", views.getVideo),
    path("allStory",views.getStory),
    path("allpost", views.getPost),
    path("allCommentaire",views.getCommentiare),
    path("allCategorie", views.getCategorie),
]
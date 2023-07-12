from django.urls import path
from .import views 
# urlpatterns = [
#     path("",views.index )
# ]

urlpatterns = [
    path("allFondateur", views.getFondateur),
    path("allPost", views.getPOst), 
     path("allStory", views.getStory),
    path("create _fondateur", views.createFondateur),
    #url pour modifier
    path('updatefondateur/<str:id_f>',views.updateFondateur)
    
]
from django.shortcuts import render
#from django.http import HttpResponse
from rest_framework.decorators import api_view
from rest_framework.response import Response
from mobileappp.models import *
from mobileappp.serializer import *


@api_view(['GET'])
def getFondateur (request) :
    #requet query
    q=Fondateur.objects.all()
    #variable de conversion
    ser=Fondateurserial(q,many=True)
    return Response(ser.data)

@api_view(['GET'])
def getStory (request) :
    #requet query
    q=Story.objects.all()
    #variable de conversion
    ser=StorySerial(q,many=True)
    return Response(ser.data)

@api_view(['GET'])
def getPOst (request) :
    #requet query
    q=Post.objects.all()
    #variable de conversion
    ser=PostSerial(q,many=True)
    return Response(ser.data)

#methode d'envoi de la donnée va
@api_view (['POST'])
def createFondateur(request):
    ser = Fondateurserial(data=request.data)
    if ser.is_valid():
        ser.save()
        return Response('fondateur ajouter')
    return Response(ser.errors)

#methode pour modifier
@api_view (['PUT'])
def updateFondateur(request,id_f):
    obj = Fondateur.objects.get(id_parti=id_f)
    ser = Fondateurserial(instance=obj,data=request.data)
    if ser.is_valid():
        ser.save()
        return Response ('fondateur modifier')
    return Response (ser.errors)


# Create your views here.

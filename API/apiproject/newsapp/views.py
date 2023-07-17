from django.shortcuts import render
from rest_framework.decorators import api_view
from rest_framework.response import Response
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from django.shortcuts import render ,get_object_or_404,redirect
from django.contrib.auth.models import User
from .models import *
from .serializer import *

@api_view(['GET'])
def getVideo (request) :
    q=video.objects.all()
    ser=videoserial(q,many=True)
    return Response(ser.data)

@api_view(['GET'])
def getCommentiare (request) :
    q=commnetaire.objects.all()
    ser=CommentaireSerial(q,many=True)
    return Response(ser.data)
@api_view(['GET'])
def getFondateur (request) :
    q=Fondateur.objects.all()
    ser=Fondateurserial(q,many=True)
    return Response(ser.data)
@api_view(['GET'])
def getCategorie (request) :
    q=categoriePost.objects.all()
    ser=Categorieserial(q,many=True)
    return Response(ser.data)
@api_view(['GET'])
def getPost (request) :
    q=Post.objects.raw("SELECT * FROM t_post ORDER BY id_post DESC")
    ser=PostSerial(q,many=True)
    return Response(ser.data)
@api_view(['GET'])
def getStory (request) :
    q= Story.objects.raw("SELECT * FROM t_story ORDER BY id_story DESC")
    ser=StorySerial(q,many=True)
    return Response(ser.data)



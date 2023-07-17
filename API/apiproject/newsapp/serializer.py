from rest_framework import serializers
from django.contrib.auth.models import User
from django.contrib.auth.hashers import make_password
from .models import *
from newsapp import *
from rest_framework.validators import UniqueTogetherValidator

class CommentaireSerial (serializers.ModelSerializer):
    class Meta : 
        model =  commnetaire
        fields = '__all__'

class StorySerial (serializers.ModelSerializer):
    class Meta : 
        model = Story
        fields = '__all__'

class Categorieserial (serializers.ModelSerializer):
    class Meta : 
        model = categoriePost
        fields = '__all__'        

class PostSerial(serializers.ModelSerializer) : 
    commnetaire = CommentaireSerial()
    categorie = Categorieserial()
    class Meta : 
        model = Post
        fields = '__all__'     

class Fondateurserial(serializers.ModelSerializer):
    class Meta:
        model =Fondateur
        fields='__all__'
        validators = [
            UniqueTogetherValidator (
                queryset=Fondateur.objects.all(),
                fields=['nom','postnom','prenom'],
                message = "Ce fondateur existe deja"
            )
        ]
class videoserial(serializers.ModelSerializer):
    class Meta:
        model =video
        fields='__all__'  

class UserSerializer(serializers.ModelSerializer) :
    class Meta : 
        model = User
        fields = ('id','username','first_name','last_name','email','password')
    def create(self, validated_data):
        user = User(
            username = validated_data['username'],
            first_name = validated_data['first_name'],
            last_name = validated_data['last_name'],
            email = validated_data['email'],
            password =make_password (validated_data ['password']),
        )
        user.save()
        return user                        
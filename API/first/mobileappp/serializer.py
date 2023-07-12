from rest_framework import serializers
from mobileappp.models import *
from rest_framework.validators import UniqueTogetherValidator



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
class PostSerial(serializers.ModelSerializer) : 

    class Meta : 
        model = Post
        fields = '__all__'
class Partiserial(serializers.ModelSerializer):

    class Meta:
        model =parti_politique
        fields='__all__'

class MembreSerial (serializers.ModelSerializer):
    
    class Meta:
        model = Membre
        fields = '__all__'



class StorySerial (serializers.ModelSerializer):

    class Meta : 
        model = Story
        fields = '__all__'

class UserSerial (serializers.ModelSerializer) : 

    class Meta :
     model = User
     fields = '__all__'

       
    
        
       
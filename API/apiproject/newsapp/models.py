from django.db import models
#from django.contrib.auth.models import User
class categoriePost (models.Model):

    id_categorie =  models.AutoField(primary_key= True)
    categorie = models.TextField()

    class  Meta:
        db_table = 't_categorie'
    def __str__(self):
        return (f"{self.id_categorie}") 

class commnetaire (models.Model):

    id_commentaire =  models.AutoField(primary_key= True)
    commnetaire = models.TextField()
    date = models.DateTimeField(auto_now_add=True)
    user = models.TextField()

    class  Meta:
        db_table = 't_commentaire'
    def __str__(self):
        return (f"{self.id_commentaire}")  
class Story (models.Model):
    id_story = models.AutoField(primary_key=True)
    image = models.ImageField(upload_to="story_img")
    titre = models.TextField(max_length=30)
    class  Meta:
        db_table = 't_story'
    def __str__(self):
        return (f"{self.id_story}")  
class Post (models.Model):
    id_post = models.AutoField(primary_key= True)
    titre = models.TextField(max_length=150)
    username = models.TextField() 
    image_post = models.ImageField(upload_to="post_img")
    other = models.ImageField(upload_to="post_img")
    like  = models.IntegerField()
    commentaire = models.ForeignKey(commnetaire,on_delete=models.CASCADE)
    description = models.TextField(max_length=150)
    date_pub = models.DateField(auto_now=True)
    categorie = models.ForeignKey(categoriePost,on_delete=models.CASCADE)
    class  Meta:
        db_table = 't_post'
    def __str__(self):
        return (f"{self.titre}")    

class video(models.Model) :
    id_video = models.AutoField(primary_key=True)
    video = models.TextField()
    image = models.ImageField(upload_to="image_video")
    description = models.TextField()
    class  Meta:
        db_table = 't_video'
    def __str__(self):
        return (f"{self.video}") 
class Fondateur (models.Model): 
    id_fondateur= models.AutoField(primary_key= True)
    nom = models.TextField(max_length=50)
    postnom = models.TextField(max_length=50)
    prenom = models.TextField(max_length=50)
    dateN = models.DateField()
    photo = models.ImageField(upload_to="photo_fondateur")
    description = models.TextField(max_length=500)
    class  Meta:
        db_table = 't_fondateur'
    def __str__(self):
        return (f"{self.nom} {self.postnom} {self.prenom}")    
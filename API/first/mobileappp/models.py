from django.db import models

# Create your models here.

class User(models.Model):
    id_user = models.AutoField(primary_key= True)
    username = models.TextField(max_length=50)
    password= models.TextField(max_length=50)
    staff = models.TextField(max_length=50)

    class  Meta:
        db_table = 't_user'

    def __str__(self):
        return (f"{self.username}")

class Post (models.Model):
    id_post = models.AutoField(primary_key= True)
    titre = models.TextField(max_length=150)
    username = models.ForeignKey(User,on_delete=models.CASCADE)  
    
    image_post = models.ImageField(upload_to="post_img")
    other = models.ImageField(upload_to="post_img")
    like  = models.TextField(max_length=150)
    commentaire = models.TextField(max_length=150)
    description = models.TextField(max_length=150)
    date_pub = models.DateField()
    class  Meta:
        db_table = 't_post'

    def __str__(self):
        return (f"{self.titre} {self.description}")
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

class parti_politique (models.Model):
    id_parti = models.AutoField(primary_key= True)
    nom = models.TextField(max_length=50)
    service = models.TextField(max_length=150)
    anneeCreation = models.DateField()
    logo = models.ImageField(upload_to="logo_parti")
    historique = models.TextField(max_length=500)
    fondateur =models.ForeignKey(Fondateur,on_delete=models.CASCADE)
    class  Meta:
        db_table = 't_parti'
    def __str__(self):
        return (f"{self.nom}")
    



class Story (models.Model):
    id_story = models.AutoField(primary_key=True)
    image = models.ImageField(upload_to="story_img")
    username = models.ForeignKey(User,on_delete=models.CASCADE) 
    class  Meta:
        db_table = 't_story'

    def __str__(self):
        return (f"{self.id_story}")   


class Membre (models.Model):
    id_membre = models.AutoField(primary_key= True)
    matricule =models.TextField(max_length=150)
    identiter =models.TextField(max_length=150) 
    sexe =models.TextField(max_length=150)
    etat_civil =models.TextField(max_length=150)
    lieu_N =models.TextField(max_length=150)
    date_N = models.DateField()
    N_parcel =models.TextField(max_length=150)
    avenue =models.TextField(max_length=150)
    profession =models.TextField(max_length=150)
    niveau_Etu =models.TextField(max_length=150)
    niveau_membre =models.TextField(max_length=150)
    tel =models.TextField(max_length=150)
    email =models.TextField(max_length=150)
    date_Ajout = models.DateField()
    photo_membre = models.ImageField(upload_to="membre_img")

    class  Meta:
        db_table = 't_membre'

    def __str__(self):
        return (f"{self.matricule}")





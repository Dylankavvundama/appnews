# Generated by Django 4.2.2 on 2023-06-30 11:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mobileappp', '0003_membre_user_story_post'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='other',
            field=models.ImageField(upload_to='post_img'),
        ),
    ]
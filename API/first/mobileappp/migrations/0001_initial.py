# Generated by Django 4.2.2 on 2023-06-29 09:21

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Fondateur',
            fields=[
                ('id_parti', models.AutoField(primary_key=True, serialize=False)),
                ('nom', models.TextField(max_length=50)),
                ('postnom', models.TextField(max_length=50)),
                ('prenom', models.TextField(max_length=50)),
                ('dateN', models.DateField()),
                ('photo', models.ImageField(upload_to='photo_fondateur')),
                ('description', models.TextField(max_length=500)),
            ],
            options={
                'db_table': 't_fondateur',
            },
        ),
        migrations.CreateModel(
            name='parti_politique',
            fields=[
                ('id_fondateur', models.AutoField(primary_key=True, serialize=False)),
                ('nom', models.TextField(max_length=50)),
                ('service', models.TextField(max_length=150)),
                ('anneeCreation', models.DateField()),
                ('logo', models.ImageField(upload_to='logo_parti')),
                ('historique', models.TextField(max_length=500)),
            ],
            options={
                'db_table': 't_parti',
            },
        ),
    ]

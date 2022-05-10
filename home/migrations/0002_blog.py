# Generated by Django 3.2.9 on 2022-05-10 06:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Blog',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('writer_name', models.CharField(max_length=50)),
                ('type', models.CharField(max_length=50)),
                ('title', models.CharField(max_length=50)),
                ('content', models.TextField()),
                ('image', models.ImageField(upload_to='media/blog/')),
                ('date', models.DateField()),
            ],
        ),
    ]
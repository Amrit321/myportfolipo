# Generated by Django 3.2.9 on 2022-05-19 09:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0003_services'),
    ]

    operations = [
        migrations.CreateModel(
            name='Portfolio',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('detail', models.TextField()),
                ('image', models.ImageField(upload_to='media/portfolio/')),
            ],
        ),
    ]

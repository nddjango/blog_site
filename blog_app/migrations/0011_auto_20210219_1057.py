# Generated by Django 3.1.6 on 2021-02-19 05:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog_app', '0010_auto_20210219_1033'),
    ]

    operations = [
        migrations.AlterField(
            model_name='blog',
            name='image',
            field=models.ImageField(upload_to='static/images/models'),
        ),
    ]

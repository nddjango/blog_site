# Generated by Django 3.1.6 on 2021-02-18 09:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog_app', '0006_contact'),
    ]

    operations = [
        migrations.AlterField(
            model_name='blog',
            name='image',
            field=models.ImageField(upload_to='uploaded_blog'),
        ),
    ]

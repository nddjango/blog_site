# Generated by Django 3.1.6 on 2021-02-17 07:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog_app', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='blod',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.FileField(upload_to='uploaded_blog')),
                ('title', models.CharField(max_length=50)),
                ('dscr', models.CharField(max_length=1000)),
            ],
        ),
    ]

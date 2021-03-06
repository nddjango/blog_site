from django.db import models

# Create your models here.
class signup(models.Model):
    dp=models.ImageField(upload_to="profile_picture/")
    unm=models.CharField(max_length=50)
    email=models.EmailField(max_length=50)
    password=models.CharField(max_length=50)

    def __str__(self):
        return self.unm

class blog(models.Model):
    unm=models.CharField(max_length=50)
    image=models.ImageField(upload_to="images/")
    title=models.TextField()
    dscr=models.TextField()

    def __str__(self):
        return self.unm


class contact(models.Model):
    u_nm=models.CharField(max_length=50)
    u_email=models.CharField(max_length=50)
    u_sub=models.CharField(max_length=50)
    u_msg=models.CharField(max_length=500)

    def __str__(self):
        return self.u_nm
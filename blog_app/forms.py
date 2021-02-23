from django import forms
from .models import *


class signupform(forms.ModelForm):
    class Meta:
        model=signup
        fields ='__all__'

class blogform(forms.ModelForm):
    class Meta:
        model=blog
        fields ='__all__'


class contactform(forms.ModelForm):
    class Meta:
        model=contact
        fields ='__all__'
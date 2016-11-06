from django.contrib import admin
from django import forms

from .models import *

class SinopsisForm(forms.ModelForm):
    sinopsis = forms.CharField(widget=forms.Textarea)

class PeliculaAdmin(admin.ModelAdmin):
    filter_horizontal = ('actores',)
    form = SinopsisForm
# Register your models here.
admin.site.register(Pelicula, PeliculaAdmin)
admin.site.register(Actor)
admin.site.register(Sala)
admin.site.register(Proyeccion)

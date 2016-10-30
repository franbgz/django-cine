from django.shortcuts import render, render_to_response, get_object_or_404

from django.http import HttpResponse
from django.db.models import Q
from django.template.loader import get_template
from django.template import Context

from .models import *
# Create your views here.
def index(request):
    html = "<html><body>index</body></html>"

    return HttpResponse(html)

def pelicula(request, offset):
    pelicula = get_object_or_404(Pelicula, nombre_interno=offset)
    actores = pelicula.actores.all()
    return render_to_response('pelicula.django.html', locals())

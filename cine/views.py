from django.shortcuts import render, render_to_response, get_object_or_404
from django.conf import settings
from django.http import HttpResponse
from django.db.models import Q
from django.template.loader import get_template
from django.template import Context
from datetime import date, time

from .models import *
# Create your views here.
def handler404(request):
    response = render_to_response('404.html', {},
                                  context_instance=RequestContext(request))
    response.status_code = 404
    return response

def index(request):
    # Cartelera
    numsalas = Proyeccion.objects.values_list('sala', flat=True).distinct()
    salas = []
    for num in numsalas:
        proyecciones = Proyeccion.objects.filter(sala=num)
        salas.append(proyecciones)


    hoy = date.today()
    ult_estreno = Pelicula.objects.filter(fecha_estreno__lte=hoy).latest('fecha_estreno') # Extrae la ultima pelicula estrenada
    ult_estreno_actores = ult_estreno.actores.all()
    prox_estreno = Pelicula.objects.filter(fecha_estreno__gt=hoy).earliest('fecha_estreno') # Extrae la proxima pelicula que se estrenara
    media_url = settings.MEDIA_URL
    return render_to_response('index.django.html', locals())

def pelicula(request, offset):
    """
        Función que recibe el nombre interno de una pelicula desde la URL que la
        llama.
        Busca en la base de datos y devuelve un objeto Pelicula. Tras esto,
        extrae la lista de actores.
        Establece una variable para albergar la URL donde se encuentran los
        archivos media.
        Devuelve un error 404 si no encuentra ninguna pelicula que coincida
        con el nombre. Este error solo se producirá cuando se ingrese la URL
        que llama a esta función manualmente en la barra de dirección del
        navegador.
    """
    pelicula = get_object_or_404(Pelicula, nombre_interno=offset)
    actores = pelicula.actores.all()
    media_url = settings.MEDIA_URL
    return render_to_response('pelicula.django.html', locals())

def listaPeliculas(request):
    hoy = date.today()
    peliculas = Pelicula.objects.filter(fecha_estreno__lte=hoy).order_by('-fecha_estreno')
    media_url = settings.MEDIA_URL
    return render_to_response('lista.django.html', locals())

def listaProximas(request):
    hoy = date.today()
    peliculas = Pelicula.objects.filter(fecha_estreno__gt=hoy).order_by('fecha_estreno')
    media_url = settings.MEDIA_URL
    return render_to_response('proximas.django.html', locals())

def buscar(request):
    clave = request.GET.get('clave', '')
    if clave:
        resultado = Pelicula.objects.filter(titulo__icontains=clave).order_by('-id')
        media_url = settings.MEDIA_URL
    else:
        resultado = []

    return render_to_response("resultado.django.html", locals())

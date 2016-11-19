from django.conf.urls import url
from django.conf import settings
from django.conf.urls.static import static

from . import views

urlpatterns = [
	url(r'^$', views.index, name='index'),
	url(r'^'+settings.URL_PELIS+'$', views.listaPeliculas, name='listaPeliculas'),
	url(r'^'+settings.URL_PELIS+'([a-z0-9_]*)/$', views.pelicula, name='pelicula'),
	url(r'^proximas/$', views.listaProximas, name='proximas'),
	url(r'^buscar/$', views.buscar, name='buscar')

	] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

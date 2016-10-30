from django.conf.urls import url
from django.conf import settings
from django.conf.urls.static import static

from . import views

urlpatterns = [
	url(r'^index/$', views.index, name='index'),
	url(r'^pelicula/(.*)/$', views.pelicula),
	# url(r'^search/$', views.search, name='buscar')
	]

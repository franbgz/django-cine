from django.db import models

# Create your models here.
class Actor(models.Model):
	nombre = models.CharField(max_length=50)
	apellidos = models.CharField(max_length=100)

	def __str__(self):
		return '%s %s' % (self.nombre, self.apellidos)

	def admin()	:
		pass	

class Pelicula(models.Model):
	titulo = models.CharField(max_length=75)
	nombre_interno = models.CharField(max_length=75)
	fecha_estreno = models.DateField()
	genero = models.CharField(max_length=150)
	actores = models.ManyToManyField(Actor)
	sinopsis = models.CharField(max_length=1000)
	cartel = models.ImageField(upload_to='images')
	enlace = models.URLField()

	def __str__(self):
		return self.titulo

	def admin()	:
		pass

class Sala(models.Model):
	numero = models.IntegerField()
	tipo = models.CharField(max_length=50)
	aforo_max = models.IntegerField()

	def __str__(self):
		return str(self.numero)

	def admin()	:
		pass	

class Proyeccion(models.Model):
	sala = models.ForeignKey(Sala)
	pelicula = models.ForeignKey(Pelicula)
	hora = models.TimeField()

	def __str__(self):
		return '%s - %s (%s)' % (self.sala, self.pelicula, self.hora)

	def admin()	:
		pass	
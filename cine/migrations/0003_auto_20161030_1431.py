# -*- coding: utf-8 -*-
# Generated by Django 1.10.2 on 2016-10-30 14:31
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cine', '0002_pelicula_director'),
    ]

    operations = [
        migrations.AlterUniqueTogether(
            name='actor',
            unique_together=set([('nombre', 'apellidos')]),
        ),
    ]

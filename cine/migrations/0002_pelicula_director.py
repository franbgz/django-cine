# -*- coding: utf-8 -*-
# Generated by Django 1.10.2 on 2016-10-30 14:21
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cine', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='pelicula',
            name='director',
            field=models.CharField(max_length=75, null=True),
        ),
    ]

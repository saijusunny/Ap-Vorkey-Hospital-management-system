# Generated by Django 4.0.2 on 2022-04-06 16:59

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0021_rename_pat_doctor_patient'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='doctor',
            name='patient',
        ),
    ]

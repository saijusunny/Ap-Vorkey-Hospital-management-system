# Generated by Django 4.0.2 on 2022-04-06 16:42

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0018_patient_section'),
    ]

    operations = [
        migrations.AddField(
            model_name='doctor',
            name='patient',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app1.patient'),
        ),
    ]
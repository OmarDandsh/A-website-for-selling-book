# Generated by Django 4.2.2 on 2023-06-13 13:31

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('bookshop', '0013_rename_password_custumer_name_remove_custumer_email_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='custumer',
            name='name',
        ),
    ]
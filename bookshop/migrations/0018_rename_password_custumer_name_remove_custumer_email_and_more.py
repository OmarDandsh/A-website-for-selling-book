# Generated by Django 4.2.2 on 2023-06-13 14:18

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('bookshop', '0017_custumer_alter_bookf_custumer_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='custumer',
            old_name='password',
            new_name='name',
        ),
        migrations.RemoveField(
            model_name='custumer',
            name='email',
        ),
        migrations.RemoveField(
            model_name='custumer',
            name='last_login',
        ),
        migrations.RemoveField(
            model_name='custumer',
            name='username',
        ),
    ]

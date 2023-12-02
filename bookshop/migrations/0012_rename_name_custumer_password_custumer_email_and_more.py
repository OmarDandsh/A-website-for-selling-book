# Generated by Django 4.2.2 on 2023-06-13 13:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bookshop', '0011_bookpreference'),
    ]

    operations = [
        migrations.RenameField(
            model_name='custumer',
            old_name='name',
            new_name='password',
        ),
        migrations.AddField(
            model_name='custumer',
            name='email',
            field=models.EmailField(default=4343434, max_length=100, unique=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='custumer',
            name='last_login',
            field=models.DateTimeField(blank=True, null=True, verbose_name='last login'),
        ),
        migrations.AddField(
            model_name='custumer',
            name='username',
            field=models.CharField(default=4343434, max_length=100),
            preserve_default=False,
        ),
    ]

# Generated by Django 4.2.2 on 2023-07-07 23:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bookshop', '0020_alter_product_format_alter_product_language_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='Format',
            field=models.IntegerField(choices=[(1, 'ورقي'), (2, 'الكتروني')], default=1),
        ),
        migrations.AlterField(
            model_name='product',
            name='Language',
            field=models.IntegerField(choices=[(1, 'عربي'), (2, 'انكليزي')], default=1),
        ),
    ]

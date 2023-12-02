# Generated by Django 4.2.2 on 2023-06-13 13:37

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('bookshop', '0015_custumer_name'),
    ]

    operations = [
        migrations.CreateModel(
            name='Custumer2',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=255)),
            ],
        ),
        migrations.AlterField(
            model_name='bookf',
            name='custumer',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='bookshop.custumer2'),
        ),
        migrations.AlterField(
            model_name='bookpreference',
            name='customer',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='bookshop.custumer2'),
        ),
        migrations.AlterField(
            model_name='order1',
            name='custumer',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='bookshop.custumer2'),
        ),
        migrations.DeleteModel(
            name='Custumer',
        ),
    ]

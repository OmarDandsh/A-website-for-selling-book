# Generated by Django 4.2.2 on 2023-06-13 13:40

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('bookshop', '0016_custumer2_alter_bookf_custumer_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Custumer',
            fields=[
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('username', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=100, unique=True)),
                ('password', models.CharField(max_length=100)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.AlterField(
            model_name='bookf',
            name='custumer',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='bookshop.custumer'),
        ),
        migrations.AlterField(
            model_name='bookpreference',
            name='customer',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='bookshop.custumer'),
        ),
        migrations.AlterField(
            model_name='order1',
            name='custumer',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='bookshop.custumer'),
        ),
        migrations.DeleteModel(
            name='Custumer2',
        ),
    ]
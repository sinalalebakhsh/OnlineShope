# Generated by Django 5.0.7 on 2024-07-21 15:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0002_comment'),
    ]

    operations = [
        migrations.AlterField(
            model_name='comment',
            name='body',
            field=models.TextField(verbose_name='text'),
        ),
        migrations.AlterField(
            model_name='comment',
            name='stars',
            field=models.CharField(choices=[('1', 'Very Bad'), ('2', 'Bad'), ('3', 'Normal'), ('4', 'Good'), ('5', 'Perfect')], max_length=10, verbose_name='score'),
        ),
    ]

from django.contrib import admin

# Register your models here.

#testando o model categoria 
from .models import Aluno, Curso, Disciplina

admin.site.register(Aluno)
admin.site.register(Curso)
admin.site.register(Disciplina)
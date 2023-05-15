# Exercícios de Linux

1. Liste os arquivos e diretórios no diretório atual.

_**Comando:** ls_
![image](/md's/img/listar.png)

<hr>

2. Navegue para o diretório “mydocuments”.

_**Comando:** cd MyDocuments_

![image](/md's/img/entrar_em_um_diretorio.png)

<hr>

3. Crie um novo diretório chamado “mydirectory” dentro de mydocuments.

_**Comando:** mkdir MyDirectory_

![image](/md's/img/criar_diretorio.png)

<hr>

4. Crie um novo arquivo vazio chamado “newfile.txt”.

_**Comando:** touch newfile.txt_

![image](/md's/img/criar_arquivo.png)

<hr>

5. Crie o arquivo “newfile.txt” para o diretório “/mydirectory”.

_**Comando:** cp [<endereço atual do arquivo>] [<endereço final do arquivo>]_

_cp /home/mobaxterm/MyDocuments/newfile.txt /home/mobaxterm/MyDocuments/MyDirectory/_

![image](/md's/img/mudar_de_pasta.png)

<hr>

1. Renomeie o arquivo "oldfile.txt" para "newfile.txt".

_**Comando:** mv [<old.txt>] [<new.txt>]_

_mv ca_file.txt new_file.txt_
![image](/md's/img/renomear.png)

<hr>
 
7. Insira informações e Mostre o conteúdo do arquivo "myfile.txt".
   
_**Comando:** echo "conteudo do arquivo" >> myfile.txt_

_cat myfile.txt_
![image](/md's/img/criar_com_conteudo_e_visualizar.png)
 
<hr>

8. Remova o arquivo "unwanted.txt".

_**Comando:** rm -- [<"nome do arquivo">].txt_

_rm -- new_file.txt_

![image](/md's/img/remover.png)

<hr>
 
9.  Liste os processos em execução no sistema. (0,5)

_**Comando:** ps_

![image](/md's/img/em_execucao.png)

<hr>

10.  Verifique o espaço livre em disco. (0,5)

_**Comando:** df -h_

![image](/md's/img/listar_discos.png)

<hr>
 
11.  Encontre todos os arquivos com a extensão ".txt" em todo o mydocuments.
    
_**Comando:** find . -type f -name "*.txt"_

![image](/md's/img/listar_arquivos_de_mesma_extensao.png)

<hr>
 
12. Liste os 10 últimos processos que estão usando memória.

_**Comando:** ps axu | sort -nk 7 | tail ou ps aux | tail_

![image](/md's/img/ultimos_10_processos.png)

<hr>
 
13.  Conte quantas linhas existem no arquivo "companhia_mb.txt".

_**Comando:** wc -l [<"nome do arquivo">]_

_wc -l companhia-mb.txt_

![image](/md's/img/contar_linhas.png)

<hr>
 
14.  Liste os 10 arquivos mais recentemente modificados no diretório atual.

_**Comando:** ls -lt | head -n 11_

![image](/md's/img/listar_10_mod.png)

<hr>
 
15. Crie um arquivo compactado chamado "archive.tar.gz" contendo todos os arquivos de um diretório.

_**Comando:** tar -zcvf archive.tar.gz MyDocuments_

![image](/md's/img/criar_arquivo_tar_gz.png)

<hr>
 
16. Encontre todas as ocorrências da palavra "capital" em todos os arquivos do local que esta companhia_mb.

_**Comando:** grep "capital" companhia-mb.txt_

![image](/md's/img/encontrar_ocorrencias.png)

<hr>
 
17. Liste todos os usuários do sistema em ordem alfabética.

_**Comando:** cut -d: -f1 /etc/passwd | sort_

![image](/md's/img/listar_usuarios.png)

<hr>
 
18. Mostre as últimas 20 linhas do arquivo "companhia_mb.txt".

_**Comando:** tail -n20[<"nome do diretorio ou arquivo">]_

_tail companhia-mb.txt_

![image](/md's/img/ultimas_20_linhas.png)

<hr>
 
19.  Altere as permissões de um arquivo para que apenas o proprietário possa ler, escrever e executar.

_**Comando:** chmod u + rws [<nomearquivo>]_

![image](/md's/img/proprietario.png)

<hr>
 
20. Remova todos os arquivos vazios do diretório MyDocuments e seus subdiretórios.

_**Comando:** find . -type f -size 0 -print -delete_

![image](/md's/img/remover_arquivos_vazios.png)

Descrição:
Este é um script de backup automatizado que realiza o backup de arquivos específicos para um diretório em um pendrive. O backup é realizado após 5 minutos do sistema inicializar.

Instruções:

    Defina o diretório onde o backup será armazenado, modificando a variável pendrive_dir para o caminho do seu pendrive.
    Especifique os arquivos ou diretórios que serão incluídos no backup, adicionando-os ao array arquivos_backup.
    Especifique a frequência de execução do backup na variável frequencia_backup.

Função realizar_backup:
Esta função é responsável por realizar o backup. Ela cria um arquivo tar.gz com a data e hora atual no nome e compacta os arquivos especificados no array arquivos_backup. Se o backup for concluído com sucesso, os backups antigos com mais de 2 semanas são removidos do diretório de backup. Você pode adicionar ações adicionais desejadas após a conclusão do backup.

Aguardar 5 minutos:
Antes de executar o backup, o script aguarda 5 minutos utilizando o comando sleep 600. Isso permite que o sistema inicialize completamente antes de iniciar o backup.

Execução:
Para executar o script, salve-o em um arquivo com extensão .sh, torne-o executável com chmod +x script.sh e execute-o com ./script.sh. Certifique-se de ter permissões suficientes para acessar os arquivos e diretórios especificados para o backup.

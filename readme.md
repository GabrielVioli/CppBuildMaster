# Projeto Makefile com C++

Este repositório contém um exemplo de configuração de um ambiente de desenvolvimento em C++ utilizando `Makefile`, `tasks.json` (para o VS Code) e `launch.json` (para depuração). Este projeto tem como objetivo demonstrar como configurar e executar um projeto C++ no Windows com o MinGW.

## Estrutura do Projeto

```
├── include/          # Diretório para arquivos de cabeçalho (.h)
├── src/              # Diretório para arquivos-fonte (.cpp)
├── obj/              # Diretório para arquivos objeto (.o) gerados na compilação
├── bin/              # Diretório para o binário final (.exe)
├── lib/              # Diretório para bibliotecas estáticas (.a)
├── Makefile          # Arquivo Makefile para automação do build
├── tasks.json        # Configuração de tarefas do VS Code
├── launch.json       # Configuração de depuração do VS Code
```

## Pré-requisitos

- **MinGW**: Certifique-se de que o MinGW está instalado e configurado no PATH.
- **VS Code**: Com as extensões para C/C++ instaladas.
- **Make**: Ferramenta de build (`mingw32-make` no Windows).

## Configuração e Execução

### Passo 1: Configurar o Ambiente no VS Code

1. Abra o projeto no VS Code.
2. Certifique-se de que os arquivos `tasks.json` e `launch.json` estão configurados corretamente no diretório `.vscode/`.

### Passo 2: Compilação

Para compilar o projeto:
- No terminal integrado do VS Code, execute:
  ```bash
  make
  ```
- Ou, no menu de execução do VS Code, selecione a tarefa **Build com Make**.

### Passo 3: Execução

Após a compilação, o binário será gerado no diretório `bin/`. Para executar:
- No terminal:
  ```bash
  ./bin/app2.exe
  ```
- Ou, no menu de execução do VS Code, inicie a depuração com o nome **Executar com Makefile**.

### Passo 4: Limpeza

Para limpar os arquivos gerados:
```bash
make clean
```

## Detalhes Técnicos

### Makefile

O arquivo `Makefile` realiza as seguintes tarefas:
- Compila os arquivos-fonte em objetos (`.o`).
- Gera uma biblioteca estática (`libed.a`) no diretório `lib/`.
- Compila o binário final `app2.exe` no diretório `bin/`.
- Executa o binário automaticamente após a compilação.

**Comandos principais:**
- `make all`: Compila e executa o programa.
- `make clean`: Remove os arquivos gerados.

### tasks.json

Configura uma tarefa de build no VS Code para executar o `make`:
- **Label:** `Build com Make`
- **Comando:** `make all`

### launch.json

Configura a depuração no VS Code:
- **Tipo de depuração:** `cppdbg`
- **Depurador:** `gdb.exe` (localizado no diretório do MinGW)
- **Binário:** `bin/app2.exe`

## Dependências

O projeto utiliza as seguintes dependências:
- **Biblioteca estática `libed.a`:** Gerada pelo próprio projeto no diretório `lib/`.

## Problemas Conhecidos

- O comando `clean` utiliza comandos específicos do Windows (`del`). Em sistemas Unix, será necessário ajustar para `rm`.

## Contribuição

Sinta-se à vontade para abrir issues ou enviar pull requests para melhorias neste projeto.

## Licença

Este projeto está sob a licença [MIT](LICENSE).
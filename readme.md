# Imersão DevOps - Alura Google Cloud

Este projeto é uma API desenvolvida com FastAPI para gerenciar alunos, cursos e matrículas em uma instituição de ensino.

## Pré-requisitos

- [Python 3.10 ou superior instalado](https://www.python.org/downloads/)
- [Git](https://git-scm.com/downloads)
- [Docker](https://www.docker.com/get-started/)

## Passos para subir o projeto

1. **Faça o download do repositório:**
   [Clique aqui para realizar o download](https://github.com/guilhermeonrails/imersao-devops/archive/refs/heads/main.zip)

2. **Navegue até o diretório do projeto:**
   Após descompactar o arquivo, entre na pasta do projeto (`imersao-devops-main`).
   ```sh
   cd imersao-devops-main
   ```

3. **Crie um ambiente virtual (opcional, para execução local):**
   ```sh
   python -m venv venv
   ```

4. **Ative o ambiente virtual:**
   - No Linux/Mac:
     ```sh
     source venv/bin/activate
     ```
   - No Windows:
     ```sh
     venv\Scripts\activate
     ```

5. **Instale as dependências:**
   ```sh
   pip install -r requirements.txt
   ```

6. **Execute a aplicação localmente:**
   ```sh
   uvicorn app:app --reload
   ```

7. **Acesse a documentação interativa:**

   Abra o navegador e acesse:  
   [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

   Aqui você pode testar todos os endpoints da API de forma interativa.

---

## Passos para subir o projeto com Docker

1. **Construa a imagem Docker:**
   A partir da raiz do projeto (onde o `Dockerfile` está localizado), execute:
   ```sh
   docker build -t imersao-devops .
   ```

2. **Execute o contêiner:**
   ```sh
   docker run -d -p 8000:8000 --name imersao-devops-container imersao-devops
   ```
   A aplicação estará disponível em http://localhost:8000 e a documentação em http://localhost:8000/docs.
---

## Estrutura do Projeto

- `app.py`: Arquivo principal da aplicação FastAPI.
- `models.py`: Modelos do banco de dados (SQLAlchemy).
- `schemas.py`: Schemas de validação (Pydantic).
- `database.py`: Configuração do banco de dados SQLite.
- `routers/`: Diretório com os arquivos de rotas (alunos, cursos, matrículas).
- `requirements.txt`: Lista de dependências do projeto.

---

- O banco de dados SQLite será criado automaticamente como `escola.db` na primeira execução.
- Para reiniciar o banco, basta apagar o arquivo `escola.db` (isso apagará todos os dados).

---

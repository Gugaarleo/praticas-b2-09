# Automação de Builds e Contêineres na Nuvem

Repositório base para o desenvolvimento de uma automação de build de uma imagem Docker de uma aplicação Python+Flask e implantação em um serviço na nuvem (opcional).

A automação de build consiste no processo de transformar seu código-fonte em artefatos executáveis de forma automática e reproduzível. 
Isto inclui compilar, empacotar e preparar o código para o próximo estágio no pipeline, como seu deploy em um serviço na nuvem.

## Contêineres na Nuvem

**Gitlab Container Registry** é um serviço para armazenamento de imagens Docker, sendo completamente integrado ao GitLab.

**Amazon ECS** é um serviço de orquestração de contêineres, sendo totalmente gerenciado pela AWS.

**Render** é uma plataforma de nuvem que oferece suporte nativo para executar aplicativos e serviços em contêineres.

## Exercícios Propostos

1. **Build da imagem Docker no Gitlab Container Registry**:  
   Possibilitar o build (docker build) e realizar o envio (docker push) da imagem para o Gitlab Container Registry em seu pipeline.

2. **Otimizar o tempo de build**:  
   Possibilitar o uso de cache na construção do contêiner.

3. **(OPCIONAL) Deploy do contêiner em um serviço na nuvem**:  
   Possibilitar o deploy da aplicação em serviços de contêineres como o Amazon ECS² ou Render³.

¹[Trabalhando com Cache no Docker](https://docs.gitlab.com/ee/ci/docker/docker_layer_caching.html)

²[Deploy no Amazon ECS](https://docs.gitlab.com/ee/ci/cloud_deployment/ecs/deploy_to_aws_ecs.html)

³[Deploy no Render](https://render.com/docs/deploy-an-image)

## Executando a Aplicação

Em um ambiente local, executando os comandos:

```
docker build --tag seu-usuário/my-flask-app .
```

```
docker run -d -p 5000:5000 seu-usuário/my-flask-app
```

- A aplicação responderá em duas rotas na web: http://localhost:5000/health-check e http://localhost:5000/hello?name=guijac
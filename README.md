# Exemplos de Infraestrutura com Terraform

Este repositório contém exemplos de receitas de Terraform para provisionamento de infraestrutura na AWS. Cada receita foi criada para consultas futuras, fornecendo uma base sólida para a implementação de recursos de forma prática e eficiente.

## Sobre o Repositório

Este repositório foi desenvolvido com o propósito de fornecer receitas úteis para provisionar e gerenciar recursos na AWS utilizando Terraform. As receitas estão organizadas por tipos de recursos, facilitando a consulta e reutilização em diferentes projetos.

O repositório inclui exemplos para provisionamento de instâncias EC2, buckets S3, grupos de segurança e outros, além de uma configuração básica de provider e região.

## Objetivo

O objetivo principal deste repositório é servir como referência para consultas rápidas, permitindo a reutilização de configurações de Terraform em projetos futuros, com foco em infraestrutura como código e boas práticas.

## Tecnologias Utilizadas

| Tecnologia          | Função                                        | Descrição                                                                                                                                       | Arquivo/Configuração         |
|---------------------|-----------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------|
| **AWS EC2**         | Computação em Nuvem                           | Criação e gerenciamento de instâncias EC2 para provisionamento de servidores na AWS.                                                            | `ec2.tf`                     |
| **AWS S3**          | Armazenamento de Objetos                      | Configuração de buckets S3 para armazenamento seguro e escalável de dados.                                                                      | `s3.tf`                      |
| **AWS Security Group** | Gerenciamento de Segurança                  | Definição de regras de segurança de rede para controle de tráfego de entrada e saída em instâncias EC2.                                          | `security-group.tf`          |
| **AWS Provider**    | Integração com AWS                            | Configuração do provider da AWS para permitir o gerenciamento de recursos na nuvem.                                                             | `main.tf`                    |

## Organização dos Arquivos

| Arquivo               | Descrição                                                                                                   |
|-----------------------|-------------------------------------------------------------------------------------------------------------|
| **main.tf**           | Contém a configuração básica do provider e região para a AWS.                                                |
| **ec2.tf**            | Exemplo de criação de uma instância EC2 com parâmetros configuráveis como tipo de instância, chave SSH, etc. |
| **s3.tf**             | Exemplo de criação de um bucket S3 com versionamento e criptografia habilitados.                             |
| **security-group.tf**  | Exemplo de configuração de um grupo de segurança com regras para tráfego HTTP e SSH.                        |

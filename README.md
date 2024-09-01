# Exemplos de Infraestrutura com Terraform

Este repositório contém exemplos de receitas de Terraform para provisionamento de infraestrutura na AWS. Cada receita foi criada para consultas futuras, fornecendo uma base sólida para a implementação de recursos de forma prática e eficiente.

## Sobre o Repositório

Este repositório foi desenvolvido com o propósito de fornecer receitas úteis para provisionar e gerenciar recursos na AWS utilizando Terraform. As receitas estão organizadas por tipos de recursos, facilitando a consulta e reutilização em diferentes projetos.

O repositório inclui exemplos para provisionamento de instâncias EC2, buckets S3, grupos de segurança e outros, além de uma configuração básica de provider e região.

## Objetivo

O objetivo principal deste repositório é servir como referência para consultas rápidas, permitindo a reutilização de configurações de Terraform em projetos futuros, com foco em infraestrutura como código e boas práticas.

## Organização dos Arquivos

| Arquivo            | Descrição                                                                 |
|--------------------|---------------------------------------------------------------------------|
| **ec2.tf**         | Provisiona uma instância EC2 na AWS.                                      |
| **s3.tf**          | Cria um bucket S3 com as configurações definidas.                         |
| **security-group.tf** | Configura grupos de segurança para gerenciar o tráfego de rede.           |
| **dynamodb.tf**    | Provisiona uma tabela DynamoDB com chaves de partição e opções de throughput. |
| **variables.tf**   | Define as variáveis usadas em todo o projeto, como região, tipo de instância e nomes de recursos. |
| **main.tf**        | Contém a configuração do provider e a definição da região utilizada.       |

## Tecnologias Utilizadas

- **Terraform**: Utilizado para o provisionamento de infraestrutura como código (IaC) na AWS.

## Como Usar

1. Clone este repositório.
2. Modifique os arquivos conforme necessário para suas próprias configurações.
3. Execute os comandos Terraform para provisionar os recursos na AWS:

   
   ```bash
   terraform init
   terraform plan
   terraform apply
   
# Autor
<b>Thallyta Macedo Carvalho de Castro</b>

Linkedin: https://www.linkedin.com/in/thallyta-castro/

Medium: https://medium.com/@thallyta-castro-cv

email: contato@thallytacastro.com.br

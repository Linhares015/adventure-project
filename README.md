Adventure Project

Este é um projeto de exemplo que demonstra como criar um projeto de Business Intelligence (BI) do zero usando o banco de teste da Microsoft AdventureWorks no formato modern data stack.

Usando as seguintes ferramentas:

PostgreSQL - Nele terá o banco Transacional e o Data Warehouses;
Docker - Terá o container do banco Postgress;
Github - Versionador de código;
DBT (Data Build Tool) - Será usado no processamento e transformação dos dados;
Vscode - Será a IDE de codificação.

Descrição do projeto
Este projeto tem como objetivo criar uma plataforma de dados, que sustentará um conjunto de relatórios e dashboards para ajudar uma empresa de varejo a entender melhor seus dados de vendas e tomar decisões informadas. Para isso, vamos utilizar o banco de teste da Microsoft AdventureWorks, que é um banco de dados de exemplo que inclui dados de vendas, estoque, clientes e muito mais.

Usaremos ferramentas que estão na linha de frente da análise de dados e montaremos toda a infraestrutura do zero, para base desse projeto e de outros que a empresa quisesse aplicar no futuro, esse modelo de trabalho apesar de aqui ser em base teste, pode e já é aplicado no mercado e tem grandes benefícios.

O foco aqui é no projeto completo e não apenas na visualização dos dados via Power BI.

Instalação
Para instalar este projeto, você precisará seguir os seguintes passos:

Clone o repositório do projeto usando o Git:
Copy code
git clone https://github.com/seu-usuario/adventure-project.git
cd adventure-project
Instale as dependências necessárias:
Copy code
pip install -r requirements.txt

Faça o pull da máquina com o banco de teste da Microsoft AdventureWorks em PostgreSQL chriseaton/adventureworks:postgres, ou se preferir você pode baixar o banco e restaurar o backup no seu sqlserver, irá encontrar instruções detalhadas sobre como fazer isso .

Configure as credenciais de acesso ao banco de dados no arquivo dbt_project.yml.

Execute o comando dbt run para processar e carregar os dados para o banco de dados PostgreSQL.

Uso
Uma vez que os dados foram processados e carregados para o banco de dados PostgreSQL, você pode usar uma ferramenta de visualização de dados para criar relatórios e dashboards. Algumas opções populares incluem o Tableau e o Power BI.

Contribuição
Por enquanto não estamos aceitando contribuições no código, por se tratar de um projeto para aplicação de conhecimento.


Ass: Tiago Linhares.

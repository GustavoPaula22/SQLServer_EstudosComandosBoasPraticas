--Comando para selecionar todos os valores da tabela--
SELECT * FROM Person.Person;

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando para selecionar tabelas escolhidas--
SELECT FirstName, LastName FROM Person.Person;

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'DISTINCT' não deixa retornar valores repedido--
SELECT DISTINCT FirstName FROM Person.Person;
SELECT DISTINCT LastName FROM Person.Person;

--Comando 'WHERE' selecionar valores especificos--
/*  SINAIS LOGICOS
OPERADOR   /   DESCRIÇAO
=			   IGUAL
>			   MAIOR QUE
<			   MENOR QUE
>=			   MAIOR QUE OU IGUAL 
<=			   MENOR QUE OU IGUAL
<>			   DEFERENTE DE
AND			   OPERADOR LOGICO 'E'
OR			   OPERADOR LOGICO 'OU'
*/
SELECT * FROM Production.Product;

SELECT Name, Color, ListPrice FROM Production.Product WHERE Color = 'blue' OR Color = 'black';

SELECT Name, Color, ListPrice FROM Production.Product WHERE ListPrice > 100 AND Color = 'black';

SELECT Name, Color, ListPrice FROM Production.Product WHERE Color <> 'black' AND ListPrice <> 0;

SELECT * FROM Production.Product WHERE Weight > 500 AND Weight <= 700;

SELECT * FROM HumanResources.Employee WHERE MaritalStatus = 'm' AND SalariedFlag = 'true';

SELECT * FROM Person.Person WHERE FirstName = 'Peter' AND LastName = 'Krebs';

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'COUNT' retorna a quantidade de linhas buscadas--
SELECT COUNT(DISTINCT Title) FROM Person.Person;	

SELECT COUNT(*) FROM Production.Product;

SELECT COUNT(Size) FROM Production.Product;

SELECT COUNT(DISTINCT Size) FROM Production.Product;

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'TOP' retorna uma quantidade X de valores--
SELECT TOP 14 * FROM Production.Product;

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'ORDER BY' deixa ordernar os resultados na ordem crecente ou decrecente--
/*
Pode ser usado para letras de A|Z ou Z|A
pode ser usado por numeros tbm

	Comando	/ Descrição
	ASC		  Do menor para o maior
	DESC	  Do maior para o menor 
*/
SELECT Name, ListPrice FROM Production.Product ORDER BY Name ASC;

SELECT Name, ListPrice FROM Production.Product ORDER BY ListPrice DESC;

SELECT Name, ListPrice, Color FROM Production.Product ORDER BY Name ASC, Color DESC;

SELECT TOP 10 Name, ListPrice, ProductID FROM Production.Product ORDER BY ListPrice DESC;

SELECT TOP 4 Name, ListPrice, ProductNumber FROM Production.Product ORDER BY ProductNumber ASC;

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'BETWEEN' usado para filtrar um valor entre um valor minimo e um valor maximo--
/*
Se quiser buscar os valore que não esta entre o minimo é o maximo so colocar 'NOT BETWEEN'
Pode ser usado com datas tbm
*/
SELECT Name, ListPrice FROM Production.Product WHERE ListPrice BETWEEN 500 AND 1000;

SELECT Name, ListPrice FROM Production.Product WHERE ListPrice NOT BETWEEN 0 AND 500;

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'IN' usado para buscar valores da tabela de acordo com a lista de valores que esta juntamente ao comando IN--
/*
Pode ser umsado tbm o 'NOT IN' para se obter os valores q n estão na sua lista
*/
SELECT * FROM Person.Person WHERE BusinessEntityID IN (2, 13, 15);

SELECT * FROM Person.Person WHERE BusinessEntityID NOT IN (2, 13, 15);

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'LIKE' usado para buscar valores da tabela de acorto com uma parte da referecia que vc saiba--
/*
LIKE usado depois do nome da coluna substituindo o =

é no valor coloar %
Se lembrar do começo do nome colocar % no final
Se lembrar do final do nome colocar % no inicio
Se lembrar do meio do nome colocar % no inicio e final

Se quiser pesquisar apenas 1 caracter colocar _ no lugar da %
*/
SELECT * FROM Person.Person WHERE FirstName LIKE 'Mic%' AND LastName LIKE '%em';

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

SELECT COUNT(*) FROM Production.Product WHERE ListPrice > 1500;

SELECT COUNT(LastName) FROM Person.Person WHERE LastName LIKE 'P%';

SELECT COUNT(DISTINCT City) FROM Person.Address;

SELECT DISTINCT City FROM Person.Address;

SELECT COUNT(*) FROM Production.Product WHERE Color = 'Red' AND ListPrice BETWEEN 500 AND 1000; 

SELECT COUNT(*) FROM Production.Product WHERE Name LIKE '%ROAD%';

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'AS' usado para colocar um nome temporario na Coluna do resuldado--
SELECT TOP 10 SUM(lineTotal) AS "Resultado" FROM Sales.SalesOrderDetail;

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'SUM' usado para calcular o total de uma determinada coluna--
SELECT TOP 10 SUM(lineTotal) FROM Sales.SalesOrderDetail;

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'MIN' usado filtrar o menor valor da sua pesquisa--
SELECT TOP 10 MIN(lineTotal) FROM Sales.SalesOrderDetail;

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'MAX' usado filtrar o maior valor da sua pesquisa--
SELECT TOP 10 MAX(lineTotal) FROM Sales.SalesOrderDetail;

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'AVG' usado filtrar amedida dos valor da sua pesquisa--
SELECT TOP 10 AVG(lineTotal) FROM Sales.SalesOrderDetail;

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'GROUP BY' usado para devidir o resultado da sua pesquisa em grupos--
/*
Nesse exemplo ira somar os valores do preço unitario e agrupar eles pelo ID de Oferta de cada produto
*/
SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA" FROM Sales.SalesOrderDetail GROUP BY SpecialOfferID;

SELECT ProductID, COUNT(ProductID) AS "CONTAGEM" FROM Sales.SalesOrderDetail GROUP BY ProductID;

SELECT FirstName, COUNT(FirstName) AS "CONTAGEM NAMES" FROM Person.Person GROUP BY FirstName ORDER BY FirstName ASC;

SELECT Color, AVG(ListPrice) AS "MEDIA VALOR" FROM Production.Product WHERE Color = 'Silver' GROUP BY Color;

SELECT MiddleName, COUNT(MiddleName) AS "CONTAGEM" FROM Person.Person GROUP BY MiddleName ORDER BY MiddleName ASC;

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'HAVING' usado para Filtrar resultados de um agrupamento--

SELECT FirstName, COUNT(FirstName) AS "CONTAGEM" FROM Person.Person GROUP BY FirstName HAVING COUNT(FirstName) < 10; 

SELECT StateProvinceID, COUNT(StateProvinceID) AS "QUANTIDADE" 
FROM Person.Address GROUP BY StateProvinceID HAVING COUNT(StateProvinceID) > 1000;  

SELECT * FROM Sales.SalesOrderDetail

SELECT ProductID, AVG(LineTotal) AS "MEDIA" FROM Sales.SalesOrderDetail GROUP BY ProductID HAVING AVG(LineTotal) < 1000000

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'INNER JOIN' usado Buscar informaçoes de varias tabelas atraves das chaves primarias e estrangeiras--

SELECT TOP 10 * FROM Sales.SalesOrderDetail

SELECT TOP 10 * FROM Production.Product

SELECT p.ProductID, p.Name, s.UnitPrice, s.LineTotal 
FROM Production.Product AS p 
INNER JOIN Sales.SalesOrderDetail AS s 
on s.ProductID = p.ProductID 
ORDER BY s.ProductID DESC; 

--OBS o LEFT JOIN incluira resultados mesmo n tento registro em alguma coluna--
SELECT * FROM Person.Person AS PP INNER JOIN Sales.PersonCreditCard AS PC ON PP.BusinessEntityID = PC.BusinessEntityID;
--Com INNER Retornara 19118 resultados.

SELECT * FROM Person.Person AS PP LEFT JOIN Sales.PersonCreditCard AS PC ON PP.BusinessEntityID = PC.BusinessEntityID;
--Com LEFT Retornara 19972 resultados.

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'IS NULL' usado para filtrar colunas que tenha valores nulos--
SELECT * FROM Person.Person AS PP LEFT JOIN Sales.PersonCreditCard AS PC 
ON PP.BusinessEntityID = PC.BusinessEntityID WHERE PC.BusinessEntityID IS NULL;

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'UNION' usado para combinar resultados de 2 ou mais selects em apenas 1 resultado--
SELECT [ProductID], [Name], [ProductNumber] 
	FROM Production.Product	
		WHERE Name LIKE '%Chain%'
UNION
SELECT [ProductID], [Name], [ProductNumber] 
	FROM Production.Product 
		WHERE Name LIKE '%Decal%'
			ORDER BY Name ASC;

--O 'UNION' Pega todos os valores e descarta os duplicados
--O 'UNION ALL' Pega todos os alores ate os duplicados 

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'DATEPART' usado para estrair uma informaço dentro de uma data salva na coluna--
/*
Ha uma gama grande de comandos para filtros de data esta em uma imagem juntamente ao projeto
*/
SELECT SalesOrderID, DATEPART(month,OrderDate) AS Mes FROM Sales.SalesOrderHeader;

SELECT AVG(TotalDue) AS Medica_Contas, 
	DATEPART(month,OrderDate) AS Mes 
		FROM Sales.SalesOrderHeader 
			GROUP BY DATEPART(month, OrderDate)
				ORDER BY Mes;

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Comando 'STRING' usado Manipular o resultado de uma consulta--
/*
Ha uma gama de comandos Strings para fazer diversas variaçoes de combinaçoes de resultados
*/
SELECT CONCAT(FirstName, ' ', MiddleName, ' ', LastName) AS Nome_Completo FROM Person.Person ORDER BY FirstName ASC;

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

--Conseito de 'SUBQUERY' um select dentro de outro--
SELECT * FROM Production.Product WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product);

SELECT * FROM Person.Person	
	WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.Employee WHERE JobTitle = 'Design Engineer');

--O INNER JOIN tbm é uma forma de SUBQUERY
SELECT PA.*, PS.Name FROM Person.Address AS PA
	INNER JOIN Person.StateProvince AS PS 
		ON PS.StateProvinceID = PA.StateProvinceID 
			AND PS.Name = 'Alberta';
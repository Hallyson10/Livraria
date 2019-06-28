
local Aventura = require("Aventura")
local Livro = require ("Livro")
local Drama = require("Drama")
local Comedia = require("Comedia")
local Estoque = require("Estoque")
local Vendidos = require("Vendidos")
local DAO = {}
function DAO.Escolha ()

	print("\n 1 - Aventura?\n")
	print(" 2 - Drama?\n")
	print(" 3 - Comédia?\n")
	print("Faça sua escolha\n")
		n = io.read ("*number")
	if n == 1 then
		DAO.CriarLivroAventura()
	else if n == 2 then
		DAO.CriarLivroDrama()
	else if n == 3 then
		DAO.CriarLivroComedia()
	end
	end
end

end

function DAO.init ()
	print("\n Livraria do Yoda")
	print("\n 1 - Adicionar livros\n 2 - Vender livros\n 3 - visualizar estoque de livros\n 4 - visualizar livros vendidos\n")
	print("Faça sua escolha\n")
		n = io.read ("*number")
	if n == 1
	then
		DAO.Escolha ()
	else if n == 2 then
		DAO.VenderLivro()
	else if n == 3 then
		DAO.VisualizarEstoque()
	else if n == 4 then
		DAO.VisualizarVendidos()
	end
	end
	end
end

end

--Aventura
local qtd = 0
local qtdDr = 0
local qtdCo = 0
function DAO.CriarLivroAventura()
	qtd = qtd + 1
	io.read()
	print("Digite o nome do livro de aventura: \n")
	local nome = io.read ()
	io.write("Digite o valor do livro: \n")
	local valor = io.read ()
	print("Ilustrações (imagens): \n")
	local capa = io.read ()


	local livro = Aventura.novo(nome,valor,capa,qtd)
	Estoque.AdicionarLivro(livro)
	DAO.init()
end

function DAO.CriarLivroComedia()
qtdCo = qtdCo + 1
	io.read()
	print("Digite o nome do livro de comédia: \n")
	local nome = io.read ()
	io.write("Digite o valor do livro: \n")
	local valor = io.read ()
	print("Possui capa modelo brochura? \n")
	local capa = io.read ()

	local livro = Comedia.novo(nome,valor,capa,qtdCo)
	Estoque.AdicionarLivro(livro)
	DAO.init()
end

function DAO.CriarLivroDrama()
qtdDr = qtdDr + 1
	io.read()
	print("Digite o nome do livro de drama: \n")
	local nome = io.read ()
	io.write("Digite o valor do livro: \n")
	local valor = io.read ()
	print("Possui capa dura? \n")
	local capa = io.read ()

	local livro = Drama.novo(nome,valor,capa,qtdDr)
	Estoque.AdicionarLivro(livro)
	DAO.init()
end

function DAO.VenderLivro()
	io.read()
	print("Digite o ID do livro vendido: \n")
	local horario = os.date('Dia %d do %m de %Y'..' %X')
	local num = io.read ("*number")
	Estoque.VenderLivro(num,horario)
	DAO.init()

end

function DAO.VisualizarEstoque()
	Estoque.Visualizar()
	DAO.init()

end

function DAO.VisualizarVendidos()
	Vendidos.Visualizar()
	DAO.init()

end

return DAO

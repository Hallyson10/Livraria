
local Livro = require("Livro")
local Aventura = require("Aventura")
local Drama = require("Drama")
local Comedia = require("Comedia")
local Vendidos = require("Vendidos")

local Estoque = {}


function Estoque.Visualizar()

	local j = 1
	print(" ---Todos os Livros disponíveis para venda--\n")

	while j <= #Estoque do
		if Estoque[j] ~= nil or Estoque[j].nome ~= nil then
		print(" ".. Estoque[j].nome .."\n -Valor:R$ ".. Estoque[j].valor .. "\n -ID ".. Estoque[j].id_livro .."\n ".. Estoque[j].atributo,"\n")

		else
		local h = 0
		if Estoque[j] == nil then
		h = 1
		if Estoque[h] ~= nil or Estoque[h].nome ~= nil then
		print(" ".. Estoque[h].nome .."\n -Valor:R$ ".. Estoque[h].valor .. "\n -ID ".. Estoque[h].id_livro .."\n ".. Estoque[h].atributo.."\n")
		h = 0
	end

	end
		end
			j = j + 1
	end

	-- table.getn(Estoque)

end

function Estoque.AdicionarLivro(livro)

		table.insert(Estoque, livro)
		print("\n "..livro.nome," adicionado com sucesso!")

end

function Estoque.VenderLivro(id_livro,horario)

	local i = 1
	while i <= #Estoque do
		if Estoque[i].id_livro == id_livro then
		print(Estoque[i].nome," Vendido!")
		Vendidos.vendados(Estoque[i],horario)
		 Estoque[i] = nill
		break
		end
		i = i+1
	end

end

return Estoque

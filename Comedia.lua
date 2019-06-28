local livro = require("Livro")
local 	Comedia = {}

-- nome, valor, quantidade em estoque e um identificador único

local qtd = 0

function Comedia.novo(_nome, _valor, atributo,qtd)
	qtd = qtd + 1
			local nome =  "-capa brochura: ".. atributo
			local tipo = livro.novo(_nome, _valor,nome)
			tipo.Aventura_qtd = qtd
			return tipo

end



return Comedia

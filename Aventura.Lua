local livro = require("Livro")
local Aventura = {}

local qtd = 0

-- nome, valor, quantidade em estoque e um identificador �nico
function Aventura.novo(_nome, _valor, atributo)
		qtd = qtd +1
		local nome = "-Ilustra��es :" .. atributo
		local tipo = livro.novo(_nome, _valor, nome )
		Aventura_qtd = 0;
			tipo.Aventura_qtd = qtd
			return tipo

end

function Aventura.modifica()
	qtd = qtd -1
	return
end


return Aventura

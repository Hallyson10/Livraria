
local Livro = {}

local id = 0;

function Livro.novo(_nome, _valor,atributo)
	id = id + 1


		return{
			nome = _nome,
			valor = _valor,
			id_livro = id,
			atributo = atributo
		}


end


return Livro

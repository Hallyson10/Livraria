local Vendidos = {}
local Horario = {}

function Vendidos.Visualizar()

	local j = 1
	print(" Livros vendidos!\n")
	while j <= #Vendidos do
		if Vendidos[j] ~= nil then
		print(" "..Vendidos[j].nome .."\n -Valor R$ "..Vendidos[j].valor .. "\n -ID ".. Vendidos[j].id_livro .."\n".. Vendidos[j].atributo)
		print(" -vendido no "..Horario[j])
		else
		end
			j = j + 1
	end
	-- table.getn(Estoque)

end


function Vendidos.vendados(livro,horario)

	table.insert(Vendidos, livro)
	table.insert(Horario, horario)

end

return Vendidos

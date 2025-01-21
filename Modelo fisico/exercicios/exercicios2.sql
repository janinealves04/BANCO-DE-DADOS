#1. O palhaço Tiririca resolveu concorrer a uma vaga de deputado federal, no RN, pelo PL. Cadastre-o como candidato.

insert into tbcandidato ( NuCandidato, NoCandidato, CoCargo, CoPartido)
values (50, 'Palhaço Tiririca', 3, 21)


#2. Agora, Tiririca mudou de ideia e resolveu se candidatar a senador(cargo), mas pelo PT(partido). Efetue essa mudança.

UPDATE tbcandidato
SET Cocargo = 2, CoPartido = 3
WHERE NuCandidato = 50


#3. Crie uma listagem que retorne o nome do candidato, o nome do cargo ao qual se candidatou e o nome do seu partido político. No entanto, a listagem deve contemplar apenas candidatos filiados a partidos com orientações políticas de Centro ou de Direita.
#nome do candidato,nome do cargo,nome do seu partido político, Centro ou de Direita

SELECT tbcandidato.NoCandidato as NOME_CANDIDATO, tbcargo.NoCargo AS CARGO, tbpartido.NoPartido AS PARTIDO, tborientacao.NoOrientacao AS ORIENTAÇÃO
FROM tbcargo
INNER JOIN tbcandidato ON tbcandidato.CoCargo = tbcargo.CoCargo
INNER JOIN tbpartido ON tbpartido.CoPartido = tbcandidato.CoPartido
INNER JOIN tborientacao on tborientacao.CoOrientacao = tbpartido.CoOrientacao;


#4. Crie uma listagem que mostre os nomes dos candidatos, concorrentes a uma vaga para deputado federal, e a quantidade total de votos obtidos por cada um deles.
#NOME DOS CANDIDATOS, CONCORRENTES PARA DF, QUANT VOTOS DE CADA UM

SELECT tbcandidato.NoCandidato as NOME_CANDIDATO, tbcargo.NoCargo AS CARGO, tbvotos.QtVotos AS QT_VOTOS
FROM tbvotos
INNER JOIN tbcandidato ON tbcandidato.NuCandidato = tbvotos.NuCandidato
INNER JOIN tbcargo ON tbcargo.CoCargo = tbcandidato.CoCargo
ORDER BY tbcargo.NoCargo = 'Deputado federal';

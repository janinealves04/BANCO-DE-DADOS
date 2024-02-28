#QUESTÃO 1
UPDATE tbcd
	SET  txtitulocd = ‘Rara e Bela ‘
WHERE CoCd = 8;

#QUESTÃO 2
#A)
UPDATE tbmusica 
	SET NoMusica = 'Dia dos Namorados'
WHERE CoMusica = 11;
#B)
UPDATE tbmusica 
	SET CoCd = 11
WHERE CoMusica = 11;


#QUESTÃO 3

SELECT Nobanda, tbcd.txtitulocd
	FROM tbbanda
INNER JOIN
	Tbcd ON Tbbanda.Cobanda = tbcd.CoCd
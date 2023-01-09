--1.Išrinkti visus duomenis iš lentelės.
--SELECT *
--FROM DARBUOTOJAI

--2.Visi duomenys iš stulpelio “GIMIMO_DATA” - lentelėje “DARBUOTOJAI”.
--SELECT GIMIMO_DATA
--FROM DARBUOTOJAI

--3. Visi duomenys iš “VARDAS”,”PAVARDĖ”, “PAREIGOS” - iš “DARBUOTOJAI".
--SELECT VARDAS,PAVARDĖ,PAREIGOS
--FROM DARBUOTOJAI

--4. Unikalios reikšmės iš skyriaus pavadinimo, iš darbuotojai.
--SELECT DISTINCT SKYRIUS_PAVADINIMAS
--FROM DARBUOTOJAI

--5. Visi duomenys apie darbuotojus, kurie dirba Gamybos skyriuje.
--SELECT *
--FROM DARBUOTOJAI
--WHERE SKYRIUS_PAVADINIMAS = "Gamybos"

--6. Išrinkite duomenis, kokias pareigas užima Giedrius.
--SELECT PAREIGOS
--FROM DARBUOTOJAI
--WHERE VARDAS = "Giedrius"

--7. Visus duomenis apie darbuotojus, kurie gimė - 1986-09-19.
--SELECT *
--FROM DARBUOTOJAI
--WHERE GIMIMO_DATA = "1986-09-19"

--8. Išrinkite darbuotojų vardus, kurių pavardės yra Sabutis.
--SELECT *
--FROM DARBUOTOJAI
--WHERE PAVARDĖ = "Sabutis"

--9. Išrinkite vardą ir pavardę, apie programuotojus iš Gamybos skyriaus.
--SELECT VARDAS, PAVARDĖ
--FROM DARBUOTOJAI
--WHERE PAREIGOS = "Programuotojas" AND SKYRIUS_PAVADINIMAS = "Gamybos"

--10. Įterpkite į lentelę “DARBUOTOJAI” naują darbuotoją, 
--užpildydami visus reikiamus laukus (vardą, pavardę, gimimo metus, pareigas, skyriaus pavadinimą).
--INSERT INTO DARBUOTOJAI
--VALUES ("As", "Tu", "2000-02-02", "Kitokios", "Rinkodara")

--11. Įterpkite į lentelę “DARBUOTOJAI” naują darbuotoją, 
--užpildydami tik laukus (vardą, pavardę, gimimo metus).
--Pareigas ir skyriaus pavadinimą palikite neužpildytus.
--INSERT INTO DARBUOTOJAI("VARDAS", "PAVARDĖ", GIMIMO_DATA)
--VALUES("Ar", "Arar", "2010-10-10")

--12. Užpildykite likusius tuščius laukus “DARBUOTOJAI” lentelėje, jūsų prieš tai įterptame įraše. 
--Priskirkite darbuotojui pareigas ir skyrių.
--UPDATE DARBUOTOJAI
--SET "PAREIGOS" = "Kitokios",
	--"SKYRIUS_PAVADINIMAS" = "Rinkodara"
--WHERE VARDAS = "Ar"

--13. Ištrinkite lentelės “DARBUOTOJAI” įrašą, 
--kurio gimimo data yra tokia, kurią jūs sukūrėte.
--DELETE 
--FROM DARBUOTOJAI
--WHERE GIMIMO_DATA = "2000-02-02"

--14. Įterpkite, du darbuotojus, 
--pavarde Antanaitis kurių pareigos būtų “Programuotojas”.(dukart paleist uzklausa?)
--INSERT INTO 
--DARBUOTOJAI("PAVARDĖ", "PAREIGOS")
--VALUES("Antanaitis", "Programuotojas")

--15. Pakeiskite, abiejų Antanaičių pareigas į “Testuotojas” vienu sakiniu.
--UPDATE DARBUOTOJAI
--SET "PAREIGOS" = "Testuotojas"
--WHERE PAVARDĖ = "Antanaitis"

--16. Suskaičiuokite, kiek įmonėje dirba Testuotojų.
--SELECT PAREIGOS, 
--COUNT(*)
--FROM DARBUOTOJAI
--WHERE PAREIGOS = "Testuotojas"
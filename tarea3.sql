select 	
	case WHEN sexo = 'M' and trunc(months_between(SYSDATE, dianacimiento) /12, 0) <= 30
	THEN 'Hombres Jovenes'
    WHEN sexo = 'M' and trunc(months_between(SYSDATE, dianacimiento) /12, 0) >= 31
	THEN 'Hombres Mayores'
	WHEN sexo = 'F' and trunc(months_between(SYSDATE, dianacimiento) /12, 0) <= 30
	THEN 'Mujeres Jovenes'
    WHEN sexo = 'F' and trunc(months_between(SYSDATE, dianacimiento) /12, 0) >= 31
	THEN 'Mujeres Mayores'
	END "GRUPO",
	count(case WHEN to_char(dianacimiento,'mm') >= 01 and
			to_char(dianacimiento,'mm') <= 03
		THEN 'Trimestres I'
		END) "Trimestres I",
	count(case WHEN to_char(dianacimiento,'mm') >= 04 and
			to_char(dianacimiento,'mm') <= 06
		THEN 'Trimestres II'
		END) "Trimestres II",
	count(case WHEN to_char(dianacimiento,'mm') >= 07 and
			to_char(dianacimiento,'mm') <= 09
		THEN 'Trimestres III'
		END) "Trimestres III",
	count(case WHEN to_char(dianacimiento,'mm') >= 10 and
			to_char(dianacimiento,'mm') <= 12
		THEN 'Trimestres IV'
		END) "Trimestres IV"
FROM empleados
group by (case WHEN sexo = 'M' and trunc(months_between(SYSDATE, dianacimiento) /12, 0) <= 30
	THEN 'Hombres Jovenes'
    WHEN sexo = 'M' and trunc(months_between(SYSDATE, dianacimiento) /12, 0) >= 31
	THEN 'Hombres Mayores'
	WHEN sexo = 'F' and trunc(months_between(SYSDATE, dianacimiento) /12, 0) <= 30
	THEN 'Mujeres Jovenes'
    WHEN sexo = 'F' and trunc(months_between(SYSDATE, dianacimiento) /12, 0) >= 31
	THEN 'Mujeres Mayores'
	END)
order by GRUPO
/

 select INITCAP(nombre) || ' ingreso a los ' || trunc(months_between(DIAINGRESO,dianacimiento)/12) || ' annos. Ella es ' ||
    case WHEN to_char(dianacimiento,'dd') >= 20 and
               to_char(dianacimiento,'mm') = 1 or
               to_char(dianacimiento,'dd') <= 18 and
               to_char(dianacimiento,'mm') = 2
       THEN 'Acuario'
       WHEN to_char(dianacimiento,'dd') >= 19 and
               to_char(dianacimiento,'mm') = 2 or
               to_char(dianacimiento,'dd') <= 20 and
              to_char(dianacimiento,'mm') = 3
      THEN 'Piscis'
      WHEN to_char(dianacimiento,'dd') >= 21 and
              to_char(dianacimiento,'mm') = 3 or
              to_char(dianacimiento,'dd') <= 19 and
              to_char(dianacimiento,'mm') = 4
      THEN 'Aries'
      WHEN to_char(dianacimiento,'dd') >= 20 and
              to_char(dianacimiento,'mm') = 4 or
              to_char(dianacimiento,'dd') <= 20 and
              to_char(dianacimiento,'mm') = 5
      THEN 'Tauro'
      WHEN to_char(dianacimiento,'dd') >= 21 and
              to_char(dianacimiento,'mm') = 5 or
              to_char(dianacimiento,'dd') <= 20 and
              to_char(dianacimiento,'mm') = 6
      THEN 'Geminis'
      WHEN to_char(dianacimiento,'dd') >= 21 and
              to_char(dianacimiento,'mm') = 6 or
              to_char(dianacimiento,'dd') <= 22 and
              to_char(dianacimiento,'mm') = 7
      THEN 'Cancer'
      WHEN to_char(dianacimiento,'dd') >= 23 and
              to_char(dianacimiento,'mm') = 7 or
              to_char(dianacimiento,'dd') <= 22 and
              to_char(dianacimiento,'mm') = 8
      THEN 'Leo'
      WHEN to_char(dianacimiento,'dd') >= 23 and
              to_char(dianacimiento,'mm') = 8 or
              to_char(dianacimiento,'dd') <= 22 and
              to_char(dianacimiento,'mm') = 9
      THEN 'Virgo'
      WHEN to_char(dianacimiento,'dd') >= 23 and
              to_char(dianacimiento,'mm') = 9 or
              to_char(dianacimiento,'dd') <= 22 and
              to_char(dianacimiento,'mm') = 10
      THEN 'Libra'
      WHEN to_char(dianacimiento,'dd') >= 23 and
              to_char(dianacimiento,'mm') = 10 or
              to_char(dianacimiento,'dd') <= 21 and
              to_char(dianacimiento,'mm') = 11
      THEN 'Escorbio'
      WHEN to_char(dianacimiento,'dd') >= 22 and
              to_char(dianacimiento,'mm') = 11 or
              to_char(dianacimiento,'dd') <= 21 and
              to_char(dianacimiento,'mm') = 12
      THEN 'Sagitario'
      WHEN to_char(dianacimiento,'dd') >= 22 and
              to_char(dianacimiento,'mm') = 12 or
              to_char(dianacimiento,'dd') <= 19 and
              to_char(dianacimiento,'mm') = 1
      THEN 'Capricornio'
      END "Ingreso"
   from empleados
where sexo = 'F'
/

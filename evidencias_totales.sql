SELECT estado_depositoarchivo estados,
       (SELECT COUNT(*) FROM depositosarchivos d2 
            WHERE d2.tipo_depositoarchivo=1 
            AND d2.estado_depositoarchivo=d1.estado_depositoarchivo) tipo1 ,
       (SELECT COUNT(*) FROM depositosarchivos d3 
            WHERE d3.tipo_depositoarchivo=2 
            AND d3.estado_depositoarchivo=d1.estado_depositoarchivo) tipo2
       FROM depositosarchivos d1 GROUP BY estado_depositoarchivo
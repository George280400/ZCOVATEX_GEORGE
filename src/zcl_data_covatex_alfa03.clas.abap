CLASS zcl_data_covatex_alfa03 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_data_covatex_alfa03 IMPLEMENTATION.


 METHOD if_oo_adt_classrun~main.
    DATA: lt_en_mat      TYPE TABLE OF zent_mat_a03,
          lt_proveedores TYPE TABLE OF zprovedores_a03,
          lt_det_en_mat  TYPE TABLE OF zdet_ent_mat_a03,
          lt_material    TYPE TABLE OF zmateriales_a03.

***Entrada Material***
    lt_en_mat = VALUE #(
    ( folio_entrada = '1' id_provedor = '1' fecha_entrada = '20240428'  almacenista = 'Arturo' )
    ( folio_entrada = '2' id_provedor = '2' fecha_entrada = '20240429'  almacenista = 'Armando' )
    ( folio_entrada = '3' id_provedor = '3' fecha_entrada = '20240430'  almacenista = 'Alejandro' )
    ( folio_entrada = '4' id_provedor = '4' fecha_entrada = '20240501'  almacenista = 'Carlos' )
    ( folio_entrada = '5' id_provedor = '5' fecha_entrada = '20240502'  almacenista = 'Memo' )
).

    DELETE FROM zent_mat_a03.
    INSERT zent_mat_a03 FROM TABLE @lt_en_mat.

    out->write( sy-dbcnt ).
    out->write( 'Entrada de materiales registrada' ).

**Proveedores***
    lt_proveedores = VALUE #(
    ( id_provedor = '1' nombre = 'Jorge Eduardo Contreras Hernandez' tipo_persona = 'Fisica' rfc = 'COHJ000428RG8' correo = 'jch127518@gmail.com' telefono = '2381137159' direccion = 'Calle Adolfo Lopez Mateos #413 Col. Tepeyac')
    ( id_provedor = '2' nombre = 'Carlos Ivan Crescencio Guzmán' tipo_persona = 'Fisica' rfc = 'CEGC000428RG8' correo = 'cicg127518@gmail.com' telefono = '2381137159' direccion = 'Calle Adolfo Lopez Mateos #413 Col. San Franciasco' )
    ( id_provedor = '3' nombre = 'Arturo Serrano Vazquez' tipo_persona = 'Fisica' rfc = 'SEVA000428RG8' correo = 'asv127518@gmail.com' telefono = '2381137159' direccion = 'Calle Adolfo Lopez Mateos #413 Col. Teziutlan' )
    ( id_provedor = '4' nombre = 'Jose Armando Calvario' tipo_persona = 'Fisica' rfc = 'CACJ000428RG8' correo = 'cacj127518@gmail.com' telefono = '2381137159' direccion = 'Calle Adolfo Lopez Mateos #413 Col. Tlaxcala' )
    ( id_provedor = '5' nombre = 'Guillermo Alejandro Hernandez' tipo_persona = 'Fisica' rfc = 'HEEG000428RG8' correo = 'gahe127518@gmail.com' telefono = '2381137159' direccion = 'Calle Adolfo Lopez Mateos #413 Col. San Franciasco' )
    ).

    DELETE FROM zprovedores_a03.
    INSERT zprovedores_a03 FROM TABLE @lt_proveedores.

    out->write( sy-dbcnt ).
    out->write( 'Proveedores registrados' ).

**Detalles de Entradas de Material***
    lt_det_en_mat = VALUE #(
    ( folio_entrada = '1' id_material = '1' rollos = '1' metros = 1 peso = 20  )
    ( folio_entrada = '2' id_material = '3' rollos = '2' metros = 5 peso = 20  )
    ( folio_entrada = '3' id_material = '3' rollos = '3' metros = 3 peso = 20  )
    ( folio_entrada = '4' id_material = '5' rollos = '4' metros = 5 peso = 20  )
    ( folio_entrada = '5' id_material = '1' rollos = '5' metros = 5 peso = 20  )
    ( folio_entrada = '1' id_material = '5' rollos = '5' metros = 5 peso = 10  )
    ( folio_entrada = '2' id_material = '2' rollos = '4' metros = 2 peso = 10  )
    ( folio_entrada = '3' id_material = '4' rollos = '3' metros = 5 peso = 10  )
    ( folio_entrada = '4' id_material = '2' rollos = '2' metros = 4 peso = 10  )
    ( folio_entrada = '5' id_material = '5' rollos = '1' metros = 5 peso = 10  )
).

    DELETE FROM zdet_ent_mat_a03.
    INSERT zdet_ent_mat_a03 FROM TABLE @lt_det_en_mat.
    out->write( sy-dbcnt ).
    out->write( 'Detalles de Entrada de materiales registrados' ).

**Material***
    lt_material = VALUE #(
    ( id_material = '1' descripcion = 'Mezclilla' color = 'Azul'     rollos = '1'   )
    ( id_material = '2' descripcion = 'Algodón'  color = 'Rojo'     rollos = '2'   )
    ( id_material = '3' descripcion = 'Seda'    color = 'Verde'    rollos = '3'   )
    ( id_material = '4' descripcion = 'Lino' color = 'Amarillo' rollos = '4'  )
    ( id_material = '5' descripcion = 'Microfibra'     color = 'Morado'   rollos = '5'  ) ).


    DELETE FROM zmateriales_a03.
    INSERT zmateriales_a03 FROM TABLE @lt_material.

    out->write( sy-dbcnt ).
    out->write( 'Materiales Registrados' ).
  ENDMETHOD.



ENDCLASS.

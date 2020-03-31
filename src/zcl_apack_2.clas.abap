"! <p class="shorttext synchronized" lang="en">APACK 2</p>
CLASS zcl_apack_2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_apack_manifest.

    "! <p class="shorttext synchronized" lang="en">CONSTRUCTOR</p>
    "!
    METHODS constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_apack_2 IMPLEMENTATION.


  METHOD constructor.

    zif_apack_manifest~descriptor = VALUE #(
                group_id        = 'testing'
                artifact_id     = 'package2'
                version         = '1.0.0'
                repository_type = 'abapgit'
                git_url         = 'https://github.com/jrodriguez-abapGit-Testing/package2.git' ).

    INSERT VALUE #( group_id    = 'testing'
                    artifact_id = 'package2'
                    git_url     = 'https://github.com/jrodriguez-abapGit-Testing/package1.git' )
           INTO TABLE zif_apack_manifest~descriptor-dependencies.

  ENDMETHOD.


ENDCLASS.

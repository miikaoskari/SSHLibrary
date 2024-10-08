*** Settings ***
Resource    common.robot


*** Variables ***
${LOCAL TMPDIR}                         ${TEMPDIR}${/}robot-sshlibrary-test-tmpdir
${LOCAL TEXTFILES}                      ${LOCAL TESTDATA}${/}textfiles
${FILE WITH NEWLINES NAME}              Test_newlines.txt
${FILE WITH NEWLINES}                   ${LOCAL TEXTFILES}${/}${FILE WITH NEWLINES NAME}
${TEST FILE NAME}                       test_file.txt
${TEST FILE}                            ${LOCAL TEXTFILES}${/}${TEST FILE NAME}
${FILE WITH SPECIAL CHARS NAME}         special%2Fchars.txt
${FILE WITH SPECIAL CHARS}              ${LOCAL TEXTFILES}${/}${FILE WITH SPECIAL CHARS NAME}
${SUBDIRECTORY NAME}                    aaääöö
${FILE WITH NON-ASCII NAME}             aaääöö.txt
${DIRECTORY WITH EMPTY SUBDIRECTORY}    contains_only_empty_subdir
${EMPTY SUB DIR}                        empty
${FILE WITH NON-ASCII}                  ${LOCAL TEXTFILES}${/}${SUBDIRECTORY NAME}${/}${FILE WITH NON-ASCII NAME}
${COLON CHAR FILE NAME}                 special:char.txt
${COLON CHAR FILE}                      ${LOCAL TEXTFILES}${/}special:char.txt
${SYMLINK TO TEST FILE}                 symlink_to_text_file.txt
${FILE WITH SQUARE BRACKETS NAME}       test[1].txt
${FILE WITH SQUARE BRACKETS}            ${LOCAL TEXTFILES}${/}${FILE WITH SQUARE BRACKETS NAME}
${CORRUPTED FILE NAME}                  corrupted.txt
${CORRUPTED FILE}                       ${LOCAL TEXTFILES}${/}${CORRUPTED FILE NAME}


*** Keywords ***
Login And Upload Test Files
    Login As Valid User
    Put Directory    ${LOCAL TEXTFILES}    ${REMOTE TEST ROOT}    recursive=True
    Execute command    mkdir ${REMOTE TEST ROOT}/${SUBDIRECTORY NAME}/${DIRECTORY WITH EMPTY SUBDIRECTORY}
    Execute command
    ...    mkdir ${REMOTE TEST ROOT}/${SUBDIRECTORY NAME}/${DIRECTORY WITH EMPTY SUBDIRECTORY}/${EMPTY SUB DIR}

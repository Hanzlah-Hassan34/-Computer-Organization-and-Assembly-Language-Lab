include irvine32.inc
INCLUDELIB winmm.lib

PlaySound PROTO, pszSound:PTR BYTE, hmod : DWORD, fdwSound : DWORD
.model flat, stdcall
.386
.data
gridSize = 1024
screen1 BYTE " -------    ------    ------   --       --   ------   --    --        ------    ------   --       --  -------",0Ah
        BYTE "|       \  /      \  /      \ |  \     /  \ /      \ |  \  |  \      /      \  /      \ |  \     /  \|       \ .", 0Ah
        BYTE "| $$$$$$$\|  $$$$$$\|  $$$$$$\| $$\   /  $$|  $$$$$$\| $$\ | $$     |  $$$$$$\|  $$$$$$\| $$\   /  $$| $$$$$$$", 0Ah
        BYTE "| $$_/ $$|| $$__| $$| $$   \$$| $$$\ /  $$$| $$__| $$| $$$\| $$     | $$ __\$$| $$__| $$| $$$\ /  $$$| $$_", 0Ah
        BYTE "| $$    $$| $$    $$| $$      | $$$$\  $$$$| $$    $$| $$$$\ $$     | $$|    \| $$    $$| $$$$\  $$$$| $$ \.", 0Ah
        BYTE "| $$$$$$$ | $$$$$$$$| $$  __  | $$\$$ $$ $$| $$$$$$$$| $$\$$ $$     | $$ \$$$$| $$$$$$$$| $$\$$ $$ $$| $$$$$", 0Ah
        BYTE "| $$      | $$  | $$| $$_/  \ | $$ \$$$| $$| $$  | $$| $$ \$$$$     | $$__| $$| $$  | $$| $$ \$$$| $$| $$____", 0Ah
        BYTE "| $$      | $$  | $$\ $$    $$| $$  \$ | $$| $$  | $$| $$  \$$$     \ $$    $$| $$  | $$| $$     | $$| $$    \.", 0Ah
        BYTE "\ $$       \$$   \$$ \$$$$$$$ \ $$      \$$| $$   \$$| $$   \$$      \$$$$$$$ \ $$  \ $$ \$$      \$$\ $$$$$$$$ ", 0Ah, 0
screen11 BYTE "    MADE BY HANZLAH HASSAN",0
diff1 DB " _ . .  _   _   __ ._.  .   . _  . . ._", 0
diff2 DB "/  |_| / \ / \ (_  |_.   \_/ / \ | | |_)", 0
diff3 DB "\_ | | \_/ \_/ __) |_.    |  \_/ |_| | \  ", 0
diff4 DB "._  ___ ._ ._ ___  _ . . . ___   .   .  ._.    .._ .", 0
diff5 DB "| \  |  |_ |_  |  /  | | |  | \_/    |  |_ \  / |_ | ", 0
diff6 DB "|_/ _|_ |  |  _|_ \_ |_| |_ |  |     |_ |_  \/  |_ |_", 0
pause1 DB " __      .  . ._.   ._      . .  __ ._ ._ ", 0
pause2 DB "/__  /\  |\/| |_.   |_) /\  | | (_  |_ | \", 0
pause3 DB "\_| /--\ |  | |_.   |  /--\ |_| __) |_ |_/", 0
menu1 DB " __      .  . ._.   .  . ._ .  . . .", 0
menu2 DB "/__  /\  |\/| |_.   |\/| |_ |\ | | |", 0
menu3 DB "\_| /--\ |  | |_.   |  | |_ | \| |_|", 0
over1 DB " __.     .  . ._.    _ .    .._ ._ ", 0
over2 DB "/__  /\  |\/| |_.   / \ \  / |_ |_)", 0
over3 DB "\_| /--\ |  | |_.   \_/  \/  |_ | \", 0
dead1 DB ".   . _  . .    ._  ___ ._ ._  .", 0
dead2 DB " \_/ / \ | |    | \  |  |_ | \ |", 0
dead3 DB "  |  \_/ |_|    |_/ _|_ |_ |_/ o", 0
grid1  BYTE "00850085008500850085008500850085"
BYTE "0......................G.......0"
BYTE "0..............................0"
BYTE "8....**********************....8"
BYTE "5....*                    *....5"
BYTE "0....**********************....0"
BYTE "0..............................0"
BYTE "8..............................8"
BYTE "5..............................5"
BYTE "0..***....................***..0"
BYTE "0..* *....................* *..0"
BYTE "8..* *....................* *..8"
BYTE "5..* *...X................* *..5"
BYTE "0..* *....................* *..0"
BYTE "0..* *....................* *..0"
BYTE "8..* ******..........****** *..8"
BYTE "5..*      *..........*      *..5"
BYTE "0..* ******..........****** *..0"
BYTE "0..* *....................* *..0"
BYTE "8..* *....................* *..8"
BYTE "5..* *....................* *..5"
BYTE "0..* *....................* *..0"
BYTE "0..* *....................* *..0"
BYTE "8..***.....G..............***..8"
BYTE "5..............................5"
BYTE "0..............................0"
BYTE "0....**********************....0"
BYTE "8....*                    *....8"
BYTE "5....**********************....5"
BYTE "0..............................0"
BYTE "0..............................0"
BYTE "00850085008500850085008500850085", 0
grid2  BYTE "00850085008500850085008500850085"
BYTE "0......................G.......0"
BYTE "0..****...****....****...****..0"
BYTE "8..*  *...*  *....*  *...*   ..8"
BYTE "5..*  *...*  *....****...****..5"
BYTE "0..*  *...*  *....*  *...   *..0"
BYTE "0..****...****....****...****..0"
BYTE "8..............................8"
BYTE "5.......X..............P.......5"
BYTE "0..****..................****..0"
BYTE "0..*  *....*********.....*  *..0"
BYTE "8..*  *....*       *.....*  *..8"
BYTE "5..*  *....***   ***.....*  *..5"
BYTE "0..*  *.P.....* *........*  *..0"
BYTE "0..*  *.......***........*  *..0"
BYTE "8..*  ******........******  *..8"
BYTE "5..*       *........*       *..5"
BYTE "0..*  ******........******  *..0"
BYTE "0..*  *..................*  *..0"
BYTE "8..*  *..................*  *..8"
BYTE "5..*  *..................*  *..5"
BYTE "0..*  *.........P........*  *..0"
BYTE "0..*  *..................*  *..0"
BYTE "8..****....G.............****..8"
BYTE "5..............................5"
BYTE "0..*********..............P....0"
BYTE "0..*  ******...................0"
BYTE "8..*  *.......***********......8"
BYTE "5..*  *......*           *.....5"
BYTE "0..****.......***********......0"
BYTE "0.........P....................0"
BYTE "00850085008500850085008500850085", 0



grid3  BYTE "00850085008500850085008500850085"
BYTE "0......................G.......0"
BYTE "0.......****..P...********.....0"
BYTE "8..***...****........**........8"
BYTE "5..* *.........................5"
BYTE "8..* *****......*     ******...0"
BYTE "0..*      *.....*     *     *..0"
BYTE "8..* *****......*     *     *..8"
BYTE "5..* *..........*******     *..5"
BYTE "0..* *...***...................0"
BYTE "0..***...* *............P......0"
BYTE "8........* *...................8"
BYTE "5..***.G.* *.....***********...5"
BYTE "0..* *...* *....*     *     *..0"
BYTE "0..* *...***....*     *     *..0"
BYTE "8..* *...........***********...8"
BYTE "5..* *...P.....................5"
BYTE "0..* ********........X.........0"
BYTE "0..**********..................0"
BYTE "8................***********...8"
BYTE "5....********...*           *..5"
BYTE "0.P..********...*           *..0"
BYTE "8................***********...0"
BYTE "8..........G...................8"
BYTE "5..**********..............P...5"
BYTE "0..* ********..................0"
BYTE "0..* *...........***********...0"
BYTE "8..* *...***....*           *..8"
BYTE "5..* *...* *....*           *..5"
BYTE "0..***...***..P..***********...0"
BYTE "0........................G.....0"
BYTE "00850085008500850085008500850085", 0

int1 BYTE "___ .  .  __ ___._  . .  _ ___ ___  _  .  .  __", 0
int2 BYTE " |  |\ | (_   | |_) | | /   |   |  / \ |\ | (_ ", 0
int3 BYTE "_|_ | \| __)  | | \ |_| \_  |  _|_ \_/ | \| __)", 0
b1 BYTE " _____ ", 0
b2 BYTE "|| ^ ||", 0
b3 BYTE "||___||", 0
b4 BYTE "|/___\|", 0
b5 BYTE " _____ _____ _____ ", 0
b6 BYTE "|| < ||| v ||| > ||", 0
b7 BYTE "||___|||___|||___||", 0
b8 BYTE "|/___\|/___\|/___\|", 0
b9 BYTE "  _______________  ", 0
b10 BYTE "||   P A U S E   ||", 0
b11 BYTE "||_______________||", 0
b12 BYTE "|/_______________\|", 0
b13 BYTE "  p to pause ", 0
b14 BYTE "  c to continue.", 0
b15 BYTE "  ^ = Move Up", 0
b16 BYTE "  < = Move Left", 0
b17 BYTE "  v = Move Down", 0
b18 BYTE "  > = Move Right", 0
b19 BYTE "X . . . P . . . .", 0
b20 BYTE ".   1 point", 0
b21 BYTE "P   5 points", 0
b22 BYTE "Eat as many coins ", 0
b23 BYTE "as possible to", 0
b24 BYTE " GAIN A NEW ", 0
b25 BYTE " HIGHSCORE!", 0
b26 BYTE ". . . . . . . X", 0
b27 BYTE "X . . . . . . . ", 0
b28 BYTE "A", 0
b29 BYTE "Avoid ", 0
b30 BYTE "Ghosts ", 0
b31 BYTE "AT ALL COSTS", 0
b32 BYTE "You have 3 lives", 0
b33 BYTE "- use them well", 0
b34 BYTE "GOODLUCK!", 0
b35 BYTE "you'll need it!", 0

input1 BYTE "._ .  .___._  _    .   . _  . . ._     .  .      .  . ._.", 0
input2 BYTE "|_ |\ | | |_ |_)    \_/ / \ | | |_)    |\ |  /\  |\/| |_.", 0
input3 BYTE "|_ | \| | |_ | \     |  \_/ |_| | \    | \| /--\ |  | |_.", 0
input4 BYTE  "Player Name: ", 0
high1 BYTE ". . ___  __ . .     __  _  _  ._  ._  __", 0
high2 BYTE "|_|  |  /__ |_|    (_  /  / \ |_) |_ (_ ", 0
high3 BYTE "| | _|_ \_| | |    __) \_ \_/ | \ |_ __)", 0
high4 BYTE "NAME                    SCORE             LEVEL ", 0



menuInstr BYTE "Press Respective Number for Selection", 0
contentoffile BYTE 500 DUP(0)
ghostN Dword 1000
ghostTemp Dword 1000

ghostP Dword 1000
ghostI Dword 1000
ghostC Dword 1000

ghosttempD Dword 34
ghostND Dword 55
ghostPD Dword 747
ghostID Dword 391
ghostCD Dword 985
ghostsPreValues BYTE ".", ".", ".", ".","."
ghostreplacecell BYTE ".", 0

username BYTE 13 DUP(' '),0
peckman Dword 90
score Dword 0
temp Dword 0
temp1 Dword 0
line BYTE  25 DUP(0)

flag Dword 0
filename BYTE "score1.txt",0
filename1 BYTE "Score2.txt",0
handler handle ?
counter1 Dword 0
counter2 Dword 0
dot BYTE ".", 0
space BYTE " ", 0
rowPos BYTE 30
colPos BYTE 30
LevelNo Dword 1
GameOver Dword 0
ghostDir BYTE  " ", 0
Dir BYTE " ", 0
NameStr BYTE "Name:  ", 0
ScoreStr BYTE "Score:  ", 0
livesStr BYTE "Lives:  ", 0
timerStr BYTE "Power Timer:  ", 0
playStr BYTE "1. PLAY", 0
inststr BYTE "2. INSTRUCTIONS", 0
highScoreStr BYTE "4. HIGH SCORE", 0
setupStr BYTE "3. SETUP", 0
exitStr BYTE "5. EXIT ", 0
strLevel BYTE "LEVEL  ",0
Lives Dword 3
debugStr BYTE "Here", 0
powerCount Dword 0; = > 20 sec
;music
musicFile DWORD 00020000h
play_in_loop DWORD  00000008h
play_music_inBack DWORD 00000001h
music BYTE "music.wav", 0
numLines Dword 0


.code
main PROC

mov eax, musicFile
OR eax, play_in_loop
OR eax, play_music_inBack
INVOKE PlaySound, offset music, NULL, eax


call printScreen1
mov eax, 5000
call delay
call clrscr
call inputNameScreen
call menu

ret
main endp
GameScreen PROC
call LevelSetting
call clrscr
GameLoop :

call setESI
call updateLevel
call setESI
call updateGrid
call updateGhost

mov eax, GameOver
cmp eax, 1
je checkgameOver

notOver :
cmp powerCount, 0
jne decPowerCount

returnInLoop :
call clrscr
call printPlyerInfo
call printGrid

back :

mov eax, 0
call readkey
cmp al, 0
je checkNonPrintableKeys
jne checkPrintableKeys

jmp GameLoop

decPowerCount :
dec powerCount
jmp returnInLoop

checkPrintableKeys :
cmp al, 'p'
je pauseGame
jmp back

pauseGame :
call pauseScreen
mov eax, 0
call readchar
cmp al, 'c'
je returnInLoop
jmp pauseGame

checkNonPrintableKeys :
cmp ah, 75;lA
je setLeft
cmp ah, 77;RA
je setRight
cmp ah, 72;lU
je setUp1
cmp ah, 80;lD
je setDown
jmp GameLoop
setDown :
mov eax, 'D'
mov dir, al
jmp GameLoop
setUp1 :
mov eax, 'U'
mov dir, al
jmp GameLoop
setLeft :
mov eax, 'L'
mov dir, al
jmp GameLoop
setRight :
mov eax, 'R'
mov dir, al
jmp GameLoop

checkgameOver :
dec lives
mov gameOver, 0
mov eax, lives
cmp eax, 0
jne notOver
je gameEnd

gameEnd :
call writeinfile
call printGameOver

GameScreen ENDP
writeinfile PROC
mov counter1, 0

mov edx, offset filename
call openinputfile
mov handler, eax

mov esi, offset contentoffile

readline :
mov eax, handler
mov ecx, 20
mov edx, offset line
call readfromfile
cmp eax, 0;
je doneReading

mov ecx, eax
mov edi, offset line
copyLoop :
mov al, [edi]
    mov[esi], al
        inc esi
        inc edi
        inc counter1
        loop copyLoop

        jmp readline

        doneReading :
    call closefile
       call writescore
        ret
        writeinfile ENDP
writescore PROC
;mov edx, offset filename
; call deletefile
mov edx, offset filename1
call createoutputfile
mov handler, eax
mov edx, offset contentoffile
mov ecx, counter1
mov eax, handler
call writetofile

mov edx, offset userName
mov ecx, 13
mov eax, handler
call writetofile
mov edx, offset score
mov ecx, 5
mov eax, handler
call writetofile

mov edx, offset levelno
mov ecx, 5
mov eax, handler
call writetofile
call closefile
ret
writescore ENDP
        printPlyerInfo PROC
mov dh, 5
mov dl, 50
call gotoxy

call setheadingcolor
mov edx, offset nameStr
call writestring
call setParagraphcolor
mov edx, offset username
call writestring

call setheadingcolor
mov dh, 5
mov dl, 80
call gotoxy
mov edx, offset ScoreStr
call writestring
call setParagraphcolor
mov eax, score
call writedec

call setheadingcolor
mov dh, 7
mov dl, 50
call gotoxy
mov edx, offset LivesStr
call writestring
call setParagraphcolor

mov eax, Lives
call writedec

call setheadingcolor
mov dh, 7
mov dl, 80
call gotoxy
mov edx, offset timerStr
call writestring
call setParagraphcolor
mov eax, powerCount
call writedec

ret
printPlyerInfo endp

setESI PROC
mov eax, LevelNo
cmp eax, 1
je l1
cmp eax, 2
je l2
cmp eax, 3
je l3


l1 :
mov esi, offset grid1

ret

l2 :
mov esi, offset grid2


ret

l3 :
mov esi, offset grid3

ret
setESI endp
LevelSetting PROC
mov eax, LevelNo
cmp eax, 1
je l1
cmp eax, 2
je l2
cmp eax, 3
je l3



l1 :
mov esi, offset grid1
mov eax, ghostND
mov ghostN, eax

mov eax, ghostPD
mov ghostP, eax
mov peckman, 393
ret

l2 :
mov esi, offset grid2
mov eax, ghostND
mov ghostN, eax
mov eax, ghostPD
mov ghostP, eax
mov peckman, 264

ret

l3 :
mov esi, offset grid3
mov eax, ghostND
mov ghostN, eax
mov eax, ghostPD
mov ghostP, eax
mov eax, ghostID
mov ghostI, eax
mov eax, ghostCD
mov ghostC, eax
mov peckman, 565
ret
LevelSetting endp
updateLevel PROC
mov ecx,1024
mov eax,esi
mov bl, '.'

l:
    cmp [eax],bl
    je endProc
    inc eax
loop l

    inc levelNo
endProc:
ret
updateLevel ENDP
updateGrid PROC
mov ebx, 0
mov flag, ebx
mov eax, peckman
mov temp, eax

mov eax, 0
mov al, dir
checkDir :
cmp al, 'L'
je leftMove
cmp al, 'R'
je rightMove
cmp al, 'D'
je downMove
cmp al, 'U'
je upMove
jmp endProc

leftMove :
dec temp
jmp checkForInvalid
rightMove :
inc temp
jmp checkForInvalid

downMove :
add temp, 32
jmp checkForInvalid
upMove :
sub temp, 32
jmp checkForInvalid

checkForInvalid :
mov eax, esi
add eax, temp
movzx eax, BYTE PTR[eax]
    ;boundry

        cmp eax, '0'
        je endProc
        cmp eax, '8'
        je endProc
        cmp eax, '5'
        je endProc

        ;ghost
        cmp eax, 'G'
        je checkPowerTimer

        ;wall
        cmp eax, '*'
        je endProc
        cmp eax, 'P'
        je setTimer
        cmp eax, '.'
        je addScore

        cmp eax, ' '
        je assignesiValue
        jmp endPROC
        setTimer:
        mov powerCount,20
        add score,5
  jmp assignesiValue

        addScore :
    inc score
        jmp assignesiValue
        checkPowerTimer:
    cmp powerCount,0
    jne addPowerScore
    je naddPowerScore
        addPowerScore:
        add score,5
        mov ebx, 0
        mov GameOver, ebx
        jmp setGameOver
naddPowerScore:
        mov ebx, 1
        mov GameOver, ebx
        jmp setGameOver
            setGameOver :

        mov eax, ghosttemp
            cmp eax, temp
          je  backtoInitialtemp 

        mov eax,ghostN
         cmp eax,temp
        je backtoInitialN
        mov eax, ghostP
        cmp eax, temp
        je backtoInitialP
        mov eax, ghostI
        cmp eax, temp
        je backtoInitialI
        mov eax, ghostC
        cmp eax, temp
        je backtoInitialC

            backtoInitialtemp :
        mov eax, ghosttempD
            mov ghosttempD, eax
            jmp assignesiValue
        backtoInitialN:
    mov eax,ghostND
    mov ghostN,eax
    jmp assignesiValue
        backtoInitiatemp :
    mov eax, ghosttempD
        mov ghosttemp, eax
        jmp assignesiValue
        backtoInitialP :
    mov eax, ghostPD
        mov ghostP, eax
        jmp assignesiValue
        backtoInitialI :
    mov eax, ghostID
        mov ghostI, eax
        jmp assignesiValue
        backtoInitialC :
    mov eax, ghostCD
        mov ghostC, eax
        jmp assignesiValue

    assignesiValue:
    mov ebx, esi
        add ebx, peckman
        mov eax, ' '
        mov[ebx], al

        mov eax, temp
        mov peckman, eax
        mov eax, " "
        mov dir, al

        mov ebx, esi
        add ebx, peckman
        mov eax, 'X'
        mov[ebx], al

        jmp endProc

        endProc :
    ret

        updateGrid endp

        assignDirectionToGhost PROC
        mov flag,0
        movzx eax, ghostDir
        cmp al, 'R'
        je rightMove

        cmp al, 'L'
        je leftMove


        cmp al, 'U'
        je upMove


        cmp al, 'D'
        je downMove


        rightMove :
    inc temp
        jmp checkValidity
        leftMove :
    dec temp
        jmp checkValidity
        upMove :
    mov ebx, 32
        Sub temp, ebx
        jmp checkValidity
        downMove :
    mov ebx, 32
        Add temp, ebx
        jmp checkValidity

        checkValidity :
    mov eax, esi
        add eax, temp
        movzx eax, BYTE PTR[eax]

        cmp eax, 'X'
            je setGameOver
        cmp eax, '.'
            je dot1

            cmp eax, ' '
            je space1
            jne assignAvailable

            assignAvailable :
        mov ebx, temp1
            mov ecx, esi
            dec ebx
            add ecx, ebx
            mov eax, ' '
            cmp [ecx], al
            je movVal
            mov eax, '.'
            cmp[ecx], al
            je movVal

            mov ebx, temp1
            mov ecx, esi
            inc ebx
            add ecx, ebx

            mov eax, ' '
            cmp[ecx], al
            je movVal
            mov eax, '.'
            cmp[ecx], al
            je movVal

            mov ebx, temp1
            mov ecx, esi
            add ebx, 32
            add ecx, ebx

            mov eax, ' '
            cmp[ecx], al
            je movVal
            mov eax, '.'
            cmp[ecx], al
            je movVal

            mov ebx, temp1
            mov ecx, esi
            sub ebx, 32
            add ecx, ebx
            mov eax, ' '
            cmp[ecx], al
            je movVal
            mov eax, '.'
            cmp[ecx], al
            je movVal

            movVal :
        mov temp, ebx
            cmp al, ' '
            je space1
            cmp al, '.'
            je dot1
            cmp al, 'P'
            je power1
            power1 :
        push 'P'
            jmp assignesiValue
            space1 :
        push ' '
            jmp assignesiValue
            dot1 :
        push '.'
            jmp assignesiValue
            setGameOver :
            push 'X'
            mov flag,1
            mov GameOver, 1
            cmp powerCount,0
            jne notGameOver
            backHere:
            mov eax, ghostN
            cmp eax, temp1
            je backtoInitialN
                mov eax, ghosttemp
                cmp eax, temp1
                je backtoInitialtemp
            mov eax, ghostP
            cmp eax, temp1
            je backtoInitialP
            mov eax, ghostI
            cmp eax, temp1
            je backtoInitialI
            mov eax, ghostC
            cmp eax, temp1
            je backtoInitialC
                notGameOver:
            mov GameOver, 0
            jmp backHere 

            backtoInitialN :
        mov ebx, ghostND
            mov ghostN, ebx
            jmp assignesiValue
            backtoInitialtemp :
        mov ebx, ghosttempD
            mov ghosttemp, ebx
            jmp assignesiValue
            backtoInitialP :
        mov ebx, ghostPD
            mov ghostP, ebx
            jmp assignesiValue
            backtoInitialI :
        mov ebx, ghostID
            mov ghostI, ebx
            jmp assignesiValue
            backtoInitialC :
        mov ebx, ghostCD
            mov ghostC, ebx
            jmp assignesiValue

            assignesiValue :

        mov ecx, esi
            add ecx, temp
            mov eax, 'G'
            mov[ecx], al
            mov ecx, esi
            add ecx, temp1
            movzx eax, ghostreplacecell
            mov [ecx], al
            pop eax
            mov ghostreplacecell, al
            cmp flag,1
            je viewGridAndassign
            ret
            viewGridAndassign:
        mov ebp,temp
        mov temp1,ebp
        call setESI

        call printGrid
        mov eax,2000
        call delay
        mov temp, ebx
        mov flag,0
         call setESI
            push " "
        jmp assignesiValue






         assignDirectionToGhost endp

updateGhost PROC
            cmp ghostN, 1000
            jne updateN
            g1:
            cmp ghosttemp, 1000
            jne updatetemp
            g2 :
            cmp ghostP, 1000
            jne updateP
            g3 :
            cmp ghostI, 1000
            jne updateI
            g4 :
            cmp ghostC, 1000
            jne updateC
            ret
                updatetemp :
            push 5
                call calculatePos
                mov eax, offset ghostsPreValues
                add eax, 0
                mov eax, [eax]
                mov ghostreplacecell, al
                    mov eax, ghostN
                    mov temp, eax
                    mov temp1, eax
                    call assignDirectionToGhost
                    mov eax, offset ghostsPreValues
                    add eax, 0
                    mov cl, ghostreplacecell
                    mov[eax], cl
                    mov eax, temp
                    mov ghostN, eax
                    pop eax
                    jmp g1
            updateN :
        push 1
            call calculatePos
            mov eax,offset ghostsPreValues
            add eax,0
            mov eax, [eax]
            mov ghostreplacecell, al
            mov eax, ghostN
            mov temp, eax
            mov temp1, eax
            call assignDirectionToGhost
            mov eax, offset ghostsPreValues
            add eax, 0
            mov cl, ghostreplacecell
            mov  [eax], cl
            mov eax, temp
            mov ghostN, eax
            pop eax
            jmp g2
            updateP :

        push 2
            call calculatePos
            mov eax, offset ghostsPreValues
            add eax, 1
            mov eax, [eax]
            mov ghostreplacecell, al
            mov eax, offset ghostsPreValues
            add eax, 1
            mov cl, ghostreplacecell
            mov[eax], cl
            mov eax, temp
            mov eax, ghostP
            mov temp, eax
            mov temp1, eax
            call assignDirectionToGhost
            mov eax, temp
            mov ghostP, eax
            pop eax
            jmp g3
            updateI :

         push 3
            call calculatePos
             mov eax, offset ghostsPreValues
             add eax, 2
             mov cl, ghostreplacecell
             mov[eax], cl
             mov eax, temp
             mov eax, offset ghostsPreValues
             add eax, 2
             mov eax, [eax]
             mov ghostreplacecell, al
            mov eax, ghostI
            mov temp, eax
            mov temp1, eax
            call assignDirectionToGhost
            mov eax, temp
            mov ghostI, eax
            pop eax
            jmp g4
             updateC :

        push 4
            call calculatePos
            mov eax, offset ghostsPreValues
            add eax, 3
            mov cl, ghostreplacecell
            mov[eax], cl
            mov eax, temp
            mov eax, offset ghostsPreValues
            add eax, 3
            mov eax, [eax]
            mov ghostreplacecell, al
            mov eax, ghostC
            mov temp, eax
            mov temp1, eax
            call assignDirectionToGhost
            mov eax, temp
            mov ghostC, eax
            pop eax
            ret
            updateGhost ENDP

            calculatePos PROC
            mov ebp, esp
            add ebp, 4
            mov edx, 0
            mov eax, peckman
            mov ebx, 32
            div ebx
            mov temp, eax
            mov temp1, edx

            mov eax, [ebp]
            cmp eax, 1
                je calculateN
                cmp eax, 2
                je calculateP
                cmp eax, 3
                je calculateI
                cmp eax, 4
                je calculateC

                calculateN :
            mov edx, 0
                mov eax, ghostN
                mov ebx, 32
                div ebx
                jmp assign

                calculateP :
            mov edx, 0
                mov eax, ghostP
                mov ebx, 32
                div ebx
                jmp assign

                calculateI :
            mov edx, 0
                mov eax, ghostI
                mov ebx, 32
                div ebx
                jmp assign

                calculateC :
            mov edx, 0
                mov eax, ghostC
                mov ebx, 32
                div ebx
                jmp assign

                assign :
            cmp temp1, edx
                jG right
                jL left
                cmp temp, eax
                jG down
                jL up

                up :
            mov eax, 'U'
                mov ghostDir, al
                ret
                down :
            mov eax, 'D'
                mov ghostDir, al
                ret
                left :
            mov eax, 'L'
                mov ghostDir, al
                ret
                right :
            mov eax, 'R'
                mov ghostDir, al
                ret


                calculatePos ENDP
                Setup2 PROC
                mov ghostN, 218
                mov ghostP, 1000
                mov ghostI, 1000
                mov ghostC, 1000
                mov peckman, 393
                mov score, 0
                ret
                Setup2 endp

printGrid PROC

                mov counter1, 0
                mov eax, 0
                mov rowPos, 10
                mov colPos, 50
                outerLoop:
            cmp counter1, 32
                je procEnd

                inc counter1
                mov counter2, 0
                call crlf
                inc rowPos
                mov dh, rowPos
                mov dl, colPos
                call gotoxy


                innerLoop :
            cmp counter2, 32
                je outerLoop
                mov al, BYTE PTR[esi]
                call setcolor
                mov al, BYTE PTR[esi]
                call writechar
                    mov al, 32
                    call setcolor
                    mov al, 32

                    call writechar
                    inc esi
                    inc counter2
                    jmp innerLoop



                procEnd:
                call crlf
                    ret
                    printGrid ENDP

                    printScreen1 PROC
                    call SetScreen1Color
                    mov dh, 10
                    mov dl, 0
                      call gotoxy
    mov edx,offset screen1
    call writestring

    mov dh, 25
    mov dl, 40
    call gotoxy
    mov edx, offset screen11
    call writestring
                    ret
printScreen1 ENDP
Instructions PROC
call clrscr
start:
                    call SetScreen1Color
                    mov dh, 0
                    mov dl, 0
                    call gotoxy
                    mov edx, offset screen1
                    call writestring

                    mov dh, 9
                    mov dl, 35
                    call gotoxy
                    mov eax, lightcyan
                    call settextcolor
                    mov edx, offset int1
                    call writestring

                    mov dh, 10
                    mov dl, 35
                    call gotoxy
                    mov eax, cyan
                    call settextcolor
                    mov edx,offset int2
                    call writestring

                    mov dh, 11
                    mov dl, 35
                    call gotoxy
                    mov eax, blue
                    call settextcolor
                    mov edx, offset int3
                    call writestring

                    mov eax, lightmagenta
                    call settextcolor
                    mov al, 14
                    mov bl, 10
                    mov cl, 46
                    mov dl, 13
                    call makeBox

                    mov eax, white
                    call settextcolor
                    mov dh, 14
                    mov dl, 21
                    call gotoxy
                    mov edx, offset b1
                    call writestring
                    mov dh, 15
                    mov dl, 21
                    call gotoxy
                    mov edx, offset b2
                    call writestring  
                    mov dh, 16
                    mov dl, 21
                    call gotoxy
                    mov edx, offset b3
                    call writestring      
                    mov dh, 17
                    mov dl, 21
                    call gotoxy
                    mov edx, offset b4
                    call writestring  
                    mov dh, 18
                    mov dl, 15
                    call gotoxy
                    mov edx, offset b5
                    call writestring
                    mov dh, 19
                    mov dl, 15
                    call gotoxy
                    mov edx, offset b6
                    call writestring  
                    mov dh, 20
                    mov dl, 15
                    call gotoxy
                    mov edx, offset b7
                    call writestring  
                    mov dh, 21
                    mov dl, 15
                    call gotoxy
                    mov edx, offset b8
                    call writestring   
                    mov dh, 22
                    mov dl, 15
                    call gotoxy
                    mov edx, offset b9
                    call writestring   
                    mov dh, 23
                    mov dl, 15
                    call gotoxy
                    mov edx, offset b10
                    call writestring
                    mov dh, 24
                    mov dl, 15
                    call gotoxy
                    mov edx, offset b11
                    call writestring
                    mov dh, 25
                    mov dl, 15
                    call gotoxy
                    mov edx, offset b12
                    call writestring
                    mov dh, 23
                    mov dl, 35
                    call gotoxy
                    mov edx, offset b13
                    call writestring
                        mov dh, 24
                    mov dl, 35
                    call gotoxy
                        mov edx, offset b14
                        call writestring
                    mov dh, 16
                    mov dl, 35
                    call gotoxy
                        mov edx, offset b15
                        call writestring   
                        mov dh, 17
                    mov dl, 35
                    call gotoxy
                        mov edx, offset b16
                        call writestring   
                        mov dh, 18
                    mov dl, 35
                    call gotoxy
                        mov edx, offset b17
                        call writestring
                        mov dh, 19
                    mov dl, 35
                    call gotoxy
                        mov edx, offset b18
                        call writestring
                    mov eax, lightred
                    call settextcolor
                    mov al, 14
                    mov bl, 60
                    mov cl, 20
                    mov dl, 13
                    call makeBox

                    mov eax, yellow
                    call settextcolor
                    mov dh, 15
                    mov dl, 62
                    call gotoxy
                        mov edx, offset b19
                        call writestring         
                        mov eax, lightgray
                    call settextcolor
                    mov dh, 17
                    mov dl, 64
                    call gotoxy
                        mov edx, offset b20
                        call writestring 
                        mov dh, 19
                    mov dl, 64
                    call gotoxy
                        mov edx, offset b21
                        call writestring  
                        mov dh, 21
                    mov dh, 62
                    call gotoxy
                    mov eax, 0Fh
                    call settextcolor
                    mov dh, 21
                    mov dl, 62
                    call gotoxy
                        mov edx, offset b22
                        call writestring   
                        mov dh, 22
                    mov dl, 64
                    call gotoxy
                        mov edx, offset b23
                        call writestring
                        mov dh, 24
                    mov dl, 64
                    call gotoxy
                        mov edx, offset b24
                        call writestring
                        mov dh, 25
                    mov dl, 64
                    call gotoxy
                        mov edx, offset b25
                        call writestring
                    mov eax, yellow
                    call settextcolor
                    mov al, 14
                    mov bl, 84
                    mov cl, 24
                    mov dl, 13
                    call makeBox

                    mov dh, 14
                    mov dl, 88
                    call gotoxy
                    mov eax, red
                    call settextcolor
                    mov edx, offset b28
                    call writestring
                    mov dh, 14
                    mov dl, 90
                    call gotoxy
                    mov eax, brown
                    call settextcolor
                        mov edx, offset b26
                        call writestring
                    mov dh, 26
                    mov dl, 88
                    call gotoxy
                    mov eax, brown
                    call settextcolor
                            mov edx, offset b27
                            call writestring
                    mov dh, 26
                    mov dl, 104
                    call gotoxy
                    mov eax, red
                    call settextcolor
                            mov edx, offset b28
                            call writestring
                    mov dh, 16
                    mov dl, 90
                    call gotoxy
                    mov eax, white
                    call settextcolor
                        mov edx, offset b29
                        call writestring
                    mov dh, 16
                    mov dl, 96
                    call gotoxy
                    mov eax, red
                    call settextcolor
                            mov edx, offset b30
                            call writestring
                    mov dh, 17
                    mov dl, 90
                    call gotoxy
                    mov eax, white
                    call settextcolor
                        mov edx, offset b31
                        call writestring
                    mov dh, 19
                    mov dl, 88
                    call gotoxy
                    mov eax, white
                    call settextcolor
                            mov edx, offset b32
                            call writestring
                    mov dh, 20
                    mov dl, 88
                    call gotoxy
                    mov eax, white
                    call settextcolor
                            mov edx, offset b33
                            call writestring
                    mov dh, 23
                    mov dl, 92
                    call gotoxy
                    mov eax, white
                    call settextcolor
                        mov edx, offset b34
                        call writestring
                    mov dh, 24
                    mov dl, 90
                    call gotoxy
                    mov eax, red
                    call settextcolor
                            mov edx, offset b35
                            call writestring

                    mov al, 100
                    call delay
                    call readchar
                    cmp al, 13
                    jne start
                    ret
                    Instructions ENDP
                        makeBox PROC; arg row = al, column = bl, length = cl, height = dl
                        LOCAL row : BYTE, col : BYTE, length1 : BYTE, width1 : BYTE
                        mov row, al
                        mov col, bl
                        mov length1, cl
                        mov width1, dl
                        mov dh, row
                        dec dh
                        mov dl, col
                        call gotoxy
                        movzx ecx, length1
                        upper :
                    mov al, '~'
                        call writechar
                        LOOP upper
                        mov dh, row
                        mov dl, col
                        add dh, width1
                        movzx ecx, length1
                        call gotoxy
                        lower :
                    mov al, '~'
                        call writechar
                        LOOP lower
                        mov cl, 0
                        sides :
                        mov dh, row
                        add dh, cl
                        mov dl, col
                        call gotoxy
                        mov al, "|"
                        call writechar
                        mov dh, row
                        add dh, cl
                        mov dl, col
                        add dl, length1
                        call gotoxy
                        mov al, "|"
                        call writechar
                        inc cl
                        cmp cl, width1
                        jb sides
                        ret
                        makeBox ENDP
 
 inputNameScreen PROC
    
                        mov eax, 0
                        mov esi, 0
                        mov eax, brown
                        call settextcolor
                        mov al, 13
                        mov bl, 30
                        mov cl, 60
                        mov dl, 3
                        call makeBox
                        mov esi,offset username
                        start :
                    mov dh, 8
                        mov dl, 32
                        call gotoxy
                        mov eax, white
                        call settextcolor
                        mov edx, OFFSET input1
                        call writestring
                        mov dh, 9
                        mov dl, 32
                        call gotoxy
                        mov eax, yellow
                        call settextcolor
                        mov edx, OFFSET input2
                        call writestring
                        mov dh, 10
                        mov dl, 32
                        call gotoxy
                        mov eax, brown
                        call settextcolor
                        mov edx, OFFSET input3
                        call writestring
                        mov dh, 14
                        mov dl, 35
                        call gotoxy
                        mov eax, yellow
                        call settextcolor
                        mov edx, OFFSET input4
                        call writestring
                        mov dh, 14
                        mov dl, 55
                        call gotoxy
                        mov eax, white
                        call settextcolor
                        mov edx, OFFSET username
                        call writestring
                        call readchar
                        mov [esi], al
                        inc esi
                        cmp al, 13; 
                        je done
        
                        jmp start
                  
                            done :
                        mov al,0
                        mov [esi], al

                    call clrscr
                        mov eax, 0
                        call settextcolor
                        ret
                        inputNameScreen ENDP

    PrintGameOver PROC
                           
                            call clrscr
                            call SetScreen1Color
                            mov dh, 0
                            mov dl, 0
                            call gotoxy
                            mov edx, offset screen1
                            call writestring
                            mov dh, 10
                            mov dl, 44
                            call gotoxy
                            mov eax, cyan
                            call settextcolor
                            mov edx, OFFSET dead1
                            call writestring
                            mov dh, 11
                            mov dl, 44
                            call gotoxy
                            mov eax, lightblue
                            call settextcolor
                            mov edx, OFFSET dead2
                            call writestring
                            mov dh, 12
                            mov dl, 44
                            call gotoxy
                            mov eax, blue
                            call settextcolor
                            mov edx, OFFSET dead3
                            call writestring
                            mov dh, 14
                            mov dl, 42
                            call gotoxy
                            mov eax, lightmagenta
                            call settextcolor
                            mov edx, OFFSET over1
                            call writestring
                            mov dh, 15
                            mov dl, 42
                            call gotoxy
                            mov eax, lightred
                            call settextcolor
                            mov edx, OFFSET over2
                            call writestring
                            mov dh, 16
                            mov dl, 42
                            call gotoxy
                            mov eax, red
                            call settextcolor
                            mov edx, OFFSET over3
                            call writestring

                            mov eax, white
                            call settextcolor
                            mov dh, 20
                            mov dl, 55
                            call gotoxy
                            mov edx, offset scorestr
                            call writestring
                            mov eax, yellow
                            call settextcolor
                            mov eax, score
                            call writedec
                            call readchar
                       

                         
 PrintGameOver ENDP
      setup PROC
                           
                            levels :
                            call clrscr
                            call SetScreen1Color
                            mov dh, 0
                            mov dl, 0
                            call gotoxy
                            mov edx, offset screen1
                            call writestring

                            mov dh, 10
                            mov dl, 40
                            call gotoxy
                            mov eax, red
                            call settextcolor
                            mov edx, OFFSET diff1
                            call writestring

                            mov dh, 11
                            mov dl, 40
                            call gotoxy
                            mov eax, lightred
                            call settextcolor
                            mov edx, OFFSET diff2
                            call writestring

                            mov dh, 12
                            mov dl, 40
                            call gotoxy
                            mov eax, brown
                            call settextcolor
                            mov edx, OFFSET diff3
                            call writestring

                            mov dh, 13
                            mov dl, 34
                            call gotoxy
                            mov eax, yellow
                            call settextcolor
                            mov edx, OFFSET diff4
                            call writestring

                            mov dh, 14
                            mov dl, 34
                            call gotoxy
                            mov eax, lightmagenta
                            call settextcolor
                            mov edx, OFFSET diff5
                            call writestring

                            mov dh, 15
                            mov dl, 34
                            call gotoxy
                            mov eax, magenta
                            call settextcolor
                            mov edx, OFFSET diff6
                            call writestring

                          
                          
                        mov eax, lightgreen
                            call settextcolor
                        mov al, 20
                            mov bl, 30
                            mov cl, 15
                            mov dl, 3
                            call makebox
                            mov dh, 21
                            mov dl, 34
                            call gotoxy
                            mov edx, OFFSET strLevel
                            call writestring
                            mov eax, 1
                            call writedec

                           
                        mov eax, brown
                            call settextcolor
                        mov al, 20
                            mov bl, 53
                            mov cl, 15
                            mov dl, 3
                            call makebox
                            mov dh, 21
                            mov dl, 57
                            call gotoxy
                            mov edx, OFFSET strLevel
                            call writestring
                            mov eax, 2
                            call writedec

                           
                        mov eax, red
                            call settextcolor
                        mov al, 20
                            mov bl, 76
                            mov cl, 15
                            mov dl, 3
                            call makebox
                            mov dh, 21
                            mov dl, 80
                            call gotoxy
                            mov edx, OFFSET strLevel
                            call writestring
                            mov eax, 3
                            call writedec

                           mov eax,0
                            call readdec

                            cmp al, 1
                            je assign
                            cmp al, 2
                            je assign
                                cmp al, 3
                                je assign
                            jne levels
                                assign:
                            mov levelno,eax
                            call gameScreen
                            ret
                            setup ENDP


SetColor PROC
    cmp al,'.'
    je pellet
    cmp al, 'P'
    je power
    cmp al, 'X'
    je peckman1
    cmp al, 'G'
    je ghost
    cmp al, ' '
    je space1
    cmp al, '*'
    je block
    jmp wall
    pellet:
    call SetPelletColor
        ret
        block :
    call SetBlockColor
        ret
        power :
    call SetPowerColor
    ret
        peckman1 :
    call SetPeckmanColor
        ret
        ghost :
    call SetGhostColor
        ret
        space1 :
    call SetSpaceColor
        ret
        wall :
    call SetWallColor
        ret
        ret
        SetColor endP

        menu PROC
       
        showMenu :
        call clrscr
        call SetScreen1Color
        mov dh, 0
        mov dl, 0
        call gotoxy
        mov edx, offset screen1
        call writestring

        mov dh, 10
        mov dl, 42
        call gotoxy
        mov eax, red
        call settextcolor
        mov edx, OFFSET menu1
        call writestring

        mov dh, 11
        mov dl, 42
        call gotoxy
        mov eax, lightred
        call settextcolor
        mov edx, OFFSET menu2
        call writestring

        mov dh, 12
        mov dl, 42
        call gotoxy
        mov eax, brown
        call settextcolor
        mov edx, OFFSET menu3
        call writestring

            mov eax, white
            call settextcolor
        mov dh, 15
        mov dl, 58
        call gotoxy
        mov edx, OFFSET playStr
        call writestring

        mov dh, 17
        mov dl, 54
        call gotoxy
        mov edx, OFFSET inststr
        call writestring

        mov dh, 19
        mov dl, 58
        call gotoxy
        mov edx, OFFSET setupStr
        call writestring

        mov dh, 21
        mov dl, 56
        call gotoxy
        mov edx, OFFSET highscoreStr
        call writestring

        mov dh, 23
        mov dl, 58
        call gotoxy
        mov edx, OFFSET exitStr
        call writestring
       
        mov eax, 500
        call delay
        call readdec
        cmp al, 1
        je play
            cmp al, 2
            je instruction
            cmp al, 3
            je setup1
            cmp al, 4
            je highScore
            cmp al,5
            je endGame
            jne showMenu
            play:
        call GameScreen
            ret
            instruction:
        call instructions
        jmp showMenu
            setup1:
        call setup
            highScore:
        call highscoresdisplay
        ret
        
    endGame:
       
 
        call clrscr
        ret

  

        
        menu ENDP
 bubbleSort PROC
           LOCAL swap : BYTE
          mov esi,offset username
           mov eax,counter1
           mov edx,20
           div edx
           mov numLines,eax
           outer_most :
       mov ecx, numLines
           mov edx, 0
           dec ecx
           mov swap, 0

           inner_most :
           mov eax, DWORD PTR[esi]
           mov ebx, DWORD PTR[esi + 20]

               cmp eax, ebx
               jae agay
               mov DWORD PTR[esi], ebx
               mov DWORD PTR[esi + 20], eax

                   agay:
              
                   inc edx
                   LOOP inner_most

                   jne outer_most
                   ret
       bubbleSort ENDP
       highscoresdisplay PROC
                    
                       call clrscr
                       keepshowing :
                   call SetScreen1Color
                       mov dh, 0
                       mov dl, 0
                       call gotoxy
                       mov edx, offset screen1
                       call writestring

                       mov dh, 9
                       mov dl, 40
                       call gotoxy
                       mov edx, offset high1
                       call writestring
                       mov dh, 10
                       mov dl, 40
                       call gotoxy
                       mov edx, offset high2
                       call writestring
                       mov dh, 11
                       mov dl, 40
                       call gotoxy
                       mov edx, offset high3
                       call writestring

                       
                       mov eax, lightcyan
                       call settextcolor
                      mov counter1,1
                       mov dh, 16
                       mov dl, 35
                       call gotoxy
                   mov edx, offset filename
                       call openinputfile
                       mov handler, eax
                       readline :
                   mov eax, handler
                       mov ecx, 27
                       mov edx, offset line
                       call readfromfile
                       cmp eax, 0;
                   je doneReading
                       mov dh,16
                       mov dl, 35

                       mov ecx,counter1
                       l:
                   inc dh
                   loop l
                       mov dl, 35

                       call gotoxy
                       inc counter1
                       mov eax, lightcyan
                       call settextcolor
                       mov edx,offset line
                       call writestring
                       mov eax, black
                       call settextcolor


                           jmp readline

                           doneReading :
                       call closefile

                       call readchar
                       cmp al, 13
                       jne keepshowing
                        je menu
                       ret
                       highscoresdisplay ENDP


SetPelletColor PROC
mov  eax, blue + (black * 16)
call SetTextColor
ret
SetPelletColor endP

SetWallColor PROC
mov  eax, black + (yellow * 16)
call SetTextColor
ret
SetWallColor endP
SetBlockColor PROC
mov  eax, black + (yellow * 16)
call SetTextColor
ret
SetBlockColor endP

SetSpaceColor PROC
mov  eax, black + (black * 16)
call SetTextColor
ret
SetSpaceColor endP

SetGhostColor PROC
mov  eax, black + (red * 16)
call SetTextColor
ret
SetGhostColor endP
SetScreen1Color PROC
mov  eax, yellow + (black * 16)
call SetTextColor
ret
SetScreen1Color endP
SetPeckmanColor PROC
mov  eax, white + ( magenta * 16)
call SetTextColor
ret
SetPeckmanColor endP

SetPowerColor PROC
mov  eax, white + ( green* 16)
call SetTextColor
ret
SetPowerColor endP
SetHeadingColor PROC
mov  eax, green + (black * 16)
call SetTextColor
ret
SetHeadingColor endP
SetParagraphColor PROC
mov  eax, white + (black * 16)
call SetTextColor
ret
SetParagraphColor endP

pauseScreen PROC
    call clrscr
                           call SetScreen1Color
                           mov dh, 0
                           mov dl, 0
                           call gotoxy
                           mov edx, offset screen1
                           call writestring
                           mov dh, 10
                           mov dl, 40
                           call gotoxy
                           mov eax, red
                           call settextcolor
                           mov edx, OFFSET pause1
                           call writestring
                           mov dh, 11
                           mov dl, 40
                           call gotoxy
                           mov eax, lightred
                           call settextcolor
                           mov edx, OFFSET pause2
                           call writestring
                           mov dh, 12
                           mov dl, 40
                           call gotoxy
                           mov eax, brown
                           call settextcolor
                           mov edx, OFFSET pause3
                           call writestring

                           ret
                           pauseScreen ENDP


                    end main
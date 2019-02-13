
; ASM FILE music08.asm :
; 0x933F..0x9BC1 : Music 08
Music_8:        db 0
		db 0
		db 0
		db 0BCh
		dw Music_8_Channel_0
		dw Music_8_Channel_1
		dw Music_8_Channel_2
		dw Music_8_Channel_3
		dw Music_8_Channel_4
		dw Music_8_Channel_5
		dw Music_8_Channel_6
		dw Music_8_Channel_7
		dw Music_8_Channel_9
		dw Music_8_Channel_9
Music_8_Channel_0:
		  inst 14
		  vol 09h
		  setRelease 01h
		  vibrato 02Ah
		        noteL F6,6
		        waitL 12
		        noteL G6,6
		mainLoopStart
		        noteL A6,6
		        waitL 18
		        noteL D6,48
		        noteL E6,6
		        waitL 12
		        noteL F6,6
		        note  G6
		        waitL 18
		        noteL Cs6,48
		        noteL D6,6
		        waitL 12
		        noteL E6,6
		        note  F6
		        waitL 18
		        noteL A6,48
		        noteL G6,6
		        waitL 12
		        noteL F6,6
		        noteL E6,48
		        waitL 24
		        noteL F6,6
		        waitL 12
		        noteL G6,6
		        note  A6
		        waitL 18
		        noteL D6,48
		        noteL E6,6
		        waitL 12
		        noteL F6,6
		        note  G6
		        waitL 18
		        noteL As6,48
		        noteL A6,6
		        waitL 12
		        noteL G6,6
		        note  A6
		        waitL 18
		        noteL D7,48
		        noteL D6,24
		        noteL G6,72
		        noteL F6,18
		        noteL E6,6
		        noteL D6,60
		        waitL 36
		        waitL 96
		  inst 21
		  vol 0Ah
		  stereo 080h
		        wait
		        waitL 24
		        note  C5
		        note  F5
		        note  A5
		        noteL D6,48
		        note  D6
		        note  C6
		        note  C6
		        note  B5
		        note  B5
		        noteL As5,66
		        waitL 6
		  inst 14
		  stereo 0C0h
		  vol 09h
		  setRelease 01h
		        note  F6
		        waitL 12
		        noteL G6,6
		        note  A6
		        waitL 18
		        noteL D6,48
		        noteL E6,6
		        waitL 12
		        noteL F6,6
		        note  G6
		        waitL 18
		        noteL Cs6,48
		        noteL D6,6
		        waitL 12
		        noteL E6,6
		        note  F6
		        waitL 18
		        noteL A6,48
		        noteL G6,6
		        waitL 12
		        noteL F6,6
		        noteL E6,48
		        waitL 24
		        noteL F6,6
		        waitL 12
		        noteL G6,6
		        note  A6
		        waitL 18
		        noteL D6,48
		        noteL F6,6
		        waitL 12
		        noteL A6,6
		        note  D7
		        waitL 18
		        noteL D6,48
		        noteL F6,6
		        waitL 12
		        noteL G6,6
		        noteL A6,4
		        wait
		        note  A6
		        wait
		        note  A6
		        wait
		        note  A6
		        waitL 44
		        noteL A6,4
		        wait
		        note  A6
		        wait
		        note  A6
		        wait
		        note  A6
		        wait
		        note  A6
		        wait
		        note  A6
		        wait
		        note  A6
		        waitL 44
		        noteL F6,6
		        waitL 12
		        noteL G6,6
		mainLoopEnd
Music_8_Channel_1:
		        waitL 24
		  inst 4
		  vol 0Dh
		  setRelease 01h
		  vibrato 02Ah
		mainLoopStart
		        noteL D3,24
		  inst 3
		  vol 0Dh
		  setRelease 01h
		  stereo 080h
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL Cs4,8
		        waitL 16
		        noteL Cs4,8
		        waitL 16
		        noteL C4,8
		        waitL 16
		        noteL C4,8
		        waitL 16
		        noteL B3,8
		        waitL 16
		        noteL B3,8
		        waitL 16
		        noteL As3,8
		        waitL 16
		        noteL As3,8
		        waitL 16
		        noteL A3,8
		        waitL 16
		  inst 4
		  vol 0Dh
		  setRelease 01h
		  stereo 0C0h
		        noteL A3,8
		        note  A3
		        note  A3
		        noteL D3,24
		  inst 3
		  vol 0Dh
		  setRelease 01h
		  stereo 080h
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL Cs4,8
		        waitL 16
		        noteL Cs4,8
		        waitL 16
		        noteL C4,8
		        waitL 16
		        noteL C4,8
		        waitL 16
		        noteL B3,8
		        waitL 16
		        noteL B3,8
		        waitL 16
		        noteL As3,8
		        waitL 16
		        noteL As3,8
		        waitL 16
		        noteL A3,8
		        waitL 16
		        noteL A3,8
		        waitL 16
		        waitL 96
		        waitL 0
		  inst 21
		  vol 0Ah
		  setRelease 01h
		  stereo 080h
		        waitL 96
		        wait
		        waitL 24
		        note  E4
		        note  A4
		        note  C5
		        noteL G5,48
		        note  F5
		        note  F5
		        note  Ds5
		        note  D5
		        note  F5
		  inst 4
		  vol 0Dh
		  setRelease 01h
		  stereo 0C0h
		        noteL C4,6
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        noteL D3,24
		  inst 3
		  vol 0Dh
		  setRelease 01h
		  stereo 080h
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL Cs4,6
		        waitL 18
		        noteL Cs4,6
		        waitL 18
		        noteL C4,6
		        waitL 18
		        noteL C4,6
		        waitL 18
		        noteL B3,6
		        waitL 18
		        noteL B3,6
		        waitL 18
		        noteL As3,6
		        waitL 18
		        noteL As3,6
		        waitL 18
		        noteL A3,6
		        waitL 18
		  inst 4
		  vol 0Dh
		  setRelease 01h
		  stereo 0C0h
		        noteL A3,8
		        note  A3
		        note  A3
		        noteL D3,24
		  inst 3
		  vol 0Dh
		  setRelease 01h
		  stereo 080h
		        noteL D4,6
		        waitL 18
		        noteL Cs4,6
		        waitL 18
		        noteL Cs4,6
		        waitL 18
		        noteL C4,6
		        waitL 18
		        noteL C4,6
		        waitL 18
		        noteL B3,6
		        waitL 18
		        noteL B3,6
		        waitL 18
		        noteL As3,4
		        wait
		        note  As3
		        wait
		        note  As3
		        wait
		        note  As3
		        waitL 20
		  inst 4
		  vol 0Dh
		  setRelease 01h
		  stereo 0C0h
		        noteL A3,24
		  inst 3
		  vol 0Dh
		  setRelease 01h
		  stereo 080h
		        noteL As3,4
		        wait
		        note  As3
		        wait
		        note  As3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        waitL 20
		  inst 4
		  vol 0Dh
		  setRelease 01h
		  stereo 0C0h
		        noteL A3,24
		        noteL A3,8
		        note  A3
		        note  A3
		mainLoopEnd
Music_8_Channel_2:
		        waitL 24
		  inst 5
		  vol 0Dh
		  setRelease 01h
		  vibrato 02Ah
		mainLoopStart
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL Cs4,8
		        waitL 16
		        noteL Cs4,8
		        waitL 16
		        noteL C4,8
		        waitL 16
		        noteL C4,8
		        waitL 16
		        noteL B3,8
		        waitL 16
		        noteL B3,8
		        waitL 16
		        noteL As3,8
		        waitL 16
		        noteL As3,8
		        waitL 16
		        noteL A3,8
		        waitL 16
		        noteL A3,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL D4,8
		        waitL 16
		        noteL Cs4,8
		        waitL 16
		        noteL Cs4,8
		        waitL 16
		        noteL C4,8
		        waitL 16
		        noteL C4,8
		        waitL 16
		        noteL B3,8
		        waitL 16
		        noteL B3,8
		        waitL 16
		        noteL As3,8
		        waitL 16
		        noteL As3,8
		        waitL 16
		        noteL A3,8
		        waitL 16
		        noteL A3,8
		        waitL 16
		  inst 2
		  vol 0Dh
		  setRelease 01h
		        noteL B3,48
		        note  As3
		        note  A3
		        note  Gs3
		        note  G3
		        note  Fs3
		        noteL F3,96
		        noteL B3,48
		        note  As3
		        note  A3
		        note  Gs3
		        note  G3
		        note  G3
		        noteL C4,96
		  inst 5
		  vol 0Dh
		  setRelease 01h
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL Cs4,6
		        waitL 18
		        noteL Cs4,6
		        waitL 18
		        noteL C4,6
		        waitL 18
		        noteL C4,6
		        waitL 18
		        noteL B3,6
		        waitL 18
		        noteL B3,6
		        waitL 18
		        noteL As3,6
		        waitL 18
		        noteL As3,6
		        waitL 18
		        noteL A3,6
		        waitL 18
		        noteL A3,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL Cs4,6
		        waitL 18
		        noteL Cs4,6
		        waitL 18
		        noteL C4,6
		        waitL 18
		        noteL C4,6
		        waitL 18
		        noteL B3,6
		        waitL 18
		        noteL B3,6
		        waitL 18
		        noteL As3,4
		        wait
		        note  As3
		        wait
		        note  As3
		        wait
		        note  As3
		        waitL 44
		        noteL As3,4
		        wait
		        note  As3
		        wait
		        note  As3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        waitL 44
		        noteL A3,24
		mainLoopEnd
Music_8_Channel_3:
		        waitL 24
		  inst 3
		  vol 0Dh
		  setRelease 02h
		  vibrato 02Ah
		mainLoopStart
		        noteL F5,8
		        waitL 16
		        noteL F5,8
		        waitL 16
		        noteL F5,8
		        waitL 16
		        noteL F5,8
		        waitL 16
		        noteL G5,8
		        waitL 16
		        noteL G5,8
		        waitL 16
		        noteL E5,8
		        waitL 16
		        noteL E5,8
		        waitL 16
		        noteL F5,8
		        waitL 16
		        noteL F5,8
		        waitL 16
		        noteL D5,8
		        waitL 16
		        noteL D5,8
		        waitL 16
		        noteL D5,8
		        waitL 16
		        noteL D5,8
		        waitL 16
		        noteL Cs5,8
		        waitL 16
		        noteL Cs5,8
		        waitL 16
		        noteL F5,8
		        waitL 16
		        noteL F5,8
		        waitL 16
		        noteL F5,8
		        waitL 16
		        noteL F5,8
		        waitL 16
		        noteL G5,8
		        waitL 16
		        noteL G5,8
		        waitL 16
		        noteL E5,8
		        waitL 16
		        noteL E5,8
		        waitL 16
		        noteL F5,8
		        waitL 16
		        noteL F5,8
		        waitL 16
		        noteL D5,8
		        waitL 16
		        noteL D5,8
		        waitL 16
		        noteL D5,8
		        waitL 16
		        noteL D5,8
		        waitL 16
		        noteL Cs5,8
		        waitL 16
		        noteL Cs5,8
		        waitL 16
		  inst 2
		  vol 0Bh
		  setRelease 02h
		        noteL D5,48
		        note  D5
		        note  C5
		        note  C5
		        note  As4
		        note  As4
		        noteL A4,96
		        noteL D6,48
		        note  D6
		        note  C6
		        note  C6
		        note  B5
		        note  B5
		        noteL C6,96
		  inst 3
		  vol 0Dh
		  setRelease 02h
		        noteL F5,6
		        waitL 18
		        noteL F5,6
		        waitL 18
		        noteL F5,6
		        waitL 18
		        noteL F5,6
		        waitL 18
		        noteL G5,6
		        waitL 18
		        noteL G5,6
		        waitL 18
		        noteL E5,6
		        waitL 18
		        noteL E5,6
		        waitL 18
		        noteL F5,6
		        waitL 18
		        noteL F5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL Cs5,6
		        waitL 18
		        noteL Cs5,6
		        waitL 18
		        noteL F5,6
		        waitL 18
		        noteL F5,6
		        waitL 18
		        noteL E5,6
		        waitL 18
		        noteL E5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,4
		        wait
		        note  D5
		        wait
		        note  D5
		        wait
		        note  D5
		        waitL 44
		        noteL D5,4
		        wait
		        note  D5
		        wait
		        note  D5
		        wait
		        note  G5
		        wait
		        note  G5
		        wait
		        note  G5
		        wait
		        note  G5
		        waitL 44
		        noteL G5,4
		        wait
		        note  G5
		        wait
		        note  G5
		        wait
		mainLoopEnd
Music_8_Channel_4:
		        waitL 24
		  inst 3
		  vol 0Dh
		  setRelease 02h
		  vibrato 02Ah
		mainLoopStart
		        noteL A4,8
		        waitL 16
		        noteL A4,8
		        waitL 16
		        noteL A4,8
		        waitL 16
		        noteL A4,8
		        waitL 16
		        noteL As4,8
		        waitL 16
		        noteL As4,8
		        waitL 16
		        noteL As4,8
		        waitL 16
		        noteL As4,8
		        waitL 16
		        noteL A4,8
		        waitL 16
		        noteL A4,8
		        waitL 16
		        noteL A4,8
		        waitL 16
		        noteL A4,8
		        waitL 16
		        noteL F4,8
		        waitL 16
		        noteL F4,8
		        waitL 16
		        noteL G4,8
		        waitL 16
		        noteL G4,8
		        waitL 16
		        noteL A4,8
		        waitL 16
		        noteL A4,8
		        waitL 16
		        noteL A4,8
		        waitL 16
		        noteL A4,8
		        waitL 16
		        noteL As4,8
		        waitL 16
		        noteL As4,8
		        waitL 16
		        noteL As4,8
		        waitL 16
		        noteL As4,8
		        waitL 16
		        noteL A4,8
		        waitL 16
		        noteL A4,8
		        waitL 16
		        noteL A4,8
		        waitL 16
		        noteL A4,8
		        waitL 16
		        noteL F4,8
		        waitL 16
		        noteL F4,8
		        waitL 16
		        noteL G4,8
		        waitL 16
		        noteL G4,8
		        waitL 16
		  inst 2
		  vol 0Bh
		  setRelease 02h
		        noteL G4,48
		        note  F4
		        note  F4
		        note  Ds4
		        note  D4
		        note  E4
		        noteL C4,96
		        noteL G5,48
		        note  F5
		        note  F5
		        note  Ds5
		        note  D5
		        note  F5
		        noteL E5,96
		  inst 3
		  vol 0Dh
		  setRelease 02h
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL As4,6
		        waitL 18
		        noteL As4,6
		        waitL 18
		        noteL As4,6
		        waitL 18
		        noteL As4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL F4,6
		        waitL 18
		        noteL F4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL F4,6
		        waitL 18
		        noteL F4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL F4,4
		        wait
		        note  F4
		        wait
		        note  F4
		        wait
		        note  F4
		        waitL 44
		        noteL F4,4
		        wait
		        note  F4
		        wait
		        note  F4
		        wait
		        note  B4
		        wait
		        note  B4
		        wait
		        note  B4
		        wait
		        note  B4
		        waitL 44
		        noteL B4,4
		        wait
		        note  B4
		        wait
		        note  B4
		        wait
		mainLoopEnd
Music_8_Channel_5:
		        waitL 24
		mainLoopStart
		countedLoopStart 6
		        sampleL 1,24
		        sample  1
		        sample  1
		        sampleL 1,18
		        sampleL 3,2
		        sample  2
		        sample  2
		countedLoopEnd
		        sampleL 1,24
		        sample  1
		        sampleL 1,18
		        sampleL 2,6
		        sampleL 1,2
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		countedLoopStart 6
		        waitL 96
		countedLoopEnd
		        sampleL 3,2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		        sample  2
		countedLoopStart 5
		        sampleL 1,24
		        sample  1
		        sample  1
		        sampleL 1,18
		        sampleL 3,2
		        sample  2
		        sample  2
		countedLoopEnd
		countedLoopStart 1
		        sampleL 1,8
		        sample  1
		        sample  1
		        sample  1
		        waitL 16
		        sampleL 1,2
		        sample  2
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sampleL 3,4
		        sampleL 1,8
		        sample  1
		        sample  1
		countedLoopEnd
		mainLoopEnd
Music_8_Channel_6:
		  psgInst 00h
		  setRelease 01h
		  vibrato 02Ah
		        waitL    24
		mainLoopStart
		countedLoopStart 7
		        waitL    96
		countedLoopEnd
		  psgInst 0Ah
		  setRelease 05h
		        psgNoteL B2,8
		        psgNote  G3
		        psgNote  A3
		        psgNote  D4
		        psgNote  A3
		        psgNote  G3
		        psgNote  As2
		        psgNote  F3
		        psgNote  A3
		        psgNote  D4
		        psgNote  A3
		        psgNote  F3
		        psgNote  A2
		        psgNote  F3
		        psgNote  G3
		        psgNote  C4
		        psgNote  G3
		        psgNote  F3
		        psgNote  Gs2
		        psgNote  Ds3
		        psgNote  G3
		        psgNote  C4
		        psgNote  G3
		        psgNote  Ds3
		        psgNote  G2
		        psgNote  D3
		        psgNote  F3
		        psgNote  As3
		        psgNote  F3
		        psgNote  D3
		        psgNote  Fs2
		        psgNote  Cs3
		        psgNote  E3
		        psgNote  As3
		        psgNote  E3
		        psgNote  Cs3
		        psgNote  F2
		        psgNote  C3
		        psgNote  E3
		        psgNote  A3
		        psgNote  E3
		        psgNote  A3
		        psgNote  C4
		        psgNote  A3
		        psgNote  C4
		        psgNote  E4
		        psgNote  C4
		        psgNote  A3
		        psgNote  B2
		        psgNote  G3
		        psgNote  A3
		        psgNote  D4
		        psgNote  A3
		        psgNote  G3
		        psgNote  As2
		        psgNote  F3
		        psgNote  A3
		        psgNote  D4
		        psgNote  A3
		        psgNote  F3
		        psgNote  A2
		        psgNote  F3
		        psgNote  G3
		        psgNote  C4
		        psgNote  G3
		        psgNote  F3
		        psgNote  Gs2
		        psgNote  Ds3
		        psgNote  G3
		        psgNote  C4
		        psgNote  G3
		        psgNote  Ds3
		        psgNote  G2
		        psgNote  D3
		        psgNote  F3
		        psgNote  B3
		        psgNote  F3
		        psgNote  B3
		        psgNote  D4
		        psgNote  B3
		        psgNote  F3
		        psgNote  B3
		        psgNote  F3
		        psgNote  D3
		  setRelease 02h
		        psgNoteL C2,4
		        psgNote  G2
		        psgNote  As2
		        psgNote  E3
		        psgNote  G3
		        psgNote  As3
		        psgNote  E2
		        psgNote  G2
		        psgNote  C3
		        psgNote  G3
		        psgNote  As3
		        psgNote  E4
		        psgNote  G2
		        psgNote  As2
		        psgNote  E3
		        psgNote  As3
		        psgNote  E4
		        psgNote  G4
		        psgNoteL As4,3
		        psgNote  G4
		        psgNote  E4
		        psgNote  As3
		        psgNote  G3
		        psgNote  E3
		        psgNote  As2
		        psgNote  E2
		countedLoopStart 7
		  psgInst 00h
		        waitL    96
		countedLoopEnd
		mainLoopEnd
Music_8_Channel_7:
		  psgInst 00h
		  setRelease 01h
		  vibrato 04Ch
		        waitL    24
		mainLoopStart
		countedLoopStart 2
		        waitL    96
		countedLoopEnd
		        waitL    48
		  setRelease 00h
		  psgInst 0Ah
		        psgNoteL E4,3
		        psgNoteL F4,2
		        psgNoteL G4,3
		        psgNoteL A4,2
		        psgNoteL B4,3
		        psgNoteL Cs5,2
		        psgNoteL D5,3
		        psgNoteL E5,2
		        psgNoteL F5,3
		        psgNoteL G5,2
		        psgNoteL A5,6
		  psgInst 00h
		        waitL    17
		countedLoopStart 3
		        waitL    96
		countedLoopEnd
		  psgInst 0Ah
		        psgNoteL D4,55
		  psgInst 00h
		        waitL    5
		  psgInst 0Ah
		        psgNoteL E4,12
		        psgNote  F4
		        psgNote  G4
		        psgNoteL C4,55
		  psgInst 00h
		        waitL    5
		  psgInst 0Ah
		        psgNoteL D4,12
		        psgNote  Ds4
		        psgNote  F4
		        psgNoteL As3,24
		        psgNoteL E4,36
		        psgNoteL E4,12
		        psgNote  F4
		        psgNote  G4
		        psgNoteL C4,72
		  psgInst 00h
		        waitL    24
		  psgInst 0Ah
		        psgNoteL D4,55
		  psgInst 00h
		        waitL    5
		  psgInst 0Ah
		        psgNoteL E4,12
		        psgNote  F4
		        psgNote  G4
		        psgNote  A4
		        psgNote  C4
		        psgNoteL C5,43
		  psgInst 00h
		        waitL    5
		  psgInst 0Ah
		        psgNoteL As4,12
		        psgNote  A4
		        psgNote  B4
		        psgNote  G4
		        psgNoteL D5,43
		  psgInst 00h
		        waitL    5
		  psgInst 0Ah
		        psgNoteL G4,24
		        psgNoteL C5,72
		  psgInst 00h
		        waitL    24
		countedLoopStart 2
		        waitL    96
		countedLoopEnd
		        waitL    48
		  psgInst 0Ah
		        psgNoteL E4,3
		        psgNoteL F4,2
		        psgNoteL G4,3
		        psgNoteL A4,2
		        psgNoteL B4,3
		        psgNoteL Cs5,2
		        psgNoteL D5,3
		        psgNoteL E5,2
		        psgNoteL F5,3
		        psgNoteL G5,2
		        psgNoteL A5,6
		  psgInst 00h
		        waitL    17
		  psgInst 0Ah
		        psgNoteL Gs5,3
		        psgNote  A5
		  psgInst 00h
		        waitL    18
		  psgInst 0Ah
		  setRelease 00h
		        psgNoteL D5,2
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		  psgInst 00h
		        waitL    4
		  psgInst 0Ah
		        psgNoteL F5,6
		  psgInst 00h
		        waitL    12
		  psgInst 0Ah
		        psgNoteL A5,6
		        psgNoteL Cs6,3
		        psgNote  D6
		  psgInst 00h
		        waitL    18
		  psgInst 0Ah
		        psgNoteL D5,2
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		  psgInst 00h
		        waitL    4
		  psgInst 0Ah
		        psgNoteL F5,6
		  psgInst 00h
		        waitL    12
		  psgInst 0Bh
		        psgNoteL G5,6
		        psgNoteL A5,4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL A5,6
		  psgInst 00h
		        waitL    42
		  psgInst 0Bh
		        psgNoteL A5,4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL A5,6
		  psgInst 00h
		        waitL    66
		mainLoopEnd
Music_8_Channel_9:
		channel_end
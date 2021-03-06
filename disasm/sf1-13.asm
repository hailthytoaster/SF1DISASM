
; GAME SECTION 13 :
; Spell graphics and animations
; FREE SPACE : 492 bytes.



; =============== S U B R O U T I N E =======================================

sub_124000:
		jmp     sub_12407C(pc)

	; End of function sub_124000


; =============== S U B R O U T I N E =======================================

sub_124004:
		jmp     sub_1247F6(pc)

	; End of function sub_124004


; =============== S U B R O U T I N E =======================================

sub_124008:
		jmp     loc_128FC2(pc)

	; End of function sub_124008


; =============== S U B R O U T I N E =======================================

sub_12400C:
		jmp     loc_12A4C4(pc)

	; End of function sub_12400C


; =============== S U B R O U T I N E =======================================

sub_124010:
		jmp     loc_12ABCC(pc)

	; End of function sub_124010

		jmp     sub_125352(pc)

; =============== S U B R O U T I N E =======================================

sub_124018:
		jmp     sub_12BF7C(pc)

	; End of function sub_124018


; =============== S U B R O U T I N E =======================================

sub_12401C:
		jmp     sub_12687A(pc)

	; End of function sub_12401C


; =============== S U B R O U T I N E =======================================

sub_124020:
		jmp     sub_126100(pc)

	; End of function sub_124020


; =============== S U B R O U T I N E =======================================

sub_124024:
		jmp     loc_124082(pc)

	; End of function sub_124024


; =============== S U B R O U T I N E =======================================

sub_124028:
		jmp     sub_128F98(pc)

	; End of function sub_124028


; =============== S U B R O U T I N E =======================================

sub_12402C:
		jmp     sub_1263E8(pc)

	; End of function sub_12402C

p_SpellTiles_Freeze:
		dc.l SpellTiles_Freeze
p_SpellTiles_Bolt:
		dc.l SpellTiles_Bolt
p_SpellTiles_Blaze:
		dc.l SpellTiles_Blaze
p_SpellTiles_Status:
		dc.l SpellTiles_Status
p_SpellTiles_Desoul:
		dc.l SpellTiles_Desoul
p_SpellTiles_HealAuraDetox:
		dc.l SpellTiles_HealAuraDetox
p_SpellTiles_MachineGun:
		dc.l SpellTiles_MachineGun
p_SpellTiles_FlyingDragon:
		dc.l SpellTiles_FlyingDragon
p_SpellTiles_EnergyWave:
		dc.l SpellTiles_EnergyWave
p_SpellTiles_Laser:
		dc.l SpellTiles_Laser
p_SpellTiles_ElectricBreath:
		dc.l SpellTiles_ElectricBreath
p_SpellTiles_BusterShot:
		dc.l SpellTiles_BusterShot
p_SpellTiles_FireBreath:
		dc.l SpellTiles_FireBreath
p_SpellTiles_DemonBlaze:
		dc.l SpellTiles_DemonBlaze
off_124068:     dc.l byte_12F2E2
off_12406C:     dc.l byte_12F502
off_124070:     dc.l byte_12F70E
p_ChapterEndTiles:
		dc.l ChapterEndTiles
off_124078:     dc.l byte_12F938

; =============== S U B R O U T I N E =======================================

sub_12407C:
		jsr     sub_8028
loc_124082:
		lea     ((byte_FFBC8E-$1000000)).w,a6
		lea     ((byte_FFC08E-$1000000)).w,a5
		clr.b   ((byte_FFB5BB-$1000000)).w
		move.w  #$FFFF,(a5)
loc_124092:
		move.w  (a6)+,d0
		cmpi.w  #$FFFF,d0
		beq.w   loc_1240CE
		add.w   d0,d0
		move.w  off_1240A8(pc,d0.w),d0
		jsr     off_1240A8(pc,d0.w)
		bra.s   loc_124092
off_1240A8:
		dc.w sub_1240D2-off_1240A8
		dc.w sub_1245F2-off_1240A8
		dc.w sub_124704-off_1240A8
		dc.w sub_124798-off_1240A8
		dc.w sub_124772-off_1240A8
		dc.w sub_1245F2-off_1240A8
		dc.w sub_124704-off_1240A8
		dc.w sub_1251B4-off_1240A8
		dc.w sub_124F38-off_1240A8
		dc.w sub_1249DC-off_1240A8
		dc.w sub_124B52-off_1240A8
		dc.w sub_124DCE-off_1240A8
		dc.w sub_12471C-off_1240A8
		dc.w sub_124DEE-off_1240A8
		dc.w sub_124DFA-off_1240A8
		dc.w sub_124E44-off_1240A8
		dc.w sub_1249D4-off_1240A8
		dc.w loc_124800-off_1240A8
		dc.w sub_124E02-off_1240A8
loc_1240CE:
		clr.w   d0
		rts

	; End of function sub_12407C


; =============== S U B R O U T I N E =======================================

sub_1240D2:
		move.w  (a6)+,d0
		move.w  d0,((word_FFBC72-$1000000)).w
		jsr     sub_20310
		move.w  d1,((word_FFBC6A-$1000000)).w
		move.w  d2,((word_FFBC6C-$1000000)).w
		move.w  d3,((word_FFBC82-$1000000)).w
		move.w  (a6)+,d0
		move.w  d0,((BATTLE_MEMBER_INDEX-$1000000)).w
		jsr     sub_20310
		move.w  d1,((word_FFBC6E-$1000000)).w
		move.w  d2,((word_FFBC70-$1000000)).w
		move.w  d3,((word_FFBC86-$1000000)).w
		jsr     sub_20274
		move.w  d2,((word_FFBC76-$1000000)).w
		move.w  d3,((word_FFBC78-$1000000)).w
		move.w  #$64,((word_FFBC7A-$1000000)).w 
		move.w  #$65,((word_FFBC7E-$1000000)).w 
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_FADE_OUT
		jsr     (j_FadeOutToBlack).l
		clr.l   (dword_FF0EF6).l
		jsr     (j_WaitForVInt).l
		trap    #SOUND_COMMAND
		dc.w MUSIC_ATTACK
		jsr     (j_DisableDisplayAndInterrupts).w
		lea     (FF3000_LOADING_SPACE).l,a0
		move.w  #$7FF,d0
loc_124144:
		clr.l   (a0)+
		dbf     d0,loc_124144
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($5000).w,a1
		move.w  #$1000,d0
		move.w  #2,d1
		jsr     (j_DMAFromRAMToVRAM).w
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($7000).w,a1
		move.w  #$1000,d0
		move.w  #2,d1
		jsr     (j_DMAFromRAMToVRAM).w
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($9000).l,a1
		move.w  #$E00,d0
		move.w  #2,d1
		jsr     (j_DMAFromRAMToVRAM).w
		moveq   #$3F,d0 
		jsr     (j_InitSprites).l
		jsr     (sub_324).l
		move.w  #$8C00,d0
		jsr     (j_SetVDPRegStatus).w
		move.w  #$9010,d0
		jsr     (j_SetVDPRegStatus).w
		move.w  #$8238,d0
		jsr     (j_SetVDPRegStatus).w
		move.w  #$8407,d0
		jsr     (j_SetVDPRegStatus).w
		move.w  #$8B03,d0
		jsr     (j_SetVDPRegStatus).w
		move.w  #0,d6
		jsr     (j_ClearVScrollStuff).w
		move.w  #$100,d6
		jsr     (j_ClearOtherVScrollStuff).w
		jsr     (j_SetVIntParam3).w
		lea     unk_125A0A(pc), a0
		nop
		lea     (PALETTE_1).l,a2
		moveq   #$3F,d0 
loc_1241E6:
		move.w  #0,(a2)+
		dbf     d0,loc_1241E6
		lea     (byte_FFD000).l,a0
		move.w  #$3FF,d7
loc_1241F8:
		clr.l   (a0)+
		dbf     d7,loc_1241F8
		lea     (byte_FFD000).l,a0
		lea     ($E000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		jsr     (j_DMAFromRAMToVRAM).w
		move.w  ((word_FFBC72-$1000000)).w,d0
		bpl.s   loc_124220
		move.w  ((BATTLE_MEMBER_INDEX-$1000000)).w,d0
loc_124220:
		jsr     sub_20330
		bsr.w   sub_1263E8
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (unk_2000).w,a1
		move.w  #$1800,d0
		move.w  #2,d1
		jsr     (j_DMAFromRAMToVRAM).w
		lea     ((byte_FFC0C0-$1000000)).w,a0
		lea     (PALETTE_1_BIS).l,a1
		lea     (PALETTE_1).l,a2
		moveq   #7,d7
loc_124252:
		move.l  (a0)+,d0
		move.l  d0,(a1)+
		move.l  d0,(a2)+
		dbf     d7,loc_124252
		move.w  ((BATTLE_MEMBER_INDEX-$1000000)).w,d0
		bpl.s   loc_124266
		clr.w   d0
		bra.s   loc_12426E
loc_124266:
		jsr     sub_2032C
		move.w  d1,d0
loc_12426E:
		jsr     sub_126380
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($AC00).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		jsr     (j_DMAFromRAMToVRAM).l
		lea     StatusEffectsTiles(pc), a0
		lea     ($F800).l,a1
		move.w  #$300,d0
		move.w  #2,d1
		jsr     (sub_294).l
		move.b  #$30,((word_FFBC8A-$1000000)).w 
		move.b  #$20,((word_FFBC8A+1-$1000000)).w 
		move.b  #$40,((word_FFBC8C-$1000000)).w 
		move.b  #$20,((word_FFBC8C+1-$1000000)).w 
		move.w  ((word_FFBC72-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
		beq.s   loc_12430C
		clr.w   d1
		move.w  ((word_FFBC6A-$1000000)).w,d0
		bsr.w   sub_1262A8
		lea     ($5000).w,a1
		move.w  #$C00,d0
		move.w  #2,d1
		jsr     (j_DMAFromRAMToVRAM).w
		move.w  ((word_FFBC6A-$1000000)).w,d0
		moveq   #1,d1
		bsr.w   sub_1262A8
		lea     ($6800).w,a1
		move.w  #$C00,d0
		move.w  #2,d1
		jsr     (j_DMAFromRAMToVRAM).w
		move.w  ((word_FFBC6A-$1000000)).w,d0
		move.w  ((word_FFBC6C-$1000000)).w,d1
		bsr.w   sub_126284
		bsr.w   sub_1244CA
loc_12430C:
		move.w  ((BATTLE_MEMBER_INDEX-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
		beq.w   loc_1243CE
		clr.w   d1
		move.w  ((word_FFBC6E-$1000000)).w,d0
		bsr.w   sub_126326
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($8000).l,a1
		move.w  #$900,d0
		move.w  #2,d1
		jsr     (j_DMAFromRAMToVRAM).w
		move.w  ((word_FFBC6E-$1000000)).w,d0
		moveq   #1,d1
		bsr.w   sub_126326
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($9200).l,a1
		move.w  #$900,d0
		move.w  #2,d1
		jsr     (j_DMAFromRAMToVRAM).w
		move.w  ((word_FFBC6E-$1000000)).w,d0
		move.w  ((word_FFBC70-$1000000)).w,d1
		bsr.w   sub_1262CE
		bsr.w   sub_124516
		move.w  ((word_FFBC76-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
		beq.s   loc_1243CE
		bsr.w   sub_12634C
		move.w  ((word_FFBC86-$1000000)).w,d0
		movea.l (p_pt_AllyAnimations).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		addq.l  #4,a0
		move.w  (a0)+,((word_FFB544-$1000000)).w
		move.w  ((word_FFB544-$1000000)).w,((byte_FFB540-$1000000)).w
		move.w  (a0)+,((word_FFB546-$1000000)).w
		move.w  ((word_FFB546-$1000000)).w,((byte_FFB542-$1000000)).w
		lea     (MAP_SPRITE_POSITION).l,a0
		move.b  ((byte_FFB540-$1000000)).w,d0
		andi.w  #$F,d0
		ror.w   #5,d0
		adda.w  d0,a0
		lea     ($A400).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		jsr     (j_DMAFromRAMToVRAM).l
		move.w  ((word_FFBC78-$1000000)).w,d0
		bsr.w   sub_12630C
loc_1243CE:
		move.w  ((BATTLE_MEMBER_INDEX-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
		beq.s   loc_1243DE
		jsr     sub_8014
loc_1243DE:
		move.w  ((word_FFBC72-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
		beq.s   loc_1243EE
		jsr     sub_8018
loc_1243EE:
		lea     unk_12570A(pc), a0
		lea     (byte_FFD1C0).l,a1
		move.w  #$300,d7
		jsr     (j_CopyBytes).l
		lea     (byte_FFD000).l,a0
		lea     ($E000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		jsr     (j_DMAFromRAMToVRAM).l
		jsr     (j_EnableDisplayAndInterrupts).w
		moveq   #$FFFFFFE0,d6
		bsr.w   sub_1251A0
		moveq   #$20,d6 
		jsr     (j_ClearOtherHScrollStuff).w
		move.w  ((word_FFBC7A-$1000000)).w,((word_FFBC7C-$1000000)).w
		move.w  ((word_FFBC7E-$1000000)).w,((word_FFBC80-$1000000)).w
		move.l  #unk_125F36,(dword_FF0EF6).l
		move.b  #$A,((byte_FFB4D2-$1000000)).w
		clr.w   d1
		bsr.w   sub_125FB4
		bsr.w   sub_126100
		move.b  #IN_FROM_BLACK,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		moveq   #$FFFFFFE0,d6
		moveq   #$20,d7 
loc_12446E:
		movem.l d6-d7,-(sp)
		clr.w   d1
		move.w  d6,d1
		neg.w   d1
		asl.w   #8,d1
		moveq   #$F,d0
		movem.w d0-d1,-(sp)
		bsr.w   sub_125352
		movem.w (sp)+,d0-d1
		bsr.w   sub_1253CC
		movem.w d0-d1/d6,-(sp)
		move.w  ((word_FFBC72-$1000000)).w,d0
		jsr     sub_20300
		cmpi.w  #$27,d1 
		bne.s   loc_1244A2
		clr.w   d6
loc_1244A2:
		jsr     (j_ClearOtherHScrollStuff).w
		movem.w (sp)+,d0-d1/d6
		asr.w   #1,d6
		bsr.w   sub_1251A0
		jsr     (j_SetVIntParam3AndWait).w
		movem.l (sp)+,d6-d7
		addq.w  #1,d6
		dbf     d7,loc_12446E
		move.w  #$3C,d0 
		jsr     (j_Sleep).l
		rts

	; End of function sub_1240D2


; =============== S U B R O U T I N E =======================================

sub_1244CA:
		move.w  ((word_FFBC72-$1000000)).w,d0
		jsr     j_GetStatusFromForceID
		movem.w d1,-(sp)
		andi.w  #$C00,d1
		movem.w (sp)+,d1
		beq.s   loc_1244EC
		move.w  ((word_FFBC7A-$1000000)).w,d0
		add.w   d0,d0
		move.w  d0,((word_FFBC7A-$1000000)).w
loc_1244EC:
		move.w  d1,-(sp)
		andi.w  #$300,d1
		movem.w (sp)+,d1
		beq.s   loc_124502
		move.w  ((word_FFBC7A-$1000000)).w,d0
		lsr.w   #1,d0
		move.w  d0,((word_FFBC7A-$1000000)).w
loc_124502:
		move.w  d1,-(sp)
		andi.w  #2,d1
		movem.w (sp)+,d1
		beq.s   locret_124514
		move.w  #$7530,((word_FFBC7A-$1000000)).w
locret_124514:
		
		rts

	; End of function sub_1244CA


; =============== S U B R O U T I N E =======================================

sub_124516:
		move.w  ((BATTLE_MEMBER_INDEX-$1000000)).w,d0
		jsr     j_GetStatusFromForceID
		movem.w d1,-(sp)
		andi.w  #$C00,d1
		movem.w (sp)+,d1
		beq.s   loc_124538
		move.w  ((word_FFBC7E-$1000000)).w,d0
		add.w   d0,d0
		move.w  d0,((word_FFBC7E-$1000000)).w
loc_124538:
		movem.w d1,-(sp)
		andi.w  #$300,d1
		movem.w (sp)+,d1
		beq.s   loc_124550
		move.w  ((word_FFBC7E-$1000000)).w,d0
		lsr.w   #1,d0
		move.w  d0,((word_FFBC7E-$1000000)).w
loc_124550:
		move.w  d1,-(sp)
		andi.w  #2,d1
		movem.w (sp)+,d1
		beq.s   locret_124562
		move.w  #$7530,((word_FFBC7E-$1000000)).w
locret_124562:
		
		rts
		addq.w  #2,a0
		moveq   #$E,d7
loc_124568:
		move.w  (a0),d2
		move.w  d0,d4
		andi.w  #$F,d4
		add.w   d4,d4
		btst    #4,d4
		beq.s   loc_12457C
		ori.w   #$FFF0,d4
loc_12457C:
		move.w  d2,d3
		andi.w  #$F,d3
		add.w   d4,d3
		bpl.s   loc_124588
		clr.w   d3
loc_124588:
		cmpi.w  #$10,d3
		blt.s   loc_124590
		moveq   #$E,d3
loc_124590:
		move.w  d3,d5
		move.w  d0,d4
		andi.w  #$F0,d4 
		add.w   d4,d4
		btst    #8,d4
		beq.s   loc_1245A4
		ori.w   #$FF00,d4
loc_1245A4:
		move.w  d2,d3
		andi.w  #$F0,d3 
		add.w   d4,d3
		bpl.s   loc_1245B0
		clr.w   d3
loc_1245B0:
		cmpi.w  #$100,d3
		blt.s   loc_1245BA
		move.w  #$E0,d3 
loc_1245BA:
		or.w    d3,d5
		move.w  d0,d4
		andi.w  #$F00,d4
		add.w   d4,d4
		btst    #$C,d4
		beq.s   loc_1245CE
		ori.w   #$F000,d4
loc_1245CE:
		move.w  d2,d3
		andi.w  #$F00,d3
		add.w   d4,d3
		bpl.s   loc_1245DA
		clr.w   d3
loc_1245DA:
		cmpi.w  #$1000,d3
		blt.s   loc_1245E4
		move.w  #$E00,d3
loc_1245E4:
		or.w    d3,d5
		move.w  d5,-$80(a0)
		move.w  d5,(a0)+
		dbf     d7,loc_124568
		rts

	; End of function sub_124516


; =============== S U B R O U T I N E =======================================

sub_1245F2:
		move.b  #1,((byte_FFB5BB-$1000000)).w
		move.w  (a6)+,d0
		cmpi.b  #$FF,d0
		beq.w   loc_1246FE
		movea.l (p_pt_AllyAnimations).l,a0
loc_124608:
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		clr.w   d7
		move.b  (a0)+,d7
		clr.w   d6
		move.b  (a0)+,d6
		move.w  (a6)+,d5
		clr.w   d0
		move.b  (a0)+,d0
		cmpi.b  #$FF,d0
		beq.s   loc_124624
		move.w  d0,d5
loc_124624:
		clr.w   d4
		move.b  (a0)+,d4
		cmpi.b  #1,((byte_FFB5BB-$1000000)).w
		bne.s   loc_124636
		tst.w   (a0)+
		move.w  (a0)+,((word_FFB546-$1000000)).w
loc_124636:
		tst.w   d6
		bne.s   loc_124650
		movem.l a0,-(sp)
		movem.w d0-d7,-(sp)
		move.w  d5,d0
		bsr.w   sub_12647E
		movem.w (sp)+,d0-d7
		movem.l (sp)+,a0
loc_124650:
		move.w  d7,d0
		sub.w   d6,d0
		move.w  d0,d6
		subq.w  #1,d7
		bmi.w   loc_1246F6
loc_12465C:
		move.b  (a0)+,d0
		ext.w   d0
		clr.w   d3
		move.b  (a0)+,d3
		move.w  (a0)+,d1
		cmpi.b  #1,((byte_FFB5BB-$1000000)).w
		bne.s   loc_124672
		move.l  (a0)+,((byte_FFB540-$1000000)).w
loc_124672:
		movem.l a0,-(sp)
		movem.w d3-d7,-(sp)
		btst    #0,((byte_FFB5BB-$1000000)).w
		beq.s   loc_1246BE
		bsr.w   sub_1253CC
		cmpi.w  #$FFFF,((word_FFBC76-$1000000)).w
		beq.s   loc_1246BC
		clr.w   d0
		move.b  ((byte_FFB540-$1000000)).w,d0
		andi.w  #7,d0
		ror.w   #5,d0
		lea     (MAP_SPRITE_POSITION).l,a0
		adda.w  d0,a0
		lea     ($A400).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		jsr     (sub_278).l
		jsr     (j_SetVIntParam3).l
loc_1246BC:
		bra.s   loc_1246C2
loc_1246BE:
		bsr.w   sub_1255CC
loc_1246C2:
		movem.w (sp)+,d3-d7
		move.w  d3,d0
		movem.l (sp)+,a0
		move.w  d0,-(sp)
		cmp.w   d7,d6
		bne.s   loc_1246EC
		movem.l a0,-(sp)
		movem.w d4-d7,-(sp)
		move.w  d5,d0
		moveq   #0,d2
		moveq   #4,d3
		bsr.w   sub_12647E
		movem.w (sp)+,d4-d7
		movem.l (sp)+,a0
loc_1246EC:
		move.w  (sp)+,d0
		jsr     (j_Sleep).w
		dbf     d7,loc_12465C
loc_1246F6:
		tst.w   d4
		bne.w   sub_124DFA
		rts
loc_1246FE:
		move.w  (a6)+,d0
		bra.w   sub_12647E

	; End of function sub_1245F2


; =============== S U B R O U T I N E =======================================

sub_124704:
		move.b  #2,((byte_FFB5BB-$1000000)).w
		move.w  (a6)+,d0
		cmpi.b  #$FF,d0
		beq.s   loc_1246FE
		movea.l (p_pt_EnemyAnimations).l,a0
		bra.w   loc_124608

	; End of function sub_124704


; =============== S U B R O U T I N E =======================================

sub_12471C:
		clr.w   d0
		move.b  ((byte_FF9C05-$1000000)).w,d0
		moveq   #7,d1
		sub.w   d0,d1
		clr.w   d0
		bset    d1,d0
loc_12472A:
		tst.b   (P1_INPUT).l    
		bne.s   loc_12473C
		jsr     (j_WaitForVInt).l
		dbf     d0,loc_12472A
loc_12473C:
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_FADE_OUT
		jsr     (j_FadeOutToBlack).w
		movem.l a5-a6,-(sp)
		jsr     sub_8024
		movem.l (sp)+,a5-a6
		rts

	; End of function sub_12471C


; =============== S U B R O U T I N E =======================================

sub_124754:
		cmpi.b  #2,((byte_FFB5BB-$1000000)).w
		bne.s   loc_124760
		bsr.w   sub_124772
loc_124760:
		cmpi.b  #1,((byte_FFB5BB-$1000000)).w
		bne.s   loc_12476C
		bsr.w   sub_124798
loc_12476C:
		clr.b   ((byte_FFB5BB-$1000000)).w
		rts

	; End of function sub_124754


; =============== S U B R O U T I N E =======================================

sub_124772:
		clr.w   d0
		clr.w   d1
		bsr.w   sub_1255CC
		move.w  ((word_FFBC7A-$1000000)).w,d0
		jsr     (j_Sleep).w
		moveq   #1,d0
		clr.w   d1
		bsr.w   sub_1255CC
		move.w  ((word_FFBC7A-$1000000)).w,((word_FFBC7C-$1000000)).w
		bset    #3,((byte_FFB4D2-$1000000)).w
		rts

	; End of function sub_124772


; =============== S U B R O U T I N E =======================================

sub_124798:
		move.w  ((word_FFB544-$1000000)).w,((byte_FFB540-$1000000)).w
		move.w  ((word_FFB546-$1000000)).w,((byte_FFB542-$1000000)).w
		clr.w   d0
		clr.w   d1
		bsr.w   sub_1253CC
		cmpi.w  #$FFFF,((word_FFBC76-$1000000)).w
		beq.s   loc_1247D8
		lea     (MAP_SPRITE_POSITION).l,a0
		move.b  ((byte_FFB540-$1000000)).w,d0
		andi.w  #$F,d0
		ror.w   #5,d0
		adda.w  d0,a0
		lea     ($A400).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		jsr     (sub_278).w
loc_1247D8:
		move.w  ((word_FFBC7E-$1000000)).w,d0
		jsr     (j_Sleep).w
		moveq   #1,d0
		clr.w   d1
		bsr.w   sub_1253CC
		move.w  ((word_FFBC7E-$1000000)).w,((word_FFBC80-$1000000)).w
		bset    #1,((byte_FFB4D2-$1000000)).w
		rts

	; End of function sub_124798


; =============== S U B R O U T I N E =======================================

sub_1247F6:
		lea     ((byte_FFC08E-$1000000)).w,a5
		move.w  d0,(a5)+
		move.w  #$FFFF,(a5)+

	; End of function sub_1247F6

loc_124800:     jsr     sub_12400C
		lea     ((byte_FFC08E-$1000000)).w,a5
		cmpi.w  #$FFFF,(a5)
		beq.w   loc_1249CE
		movem.l d0-a6,-(sp)
loc_124816:     moveq   #1,d7
loc_124818:     moveq   #3,d6
loc_12481A:     movea.l a5,a4
		clr.w   d5
loc_12481E:     move.w  (a4)+,d0
		cmpi.w  #$FFFF,d0
		beq.w   loc_1248FA
		jsr     j_GetMapSpriteFromForceID
		lsl.w   #2,d1
		movem.l d6,-(sp)
		neg.w   d6
		addq.w  #3,d6
		dbf     d6,loc_124854
		movea.l (p_p_MapSprite156).l,a3
		lea     (word_FF0D34).l,a1
		move.w  d0,d2
		lsl.w   #3,d2
		andi.b  #$F7,(a1,d2.w)
		bra.s   loc_124892
loc_124854:     dbf     d6,loc_124860
		movea.l (p_p_MapSprite304).l,a3
		bra.s   loc_124892
loc_124860:     dbf     d6,loc_12487C
		movea.l (p_p_MapSprite156).l,a3
		lea     (word_FF0D34).l,a1
		move.w  d0,d2
		lsl.w   #3,d2
		ori.b   #8,(a1,d2.w)
		bra.s   loc_124892
loc_12487C:     movea.l (p_pt_MapSprites).l,a3
		lea     (word_FF0D34).l,a1
		move.w  d0,d2
		lsl.w   #3,d2
		andi.b  #$F7,(a1,d2.w)
loc_124892:     movem.l (sp)+,d6
		movea.l (a3,d1.w),a0
		movem.l d0-a6,-(sp)
		jsr     (sub_300).l
		movem.l (sp)+,d0-a6
		lea     (FF3000_LOADING_SPACE).l,a0
		movem.l d5/a1-a2,-(sp)
		movea.l a0,a1
		addq.w  #1,d5
		mulu.w  #$240,d5
		adda.w  d5,a0
		movea.l a0,a2
		moveq   #$23,d5 
loc_1248C0:     move.l  (a1)+,(a0)+
		move.l  (a1)+,(a0)+
		move.l  (a1)+,(a0)+
		move.l  (a1)+,(a0)+
		dbf     d5,loc_1248C0
		movea.l a2,a0
		movem.l (sp)+,d5/a1-a2
		mulu.w  #$240,d0
		addi.w  #$2000,d0
		movea.w d0,a1
		movem.l a0-a1,-(sp)
		move.w  #$120,d0
		moveq   #2,d1
		jsr     (sub_278).l
		movem.l (sp)+,a0-a1
		addq.w  #1,d5
		cmpi.w  #4,d5
		bne.w   loc_12481E
loc_1248FA:     jsr     (j_SetVIntParam3AndWait).l
		cmpi.w  #1,d5
		bne.s   loc_12490C
		jsr     (j_WaitForVInt).l
loc_12490C:     dbf     d6,loc_12481A
		dbf     d7,loc_124818
		cmpi.w  #$FFFF,-(a4)
		beq.s   loc_124922
		lea     2(a4),a5
		bra.w   loc_124816
loc_124922:     movem.l (sp)+,d0-a6
		lea     unk_125C3E(pc), a0
		jsr     (j_DecompressGraphics).l
		lea     (FF3000_LOADING_SPACE).l,a0
		trap    #SOUND_COMMAND
		dc.w SFX_HIT
		moveq   #3,d7
loc_12493C:     movem.l a0/a5,-(sp)
		move.w  d7,-(sp)
loc_124942:     move.w  (a5)+,d0
		cmpi.w  #$FFFF,d0
		beq.w   loc_1249AC
		movem.l a0,-(sp)
		jsr     j_GetStatusFromForceID
		andi.w  #4,d1
		jsr     j_SetStatusFromForceID
		moveq   #$FFFFFFFF,d1
		jsr     j_SetTargetID
		lea     (word_FF0D34).l,a1
		move.w  d0,d1
		lsl.w   #3,d1
		andi.b  #$DF,(a1,d1.w)
		mulu.w  #$240,d0
		addi.w  #$2000,d0
		movea.w d0,a1
		movem.l a0-a1,-(sp)
		move.w  #$90,d0 
		moveq   #2,d1
		jsr     (sub_278).l
		movem.l (sp)+,a0-a1
		adda.w  #$120,a1
		move.w  #$90,d0 
		moveq   #2,d1
		jsr     (sub_278).l
		movem.l (sp)+,a0
		bra.s   loc_124942
loc_1249AC:     jsr     (j_SetVIntParam3).l
		moveq   #$A,d0
		jsr     (j_Sleep).l
		move.w  (sp)+,d7
		movem.l (sp)+,a0/a5
		adda.w  #$120,a0
		dbf     d7,loc_12493C
		jsr     sub_8028
loc_1249CE:     move.w  #$FFFF,(a5)
		rts

; =============== S U B R O U T I N E =======================================

sub_1249D4:
		move.w  (a6)+,d0
		jmp     (j_Sleep).l

	; End of function sub_1249D4


; =============== S U B R O U T I N E =======================================

sub_1249DC:
		move.w  ((BATTLE_MEMBER_INDEX-$1000000)).w,d0
		move.w  (a6)+,d1
		move.w  d1,-(sp)
		jsr     j_IncreaseHPFromForceID
		move.w  (a6)+,d1
		jsr     j_IncreaseMPFromForceID
		move.w  (a6)+,d1
		jsr     j_SetStatusFromForceID
		jsr     j_LoadBattleStats
		bsr.w   sub_1256A2
		move.w  (sp)+,d7
		move.w  (a6)+,d1
		addq.w  #1,d1
		add.w   d1,d1
		move.w  off_124A14(pc,d1.w),d1
		jmp     off_124A14(pc,d1.w)

	; End of function sub_1249DC

off_124A14:     dc.w locret_124B20-off_124A14
		dc.w sub_124A1A-off_124A14
		dc.w sub_124B4C-off_124A14

; =============== S U B R O U T I N E =======================================

sub_124A1A:
		cmpi.w  #$FC19,d7
		beq.w   loc_124B22
		trap    #SOUND_COMMAND
		dc.w SFX_HIT
		move.b  (FADING_COUNTER_MAX).l,d0
		move.w  d0,-(sp)
		move.b  #1,(FADING_COUNTER_MAX).l
		move.b  #7,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  #4,(FADING_PALETTE_FLAGS).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		move.w  (dword_FF0100).l,((word_FFB7C4-$1000000)).w
		move.w  (word_FF0500).l,((word_FFB7C6-$1000000)).w
		move.w  (word_FF0500+2).l,((word_FFB7C8-$1000000)).w
		moveq   #$C,d0
loc_124A70:
		move.w  d0,-(sp)
		moveq   #5,d6
		jsr     (j_UpdateRandomSeed).l
		subq.w  #2,d7
		asl.w   #2,d7
		move.w  d7,d6
		move.b  d7,d1
		lsl.w   #8,d1
		bsr.w   sub_1256C8
		jsr     (j_StoreVDPCommands).l
		moveq   #5,d6
		jsr     (j_UpdateRandomSeed).l
		subq.w  #2,d7
		asl.w   #2,d7
		move.w  d7,d6
		move.b  d7,d1
		bsr.w   sub_1256E6
		jsr     (j_StoreVDPCommandsbis).l
		jsr     (j_SetVIntParam3AndWait).l
		moveq   #$F,d0
		movem.w d0-d1,-(sp)
		bsr.w   sub_125352
		movem.w (sp)+,d0-d1
		bsr.w   sub_1253CC
		move.w  (sp)+,d0
		dbf     d0,loc_124A70
		clr.w   d6
		bsr.w   sub_1256C8
		jsr     (j_StoreVDPCommands).l
		bsr.w   sub_1256E6
		jsr     (j_StoreVDPCommandsbis).l
		jsr     (j_SetVIntParam3AndWait).l
		moveq   #$F,d0
		clr.w   d1
		movem.w d0-d1,-(sp)
		bsr.w   sub_125352
		movem.w (sp)+,d0-d1
		bsr.w   sub_1253CC
		move.w  (sp)+,d0
		move.b  d0,(FADING_COUNTER_MAX).l
		jsr     (j_WaitForVInt).l
		bsr.w   sub_124ECC
		move.w  ((BATTLE_MEMBER_INDEX-$1000000)).w,d0
		jsr     j_GetHPFromForceID
		tst.w   d1
		bne.s   locret_124B20
		move.w  d0,(a5)+
		move.w  #$FFFF,(a5)
		bsr.w   sub_124C58
locret_124B20:
		
		rts
loc_124B22:
		move.w  ((BATTLE_MEMBER_INDEX-$1000000)).w,d0
		move.w  d0,(a5)+
		move.w  #$FFFF,(a5)
		bsr.w   sub_124D1E
		movem.w d0-d2,-(sp)
		move.w  #$7F00,d1
		bsr.w   sub_125384
		movem.w (sp)+,d0-d2
		move.w  #$B8,d3 
		move.w  #$80,d4 
		bra.w   loc_126CF0

	; End of function sub_124A1A


; =============== S U B R O U T I N E =======================================

sub_124B4C:
		trap    #SOUND_COMMAND
		dc.w SFX_HEALING
		rts

	; End of function sub_124B4C


; =============== S U B R O U T I N E =======================================

sub_124B52:
		move.w  ((word_FFBC72-$1000000)).w,d0
		move.w  (a6)+,d1
		move.w  d1,-(sp)
		jsr     j_IncreaseHPFromForceID
		move.w  (a6)+,d1
		jsr     j_IncreaseMPFromForceID
		move.w  (a6)+,d1
		jsr     j_SetStatusFromForceID
		jsr     j_LoadBattleStats
		bsr.w   sub_1256A2
		move.w  (sp)+,d7
		move.w  (a6)+,d1
		addq.w  #1,d1
		add.w   d1,d1
		move.w  off_124B8A(pc,d1.w),d1
		jmp     off_124B8A(pc,d1.w)

	; End of function sub_124B52

off_124B8A:     dc.w locret_124C3A-off_124B8A
		dc.w sub_124B90-off_124B8A
		dc.w sub_124C52-off_124B8A

; =============== S U B R O U T I N E =======================================

sub_124B90:
		cmpi.w  #$FC19,d7
		beq.w   loc_124C3C
		trap    #SOUND_COMMAND
		dc.w SFX_HIT
		move.b  (FADING_COUNTER_MAX).l,d0
		move.w  d0,-(sp)
		move.b  #1,(FADING_COUNTER_MAX).l
		move.b  #7,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  #8,(FADING_PALETTE_FLAGS).l
		move.b  #1,(FADING_COUNTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		moveq   #$C,d0
loc_124BD6:
		move.w  d0,-(sp)
		moveq   #5,d6
		jsr     (j_UpdateRandomSeed).l
		subq.w  #2,d7
		add.w   d7,d7
		move.b  d7,d1
		lsl.w   #8,d1
		moveq   #5,d6
		jsr     (j_UpdateRandomSeed).l
		subq.w  #2,d7
		add.w   d7,d7
		move.b  d7,d1
		moveq   #$FFFFFFFF,d0
		bsr.w   sub_1255CC
		jsr     (j_WaitForVInt).l
		move.w  (sp)+,d0
		dbf     d0,loc_124BD6
		moveq   #$FFFFFFFF,d0
		clr.w   d1
		bsr.w   sub_1255CC
		move.w  (sp)+,d0
		move.b  d0,(FADING_COUNTER_MAX).l
		jsr     (j_WaitForVInt).l
		bsr.w   sub_124ECC
		move.w  ((word_FFBC72-$1000000)).w,d0
		jsr     j_GetHPFromForceID
		tst.w   d1
		bne.s   locret_124C3A
		move.w  d0,(a5)+
		move.w  #$FFFF,(a5)
		bsr.w   sub_124D46
locret_124C3A:
		
		rts
loc_124C3C:
		move.w  ((word_FFBC72-$1000000)).w,d0
		move.w  d0,(a5)+
		move.w  #$FFFF,(a5)
		bsr.w   sub_124DB4
		moveq   #$48,d3 
		moveq   #$70,d4 
		bra.w   loc_126CF0

	; End of function sub_124B90


; =============== S U B R O U T I N E =======================================

sub_124C52:
		trap    #SOUND_COMMAND
		dc.w SFX_HEALING
		rts

	; End of function sub_124C52


; =============== S U B R O U T I N E =======================================

sub_124C58:
		clr.w   d0
		clr.w   d1
		bsr.w   sub_1253CC
		lea     (FF3000_LOADING_SPACE).l,a0
		move.l  #$F0F0F0F,d0
		bsr.w   sub_124CA2
		lea     (byte_FF3004).l,a0
		move.l  #$F0F0F0F0,d0
		bsr.w   sub_124CA2
		lea     (FF3000_LOADING_SPACE).l,a0
		move.l  #$F0F0F0F0,d0
		bsr.w   sub_124CA2
		lea     (byte_FF3004).l,a0
		move.l  #$F0F0F0F,d0
		bsr.w   sub_124CA2
		rts

	; End of function sub_124C58


; =============== S U B R O U T I N E =======================================

sub_124CA2:
		move.w  #$23F,d7
loc_124CA6:
		and.l   d0,(a0)
		addq.l  #8,a0
		dbf     d7,loc_124CA6
		adda.w  #$E00,a0
		move.b  ((word_FFB544-$1000000)).w,d7
		andi.w  #7,d7
		ror.w   #5,d7
		adda.w  d7,a0
		move.w  #$FF,d7
loc_124CC2:
		and.l   d0,(a0)
		addq.l  #8,a0
		dbf     d7,loc_124CC2
loc_124CCA:
		lea     (FF3000_LOADING_SPACE).l,a0
		bsr.w   loc_125462
		cmpi.w  #$FFFF,((word_FFBC76-$1000000)).w
		beq.s   loc_124D08
		lea     (MAP_SPRITE_POSITION).l,a0
		move.b  ((word_FFB544-$1000000)).w,d7
		andi.w  #7,d7
		ror.w   #5,d7
		adda.w  d7,a0
		lea     ($A400).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		jsr     (sub_278).l
		jsr     (j_SetVIntParam3).l
loc_124D08:
		jsr     (j_WaitForVInt).l
		clr.w   d0
		clr.w   d1
		bsr.w   loc_1253E2
		jsr     (j_WaitForVInt).l
		rts

	; End of function sub_124CA2


; =============== S U B R O U T I N E =======================================

sub_124D1E:
		clr.w   d0
		clr.w   d1
		bsr.w   sub_1253CC
		lea     (FF3000_LOADING_SPACE).l,a0
		move.w  #$47F,d7
loc_124D30:
		clr.l   (a0)+
		dbf     d7,loc_124D30
		adda.w  #$E00,a0
		move.w  #$1FF,d7
loc_124D3E:
		clr.l   (a0)+
		dbf     d7,loc_124D3E
		bra.s   loc_124CCA

	; End of function sub_124D1E


; =============== S U B R O U T I N E =======================================

sub_124D46:
		clr.w   d0
		clr.w   d1
		bsr.w   sub_1255CC
		lea     (FF3000_LOADING_SPACE).l,a0
		move.l  #$F0F0F0F,d0
		bsr.w   sub_124D90
		lea     (byte_FF3004).l,a0
		move.l  #$F0F0F0F0,d0
		bsr.w   sub_124D90
		lea     (FF3000_LOADING_SPACE).l,a0
		move.l  #$F0F0F0F0,d0
		bsr.w   sub_124D90
		lea     (byte_FF3004).l,a0
		move.l  #$F0F0F0F,d0
		bsr.w   sub_124D90
		rts

	; End of function sub_124D46


; =============== S U B R O U T I N E =======================================

sub_124D90:
		move.w  #$2FF,d7
loc_124D94:
		and.l   d0,(a0)
		addq.l  #8,a0
		dbf     d7,loc_124D94
loc_124D9C:
		lea     (FF3000_LOADING_SPACE).l,a0
		bsr.w   loc_12562E
		clr.w   d1
		bsr.w   sub_125FB4
		jsr     (j_WaitForVInt).l
		rts

	; End of function sub_124D90


; =============== S U B R O U T I N E =======================================

sub_124DB4:
		clr.w   d0
		clr.w   d1
		bsr.w   sub_1255CC
		lea     (FF3000_LOADING_SPACE).l,a0
		move.w  #$5FF,d7
loc_124DC6:
		clr.l   (a0)+
		dbf     d7,loc_124DC6
		bra.s   loc_124D9C

	; End of function sub_124DB4


; =============== S U B R O U T I N E =======================================

sub_124DCE:
		move.w  (a6)+,d1
		move.w  ((BATTLE_MEMBER_INDEX-$1000000)).w,d0
		jsr     j_IncreaseEXPFromForceID
		jsr     j_GetEXPFromForceID
		cmpi.w  #$64,d1 
		blt.s   locret_124DEC
		jsr     j_LevelUp
locret_124DEC:
		
		rts

	; End of function sub_124DCE


; =============== S U B R O U T I N E =======================================

sub_124DEE:
		bsr.w   sub_124754
		move.b  #$FF,((byte_FFB5BD-$1000000)).w
		rts

	; End of function sub_124DEE


; =============== S U B R O U T I N E =======================================

sub_124DFA:
		tst.b   ((byte_FFB5BC-$1000000)).w
		bne.s   sub_124DFA
		rts

	; End of function sub_124DFA


; =============== S U B R O U T I N E =======================================

sub_124E02:
		move.w  (a6)+,d0
		move.w  (a6)+,((TEXT_NAME_INDEX-$1000000)).w
		move.w  (a6)+,((word_FFF846-$1000000)).w
		move.l  (a6)+,((TEXT_NUMBER-$1000000)).w
		move.w  d0,-(sp)
		clr.w   ((word_FFC0BE-$1000000)).w
		jsr     (sub_304).l
		move.w  (sp)+,d0
		jsr     (j_LoadText).l
		jsr     sub_124EA0(pc)
		nop
		cmpi.w  #$12,(a6)
		beq.s   locret_124E42
		cmpi.w  #$F,(a6)
		beq.s   locret_124E42
		cmpi.w  #$B,(a6)
		beq.s   locret_124E42
		jsr     (sub_30C).l
locret_124E42:
		
		rts

	; End of function sub_124E02


; =============== S U B R O U T I N E =======================================

sub_124E44:
		move.w  (a6)+,d0
		move.w  (a6)+,((TEXT_NAME_INDEX-$1000000)).w
		move.w  (a6)+,((word_FFF846-$1000000)).w
		move.l  (a6)+,((TEXT_NUMBER-$1000000)).w
		tst.b   ((byte_FF9C06-$1000000)).w
		bne.s   loc_124E8C
		move.w  d0,-(sp)
		clr.w   ((word_FFC0BE-$1000000)).w
		jsr     (sub_304).l
		move.w  (sp)+,d0
		jsr     (j_LoadText).l
		jsr     sub_124EA0(pc)
		nop
		cmpi.w  #$12,(a6)
		beq.s   loc_124E8A
		cmpi.w  #$F,(a6)
		beq.s   loc_124E8A
		cmpi.w  #$B,(a6)
		beq.s   loc_124E8A
		jsr     (sub_30C).l
loc_124E8A:
		bra.s   locret_124E9E
loc_124E8C:
		clr.w   d0
		move.b  ((byte_FF9C05-$1000000)).w,d0
		moveq   #8,d1
		sub.w   d0,d1
		clr.w   d0
		bset    d1,d0
		bsr.w   sub_124EB8
locret_124E9E:
		
		rts

	; End of function sub_124E44


; =============== S U B R O U T I N E =======================================

sub_124EA0:
		clr.w   d0
		move.b  ((byte_FF9C05-$1000000)).w,d0
		bne.s   loc_124EB0
		move.w  #$1EA,d0        ; "[Dict][Line]"
		trap    #DISPLAY_MESSAGE
		bra.s   locret_124ECA
loc_124EB0:
		moveq   #8,d1
		sub.w   d0,d1
		clr.w   d0
		bset    d1,d0

	; End of function sub_124EA0


; =============== S U B R O U T I N E =======================================

sub_124EB8:
		tst.b   (P1_INPUT).l    
		bne.s   locret_124ECA
		jsr     (j_WaitForVInt).l
		dbf     d0,sub_124EB8
locret_124ECA:
		
		rts

	; End of function sub_124EB8


; =============== S U B R O U T I N E =======================================

sub_124ECC:
		tst.b   ((byte_FFB5BC-$1000000)).w
		beq.w   loc_124F1A
		clr.w   d0
		move.b  ((byte_FFB5BF-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_124EE8(pc,d0.w),d0
		jsr     off_124EE8(pc,d0.w)
		bra.w   loc_124F32

	; End of function sub_124ECC

off_124EE8:     dc.w sub_12693A-off_124EE8
		dc.w sub_1268FC-off_124EE8
		dc.w sub_1268FC-off_124EE8
		dc.w loc_124F1A-off_124EE8
		dc.w loc_124F1A-off_124EE8
		dc.w sub_1268FC-off_124EE8
		dc.w loc_124F1A-off_124EE8
		dc.w sub_1267C6-off_124EE8
		dc.w loc_124F1A-off_124EE8
		dc.w sub_1267C6-off_124EE8
		dc.w sub_12693A-off_124EE8
		dc.w sub_1267C6-off_124EE8
		dc.w loc_124F1A-off_124EE8
		dc.w loc_124F1A-off_124EE8
		dc.w loc_124F1A-off_124EE8
		dc.w loc_124F1A-off_124EE8
		dc.w loc_124F1A-off_124EE8
		dc.w sub_1267C6-off_124EE8
		dc.w sub_1267C6-off_124EE8
		dc.w sub_1267C6-off_124EE8
		dc.w loc_124F1A-off_124EE8
		dc.w sub_1267C6-off_124EE8
		dc.w loc_124F1A-off_124EE8
		dc.w loc_124F1A-off_124EE8
		dc.w loc_124F1A-off_124EE8

; START OF FUNCTION CHUNK FOR sub_124ECC

loc_124F1A:
		bsr.w   sub_1267E8
		lea     (PALETTE_1_BIS).l,a0
		lea     (PALETTE_1).l,a1
		moveq   #$1F,d0
loc_124F2C:
		move.l  (a0)+,(a1)+
		dbf     d0,loc_124F2C
loc_124F32:
		jmp     (j_StoreVDPCommandster).l

; END OF FUNCTION CHUNK FOR sub_124ECC


; =============== S U B R O U T I N E =======================================

sub_124F38:
		move.w  (a6)+,d0
		move.w  d0,((word_FFBC72-$1000000)).w
		jsr     sub_20310
		move.w  d1,((word_FFBC6A-$1000000)).w
		move.w  d2,((word_FFBC6C-$1000000)).w
		move.w  d3,((word_FFBC82-$1000000)).w
		clr.w   d0
		bsr.w   sub_12561E
		move.w  ((word_FFBC72-$1000000)).w,d0
		bpl.s   loc_124F60
		move.w  ((BATTLE_MEMBER_INDEX-$1000000)).w,d0
loc_124F60:
		jsr     sub_20330
		bsr.w   sub_1263E8
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (byte_FF6000).l,a1
		move.w  #$BFF,d7
		bset    #7,(VINT_PARAMS).l
loc_124F82:
		move.l  (a0)+,(a1)+
		dbf     d7,loc_124F82
		lea     unk_125B48(pc), a0
		nop
		jsr     (j_DecompressGraphics).l
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (byte_FF4800).l,a1
		bset    #7,(VINT_PARAMS).l
		move.w  #$5FF,d7
loc_124FAC:
		move.l  (a0)+,(a1)+
		dbf     d7,loc_124FAC
		lea     unk_125A0A(pc), a0
		nop
		jsr     (j_DecompressGraphics).l
		moveq   #1,d0
		bsr.w   sub_12566E
		lea     (byte_FFD980).l,a0
		move.l  a0,-(sp)
		move.w  #$400,d7
loc_124FD0:
		clr.l   (a0)+
		dbf     d7,loc_124FD0
		movea.l (sp)+,a0
		lea     ($E980).l,a1
		move.w  #$180,d0
		move.w  #2,d1
		jsr     (sub_278).w
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (unk_2000).w,a1
		moveq   #7,d7
		move.w  #$FFE0,d6
loc_124FFA:
		movem.l d7-a1,-(sp)
		move.w  #$300,d0
		move.w  #2,d1
		jsr     (sub_278).w
		lea     (byte_FFD1C0).l,a0
		move.l  a0,-(sp)
		moveq   #7,d0
		sub.w   d7,d0
		lsl.w   #3,d0
		adda.w  d0,a0
		moveq   #$B,d0
loc_12501C:
		ori.l   #$40004000,(a0)+
		ori.l   #$40004000,(a0)+
		adda.w  #$38,a0 
		dbf     d0,loc_12501C
		movea.l (sp)+,a0
		lea     ($E1C0).l,a1
		move.w  #$180,d0
		move.w  #2,d1
		jsr     (sub_278).l
		bsr.w   sub_12518C
		jsr     (j_StoreVDPCommands).l
		jsr     (j_SetVIntParam3AndWait).w
		subi.w  #$20,d6 
		movem.l (sp)+,d7-a1
		adda.w  #$600,a0
		adda.w  #$600,a1
		dbf     d7,loc_124FFA
		lea     ((byte_FFC0C0-$1000000)).w,a0
		lea     (PALETTE_1_BIS).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  ((word_FFBC6A-$1000000)).w,d0
		move.w  ((word_FFBC6C-$1000000)).w,d1
		bsr.w   sub_126284
		bsr.w   sub_1244CA
		bsr.w   sub_124ECC
		moveq   #7,d7
		move.w  #$FFE0,d6
loc_12509C:
		movem.l d7-a1,-(sp)
		bsr.w   sub_12518C
		jsr     (j_StoreVDPCommands).l
		jsr     (j_SetVIntParam3AndWait).w
		subi.w  #$20,d6 
		movem.l (sp)+,d7-a1
		adda.w  #$600,a0
		adda.w  #$600,a1
		dbf     d7,loc_12509C
		lea     (byte_FF6000).l,a0
		lea     (unk_2000).w,a1
		moveq   #7,d7
		move.w  #$FFE0,d6
loc_1250D2:
		movem.l d7-a1,-(sp)
		move.w  #$300,d0
		move.w  #2,d1
		jsr     (sub_278).l
		lea     (byte_FFD1C0).l,a0
		move.l  a0,-(sp)
		moveq   #7,d0
		sub.w   d7,d0
		lsl.w   #3,d0
		adda.w  d0,a0
		moveq   #$B,d0
loc_1250F6:
		andi.l  #$BFFFBFFF,(a0)+
		andi.l  #$BFFFBFFF,(a0)+
		adda.w  #$38,a0 
		dbf     d0,loc_1250F6
		movea.l (sp)+,a0
		lea     ($E1C0).l,a1
		move.w  #$180,d0
		move.w  #2,d1
		jsr     (sub_278).w
		bsr.w   sub_12518C
		jsr     (j_StoreVDPCommands).l
		jsr     (j_SetVIntParam3AndWait).l
		subi.w  #$20,d6 
		movem.l (sp)+,d7-a1
		adda.w  #$600,a0
		adda.w  #$600,a1
		dbf     d7,loc_1250D2
		clr.w   d1
		bsr.w   sub_125FB4
		clr.w   d6
		jsr     (j_ClearHScrollStuff).l
		jsr     (j_ClearOtherHScrollStuff).l
		jsr     (j_SetVIntParam3).l
		bsr.w   sub_1256A2
		jsr     (j_WaitForVInt).l
		moveq   #1,d0
		clr.w   d1
		bsr.w   sub_1255CC
		bset    #3,((byte_FFB4D2-$1000000)).w
		cmpi.w  #$FFFF,((BATTLE_MEMBER_INDEX-$1000000)).w
		beq.s   locret_12518A
		move.w  ((word_FFBC76-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
		beq.s   locret_12518A
		bsr.w   sub_12634C
locret_12518A:
		
		rts

	; End of function sub_124F38


; =============== S U B R O U T I N E =======================================

sub_12518C:
		lea     (word_FF01E0).l,a1
		move.w  #$A7,d7 
loc_125196:
		move.w  d6,(a1)
		addq.l  #4,a1
		dbf     d7,loc_125196
		rts

	; End of function sub_12518C


; =============== S U B R O U T I N E =======================================

sub_1251A0:
		lea     (word_FF01E0).l,a1
		move.w  #$5F,d7 
loc_1251AA:
		move.w  d6,(a1)
		addq.l  #4,a1
		dbf     d7,loc_1251AA
		rts

	; End of function sub_1251A0


; =============== S U B R O U T I N E =======================================

sub_1251B4:
		bclr    #1,((byte_FFB4D2-$1000000)).w
		clr.w   d0
		bsr.w   sub_12566E
		jsr     (j_WaitForVInt).l
		move.w  #$1000,d1
		moveq   #6,d7
loc_1251CC:
		movem.w d1/d7,-(sp)
		moveq   #$F,d0
		bsr.w   sub_125352
		bsr.w   sub_1253CC
		jsr     (j_WaitForVInt).l
		movem.w (sp)+,d1/d7
		addi.w  #$1000,d1
		dbf     d7,loc_1251CC
		move.w  #$7F00,d1
		bsr.w   sub_125352
		move.w  #$7F00,d1
		bsr.w   sub_125384
		move.w  (a6)+,d0
		move.w  d0,((BATTLE_MEMBER_INDEX-$1000000)).w
		jsr     sub_20310
		move.w  d1,((word_FFBC6E-$1000000)).w
		move.w  d2,((word_FFBC70-$1000000)).w
		move.w  d3,((word_FFBC86-$1000000)).w
		move.w  #$100,d1
		jsr     j_GetEquippedItemFromForceID
		move.w  d2,d1
		cmpi.w  #$FFFF,d1
		beq.s   loc_12522E
		jsr     sub_20274
		bra.s   loc_125232
loc_12522E:
		moveq   #$FFFFFFFF,d2
		moveq   #$FFFFFFFF,d3
loc_125232:
		move.w  d2,((word_FFBC76-$1000000)).w
		move.w  d3,((word_FFBC78-$1000000)).w
		move.w  ((word_FFBC76-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
		beq.s   loc_125264
		bsr.w   sub_12634C
		move.w  ((word_FFBC86-$1000000)).w,d0
		movea.l (p_pt_AllyAnimations).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		addq.l  #4,a0
		move.w  (a0)+,((word_FFB544-$1000000)).w
		move.w  (a0)+,((word_FFB546-$1000000)).w
		bra.s   loc_125270
loc_125264:
		move.w  #$400,((word_FFB544-$1000000)).w
		move.w  #$7F7F,((word_FFB546-$1000000)).w
loc_125270:
		move.w  ((word_FFB544-$1000000)).w,((byte_FFB540-$1000000)).w
		move.w  ((word_FFB546-$1000000)).w,((byte_FFB542-$1000000)).w
		move.w  ((word_FFBC78-$1000000)).w,d0
		bsr.w   sub_12630C
		move.b  ((byte_FFB540-$1000000)).w,d0
		lea     (MAP_SPRITE_POSITION).l,a0
		andi.w  #$F,d0
		ror.w   #5,d0
		adda.w  d0,a0
		lea     ($A400).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		jsr     (sub_278).l
		jsr     (j_SetVIntParam3).l
		move.w  ((word_FFBC6E-$1000000)).w,d0
		move.w  ((word_FFBC70-$1000000)).w,d1
		bsr.w   sub_1262CE
		bsr.w   sub_124516
		move.w  ((BATTLE_MEMBER_INDEX-$1000000)).w,d0
		bpl.s   loc_1252CA
		clr.w   d0
		bra.s   loc_1252D2
loc_1252CA:
		jsr     sub_2032C
		move.w  d1,d0
loc_1252D2:
		jsr     sub_126380
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($AC00).l,a1
		move.w  #$300,d0
		move.w  #2,d1
		jsr     (sub_278).l
		jsr     (j_SetVIntParam3AndWait).l
		bsr.w   sub_124ECC
		clr.w   d0
		move.w  #$7F00,d1
		bsr.w   sub_1253CC
		moveq   #1,d0
		move.w  #$7F00,d1
		bsr.w   sub_1253CC
		move.w  #$6000,d1
		moveq   #6,d7
loc_125316:
		movem.w d1/d7,-(sp)
		moveq   #$F,d0
		bsr.w   sub_125352
		bsr.w   sub_1253CC
		jsr     (j_WaitForVInt).l
		movem.w (sp)+,d1/d7
		subi.w  #$1000,d1
		dbf     d7,loc_125316
		bsr.w   sub_1256A2
		bset    #1,((byte_FFB4D2-$1000000)).w
		clr.w   d0
		move.b  ((byte_FF9C05-$1000000)).w,d0
		moveq   #8,d1
		sub.w   d0,d1
		clr.w   d0
		bset    d1,d0
		bra.w   sub_124EB8

	; End of function sub_1251B4


; =============== S U B R O U T I N E =======================================

sub_125352:
		movem.w d0-d1,-(sp)
		lea     unk_1255B4(pc), a0
		lea     (word_FF0D20).l,a1
		move.w  d1,d0
		asr.w   #8,d0
		ext.w   d1
		moveq   #2,d7
loc_125368:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_125368
		move.l  #$1010101,((byte_FFB4EE-$1000000)).w
		movem.w (sp)+,d0-d1
		rts

	; End of function sub_125352


; =============== S U B R O U T I N E =======================================

sub_125384:
		move.w  d1,d0
		asr.w   #8,d0
		ext.w   d1

	; End of function sub_125384


; =============== S U B R O U T I N E =======================================

sub_12538A:
		cmpi.b  #2,d2
		bne.s   loc_125398
		move.l  #$2020202,d2
		bra.s   loc_12539E
loc_125398:
		move.l  #$1010101,d2
loc_12539E:
		lea     unk_125534(pc), a0
		clr.w   d7
		move.b  ((byte_FFB540-$1000000)).w,d7
		andi.w  #$30,d7 
		add.w   d7,d7
		adda.w  d7,a0
		lea     (word_FF0D00).l,a1
		moveq   #3,d7
loc_1253B8:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_1253B8
		move.l  d2,((dword_FFB4EA-$1000000)).w
		rts

	; End of function sub_12538A


; =============== S U B R O U T I N E =======================================

sub_1253CC:
		movem.w d0-d1,-(sp)
		andi.w  #$F,d0
		cmpi.w  #$F,d0
		beq.s   loc_1253DE
		bsr.w   sub_125452
loc_1253DE:
		movem.w (sp)+,d0-d1
loc_1253E2:
		lea     unk_1254A4(pc), a0
		lsr.w   #4,d0
		mulu.w  #$48,d0 
		adda.w  d0,a0
		lea     (word_FF0CB8).l,a1
		move.w  d1,d0
		asr.w   #8,d0
		ext.w   d1
		movem.w d0-d1,-(sp)
		moveq   #8,d7
loc_125400:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.w  (a0)+,(a1)+
		move.w  (a0)+,d2
		btst    #0,((byte_FFB4D2-$1000000)).w
		bne.s   loc_125414
		addi.w  #$90,d2 
loc_125414:
		move.w  d2,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_125400
		lea     ((byte_FFB4E1-$1000000)).w,a0
		move.l  #$1010101,d0
		move.b  d0,(a0)+
		move.l  d0,(a0)+
		move.l  d0,(a0)+
		movem.w (sp)+,d0-d1
		move.b  ((byte_FFB542-$1000000)).w,d2
		ext.w   d2
		add.w   d2,d0
		move.b  ((byte_FFB543-$1000000)).w,d2
		ext.w   d2
		add.w   d2,d1
		move.b  ((byte_FFB541-$1000000)).w,d2
		bsr.w   sub_12538A
		jsr     (sub_320).l
		rts

	; End of function sub_1253CC


; =============== S U B R O U T I N E =======================================

sub_125452:
		bclr    #1,((byte_FFB4D2-$1000000)).w
		move.w  d0,d1
		move.w  ((word_FFBC6E-$1000000)).w,d0
		bsr.w   sub_126326
loc_125462:
		btst    #0,((byte_FFB4D2-$1000000)).w
		bne.s   loc_125472
		lea     (sub_8000).l,a1
		bra.s   loc_125478
loc_125472:
		lea     ($9200).l,a1
loc_125478:
		eori.b  #1,((byte_FFB4D2-$1000000)).w
		move.w  #$900,d0
		move.w  #2,d1
		bsr.w   sub_125496
		jsr     (sub_278).l
		jmp     (j_SetVIntParam3AndWait).l

	; End of function sub_125452


; =============== S U B R O U T I N E =======================================

sub_125496:
		tst.b   ((byte_FFB4D1-$1000000)).w
		beq.s   locret_1254A2
		jsr     (j_WaitForVInt).l
locret_1254A2:
		
		rts

	; End of function sub_125496

unk_1254A4:     dc.b   0
		dc.b $C0 
		dc.b  $F
		dc.b   0
		dc.b $C4 
		dc.b   0
		dc.b   1
		dc.b   8
		dc.b   0
		dc.b $E0 
		dc.b  $F
		dc.b   0
		dc.b $C4 
		dc.b $10
		dc.b   1
		dc.b   8
		dc.b   1
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $C4 
		dc.b $20
		dc.b   1
		dc.b   8
		dc.b   0
		dc.b $C0 
		dc.b  $F
		dc.b   0
		dc.b $C4 
		dc.b $30 
		dc.b   1
		dc.b $28 
		dc.b   0
		dc.b $E0 
		dc.b  $F
		dc.b   0
		dc.b $C4 
		dc.b $40 
		dc.b   1
		dc.b $28 
		dc.b   1
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $C4 
		dc.b $50 
		dc.b   1
		dc.b $28 
		dc.b   0
		dc.b $C0 
		dc.b  $F
		dc.b   0
		dc.b $C4 
		dc.b $60 
		dc.b   1
		dc.b $48 
		dc.b   0
		dc.b $E0 
		dc.b  $F
		dc.b   0
		dc.b $C4 
		dc.b $70 
		dc.b   1
		dc.b $48 
		dc.b   1
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $C4 
		dc.b $80 
		dc.b   1
		dc.b $48 
		dc.b   0
		dc.b $C0 
		dc.b  $F
		dc.b   0
		dc.b $CC 
		dc.b   0
		dc.b   1
		dc.b $48 
		dc.b   0
		dc.b $E0 
		dc.b  $F
		dc.b   0
		dc.b $CC 
		dc.b $10
		dc.b   1
		dc.b $48 
		dc.b   1
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $CC 
		dc.b $20
		dc.b   1
		dc.b $48 
		dc.b   0
		dc.b $C0 
		dc.b  $F
		dc.b   0
		dc.b $CC 
		dc.b $30 
		dc.b   1
		dc.b $28 
		dc.b   0
		dc.b $E0 
		dc.b  $F
		dc.b   0
		dc.b $CC 
		dc.b $40 
		dc.b   1
		dc.b $28 
		dc.b   1
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $CC 
		dc.b $50 
		dc.b   1
		dc.b $28 
		dc.b   0
		dc.b $C0 
		dc.b  $F
		dc.b   0
		dc.b $CC 
		dc.b $60 
		dc.b   1
		dc.b   8
		dc.b   0
		dc.b $E0 
		dc.b  $F
		dc.b   0
		dc.b $CC 
		dc.b $70 
		dc.b   1
		dc.b   8
		dc.b   1
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $CC 
		dc.b $80 
		dc.b   1
		dc.b   8
unk_125534:     dc.b   0
		dc.b $C0 
		dc.b  $F
		dc.b   0
		dc.b $A5 
		dc.b $20
		dc.b   1
		dc.b   8
		dc.b   0
		dc.b $E0 
		dc.b  $F
		dc.b   0
		dc.b $A5 
		dc.b $30 
		dc.b   1
		dc.b   8
		dc.b   0
		dc.b $C0 
		dc.b  $F
		dc.b   0
		dc.b $A5 
		dc.b $40 
		dc.b   1
		dc.b $28 
		dc.b   0
		dc.b $E0 
		dc.b  $F
		dc.b   0
		dc.b $A5 
		dc.b $50 
		dc.b   1
		dc.b $28 
		dc.b   0
		dc.b $C0 
		dc.b  $F
		dc.b   0
		dc.b $AD 
		dc.b $20
		dc.b   1
		dc.b $28 
		dc.b   0
		dc.b $E0 
		dc.b  $F
		dc.b   0
		dc.b $AD 
		dc.b $30 
		dc.b   1
		dc.b $28 
		dc.b   0
		dc.b $C0 
		dc.b  $F
		dc.b   0
		dc.b $AD 
		dc.b $40 
		dc.b   1
		dc.b   8
		dc.b   0
		dc.b $E0 
		dc.b  $F
		dc.b   0
		dc.b $AD 
		dc.b $50 
		dc.b   1
		dc.b   8
		dc.b   0
		dc.b $E0 
		dc.b  $F
		dc.b   0
		dc.b $B5 
		dc.b $20
		dc.b   1
		dc.b   8
		dc.b   0
		dc.b $C0 
		dc.b  $F
		dc.b   0
		dc.b $B5 
		dc.b $30 
		dc.b   1
		dc.b   8
		dc.b   0
		dc.b $E0 
		dc.b  $F
		dc.b   0
		dc.b $B5 
		dc.b $40 
		dc.b   1
		dc.b $28 
		dc.b   0
		dc.b $C0 
		dc.b  $F
		dc.b   0
		dc.b $B5 
		dc.b $50 
		dc.b   1
		dc.b $28 
		dc.b   0
		dc.b $E0 
		dc.b  $F
		dc.b   0
		dc.b $BD 
		dc.b $20
		dc.b   1
		dc.b $28 
		dc.b   0
		dc.b $C0 
		dc.b  $F
		dc.b   0
		dc.b $BD 
		dc.b $30 
		dc.b   1
		dc.b $28 
		dc.b   0
		dc.b $E0 
		dc.b  $F
		dc.b   0
		dc.b $BD 
		dc.b $40 
		dc.b   1
		dc.b   8
		dc.b   0
		dc.b $C0 
		dc.b  $F
		dc.b   0
		dc.b $BD 
		dc.b $50 
		dc.b   1
		dc.b   8
unk_1255B4:     dc.b   1
		dc.b  $C
		dc.b  $F
		dc.b   0
		dc.b $25 
		dc.b $60 
		dc.b   1
		dc.b   0
		dc.b   1
		dc.b  $C
		dc.b  $F
		dc.b   0
		dc.b $25 
		dc.b $70 
		dc.b   1
		dc.b $20
		dc.b   1
		dc.b  $C
		dc.b  $F
		dc.b   0
		dc.b $25 
		dc.b $80 
		dc.b   1
		dc.b $40 

; =============== S U B R O U T I N E =======================================

sub_1255CC:
		movem.w d0-d1,-(sp)
		andi.w  #$F,d0
		cmpi.w  #$F,d0
		beq.s   loc_1255E4
		bsr.w   sub_12561E
		clr.w   d1
		bsr.w   sub_125FB4
loc_1255E4:
		movem.w (sp)+,d0-d1
		movem.w d0-d1,-(sp)
		move.w  ((word_FFBC72-$1000000)).w,d0
		jsr     sub_20300
		cmpi.w  #$27,d1 
		movem.w (sp)+,d0-d1
		bne.s   loc_125602
		clr.w   d1
loc_125602:
		move.w  d1,d6
		asr.w   #8,d6
		jsr     (j_ClearOtherHScrollStuff).w
		move.b  d1,d6
		ext.w   d6
		neg.w   d6
		addi.w  #$100,d6
		jsr     (j_ClearOtherVScrollStuff).w
		jsr     (j_SetVIntParam3).w
		rts

	; End of function sub_1255CC


; =============== S U B R O U T I N E =======================================

sub_12561E:
		bclr    #3,((byte_FFB4D2-$1000000)).w
		move.w  d0,d1
		move.w  ((word_FFBC6A-$1000000)).w,d0
		bsr.w   sub_1262A8
loc_12562E:
		btst    #2,((byte_FFB4D2-$1000000)).w
		beq.s   loc_12563C
		lea     (loc_5000).w,a1
		bra.s   loc_125640
loc_12563C:
		lea     ($6800).w,a1
loc_125640:
		move.w  #$600,d0
		move.w  #2,d1
		bsr.w   sub_125496
		jsr     (sub_278).l
		jsr     (j_SetVIntParam3AndWait).l
		move.w  #$600,d0
		move.w  #2,d1
		jsr     (sub_278).l
		jsr     (j_SetVIntParam3AndWait).l
		rts

	; End of function sub_12561E


; =============== S U B R O U T I N E =======================================

sub_12566E:
		lea     (byte_FFD040).l,a0
		lea     ($E040).l,a1
		tst.w   d0
		beq.s   loc_125686
		adda.w  #$4C0,a0
		adda.w  #$4C0,a1
loc_125686:
		move.l  a0,-(sp)
		move.w  #$4F,d7 
loc_12568C:
		clr.l   (a0)+
		dbf     d7,loc_12568C
		movea.l (sp)+,a0
		move.w  #$A0,d0 
		move.w  #2,d1
		jmp     (sub_278).l

	; End of function sub_12566E


; =============== S U B R O U T I N E =======================================

sub_1256A2:
		move.w  ((BATTLE_MEMBER_INDEX-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
		beq.s   loc_1256B2
		jsr     sub_8014
loc_1256B2:
		move.w  ((word_FFBC72-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
		beq.s   loc_1256C2
		jsr     sub_8018
loc_1256C2:
		bsr.w   sub_126100
		rts

	; End of function sub_1256A2


; =============== S U B R O U T I N E =======================================

sub_1256C8:
		move.w  d7,-(sp)
		move.l  a0,-(sp)
		move.w  #$1FF,d7
		lea     (dword_FF0100).l,a0
loc_1256D6:
		move.w  ((word_FFB7C4-$1000000)).w,(a0)
		add.w   d6,(a0)+
		dbf     d7,loc_1256D6
		movea.l (sp)+,a0
		move.w  (sp)+,d7
		rts

	; End of function sub_1256C8


; =============== S U B R O U T I N E =======================================

sub_1256E6:
		move.w  d7,-(sp)
		move.l  a0,-(sp)
		move.w  #$F,d7
		lea     (word_FF0500).l,a0
loc_1256F4:
		move.w  ((word_FFB7C6-$1000000)).w,(a0)
		add.w   d6,(a0)+
		move.w  ((word_FFB7C8-$1000000)).w,(a0)
		add.w   d6,(a0)+
		dbf     d7,loc_1256F4
		movea.l (sp)+,a0
		move.w  (sp)+,d7
		rts

	; End of function sub_1256E6

unk_12570A:     dc.b   1
		dc.b   0
		dc.b   1
		dc.b   4
		dc.b   1
		dc.b   8
		dc.b   1
		dc.b  $C
		dc.b   1
		dc.b $30 
		dc.b   1
		dc.b $34 
		dc.b   1
		dc.b $38 
		dc.b   1
		dc.b $3C 
		dc.b   1
		dc.b $60 
		dc.b   1
		dc.b $64 
		dc.b   1
		dc.b $68 
		dc.b   1
		dc.b $6C 
		dc.b   1
		dc.b $90 
		dc.b   1
		dc.b $94 
		dc.b   1
		dc.b $98 
		dc.b   1
		dc.b $9C 
		dc.b   1
		dc.b $C0 
		dc.b   1
		dc.b $C4 
		dc.b   1
		dc.b $C8 
		dc.b   1
		dc.b $CC 
		dc.b   1
		dc.b $F0 
		dc.b   1
		dc.b $F4 
		dc.b   1
		dc.b $F8 
		dc.b   1
		dc.b $FC 
		dc.b   2
		dc.b $20
		dc.b   2
		dc.b $24 
		dc.b   2
		dc.b $28 
		dc.b   2
		dc.b $2C 
		dc.b   2
		dc.b $50 
		dc.b   2
		dc.b $54 
		dc.b   2
		dc.b $58 
		dc.b   2
		dc.b $5C 
		dc.b   1
		dc.b   1
		dc.b   1
		dc.b   5
		dc.b   1
		dc.b   9
		dc.b   1
		dc.b  $D
		dc.b   1
		dc.b $31 
		dc.b   1
		dc.b $35 
		dc.b   1
		dc.b $39 
		dc.b   1
		dc.b $3D 
		dc.b   1
		dc.b $61 
		dc.b   1
		dc.b $65 
		dc.b   1
		dc.b $69 
		dc.b   1
		dc.b $6D 
		dc.b   1
		dc.b $91 
		dc.b   1
		dc.b $95 
		dc.b   1
		dc.b $99 
		dc.b   1
		dc.b $9D 
		dc.b   1
		dc.b $C1 
		dc.b   1
		dc.b $C5 
		dc.b   1
		dc.b $C9 
		dc.b   1
		dc.b $CD 
		dc.b   1
		dc.b $F1 
		dc.b   1
		dc.b $F5 
		dc.b   1
		dc.b $F9 
		dc.b   1
		dc.b $FD 
		dc.b   2
		dc.b $21 
		dc.b   2
		dc.b $25 
		dc.b   2
		dc.b $29 
		dc.b   2
		dc.b $2D 
		dc.b   2
		dc.b $51 
		dc.b   2
		dc.b $55 
		dc.b   2
		dc.b $59 
		dc.b   2
		dc.b $5D 
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   6
		dc.b   1
		dc.b  $A
		dc.b   1
		dc.b  $E
		dc.b   1
		dc.b $32 
		dc.b   1
		dc.b $36 
		dc.b   1
		dc.b $3A 
		dc.b   1
		dc.b $3E 
		dc.b   1
		dc.b $62 
		dc.b   1
		dc.b $66 
		dc.b   1
		dc.b $6A 
		dc.b   1
		dc.b $6E 
		dc.b   1
		dc.b $92 
		dc.b   1
		dc.b $96 
		dc.b   1
		dc.b $9A 
		dc.b   1
		dc.b $9E 
		dc.b   1
		dc.b $C2 
		dc.b   1
		dc.b $C6 
		dc.b   1
		dc.b $CA 
		dc.b   1
		dc.b $CE 
		dc.b   1
		dc.b $F2 
		dc.b   1
		dc.b $F6 
		dc.b   1
		dc.b $FA 
		dc.b   1
		dc.b $FE 
		dc.b   2
		dc.b $22 
		dc.b   2
		dc.b $26 
		dc.b   2
		dc.b $2A 
		dc.b   2
		dc.b $2E 
		dc.b   2
		dc.b $52 
		dc.b   2
		dc.b $56 
		dc.b   2
		dc.b $5A 
		dc.b   2
		dc.b $5E 
		dc.b   1
		dc.b   3
		dc.b   1
		dc.b   7
		dc.b   1
		dc.b  $B
		dc.b   1
		dc.b  $F
		dc.b   1
		dc.b $33 
		dc.b   1
		dc.b $37 
		dc.b   1
		dc.b $3B 
		dc.b   1
		dc.b $3F 
		dc.b   1
		dc.b $63 
		dc.b   1
		dc.b $67 
		dc.b   1
		dc.b $6B 
		dc.b   1
		dc.b $6F 
		dc.b   1
		dc.b $93 
		dc.b   1
		dc.b $97 
		dc.b   1
		dc.b $9B 
		dc.b   1
		dc.b $9F 
		dc.b   1
		dc.b $C3 
		dc.b   1
		dc.b $C7 
		dc.b   1
		dc.b $CB 
		dc.b   1
		dc.b $CF 
		dc.b   1
		dc.b $F3 
		dc.b   1
		dc.b $F7 
		dc.b   1
		dc.b $FB 
		dc.b   1
		dc.b $FF
		dc.b   2
		dc.b $23 
		dc.b   2
		dc.b $27 
		dc.b   2
		dc.b $2B 
		dc.b   2
		dc.b $2F 
		dc.b   2
		dc.b $53 
		dc.b   2
		dc.b $57 
		dc.b   2
		dc.b $5B 
		dc.b   2
		dc.b $5F 
		dc.b   1
		dc.b $10
		dc.b   1
		dc.b $14
		dc.b   1
		dc.b $18
		dc.b   1
		dc.b $1C
		dc.b   1
		dc.b $40 
		dc.b   1
		dc.b $44 
		dc.b   1
		dc.b $48 
		dc.b   1
		dc.b $4C 
		dc.b   1
		dc.b $70 
		dc.b   1
		dc.b $74 
		dc.b   1
		dc.b $78 
		dc.b   1
		dc.b $7C 
		dc.b   1
		dc.b $A0 
		dc.b   1
		dc.b $A4 
		dc.b   1
		dc.b $A8 
		dc.b   1
		dc.b $AC 
		dc.b   1
		dc.b $D0 
		dc.b   1
		dc.b $D4 
		dc.b   1
		dc.b $D8 
		dc.b   1
		dc.b $DC 
		dc.b   2
		dc.b   0
		dc.b   2
		dc.b   4
		dc.b   2
		dc.b   8
		dc.b   2
		dc.b  $C
		dc.b   2
		dc.b $30 
		dc.b   2
		dc.b $34 
		dc.b   2
		dc.b $38 
		dc.b   2
		dc.b $3C 
		dc.b   2
		dc.b $60 
		dc.b   2
		dc.b $64 
		dc.b   2
		dc.b $68 
		dc.b   2
		dc.b $6C 
		dc.b   1
		dc.b $11
		dc.b   1
		dc.b $15
		dc.b   1
		dc.b $19
		dc.b   1
		dc.b $1D
		dc.b   1
		dc.b $41 
		dc.b   1
		dc.b $45 
		dc.b   1
		dc.b $49 
		dc.b   1
		dc.b $4D 
		dc.b   1
		dc.b $71 
		dc.b   1
		dc.b $75 
		dc.b   1
		dc.b $79 
		dc.b   1
		dc.b $7D 
		dc.b   1
		dc.b $A1 
		dc.b   1
		dc.b $A5 
		dc.b   1
		dc.b $A9 
		dc.b   1
		dc.b $AD 
		dc.b   1
		dc.b $D1 
		dc.b   1
		dc.b $D5 
		dc.b   1
		dc.b $D9 
		dc.b   1
		dc.b $DD 
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   5
		dc.b   2
		dc.b   9
		dc.b   2
		dc.b  $D
		dc.b   2
		dc.b $31 
		dc.b   2
		dc.b $35 
		dc.b   2
		dc.b $39 
		dc.b   2
		dc.b $3D 
		dc.b   2
		dc.b $61 
		dc.b   2
		dc.b $65 
		dc.b   2
		dc.b $69 
		dc.b   2
		dc.b $6D 
		dc.b   1
		dc.b $12
		dc.b   1
		dc.b $16
		dc.b   1
		dc.b $1A
		dc.b   1
		dc.b $1E
		dc.b   1
		dc.b $42 
		dc.b   1
		dc.b $46 
		dc.b   1
		dc.b $4A 
		dc.b   1
		dc.b $4E 
		dc.b   1
		dc.b $72 
		dc.b   1
		dc.b $76 
		dc.b   1
		dc.b $7A 
		dc.b   1
		dc.b $7E 
		dc.b   1
		dc.b $A2 
		dc.b   1
		dc.b $A6 
		dc.b   1
		dc.b $AA 
		dc.b   1
		dc.b $AE 
		dc.b   1
		dc.b $D2 
		dc.b   1
		dc.b $D6 
		dc.b   1
		dc.b $DA 
		dc.b   1
		dc.b $DE 
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   6
		dc.b   2
		dc.b  $A
		dc.b   2
		dc.b  $E
		dc.b   2
		dc.b $32 
		dc.b   2
		dc.b $36 
		dc.b   2
		dc.b $3A 
		dc.b   2
		dc.b $3E 
		dc.b   2
		dc.b $62 
		dc.b   2
		dc.b $66 
		dc.b   2
		dc.b $6A 
		dc.b   2
		dc.b $6E 
		dc.b   1
		dc.b $13
		dc.b   1
		dc.b $17
		dc.b   1
		dc.b $1B
		dc.b   1
		dc.b $1F
		dc.b   1
		dc.b $43 
		dc.b   1
		dc.b $47 
		dc.b   1
		dc.b $4B 
		dc.b   1
		dc.b $4F 
		dc.b   1
		dc.b $73 
		dc.b   1
		dc.b $77 
		dc.b   1
		dc.b $7B 
		dc.b   1
		dc.b $7F 
		dc.b   1
		dc.b $A3 
		dc.b   1
		dc.b $A7 
		dc.b   1
		dc.b $AB 
		dc.b   1
		dc.b $AF 
		dc.b   1
		dc.b $D3 
		dc.b   1
		dc.b $D7 
		dc.b   1
		dc.b $DB 
		dc.b   1
		dc.b $DF 
		dc.b   2
		dc.b   3
		dc.b   2
		dc.b   7
		dc.b   2
		dc.b  $B
		dc.b   2
		dc.b  $F
		dc.b   2
		dc.b $33 
		dc.b   2
		dc.b $37 
		dc.b   2
		dc.b $3B 
		dc.b   2
		dc.b $3F 
		dc.b   2
		dc.b $63 
		dc.b   2
		dc.b $67 
		dc.b   2
		dc.b $6B 
		dc.b   2
		dc.b $6F 
		dc.b   1
		dc.b $20
		dc.b   1
		dc.b $24 
		dc.b   1
		dc.b $28 
		dc.b   1
		dc.b $2C 
		dc.b   1
		dc.b $50 
		dc.b   1
		dc.b $54 
		dc.b   1
		dc.b $58 
		dc.b   1
		dc.b $5C 
		dc.b   1
		dc.b $80 
		dc.b   1
		dc.b $84 
		dc.b   1
		dc.b $88 
		dc.b   1
		dc.b $8C 
		dc.b   1
		dc.b $B0 
		dc.b   1
		dc.b $B4 
		dc.b   1
		dc.b $B8 
		dc.b   1
		dc.b $BC 
		dc.b   1
		dc.b $E0 
		dc.b   1
		dc.b $E4 
		dc.b   1
		dc.b $E8 
		dc.b   1
		dc.b $EC 
		dc.b   2
		dc.b $10
		dc.b   2
		dc.b $14
		dc.b   2
		dc.b $18
		dc.b   2
		dc.b $1C
		dc.b   2
		dc.b $40 
		dc.b   2
		dc.b $44 
		dc.b   2
		dc.b $48 
		dc.b   2
		dc.b $4C 
		dc.b   2
		dc.b $70 
		dc.b   2
		dc.b $74 
		dc.b   2
		dc.b $78 
		dc.b   2
		dc.b $7C 
		dc.b   1
		dc.b $21 
		dc.b   1
		dc.b $25 
		dc.b   1
		dc.b $29 
		dc.b   1
		dc.b $2D 
		dc.b   1
		dc.b $51 
		dc.b   1
		dc.b $55 
		dc.b   1
		dc.b $59 
		dc.b   1
		dc.b $5D 
		dc.b   1
		dc.b $81 
		dc.b   1
		dc.b $85 
		dc.b   1
		dc.b $89 
		dc.b   1
		dc.b $8D 
		dc.b   1
		dc.b $B1 
		dc.b   1
		dc.b $B5 
		dc.b   1
		dc.b $B9 
		dc.b   1
		dc.b $BD 
		dc.b   1
		dc.b $E1 
		dc.b   1
		dc.b $E5 
		dc.b   1
		dc.b $E9 
		dc.b   1
		dc.b $ED 
		dc.b   2
		dc.b $11
		dc.b   2
		dc.b $15
		dc.b   2
		dc.b $19
		dc.b   2
		dc.b $1D
		dc.b   2
		dc.b $41 
		dc.b   2
		dc.b $45 
		dc.b   2
		dc.b $49 
		dc.b   2
		dc.b $4D 
		dc.b   2
		dc.b $71 
		dc.b   2
		dc.b $75 
		dc.b   2
		dc.b $79 
		dc.b   2
		dc.b $7D 
		dc.b   1
		dc.b $22 
		dc.b   1
		dc.b $26 
		dc.b   1
		dc.b $2A 
		dc.b   1
		dc.b $2E 
		dc.b   1
		dc.b $52 
		dc.b   1
		dc.b $56 
		dc.b   1
		dc.b $5A 
		dc.b   1
		dc.b $5E 
		dc.b   1
		dc.b $82 
		dc.b   1
		dc.b $86 
		dc.b   1
		dc.b $8A 
		dc.b   1
		dc.b $8E 
		dc.b   1
		dc.b $B2 
		dc.b   1
		dc.b $B6 
		dc.b   1
		dc.b $BA 
		dc.b   1
		dc.b $BE 
		dc.b   1
		dc.b $E2 
		dc.b   1
		dc.b $E6 
		dc.b   1
		dc.b $EA 
		dc.b   1
		dc.b $EE 
		dc.b   2
		dc.b $12
		dc.b   2
		dc.b $16
		dc.b   2
		dc.b $1A
		dc.b   2
		dc.b $1E
		dc.b   2
		dc.b $42 
		dc.b   2
		dc.b $46 
		dc.b   2
		dc.b $4A 
		dc.b   2
		dc.b $4E 
		dc.b   2
		dc.b $72 
		dc.b   2
		dc.b $76 
		dc.b   2
		dc.b $7A 
		dc.b   2
		dc.b $7E 
		dc.b   1
		dc.b $23 
		dc.b   1
		dc.b $27 
		dc.b   1
		dc.b $2B 
		dc.b   1
		dc.b $2F 
		dc.b   1
		dc.b $53 
		dc.b   1
		dc.b $57 
		dc.b   1
		dc.b $5B 
		dc.b   1
		dc.b $5F 
		dc.b   1
		dc.b $83 
		dc.b   1
		dc.b $87 
		dc.b   1
		dc.b $8B 
		dc.b   1
		dc.b $8F 
		dc.b   1
		dc.b $B3 
		dc.b   1
		dc.b $B7 
		dc.b   1
		dc.b $BB 
		dc.b   1
		dc.b $BF 
		dc.b   1
		dc.b $E3 
		dc.b   1
		dc.b $E7 
		dc.b   1
		dc.b $EB 
		dc.b   1
		dc.b $EF 
		dc.b   2
		dc.b $13
		dc.b   2
		dc.b $17
		dc.b   2
		dc.b $1B
		dc.b   2
		dc.b $1F
		dc.b   2
		dc.b $43 
		dc.b   2
		dc.b $47 
		dc.b   2
		dc.b $4B 
		dc.b   2
		dc.b $4F 
		dc.b   2
		dc.b $73 
		dc.b   2
		dc.b $77 
		dc.b   2
		dc.b $7B 
		dc.b   2
		dc.b $7F 
unk_125A0A:     dc.b $10
		dc.b  $C
		dc.b $F8 
		dc.b   0
		dc.b $83 
		dc.b $58 
		dc.b $12
		dc.b $E0 
		dc.b $35 
		dc.b $60 
		dc.b $AB 
		dc.b   9
		dc.b $60 
		dc.b $AE 
		dc.b   2
		dc.b $E6 
		dc.b $48 
		dc.b $C1 
		dc.b $16
		dc.b $28 
		dc.b $42 
		dc.b $56 
		dc.b $2B 
		dc.b   4
		dc.b $74 
		dc.b $C8 
		dc.b   2
		dc.b $B5 
		dc.b $88 
		dc.b $10
		dc.b $45 
		dc.b $62 
		dc.b $30 
		dc.b  $B
		dc.b $96 
		dc.b $28 
		dc.b $42 
		dc.b $56 
		dc.b $2B 
		dc.b   0
		dc.b $C5 
		dc.b $82 
		dc.b $AC 
		dc.b $25 
		dc.b $82 
		dc.b $B8 
		dc.b  $D
		dc.b $58 
		dc.b $12
		dc.b $E0 
		dc.b   9
		dc.b $16
		dc.b   2
		dc.b $2E 
		dc.b   2
		dc.b $96 
		dc.b   4
		dc.b $AC 
		dc.b $11
		dc.b $60 
		dc.b $4B 
		dc.b $85 
		dc.b $60 
		dc.b $8E 
		dc.b $99 
		dc.b   0
		dc.b $BB 
		dc.b $24 
		dc.b $60 
		dc.b $8B 
		dc.b   9
		dc.b   8
		dc.b $22 
		dc.b $B0 
		dc.b $96 
		dc.b   8
		dc.b $E2 
		dc.b $58 
		dc.b $8C 
		dc.b   5
		dc.b $D6 
		dc.b $20
		dc.b $40 
		dc.b $85 
		dc.b $62 
		dc.b $30 
		dc.b $1E
		dc.b $58 
		dc.b $48 
		dc.b $41 
		dc.b $15
		dc.b $84 
		dc.b $B0 
		dc.b $47 
		dc.b   3
		dc.b $CC 
		dc.b   9
		dc.b $58 
		dc.b $22 
		dc.b $C0 
		dc.b $97 
		dc.b   1
		dc.b $4B 
		dc.b   1
		dc.b $17
		dc.b   0
		dc.b $6B 
		dc.b $32 
		dc.b $46 
		dc.b  $E
		dc.b $E9 
		dc.b $90 
		dc.b   7
		dc.b $6B 
		dc.b $1D
		dc.b $80 
		dc.b   6
		dc.b $64 
		dc.b $C1 
		dc.b $5C 
		dc.b   7
		dc.b $AB 
		dc.b $15
		dc.b $81 
		dc.b $2E 
		dc.b   3
		dc.b $50 
		dc.b $E8 
		dc.b $15
		dc.b $61 
		dc.b $2C 
		dc.b $11
		dc.b $D3 
		dc.b $20
		dc.b  $F
		dc.b $96 
		dc.b $23 
		dc.b   0
		dc.b $D9 
		dc.b $61 
		dc.b $2C 
		dc.b   3
		dc.b $55 
		dc.b $8A 
		dc.b $C0 
		dc.b $97 
		dc.b   1
		dc.b $AB 
		dc.b   5
		dc.b $70 
		dc.b   4
		dc.b $CB 
		dc.b   2
		dc.b $5C 
		dc.b   6
		dc.b $AC 
		dc.b $15
		dc.b $61 
		dc.b $2C 
		dc.b $15
		dc.b $C0 
		dc.b $5C 
		dc.b $C9 
		dc.b $18
		dc.b $22 
		dc.b $C5 
		dc.b   8
		dc.b $4A 
		dc.b $C5 
		dc.b $60 
		dc.b $8E 
		dc.b $99 
		dc.b   0
		dc.b $56 
		dc.b $B1 
		dc.b   2
		dc.b   8
		dc.b $AC 
		dc.b $46 
		dc.b   1
		dc.b $72 
		dc.b $C5 
		dc.b   8
		dc.b $4A 
		dc.b $C5 
		dc.b $60 
		dc.b $18
		dc.b $B0 
		dc.b $55 
		dc.b $84 
		dc.b $B0 
		dc.b $57 
		dc.b   1
		dc.b $AB 
		dc.b   2
		dc.b $5C 
		dc.b   1
		dc.b $BC 
		dc.b $C9 
		dc.b $18
		dc.b $3B 
		dc.b $A6 
		dc.b $40 
		dc.b $1D
		dc.b $AC 
		dc.b $76 
		dc.b   0
		dc.b $2D 
		dc.b $4C 
		dc.b   9
		dc.b $70 
		dc.b $1A
		dc.b $B0 
		dc.b $55 
		dc.b $84 
		dc.b $B0 
		dc.b $57 
		dc.b   1
		dc.b $73 
		dc.b $24 
		dc.b $60 
		dc.b $8B 
		dc.b $14
		dc.b $21 
		dc.b $2B 
		dc.b $15
		dc.b $82 
		dc.b $3A 
		dc.b $64 
		dc.b   1
		dc.b $5A 
		dc.b $C4 
		dc.b   8
		dc.b $22 
		dc.b $B1 
		dc.b $18
		dc.b   5
		dc.b $CB 
		dc.b $14
		dc.b $21 
		dc.b $2B 
		dc.b $15
		dc.b $80 
		dc.b $62 
		dc.b $C1 
		dc.b $56 
		dc.b $12
		dc.b $C1 
		dc.b $5C 
		dc.b   6
		dc.b $AC 
		dc.b   9
		dc.b $70 
		dc.b   9
		dc.b $2C 
		dc.b   9
		dc.b $70 
		dc.b $1C
		dc.b $AC 
		dc.b $25 
		dc.b $82 
		dc.b $B8 
		dc.b  $D
		dc.b $43 
		dc.b $A0 
		dc.b $25 
		dc.b $62 
		dc.b $B0 
		dc.b $47 
		dc.b $4C 
		dc.b $80 
		dc.b $3E 
		dc.b $58 
		dc.b $8C 
		dc.b   3
		dc.b $A5 
		dc.b $8A 
		dc.b $C0 
		dc.b $35 
		dc.b $58 
		dc.b $4B 
		dc.b   5
		dc.b $70 
		dc.b $1A
		dc.b $B0 
		dc.b $25 
		dc.b $C0 
		dc.b $1E
		dc.b $2C 
		dc.b   9
		dc.b $76 
		dc.b $A8 
		dc.b   3
		dc.b $66 
		dc.b $48 
		dc.b $C1 
		dc.b $16
		dc.b   7
		dc.b $CB 
		dc.b $10
		dc.b $20
		dc.b $20
		dc.b $AC 
		dc.b   4
		dc.b $16
		dc.b   0
		dc.b $23 
		dc.b $CC 
		dc.b $91 
		dc.b $83 
		dc.b $BA 
		dc.b $64 
		dc.b   1
		dc.b $DA 
		dc.b $C7 
		dc.b $60 
		dc.b   2
		dc.b $4D 
unk_125B48:     dc.b $10
		dc.b  $C
		dc.b $F8 
		dc.b   2
		dc.b $49 
		dc.b $92 
		dc.b $30 
		dc.b $77 
		dc.b $4C 
		dc.b $80 
		dc.b $3B 
		dc.b $58 
		dc.b $EC 
		dc.b   0
		dc.b $34 
		dc.b $E6 
		dc.b   4
		dc.b $B8 
		dc.b  $D
		dc.b $58 
		dc.b $2A 
		dc.b $C2 
		dc.b $58 
		dc.b $2B 
		dc.b $80 
		dc.b $B9 
		dc.b $92 
		dc.b $30 
		dc.b $45 
		dc.b $8A 
		dc.b $10
		dc.b $95 
		dc.b $8A 
		dc.b $C1 
		dc.b $1D
		dc.b $32 
		dc.b   2
		dc.b $D9 
		dc.b $23 
		dc.b   4
		dc.b $76 
		dc.b $80 
		dc.b $79 
		dc.b $62 
		dc.b   4
		dc.b $11
		dc.b $58 
		dc.b $8C 
		dc.b  $B
		dc.b $58 
		dc.b $12
		dc.b $2C 
		dc.b $50 
		dc.b $84 
		dc.b $AC 
		dc.b $56 
		dc.b   1
		dc.b $8B 
		dc.b   5
		dc.b $58 
		dc.b $4B 
		dc.b   5
		dc.b $70 
		dc.b $1A
		dc.b $B0 
		dc.b $25 
		dc.b $C0 
		dc.b   5
		dc.b $AC 
		dc.b $C9 
		dc.b $18
		dc.b $3B 
		dc.b $A6 
		dc.b $40 
		dc.b $1D
		dc.b $AC 
		dc.b $76 
		dc.b   0
		dc.b $2D 
		dc.b $CC 
		dc.b  $D
		dc.b $76 
		dc.b $AA 
		dc.b $80 
		dc.b $2D 
		dc.b $60 
		dc.b $4A 
		dc.b $C0 
		dc.b $D9 
		dc.b $92 
		dc.b $30 
		dc.b $45 
		dc.b $84 
		dc.b $84 
		dc.b  $D
		dc.b $96 
		dc.b $20
		dc.b $40 
		dc.b $41 
		dc.b $58 
		dc.b $48 
		dc.b $40 
		dc.b $E5 
		dc.b $81 
		dc.b $2B 
		dc.b   1
		dc.b   5
		dc.b $80 
		dc.b $2E 
		dc.b $B0 
		dc.b $25 
		dc.b $C0 
		dc.b $6A 
		dc.b $C1 
		dc.b $56 
		dc.b $12
		dc.b $C1 
		dc.b $5C 
		dc.b   5
		dc.b $CC 
		dc.b $91 
		dc.b $82 
		dc.b $2C 
		dc.b $50 
		dc.b $84 
		dc.b $AC 
		dc.b $56 
		dc.b   8
		dc.b $E9 
		dc.b $90 
		dc.b   5
		dc.b $6B 
		dc.b $10
		dc.b $20
		dc.b $8A 
		dc.b $C4 
		dc.b $60 
		dc.b $17
		dc.b $2C 
		dc.b $50 
		dc.b $84 
		dc.b $AC 
		dc.b $56 
		dc.b   1
		dc.b $8B 
		dc.b   5
		dc.b $58 
		dc.b $4B 
		dc.b   5
		dc.b $70 
		dc.b $1A
		dc.b $B0 
		dc.b $25 
		dc.b $C0 
		dc.b   6
		dc.b $14
		dc.b $C9 
		dc.b $18
		dc.b $3B 
		dc.b $A6 
		dc.b $40 
		dc.b $1D
		dc.b $AC 
		dc.b $76 
		dc.b   0
		dc.b $18
		dc.b $D3 
		dc.b   1
		dc.b $17
		dc.b   3
		dc.b $AC 
		dc.b   9
		dc.b $70 
		dc.b $6A 
		dc.b $C1 
		dc.b $16
		dc.b   4
		dc.b $B8 
		dc.b $11
		dc.b $60 
		dc.b $AB 
		dc.b   9
		dc.b $60 
		dc.b $AE 
		dc.b   9
		dc.b  $E
		dc.b $80 
		dc.b $45 
		dc.b $61 
		dc.b $2C 
		dc.b $11
		dc.b $D3 
		dc.b $20
		dc.b $2D 
		dc.b $92 
		dc.b $30 
		dc.b $45 
		dc.b $8A 
		dc.b $10
		dc.b $95 
		dc.b $8A 
		dc.b $C1 
		dc.b $1D
		dc.b $32 
		dc.b   1
		dc.b $E5 
		dc.b $88 
		dc.b $C0 
		dc.b $B5 
		dc.b $88 
		dc.b $10
		dc.b $45 
		dc.b $62 
		dc.b $30 
		dc.b $16
		dc.b $58 
		dc.b $4B 
		dc.b   1
		dc.b $15
		dc.b $8A 
		dc.b $10
		dc.b $95 
		dc.b $8A 
		dc.b $C0 
		dc.b $95 
		dc.b $82 
		dc.b $2C 
		dc.b   9
		dc.b $70 
		dc.b $22 
		dc.b $C1 
		dc.b $56 
		dc.b $12
		dc.b $C1 
		dc.b $5C 
		dc.b $12
		dc.b $C0 
		dc.b $45 
		dc.b $C0 
		dc.b $EB 
		dc.b   2
		dc.b $5C 
		dc.b   0
		dc.b $49 
		dc.b $B0 
		dc.b $FF
unk_125C3E:     dc.b   8
		dc.b   8
		dc.b $C0 
		dc.b $53 
		dc.b $E1 
		dc.b $DE 
		dc.b $43 
		dc.b $3F 
		dc.b $C2 
		dc.b $51 
		dc.b   2
		dc.b $D5 
		dc.b $55 
		dc.b $12
		dc.b  $D
		dc.b $A9 
		dc.b $10
		dc.b $60 
		dc.b $D5 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $54 
		dc.b   2
		dc.b $C8 
		dc.b $A8 
		dc.b $5B 
		dc.b $FC 
		dc.b   4
		dc.b $5E 
		dc.b $90 
		dc.b $4A 
		dc.b $C0 
		dc.b $2E 
		dc.b $1A
		dc.b $D6 
		dc.b $12
		dc.b $38 
		dc.b $15
		dc.b $7A 
		dc.b   2
		dc.b $EE 
		dc.b $AE 
		dc.b $31 
		dc.b $F1 
		dc.b   3
		dc.b $AF 
		dc.b $61 
		dc.b $6C 
		dc.b $D6 
		dc.b   7
		dc.b $28 
		dc.b $A8 
		dc.b $2E 
		dc.b $34 
		dc.b $12
		dc.b   1
		dc.b $BD 
		dc.b $D4 
		dc.b   8
		dc.b  $B
		dc.b $86 
		dc.b $20
		dc.b $AE 
		dc.b $38 
		dc.b $13
		dc.b $1B
		dc.b $58 
		dc.b  $C
		dc.b $6F 
		dc.b $82 
		dc.b $5E 
		dc.b $40 
		dc.b $EE 
		dc.b $B1 
		dc.b $55 
		dc.b $58 
		dc.b $61 
		dc.b   5
		dc.b $55 
		dc.b $51 
		dc.b $BD 
		dc.b $5B 
		dc.b $A0 
		dc.b   8
		dc.b $41 
		dc.b $AA 
		dc.b $91 
		dc.b $B8 
		dc.b $42 
		dc.b $A8 
		dc.b  $C
		dc.b $AE 
		dc.b $DC 
		dc.b $1D
		dc.b $C6 
		dc.b $DC 
		dc.b $95 
		dc.b $9A 
		dc.b $D6 
		dc.b $AB 
		dc.b $F0 
		dc.b $BC 
		dc.b  $B
		dc.b $E3 
		dc.b   0
		dc.b $51 
		dc.b $8A 
		dc.b $B3 
		dc.b $EA 
		dc.b $D5 
		dc.b $E0 
		dc.b $B1 
		dc.b   7
		dc.b $43 
		dc.b $56 
		dc.b $FC 
		dc.b   1
		dc.b $81 
		dc.b $DF 
		dc.b   8
		dc.b $20
		dc.b $48 
		dc.b $1F
		dc.b $10
		dc.b $F8 
		dc.b $1E
		dc.b $8C 
		dc.b $C2 
		dc.b $77 
		dc.b   0
		dc.b $83 
		dc.b $12
		dc.b $83 
		dc.b $C6 
		dc.b   0
		dc.b $EE 
		dc.b $35 
		dc.b $B0 
		dc.b $BD 
		dc.b $25 
		dc.b   9
		dc.b $74 
		dc.b $24 
		dc.b   1
		dc.b   0
		dc.b $2F 
		dc.b $FF
		dc.b $C1 
		dc.b $2C 
		dc.b  $D
		dc.b $F5 
		dc.b $EE 
		dc.b $91 
		dc.b $87 
		dc.b $BA 
		dc.b $41 
		dc.b $C2 
		dc.b $5A 
		dc.b $FD 
		dc.b $F8 
		dc.b  $C
		dc.b $9F 
		dc.b $5C 
		dc.b $81 
		dc.b $27 
		dc.b $C0 
		dc.b $10
		dc.b   7
		dc.b $8F 
		dc.b $80 
		dc.b $87 
		dc.b $7F 
		dc.b $C0 
		dc.b $59 
		dc.b $55 
		dc.b  $A
		dc.b $13
		dc.b $1D
		dc.b $53 
		dc.b $2E 
		dc.b $86 
		dc.b  $E
		dc.b $F0 
		dc.b $10
		dc.b $8E 
		dc.b $61 
		dc.b $9F 
		dc.b $E0 
		dc.b $2A 
		dc.b $7A 
		dc.b   5
		dc.b $AF 
		dc.b $80 
		dc.b $44 
		dc.b $10
		dc.b $54 
		dc.b $3B 
		dc.b $9B 
		dc.b $34 
		dc.b $A8 
		dc.b $24 
		dc.b $6B 
		dc.b $4F 
		dc.b $96 
		dc.b $26 
		dc.b $1D
		dc.b $EE 
		dc.b $8E 
		dc.b $99 
		dc.b $55 
		dc.b $1B
		dc.b $FA 
		dc.b $C2 
		dc.b $86 
		dc.b $AA 
		dc.b $A6 
		dc.b $95 
		dc.b $20
		dc.b $40 
		dc.b $E8 
		dc.b $28 
		dc.b $68 
		dc.b   3
		dc.b $97 
		dc.b $60 
		dc.b   2
		dc.b   5
		dc.b $DA 
		dc.b   0
		dc.b $21 
		dc.b $D5 
		dc.b $A1 
		dc.b $86 
		dc.b $AA 
		dc.b $A8 
		dc.b   2
		dc.b $2C 
		dc.b $96 
		dc.b $8A 
		dc.b   0
		dc.b $78 
		dc.b $9D 
		dc.b   0
		dc.b $30 
		dc.b $87 
		dc.b $40 
		dc.b  $B
		dc.b $E9 
		dc.b $62 
		dc.b $24 
		dc.b   1
		dc.b $F0 
		dc.b $C8 
		dc.b $A1 
		dc.b $84 
		dc.b $98 
		dc.b   2
		dc.b   8
		dc.b $E1 
		dc.b $86 
		dc.b $AA 
		dc.b $A0 
		dc.b   4
		dc.b  $C
		dc.b $E8 
		dc.b   1
		dc.b $85 
		dc.b $5A 
		dc.b   1
		dc.b $CD 
		dc.b $16
		dc.b $48 
		dc.b   0
		dc.b $13
		dc.b $B0 
		dc.b $FF
StatusEffectsTiles:
		incbin "data/graphics/battles/statuseffects/statuseffectstiles.bin"
unk_125F36:     dc.b $42 
		dc.b $39 
		dc.b   0
		dc.b $FF
		dc.b $B4 
		dc.b $D1 
		dc.b $61 
		dc.b   0
		dc.b   0
		dc.b $16
		dc.b $61 
		dc.b   0
		dc.b   0
		dc.b $3A 
		dc.b $61 
		dc.b   0
		dc.b   1
		dc.b $EC 
		dc.b $61 
		dc.b   0
		dc.b $12
		dc.b $F4 
		dc.b $4E 
		dc.b $B9 
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b $20
		dc.b $4E 
		dc.b $75 
		dc.b   8
		dc.b $39 
		dc.b   0
		dc.b   3
		dc.b   0
		dc.b $FF
		dc.b $B4 
		dc.b $D2 
		dc.b $67 
		dc.b   0
		dc.b   0
		dc.b $1C
		dc.b $53 
		dc.b $79 
		dc.b   0
		dc.b $FF
		dc.b $BC 
		dc.b $7C 
		dc.b $66 
		dc.b   0
		dc.b   0
		dc.b $12
		dc.b $42 
		dc.b $41 
		dc.b $61 
		dc.b   0
		dc.b   0
		dc.b $46 
		dc.b $33 
		dc.b $F9 
		dc.b   0
		dc.b $FF
		dc.b $BC 
		dc.b $7A 
		dc.b   0
		dc.b $FF
		dc.b $BC 
		dc.b $7C 
		dc.b $4E 
		dc.b $75 
		dc.b   8
		dc.b $39 
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b $B4 
		dc.b $D2 
		dc.b $67 
		dc.b   0
		dc.b   0
		dc.b $1C
		dc.b $53 
		dc.b $79 
		dc.b   0
		dc.b $FF
		dc.b $BC 
		dc.b $80 
		dc.b $66 
		dc.b   0
		dc.b   0
		dc.b $12
		dc.b $42 
		dc.b $41 
		dc.b $61 
		dc.b   0
		dc.b   0
		dc.b  $E
		dc.b $33 
		dc.b $F9 
		dc.b   0
		dc.b $FF
		dc.b $BC 
		dc.b $7E 
		dc.b   0
		dc.b $FF
		dc.b $BC 
		dc.b $80 
		dc.b $4E 
		dc.b $75 
		dc.b $42 
		dc.b $40 
		dc.b $61 
		dc.b   0
		dc.b $F4 
		dc.b $3A 
		dc.b  $A
		dc.b $39 
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b $B4 
		dc.b $D2 
		dc.b $4E 
		dc.b $75 

; =============== S U B R O U T I N E =======================================

sub_125FB4:
		lea     byte_12603E(pc), a0
		nop
		movem.w d0-d1,-(sp)
		move.w  (word_FFBC72).l,d0
		jsr     sub_20300
		cmpi.w  #$27,d1 
		movem.w (sp)+,d0-d1
		beq.s   loc_125FDC
		lea     (word_FFD984).l,a1
		bra.s   loc_125FE2
loc_125FDC:
		lea     (byte_FFD9C0).l,a1
loc_125FE2:
		btst    #2,(byte_FFB4D2).l
		beq.s   loc_125FF2
		move.w  #$E280,d0
		bra.s   loc_125FF6
loc_125FF2:
		move.w  #$E340,d0
loc_125FF6:
		eori.b  #4,(byte_FFB4D2).l
		move.b  d1,d5
		ext.w   d5
		asl.w   #6,d5
		adda.w  d5,a1
		asr.w   #8,d1
		asl.w   #1,d1
		adda.w  d1,a1
		clr.w   d6
		move.b  (a0)+,d6
		subq.w  #1,d6
		clr.w   d7
		move.b  (a0)+,d7
		subq.w  #1,d7
loc_126018:
		movem.l d6,-(sp)
loc_12601C:
		clr.w   d5
		move.b  (a0)+,d5
		add.w   d0,d5
		move.w  d5,(a1)+
		dbf     d6,loc_12601C
		movem.l (sp)+,d6
		moveq   #$1F,d5
		sub.w   d6,d5
		add.w   d5,d5
		adda.w  d5,a1
		dbf     d7,loc_126018
		bsr.w   sub_126100
		rts

	; End of function sub_125FB4

byte_12603E:    dc.b $10
		dc.b $C
		dc.b 0
		dc.b 4
		dc.b 8
		dc.b $C
		dc.b $30
		dc.b $34
		dc.b $38
		dc.b $3C
		dc.b $60
		dc.b $64
		dc.b $68
		dc.b $6C
		dc.b $90
		dc.b $94
		dc.b $98
		dc.b $9C
		dc.b 1
		dc.b 5
		dc.b 9
		dc.b $D
		dc.b $31
		dc.b $35
		dc.b $39
		dc.b $3D
		dc.b $61
		dc.b $65
		dc.b $69
		dc.b $6D
		dc.b $91
		dc.b $95
		dc.b $99
		dc.b $9D
		dc.b 2
		dc.b 6
		dc.b $A
		dc.b $E
		dc.b $32
		dc.b $36
		dc.b $3A
		dc.b $3E
		dc.b $62
		dc.b $66
		dc.b $6A
		dc.b $6E
		dc.b $92
		dc.b $96
		dc.b $9A
		dc.b $9E
		dc.b 3
		dc.b 7
		dc.b $B
		dc.b $F
		dc.b $33
		dc.b $37
		dc.b $3B
		dc.b $3F
		dc.b $63
		dc.b $67
		dc.b $6B
		dc.b $6F
		dc.b $93
		dc.b $97
		dc.b $9B
		dc.b $9F
		dc.b $10
		dc.b $14
		dc.b $18
		dc.b $1C
		dc.b $40
		dc.b $44
		dc.b $48
		dc.b $4C
		dc.b $70
		dc.b $74
		dc.b $78
		dc.b $7C
		dc.b $A0
		dc.b $A4
		dc.b $A8
		dc.b $AC
		dc.b $11
		dc.b $15
		dc.b $19
		dc.b $1D
		dc.b $41
		dc.b $45
		dc.b $49
		dc.b $4D
		dc.b $71
		dc.b $75
		dc.b $79
		dc.b $7D
		dc.b $A1
		dc.b $A5
		dc.b $A9
		dc.b $AD
		dc.b $12
		dc.b $16
		dc.b $1A
		dc.b $1E
		dc.b $42
		dc.b $46
		dc.b $4A
		dc.b $4E
		dc.b $72
		dc.b $76
		dc.b $7A
		dc.b $7E
		dc.b $A2
		dc.b $A6
		dc.b $AA
		dc.b $AE
		dc.b $13
		dc.b $17
		dc.b $1B
		dc.b $1F
		dc.b $43
		dc.b $47
		dc.b $4B
		dc.b $4F
		dc.b $73
		dc.b $77
		dc.b $7B
		dc.b $7F
		dc.b $A3
		dc.b $A7
		dc.b $AB
		dc.b $AF
		dc.b $20
		dc.b $24
		dc.b $28
		dc.b $2C
		dc.b $50
		dc.b $54
		dc.b $58
		dc.b $5C
		dc.b $80
		dc.b $84
		dc.b $88
		dc.b $8C
		dc.b $B0
		dc.b $B4
		dc.b $B8
		dc.b $BC
		dc.b $21
		dc.b $25
		dc.b $29
		dc.b $2D
		dc.b $51
		dc.b $55
		dc.b $59
		dc.b $5D
		dc.b $81
		dc.b $85
		dc.b $89
		dc.b $8D
		dc.b $B1
		dc.b $B5
		dc.b $B9
		dc.b $BD
		dc.b $22
		dc.b $26
		dc.b $2A
		dc.b $2E
		dc.b $52
		dc.b $56
		dc.b $5A
		dc.b $5E
		dc.b $82
		dc.b $86
		dc.b $8A
		dc.b $8E
		dc.b $B2
		dc.b $B6
		dc.b $BA
		dc.b $BE
		dc.b $23
		dc.b $27
		dc.b $2B
		dc.b $2F
		dc.b $53
		dc.b $57
		dc.b $5B
		dc.b $5F
		dc.b $83
		dc.b $87
		dc.b $8B
		dc.b $8F
		dc.b $B3
		dc.b $B7
		dc.b $BB
		dc.b $BF

; =============== S U B R O U T I N E =======================================

sub_126100:
		tst.b   (byte_FFB4D1).l
		bne.s   locret_126130
		move.b  #1,(byte_FFB4D1).l
		lea     (byte_FFD000).l,a0
		lea     ($E000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		jsr     (sub_278).l
		jsr     (j_SetVIntParam3).l
locret_126130:
		
		rts

	; End of function sub_126100

		move.w  (word_FFC0BA).l,d7
		addq.w  #1,d7
		andi.w  #$3F,d7 
		move.w  d7,(word_FFC0BA).l
		move.w  (BATTLE_MEMBER_INDEX).l,d0
		bmi.w   loc_126180
		btst    #1,(byte_FFB4D2).l
		beq.w   loc_126180
		jsr     j_GetStatusFromForceID
		move.w  d1,d0
		move.w  (word_FFBC8A).l,d4
		move.w  d4,d1
		andi.w  #$FF,d1
		lsr.w   #8,d4
		addi.w  #$108,d4
		addi.w  #$B8,d1 
		bsr.w   sub_1261F8
		bra.w   loc_126184
loc_126180:     bsr.w   sub_12627A
loc_126184:     lea     (word_FF0D38).l,a0
		move.w  d1,(a0)+
		move.w  d2,(a0)+
		move.w  d3,(a0)+
		move.w  d4,(a0)+
		move.b  #2,(byte_FFB4F1).l
		move.w  (word_FFBC72).l,d0
		bmi.w   loc_1261DC
		btst    #3,(byte_FFB4D2).l
		beq.w   loc_1261DC
		move.w  (word_FFC0BA).l,d7
		jsr     j_GetStatusFromForceID
		move.w  d1,d0
		move.w  (word_FFBC8C).l,d4
		move.w  d4,d1
		andi.w  #$FF,d1
		lsr.w   #8,d4
		addi.w  #$98,d4 
		addi.w  #$B0,d1 
		bsr.w   sub_1261F8
		bra.w   loc_1261E0
loc_1261DC:     bsr.w   sub_12627A
loc_1261E0:     lea     (word_FF0D40).l,a0
		move.w  d1,(a0)+
		move.w  d2,(a0)+
		move.w  d3,(a0)+
		move.w  d4,(a0)+
		move.b  #1,(byte_FFB4F2).l
		rts

; =============== S U B R O U T I N E =======================================

sub_1261F8:
		movem.w d0,-(sp)
		andi.w  #2,d0
		movem.w (sp)+,d0
		beq.w   loc_126226
		move.w  #$600,d2
		move.w  #$C7C0,d3
		lsr.w   #4,d7
		cmpi.w  #3,d7
		bne.s   loc_12621A
		moveq   #1,d4
loc_12621A:
		mulu.w  #6,d7
		add.w   d7,d3
		subi.w  #$20,d1 
		rts
loc_126226:
		movem.w d0,-(sp)
		andi.w  #$30,d0 
		movem.w (sp)+,d0
		beq.w   loc_126254
		subi.w  #$C,d4
		move.w  #$900,d2
		move.w  #$C7D6,d3
		lsr.w   #3,d7
		andi.w  #3,d7
		mulu.w  #6,d7
		add.w   d7,d3
		subi.w  #$20,d1 
		rts
loc_126254:
		movem.w d0,-(sp)
		andi.w  #$C0,d0 
		movem.w (sp)+,d0
		beq.w   sub_12627A
		btst    #3,d7
		beq.w   sub_12627A
		subq.w  #8,d4
		move.w  #$500,d2
		move.w  #$C7D2,d3
		subq.w  #4,d1
		rts

	; End of function sub_1261F8


; =============== S U B R O U T I N E =======================================

sub_12627A:
		moveq   #1,d1
		move.w  d1,d2
		move.w  d1,d3
		move.w  d1,d4
		rts

	; End of function sub_12627A


; =============== S U B R O U T I N E =======================================

sub_126284:
		movea.l (p_pt_EnemyBattleSprites).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		move.w  (a0)+,((word_FFBC7A-$1000000)).w
		move.w  (a0),d0
		adda.w  d0,a0
		lsl.w   #5,d1
		adda.w  d1,a0
		lea     (PALETTE_4_BIS).l,a1
		jmp     (j_CopyPalette).l

	; End of function sub_126284


; =============== S U B R O U T I N E =======================================

sub_1262A8:
		movea.l (p_pt_EnemyBattleSprites).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		addq.w  #2,a0
		addq.w  #1,d1
		add.w   d1,d1
		move.w  (a0,d1.w),d0
		adda.w  d0,a0
		jsr     (j_DecompressGraphics).l
		lea     (FF3000_LOADING_SPACE).l,a0
		rts

	; End of function sub_1262A8


; =============== S U B R O U T I N E =======================================

sub_1262CE:
		movea.l (p_pt_AllyBattleSprites).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		move.w  (a0)+,((word_FFBC7E-$1000000)).w
		move.w  (a0),d0
		adda.w  d0,a0
		lsl.w   #5,d1
		adda.w  d1,a0
		lea     (PALETTE_3_BIS).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		lea     $A(a0),a0
		move.l  #(Map37Section1+$1E),(a1)+
		move.l  #$460820,(a1)+
		clr.w   (a1)+
		move.w  (a0)+,(a1)+
		rts

	; End of function sub_1262CE


; =============== S U B R O U T I N E =======================================

sub_12630C:
		movea.l (p_WeaponPalettes).l,a0
		lsl.w   #3,d0
		adda.w  d0,a0
		lea     (word_FF00B6).l,a1
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		clr.w   (a1)+
		move.w  (a0)+,(a1)
		rts

	; End of function sub_12630C


; =============== S U B R O U T I N E =======================================

sub_126326:
		movea.l (p_pt_AllyBattleSprites).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		addq.w  #2,a0
		addq.w  #1,d1
		add.w   d1,d1
		move.w  (a0,d1.w),d0
		adda.w  d0,a0
		jsr     (j_DecompressGraphics).l
		lea     (FF3000_LOADING_SPACE).l,a0
		rts

	; End of function sub_126326


; =============== S U B R O U T I N E =======================================

sub_12634C:
		movea.l (p_pt_WeaponSprites).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		jsr     (j_DecompressGraphics).l
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (MAP_SPRITE_POSITION).l,a1
		move.w  #$7FF,d7
loc_12636E:
		move.l  (a0)+,(a1)+
		dbf     d7,loc_12636E
		move.w  #$1FF,d7
loc_126378:
		clr.l   (a1)+
		dbf     d7,loc_126378
		rts

	; End of function sub_12634C


; =============== S U B R O U T I N E =======================================

sub_126380:
		movea.l (p_pt_Platforms).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		move.l  a0,-(sp)
		addq.l  #8,a0
		jsr     (j_DecompressGraphics).l
		movea.l (sp)+,a0
		lea     (word_FF00A2).l,a1
		move.w  #$EEE,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		rts

	; End of function sub_126380


; =============== S U B R O U T I N E =======================================

sub_1263A8:
		movea.l (p_pt_Backgrounds).l,a0
		move.l  a0,-(sp)
		lsl.w   #3,d0
		movea.l (a0,d0.w),a0
		move.w  d0,-(sp)
		movea.l a0,a4
		adda.w  #$20,a0 
		jsr     (j_DecompressGraphics).l
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (byte_FF4800).l,a1
		move.w  #$5FF,d7
loc_1263D4:
		move.l  (a0)+,(a1)+
		dbf     d7,loc_1263D4
		move.w  (sp)+,d0
		movea.l (sp)+,a0
		movea.l 4(a0,d0.w),a0
		jmp     (j_DecompressGraphics).l

	; End of function sub_1263A8


; =============== S U B R O U T I N E =======================================

sub_1263E8:
		tst.w   d0
		bpl.s   loc_1263F0
		move.w  d1,d0
		moveq   #$FFFFFFFF,d1
loc_1263F0:
		move.w  d1,-(sp)
		move.w  d0,-(sp)
		move.w  d1,d0
		blt.s   loc_126414
		bsr.s   sub_1263A8
		move.l  a4,((word_FFB7C4-$1000000)).w
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (byte_FF6000).l,a1
		move.w  #$BFF,d7
loc_12640E:
		move.l  (a0)+,(a1)+
		dbf     d7,loc_12640E
loc_126414:
		move.w  (sp)+,d0
		blt.s   loc_12642A
		bsr.s   sub_1263A8
		addq.l  #2,a4
		lea     ((byte_FFC0C0-$1000000)).w,a1
		clr.w   (a1)+
		moveq   #$E,d7
loc_126424:
		move.w  (a4)+,(a1)+
		dbf     d7,loc_126424
loc_12642A:
		move.w  (sp)+,d0
		bmi.w   locret_12647C
		lea     (FF3000_LOADING_SPACE).l,a1
		lea     (byte_FF6000).l,a0
		move.w  #$2FFF,d7
loc_126440:
		move.b  (a0)+,d0
		beq.s   loc_126462
		move.b  d0,d1
		andi.b  #$F0,d1
		beq.s   loc_12645C
		move.b  d0,d1
		andi.b  #$F,d1
		beq.s   loc_126458
		clr.b   d2
		bra.s   loc_12645A
loc_126458:
		moveq   #$F,d2
loc_12645A:
		bra.s   loc_12645E
loc_12645C:
		moveq   #$FFFFFFF0,d2
loc_12645E:
		and.b   d2,(a1)
		or.b    d0,(a1)
loc_126462:
		addq.l  #1,a1
		dbf     d7,loc_126440
		lea     ((byte_FFC0D0-$1000000)).w,a1
		movea.l ((word_FFB7C4-$1000000)).w,a3
		lea     $10(a3),a3
		move.l  (a3)+,(a1)+
		move.l  (a3)+,(a1)+
		move.l  (a3)+,(a1)+
		move.l  (a3)+,(a1)+
locret_12647C:
		
		rts

	; End of function sub_1263E8


; =============== S U B R O U T I N E =======================================

sub_12647E:
		tst.b   ((byte_FFB5BC-$1000000)).w
		bne.w   locret_1266BE
		tst.b   d0
		bmi.w   locret_1266BE
		move.w  d0,d7
		add.w   d7,d7
		move.w  off_126498(pc,d7.w),d7
		jmp     off_126498(pc,d7.w)
off_126498:
		dc.w loc_126534-off_126498
		dc.w loc_12653A-off_126498
		dc.w loc_126534-off_126498
		dc.w loc_12653A-off_126498
		dc.w loc_126540-off_126498
		dc.w loc_126546-off_126498
		dc.w loc_12654C-off_126498
		dc.w loc_12654C-off_126498
		dc.w loc_126552-off_126498
		dc.w loc_126558-off_126498
		dc.w loc_12655E-off_126498
		dc.w loc_12655E-off_126498
		dc.w loc_126564-off_126498
		dc.w loc_12656A-off_126498
		dc.w loc_126570-off_126498
		dc.w loc_126570-off_126498
		dc.w loc_126576-off_126498
		dc.w loc_12657C-off_126498
		dc.w loc_126582-off_126498
		dc.w loc_126588-off_126498
		dc.w loc_12658E-off_126498
		dc.w loc_126594-off_126498
		dc.w loc_12659A-off_126498
		dc.w loc_1265A0-off_126498
		dc.w loc_1265A6-off_126498
		dc.w loc_1265AC-off_126498
		dc.w loc_1265B2-off_126498
		dc.w loc_1265B8-off_126498
		dc.w loc_1265BE-off_126498
		dc.w loc_1265C4-off_126498
		dc.w loc_1265CA-off_126498
		dc.w loc_1265D0-off_126498
		dc.w loc_1265D6-off_126498
		dc.w loc_1265DC-off_126498
		dc.w loc_1265E2-off_126498
		dc.w loc_1265E8-off_126498
		dc.w loc_1265EE-off_126498
		dc.w loc_1265F4-off_126498
		dc.w loc_1265FA-off_126498
		dc.w loc_126600-off_126498
		dc.w loc_126606-off_126498
		dc.w loc_12660C-off_126498
		dc.w loc_126612-off_126498
		dc.w loc_126618-off_126498
		dc.w loc_12661E-off_126498
		dc.w loc_126624-off_126498
		dc.w loc_12662A-off_126498
		dc.w loc_126630-off_126498
		dc.w locret_126532-off_126498
		dc.w loc_126636-off_126498
		dc.w loc_12662A-off_126498
		dc.w loc_12662A-off_126498
		dc.w loc_126630-off_126498
		dc.w locret_126532-off_126498
		dc.w loc_12666C-off_126498
		dc.w loc_12663C-off_126498
		dc.w locret_126532-off_126498
		dc.w loc_126642-off_126498
		dc.w loc_126648-off_126498
		dc.w loc_126642-off_126498
		dc.w loc_12667A-off_126498
		dc.w loc_126680-off_126498
		dc.w loc_126660-off_126498
		dc.w loc_126666-off_126498
		dc.w loc_126672-off_126498
		dc.w loc_126F78-off_126498
		dc.w loc_127008-off_126498
		dc.w loc_12715C-off_126498
		dc.w loc_1270FE-off_126498
		dc.w loc_12664E-off_126498
		dc.w loc_12709C-off_126498
		dc.w loc_126F54-off_126498
		dc.w loc_126FDA-off_126498
		dc.w loc_12706A-off_126498
		dc.w loc_126EFA-off_126498
		dc.w loc_126654-off_126498
		dc.w loc_12665A-off_126498
locret_126532:
		
		rts
loc_126534:
		moveq   #$FFFFFF81,d3
		bra.w   loc_126DFE
loc_12653A:
		moveq   #1,d3
		bra.w   loc_126DFE
loc_126540:
		moveq   #$FFFFFF82,d3
		bra.w   loc_126DFE
loc_126546:
		moveq   #2,d3
		bra.w   loc_126DFE
loc_12654C:
		moveq   #$B,d2
		bra.w   loc_126686
loc_126552:
		moveq   #1,d3
		bra.w   loc_126D6C
loc_126558:
		moveq   #$FFFFFF81,d3
		bra.w   loc_126D6C
loc_12655E:
		moveq   #9,d2
		bra.w   loc_126686
loc_126564:
		moveq   #1,d3
		bra.w   loc_126D3C
loc_12656A:
		moveq   #$FFFFFF81,d3
		bra.w   loc_126D3C
loc_126570:
		moveq   #$C,d2
		bra.w   loc_126686
loc_126576:
		moveq   #1,d3
		bra.w   loc_126D54
loc_12657C:
		moveq   #$FFFFFF81,d3
		bra.w   loc_126D54
loc_126582:
		moveq   #1,d3
		bra.w   loc_126AB4
loc_126588:
		moveq   #$FFFFFF81,d3
		bra.w   loc_126AB4
loc_12658E:
		moveq   #2,d3
		bra.w   loc_126AB4
loc_126594:
		moveq   #$FFFFFF82,d3
		bra.w   loc_126AB4
loc_12659A:
		moveq   #3,d3
		bra.w   loc_126AB4
loc_1265A0:
		moveq   #$FFFFFF83,d3
		bra.w   loc_126AB4
loc_1265A6:
		moveq   #4,d3
		bra.w   loc_126AB4
loc_1265AC:
		moveq   #$FFFFFF84,d3
		bra.w   loc_126AB4
loc_1265B2:
		moveq   #1,d3
		bra.w   loc_126BE6
loc_1265B8:
		moveq   #1,d3
		bra.w   loc_126C06
loc_1265BE:
		moveq   #2,d3
		bra.w   loc_126BE6
loc_1265C4:
		moveq   #2,d3
		bra.w   loc_126C06
loc_1265CA:
		moveq   #3,d3
		bra.w   loc_126BE6
loc_1265D0:
		moveq   #3,d3
		bra.w   loc_126C06
loc_1265D6:
		moveq   #4,d3
		bra.w   loc_126BE6
loc_1265DC:
		moveq   #4,d3
		bra.w   loc_126C06
loc_1265E2:
		moveq   #1,d3
		bra.w   loc_126A38
loc_1265E8:
		moveq   #$FFFFFF81,d3
		bra.w   loc_126A38
loc_1265EE:
		moveq   #2,d3
		bra.w   loc_126A38
loc_1265F4:
		moveq   #$FFFFFF82,d3
		bra.w   loc_126A38
loc_1265FA:
		moveq   #3,d3
		bra.w   loc_126A38
loc_126600:
		moveq   #$FFFFFF83,d3
		bra.w   loc_126A38
loc_126606:
		moveq   #4,d3
		bra.w   loc_126A38
loc_12660C:
		moveq   #$FFFFFF84,d3
		bra.w   loc_126A38
loc_126612:
		clr.w   d3
		bra.w   loc_126C98
loc_126618:
		moveq   #1,d3
		bra.w   loc_126C98
loc_12661E:
		moveq   #1,d3
		bra.w   loc_126D84
loc_126624:
		moveq   #$FFFFFF81,d3
		bra.w   loc_126D84
loc_12662A:
		moveq   #1,d3
		bra.w   loc_1271CE
loc_126630:
		moveq   #4,d3
		bra.w   loc_126C06
loc_126636:
		moveq   #$FFFFFF81,d3
		bra.w   loc_126E82
loc_12663C:
		moveq   #$FFFFFF80,d3
		bra.w   loc_12700A
loc_126642:
		moveq   #$FFFFFF81,d3
		bra.w   loc_12700A
loc_126648:
		moveq   #$FFFFFF82,d3
		bra.w   loc_12706C
loc_12664E:
		moveq   #1,d3
		bra.w   loc_126E9A
loc_126654:
		moveq   #2,d3
		bra.w   loc_126E9A
loc_12665A:
		moveq   #3,d3
		bra.w   loc_126E9A
loc_126660:
		trap    #SOUND_COMMAND
		dc.w SFX_CRIT
		rts
loc_126666:
		trap    #SOUND_COMMAND
		dc.w SFX_DEMON_SMILE
		rts
loc_12666C:
		moveq   #$FFFFFF81,d3
		bra.w   loc_126B48
loc_126672:
		moveq   #1,d3
		bra.w   loc_126B48
		rts
loc_12667A:
		moveq   #1,d3
		bra.w   loc_126C30
loc_126680:
		moveq   #2,d3
		bra.w   loc_126C30
loc_126686:
		trap    #SOUND_COMMAND
		dc.w SFX_SPELL_CAST
loc_12668A:
		add.w   d2,d2
		move.w  word_1266C0(pc,d2.w),d4
		moveq   #4,d7
loc_126692:
		move.w  d4,(PALETTE_1).l
		jsr     (j_StoreVDPCommandster).l
		moveq   #5,d0
		jsr     (j_Sleep).l
		clr.w   (PALETTE_1).l   
		jsr     (j_StoreVDPCommandster).l
		moveq   #5,d0
		jsr     (j_Sleep).l
		dbf     d7,loc_126692
locret_1266BE:
		
		rts

	; End of function sub_12647E

word_1266C0:    dc.w $6CC
		dc.w $8E
		dc.w $E04
		dc.w $444
		dc.w $2E
		dc.w $82A
		dc.w $E42
		dc.w $2EE
		dc.w $2E4
		dc.w $24E
		dc.w $888
		dc.w $E00
		dc.w $4E0

; =============== S U B R O U T I N E =======================================

sub_1266DA:
		lea     byte_1266F0(pc), a0
		nop
		moveq   #$20,d0 
		jsr     sub_1271EC(pc)
		nop
		jsr     sub_1271EC(pc)
		nop
		rts

	; End of function sub_1266DA

byte_1266F0:    dc.b 0
		dc.b   1
		dc.b   0
		dc.b $90 
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b   2
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $90 
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b   2
		dc.b   0
		dc.b   2

; =============== S U B R O U T I N E =======================================

sub_126704:
		moveq   #$20,d0 
		moveq   #$13,d7
loc_126708:
		lea     byte_126720(pc), a0
		nop
		jsr     sub_1271EC(pc)
		nop
		dbf     d7,loc_126708
		jsr     (sub_320).l
		rts

	; End of function sub_126704

byte_126720:    dc.b 0
		dc.b   1
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b   2
		dc.b   0
		dc.b   0

; =============== S U B R O U T I N E =======================================

sub_12672A:
		move.b  #1,((byte_FFB5B0-$1000000)).w
		movem.l d0-a1,-(sp)
loc_126734:
		move.b  (a0)+,d5
		ext.w   d5
		move.b  (a0)+,d6
		ext.w   d6
		clr.w   d7
		move.b  (a0)+,d7
		add.w   d3,d5
		addi.w  #$80,d5 
		add.w   d4,d6
		addi.w  #$80,d6 
		addi.w  #$5C0,d7
		cmpi.w  #$90,d6 
		bgt.s   loc_126758
		clr.w   d6
loc_126758:
		movem.l a0,-(sp)
		lea     ((byte_FFC0AA-$1000000)).w,a1
		movem.l a1,-(sp)
		move.w  d5,(a1)+
		move.w  d6,(a1)+
		move.w  d7,(a1)+
		move.b  (a0)+,(a1)+
		move.b  ((byte_FFB5B0-$1000000)).w,(a1)+
		move.b  (a0)+,(a1)+
		move.b  d1,(a1)
		movem.l (sp)+,a0
		jsr     sub_1271EC(pc)
		nop
		movem.l (sp)+,a0
		addq.l  #2,a0
		dbf     d2,loc_126734
		movem.l (sp)+,d0-a1
		rts

	; End of function sub_12672A


; =============== S U B R O U T I N E =======================================

sub_12678E:
		movem.l a0-a1,-(sp)
		lea     (PALETTE_1).l,a0
		lea     (PALETTE_1_BIS).l,a1
		moveq   #$1F,d7
loc_1267A0:
		move.l  (a0)+,(a1)+
		dbf     d7,loc_1267A0
		movem.l (sp)+,a0-a1
		rts

	; End of function sub_12678E


; =============== S U B R O U T I N E =======================================

sub_1267AC:
		bsr.s   sub_12678E

	; End of function sub_1267AC


; =============== S U B R O U T I N E =======================================

sub_1267AE:
		movem.l a0-a1,-(sp)
		lea     (PALETTE_1).l,a0
		moveq   #$3F,d7 
loc_1267BA:
		lsr     (a0)+
		dbf     d7,loc_1267BA
		movem.l (sp)+,a0-a1
		rts

	; End of function sub_1267AE


; =============== S U B R O U T I N E =======================================

sub_1267C6:
		bsr.w   sub_1267E8
		bsr.s   sub_1267AE
loc_1267CC:
		movem.l a0-a1,-(sp)
		lea     (word_FF00AC).l,a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		movem.l (sp)+,a0-a1
		rts

	; End of function sub_1267C6


; =============== S U B R O U T I N E =======================================

sub_1267E8:
		movem.l a0-a1,-(sp)
		lea     (word_FF00AC).l,a0
		lea     (word_FF002C).l,a1
		move.l  (a1)+,(a0)+
		move.l  (a1)+,(a0)+
		move.w  (a1)+,(a0)+
		lea     (PALETTE_1).l,a0
		lea     (PALETTE_1_BIS).l,a1
		moveq   #$1F,d7
loc_12680C:
		move.l  (a1)+,(a0)+
		dbf     d7,loc_12680C
		movem.l (sp)+,a0-a1
		rts

	; End of function sub_1267E8

		movem.l d0-d1/a0,-(sp)
		lea     (PALETTE_1).l,a0
		moveq   #$1F,d7
		bra.s   loc_126836

; =============== S U B R O U T I N E =======================================

sub_126826:
		bsr.w   sub_12678E

	; End of function sub_126826


; =============== S U B R O U T I N E =======================================

sub_12682A:
		movem.l d0-d1/a0,-(sp)
		lea     (PALETTE_1).l,a0
		moveq   #$3F,d7 
loc_126836:
		move.w  (a0),d0
		andi.w  #$F,d0
		lsr.w   #1,d0
		move.w  (a0),d1
		andi.w  #$F0,d1 
		lsr.w   #4,d1
		add.w   d1,d0
		move.w  (a0),d1
		andi.w  #$F00,d1
		lsr.w   #8,d1
		lsr.w   #2,d1
		add.w   d1,d0
		lsl.w   #1,d0
		ext.l   d0
		divu.w  #3,d0
		cmpi.w  #$E,d0
		ble.s   loc_126864
		moveq   #$E,d0
loc_126864:
		move.w  d0,d1
		lsl.w   #4,d1
		or.w    d1,d0
		lsl.w   #4,d1
		or.w    d1,d0
		move.w  d0,(a0)+
		dbf     d7,loc_126836
		movem.l (sp)+,d0-d1/a0
		rts

	; End of function sub_12682A


; =============== S U B R O U T I N E =======================================

sub_12687A:
		movem.l d0-d1/d6-a1,-(sp)
		move.w  #$30,d7 
		add.w   d7,(word_FF0500).l
		add.w   d7,(word_FF0500+2).l
		moveq   #$3F,d6 
		lea     (SPRITE_TABLE).l,a1
loc_126896:
		sub.w   d7,(a1)
		addq.l  #8,a1
		dbf     d6,loc_126896
		jsr     (j_StoreVDPCommandsbis).l
		jsr     (j_SetVIntParam3).l
		lea     (PALETTE_1_BIS).l,a0
		moveq   #$3F,d7 
loc_1268B2:
		move.w  (a0),d0
		andi.w  #$F,d0
		lsr.w   #1,d0
		move.w  (a0),d1
		andi.w  #$F0,d1 
		lsr.w   #4,d1
		add.w   d1,d0
		move.w  (a0),d1
		andi.w  #$F00,d1
		lsr.w   #8,d1
		lsr.w   #2,d1
		add.w   d1,d0
		lsl.w   #1,d0
		ext.l   d0
		divu.w  #3,d0
		cmpi.w  #$E,d0
		ble.s   loc_1268E0
		moveq   #$E,d0
loc_1268E0:
		move.w  d0,d1
		lsl.w   #4,d1
		or.w    d1,d0
		or.w    d1,d0
		lsl.w   #4,d1
		or.w    d1,d0
		move.w  d0,(a0)+
		dbf     d7,loc_1268B2
		jsr     (j_StoreVDPCommandster).w
		movem.l (sp)+,d0-d1/d6-a1
		rts

	; End of function sub_12687A


; =============== S U B R O U T I N E =======================================

sub_1268FC:
		bsr.w   sub_1267E8
		bsr.w   sub_12682A
		bra.w   loc_1267CC

	; End of function sub_1268FC


; =============== S U B R O U T I N E =======================================

sub_126908:
		bsr.w   sub_12678E

	; End of function sub_126908


; =============== S U B R O U T I N E =======================================

sub_12690C:
		movem.l d0/a0,-(sp)
		lea     (PALETTE_1).l,a0
		moveq   #$3F,d7 
loc_126918:
		move.w  (a0),d0
		andi.w  #$E,d0
		lsl.w   #1,d0
		cmpi.w  #$E,d0
		ble.s   loc_126928
		moveq   #$E,d0
loc_126928:
		lsr     (a0)
		andi.w  #$EE0,(a0)
		or.w    d0,(a0)+
		dbf     d7,loc_126918
		movem.l (sp)+,d0/a0
		rts

	; End of function sub_12690C


; =============== S U B R O U T I N E =======================================

sub_12693A:
		bsr.w   sub_1267E8
		bsr.s   sub_12690C
		bra.w   loc_1267CC

	; End of function sub_12693A

		bsr.w   sub_12678E

; =============== S U B R O U T I N E =======================================

sub_126948:
		movem.l d0/a0,-(sp)
		lea     (PALETTE_1).l,a0
		moveq   #$3F,d7 
loc_126954:
		move.w  (a0),d0
		andi.w  #$E00,d0
		lsl.w   #1,d0
		cmpi.w  #$E00,d0
		ble.s   loc_126966
		move.w  #$E00,d0
loc_126966:
		lsr     (a0)
		andi.w  #$EE,(a0) 
		or.w    d0,(a0)+
		dbf     d7,loc_126954
		movem.l (sp)+,d0/a0
		rts

	; End of function sub_126948

		bsr.w   sub_1267E8
		bsr.s   sub_126948
		bra.w   loc_1267CC

; =============== S U B R O U T I N E =======================================

sub_126982:
		movem.l a0-a1,-(sp)
		lea     (PALETTE_1).l,a0
		lea     (PALETTE_1_BIS).l,a1
		moveq   #$1F,d7
loc_126994:
		move.l  (a1)+,(a0)+
		dbf     d7,loc_126994
		jsr     (j_StoreVDPCommandster).w
		movem.l (sp)+,a0-a1
		rts

	; End of function sub_126982

		movem.l a0-a1,-(sp)
		lea     (PALETTE_3).l,a0
		lea     (PALETTE_3_BIS).l,a1
		moveq   #7,d7
loc_1269B6:     move.l  (a1)+,(a0)+
		dbf     d7,loc_1269B6
		jsr     (j_StoreVDPCommandster).w
		movem.l (sp)+,a0-a1
		rts
SpellPalette_Bolt:
		incbin "data/graphics/battles/spells/palettes/spellpalette-bolt.bin"

; =============== S U B R O U T I N E =======================================

sub_1269EE:
		move.w  d3,-(sp)
		bsr.w   sub_1267AC
		lea     SpellPalette_Bolt(pc), a0
		andi.w  #7,d3
		subq.w  #1,d3
		mulu.w  #$A,d3
		adda.w  d3,a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		movea.l (p_SpellTiles_Bolt).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$C00,d0
		moveq   #2,d1
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3AndWait).l
		move.w  (sp)+,d3
		rts

	; End of function sub_1269EE


; START OF FUNCTION CHUNK FOR sub_12647E

loc_126A38:
		bsr.s   sub_1269EE
		bsr.w   sub_1266DA
		bsr.w   sub_126AD6
		move.b  d3,((byte_FFB5BE-$1000000)).w
		move.b  #7,((byte_FFB5BF-$1000000)).w
		clr.b   ((byte_FFB5BD-$1000000)).w
		move.b  #1,((byte_FFB5BC-$1000000)).w
		move.w  #$80,d6 
		move.w  #$60,d5 
		moveq   #1,d4
		clr.w   d3
		bsr.w   sub_126B20
		moveq   #7,d2
		bra.w   loc_126686

; END OF FUNCTION CHUNK FOR sub_12647E

SpellPalette_Blaze:
		incbin "data/graphics/battles/spells/palettes/spellpalette-blaze.bin"

; =============== S U B R O U T I N E =======================================

sub_126A76:
		move.w  d3,-(sp)
		bsr.w   sub_126908
		lea     SpellPalette_Blaze(pc), a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		movea.l (p_SpellTiles_Blaze).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$C00,d0
		moveq   #2,d1
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3AndWait).l
		move.w  (sp)+,d3
		rts

	; End of function sub_126A76


; START OF FUNCTION CHUNK FOR sub_12647E

loc_126AB4:
		bsr.s   sub_126A76
		bsr.w   sub_126AD6
		move.b  d3,((byte_FFB5BE-$1000000)).w
		clr.b   ((byte_FFB5BF-$1000000)).w
		clr.b   ((byte_FFB5BD-$1000000)).w
		move.b  #1,((byte_FFB5BC-$1000000)).w
		bsr.w   sub_126AEE
		moveq   #4,d2
		bra.w   loc_126686

; END OF FUNCTION CHUNK FOR sub_12647E


; =============== S U B R O U T I N E =======================================

sub_126AD6:
		movem.l d7-a0,-(sp)
		lea     ((word_FFB5C0-$1000000)).w,a0
		moveq   #$1F,d7
loc_126AE0:
		clr.l   (a0)+
		clr.l   (a0)+
		dbf     d7,loc_126AE0
		movem.l (sp)+,d7-a0
		rts

	; End of function sub_126AD6


; =============== S U B R O U T I N E =======================================

sub_126AEE:
		movem.l d0/d3-a0,-(sp)
		moveq   #$20,d6 
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		move.w  d7,d3
		tst.w   ((byte_FFB5BE-$1000000)).w
		bpl.s   loc_126B0C
		move.w  #$B8,d6 
		move.w  #$A0,d5 
		bra.s   loc_126B14
loc_126B0C:
		move.w  #$48,d6 
		move.w  #$90,d5 
loc_126B14:
		moveq   #1,d4
		bsr.w   sub_126B20
		movem.l (sp)+,d0/d3-a0
		rts

	; End of function sub_126AEE


; =============== S U B R O U T I N E =======================================

sub_126B20:
		movem.l d7-a0,-(sp)
		lea     ((word_FFB5C0-$1000000)).w,a0
		moveq   #$13,d7
loc_126B2A:
		tst.w   4(a0)
		bne.w   loc_126B3C
		move.w  d6,(a0)+
		move.w  d5,(a0)+
		move.w  d4,(a0)+
		move.w  d3,(a0)+
		bra.s   loc_126B42
loc_126B3C:
		addq.l  #8,a0
		dbf     d7,loc_126B2A
loc_126B42:
		movem.l (sp)+,d7-a0
		rts

	; End of function sub_126B20


; START OF FUNCTION CHUNK FOR sub_12647E

loc_126B48:
		move.w  d3,-(sp)
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_12647E

		dc.w SFX_HIT
		lea     SpellPalette_Blaze(pc), a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		movea.l (p_SpellTiles_Blaze).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$C00,d0
		moveq   #2,d1
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3AndWait).l
		bsr.w   sub_126AD6
		move.w  (sp)+,d3
		move.b  d3,((byte_FFB5BE-$1000000)).w
		move.b  #4,((byte_FFB5BF-$1000000)).w
		clr.b   ((byte_FFB5BD-$1000000)).w
		move.b  #1,((byte_FFB5BC-$1000000)).w
		rts
SpellPalette_Freeze:
		incbin "data/graphics/battles/spells/palettes/spellpalette-freeze.bin"

; =============== S U B R O U T I N E =======================================

sub_126BA8:
		move.w  d3,-(sp)
		bsr.w   sub_126826
		lea     SpellPalette_Freeze(pc), a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		movea.l (p_SpellTiles_Freeze).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$420,d0
		moveq   #2,d1
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3AndWait).l
		move.w  (sp)+,d3
		rts

	; End of function sub_126BA8


; START OF FUNCTION CHUNK FOR sub_12647E

loc_126BE6:
		bsr.s   sub_126BA8
		bsr.w   sub_126AD6
		move.b  d3,((byte_FFB5BE-$1000000)).w
		move.b  #1,((byte_FFB5BF-$1000000)).w
		clr.b   ((byte_FFB5BD-$1000000)).w
		move.b  #1,((byte_FFB5BC-$1000000)).w
		moveq   #6,d2
		bra.w   loc_126686
loc_126C06:
		bsr.s   sub_126BA8
		bsr.w   sub_126AD6
		move.b  d3,((byte_FFB5BE-$1000000)).w
		move.b  #2,((byte_FFB5BF-$1000000)).w
		clr.b   ((byte_FFB5BD-$1000000)).w
		move.b  #1,((byte_FFB5BC-$1000000)).w
		moveq   #6,d2
		bra.w   loc_126686

; END OF FUNCTION CHUNK FOR sub_12647E

SpellPalette_DemonBlaze:
		incbin "data/graphics/battles/spells/palettes/spellpalette-demonblaze.bin"

; START OF FUNCTION CHUNK FOR sub_12647E

loc_126C30:
		movem.l d3,-(sp)
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_12647E

		dc.w SFX_FIRE_BREATH
		bsr.w   sub_1267AC
		lea     SpellPalette_DemonBlaze(pc), a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		movea.l (p_SpellTiles_DemonBlaze).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (sub_298).w
		jsr     (j_SetVIntParam3AndWait).w
		bsr.w   sub_126AD6
		movem.l (sp)+,d3
		move.b  d3,((byte_FFB5BE-$1000000)).w
		move.b  #$B,((byte_FFB5BF-$1000000)).w
		clr.b   ((byte_FFB5BD-$1000000)).w
		move.b  #1,((byte_FFB5BC-$1000000)).w
		moveq   #6,d2
		bra.w   loc_12668A
SpellPalette_Desoul:
		incbin "data/graphics/battles/spells/palettes/spellpalette-desoul.bin"

; START OF FUNCTION CHUNK FOR sub_12647E

loc_126C98:
		bsr.w   sub_126826
		lea     SpellPalette_Desoul(pc), a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		movea.l (p_SpellTiles_Desoul).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$800,d0
		moveq   #2,d1
		jsr     (sub_298).w
		jsr     (j_SetVIntParam3AndWait).w
		bsr.w   sub_126AD6
		move.b  d3,((byte_FFB5BE-$1000000)).w
		move.w  #$28,((word_FFB658-$1000000)).w 
		move.b  #5,((byte_FFB5BF-$1000000)).w
		clr.b   ((byte_FFB5BD-$1000000)).w
		move.b  #1,((byte_FFB5BC-$1000000)).w
		moveq   #2,d2
		bra.w   loc_126686

; END OF FUNCTION CHUNK FOR sub_12647E


; START OF FUNCTION CHUNK FOR sub_124A1A

loc_126CF0:
		lea     byte_126D1E(pc), a0
		nop
		moveq   #5,d7
loc_126CF8:
		move.l  a0,-(sp)
		movem.w d3-d4/d7,-(sp)
		moveq   #$20,d0 
		moveq   #1,d1
		clr.w   d2
		bsr.w   sub_12672A
		moveq   #2,d0
		jsr     (j_Sleep).l
		movem.w (sp)+,d3-d4/d7
		movea.l (sp)+,a0
		addq.l  #5,a0
		dbf     d7,loc_126CF8
		rts

; END OF FUNCTION CHUNK FOR sub_124A1A

byte_126D1E:    dc.b $F0
		dc.b $F0 
		dc.b $20
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $30 
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $40 
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $50 
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $60 
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0

; START OF FUNCTION CHUNK FOR sub_12647E

loc_126D3C:
		bsr.w   sub_12678E
		move.w  #$8E4,(word_FF002E).l
		move.w  #$260,(word_FF0030).l
		moveq   #$A,d2
		bra.s   loc_126D9A
loc_126D54:
		bsr.w   sub_12678E
		move.w  #$4EE,(word_FF002E).l
		move.w  #$6AA,(word_FF0030).l
		moveq   #8,d2
		bra.s   loc_126D9A
loc_126D6C:
		bsr.w   sub_12678E
		move.w  #$444,(word_FF002E).l
		move.w  #$222,(word_FF0030).l
		moveq   #3,d2
		bra.s   loc_126D9A
loc_126D84:
		bsr.w   sub_12678E
		move.w  #$88E,(word_FF002E).l
		move.w  #$44A,(word_FF0030).l
		moveq   #5,d2
loc_126D9A:
		move.w  #$EEE,(word_FF002C).l
		movem.w d2-d3,-(sp)
		jsr     (j_StoreVDPCommandster).l
		movea.l (p_SpellTiles_Status).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3AndWait).l
		bsr.w   sub_126AD6
		movem.w (sp)+,d2-d3
		move.b  d3,((byte_FFB5BE-$1000000)).w
		move.b  #6,((byte_FFB5BF-$1000000)).w
		clr.b   ((byte_FFB5BD-$1000000)).w
		move.b  #1,((byte_FFB5BC-$1000000)).w
		bra.w   loc_126686

; END OF FUNCTION CHUNK FOR sub_12647E

SpellPalette_HealAuraDetox:
		incbin "data/graphics/battles/spells/palettes/spellpalette-healauradetox.bin"

; START OF FUNCTION CHUNK FOR sub_12647E

loc_126DFE:
		move.w  d3,-(sp)
		lea     SpellPalette_HealAuraDetox(pc), a0
		andi.w  #7,d3
		subq.w  #1,d3
		mulu.w  #$A,d3
		adda.w  d3,a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		movea.l (p_SpellTiles_HealAuraDetox).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$800,d0
		moveq   #2,d1
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3AndWait).l
		move.w  (sp)+,d3
		bsr.w   sub_126AD6
		move.b  d3,((byte_FFB5BE-$1000000)).w
		move.b  #8,((byte_FFB5BF-$1000000)).w
		clr.b   ((byte_FFB5BD-$1000000)).w
		move.b  #1,((byte_FFB5BC-$1000000)).w
		move.w  d3,-(sp)
		clr.w   d6
		clr.w   d5
		moveq   #1,d4
		move.w  #$B0,d3 
		bsr.w   sub_126B20
		move.w  (sp)+,d3
		andi.w  #7,d3
		subq.w  #1,d3
		move.w  d3,d2
		bra.w   loc_126686

; END OF FUNCTION CHUNK FOR sub_12647E

SpellPalette_MachineGun1:
		incbin "data/graphics/battles/spells/palettes/spellpalette-machinegun1.bin"

; START OF FUNCTION CHUNK FOR sub_12647E

loc_126E82:
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_12647E

		dc.w SFX_MACHINE_GUN
		lea     SpellPalette_MachineGun1(pc), a0
		moveq   #$F,d4
		bra.w   loc_126EA0
SpellPalette_MachineGun2:
		incbin "data/graphics/battles/spells/palettes/spellpalette-machinegun2.bin"

; START OF FUNCTION CHUNK FOR sub_12647E

loc_126E9A:
		lea     SpellPalette_MachineGun2(pc), a0
		moveq   #$10,d4
loc_126EA0:
		movem.l d3-d4,-(sp)
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		movea.l (p_SpellTiles_MachineGun).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3AndWait).l
		movem.l (sp)+,d3-d4
		bsr.w   sub_126AD6
		move.b  d3,((byte_FFB5BE-$1000000)).w
		move.b  d4,((byte_FFB5BF-$1000000)).w
		clr.b   ((byte_FFB5BD-$1000000)).w
		move.b  #1,((byte_FFB5BC-$1000000)).w
		rts

; END OF FUNCTION CHUNK FOR sub_12647E

SpellPalette_FlyingDragon1:
		incbin "data/graphics/battles/spells/palettes/spellpalette-flyingdragon1.bin"
loc_126EFA:     lea     SpellPalette_FlyingDragon1(pc), a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
loc_126F10:     movea.l (p_SpellTiles_FlyingDragon).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3AndWait).l
		bsr.w   sub_126AD6
		move.b  #$81,((byte_FFB5BE-$1000000)).w
		move.b  #3,((byte_FFB5BF-$1000000)).w
		clr.b   ((byte_FFB5BD-$1000000)).w
		move.b  #1,((byte_FFB5BC-$1000000)).w
		rts
SpellPalette_FlyingDragon2:
		incbin "data/graphics/battles/spells/palettes/spellpalette-flyingdragon2"
loc_126F54:     lea     SpellPalette_FlyingDragon2(pc), a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		bra.w   loc_126F10
SpellPalette_ElectricBreath1:
		incbin "data/graphics/battles/spells/palettes/spellpalette-electricbreath1.bin"
loc_126F78:     bsr.w   sub_1267AC
		lea     SpellPalette_ElectricBreath1(pc), a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		move.b  #0,((byte_FFB5BE-$1000000)).w
loc_126F98:     trap    #SOUND_COMMAND
		dc.w SFX_ELECTRIC_BREATH
		movea.l (p_SpellTiles_ElectricBreath).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$C00,d0
		moveq   #2,d1
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3AndWait).l
		bsr.w   sub_126AD6
		move.b  #$11,((byte_FFB5BF-$1000000)).w
		clr.b   ((byte_FFB5BD-$1000000)).w
		move.b  #1,((byte_FFB5BC-$1000000)).w
		rts
SpellPalette_ElectricBreath2:
		incbin "data/graphics/battles/spells/palettes/spellpalette-electricbreath2.bin"
loc_126FDA:     bsr.w   sub_1267AC
		lea     SpellPalette_ElectricBreath2(pc), a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		move.b  #1,((byte_FFB5BE-$1000000)).w
		bra.w   loc_126F98
SpellPalette_Laser1:
		incbin "data/graphics/battles/spells/palettes/spellpalette-laser1.bin"
loc_127008:     moveq   #0,d3

; START OF FUNCTION CHUNK FOR sub_12647E

loc_12700A:
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_12647E

		dc.w SFX_LASER
		bsr.w   sub_1267AC
		lea     SpellPalette_Laser1(pc), a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		move.b  d3,((byte_FFB5BE-$1000000)).w
loc_12702C:     movea.l (p_SpellTiles_Laser).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$C00,d0
		moveq   #2,d1
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3AndWait).l
		bsr.w   sub_126AD6
		move.b  #$12,((byte_FFB5BF-$1000000)).w
		clr.b   ((byte_FFB5BD-$1000000)).w
		move.b  #1,((byte_FFB5BC-$1000000)).w
		rts
SpellPalette_Laser2:
		incbin "data/graphics/battles/spells/palettes/spellpalette-laser2.bin"
loc_12706A:     moveq   #1,d3

; START OF FUNCTION CHUNK FOR sub_12647E

loc_12706C:
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_12647E

		dc.w SFX_LASER
		bsr.w   sub_1267AC
		lea     SpellPalette_Laser2(pc), a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		move.b  d3,((byte_FFB5BE-$1000000)).w
		bra.w   loc_12702C
SpellPalette_BusterShot:
		incbin "data/graphics/battles/spells/palettes/spellpalette-bustershot.bin"
loc_12709C:     trap    #SOUND_COMMAND
		dc.w SFX_HIT
		bsr.w   sub_1267AC
		lea     SpellPalette_BusterShot(pc), a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		movea.l (p_SpellTiles_BusterShot).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3AndWait).l
		bsr.w   sub_126AD6
		move.b  #1,((byte_FFB5BE-$1000000)).w
		move.b  #$13,((byte_FFB5BF-$1000000)).w
		clr.b   ((byte_FFB5BD-$1000000)).w
		move.b  #1,((byte_FFB5BC-$1000000)).w
		rts
SpellPalette_EnergyWave:
		incbin "data/graphics/battles/spells/palettes/spellpalette-energywave.bin"
loc_1270FE:     lea     SpellPalette_EnergyWave(pc), a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		move.b  #$14,((byte_FFB5BF-$1000000)).w
loc_12711A:     trap    #SOUND_COMMAND
		dc.w SFX_ENERGY_WAVE
		movea.l (p_SpellTiles_EnergyWave).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$5A0,d0
		moveq   #2,d1
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3AndWait).l
		bsr.w   sub_126AD6
		move.b  #1,((byte_FFB5BE-$1000000)).w
		clr.b   ((byte_FFB5BD-$1000000)).w
		move.b  #1,((byte_FFB5BC-$1000000)).w
		rts
		dc.b  $C                ; unused spell animation palette?
		dc.b $EE 
		dc.b  $A
		dc.b $EE 
		dc.b   0
		dc.b $C0 
		dc.b   0
		dc.b $80 
		dc.b   0
		dc.b $40 
loc_12715C:     trap    #SOUND_COMMAND
		dc.w SFX_ENERGY_WAVE
		bsr.w   sub_1267AC
		lea     SpellPalette_EnergyWave(pc), a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		move.b  #$15,((byte_FFB5BF-$1000000)).w
		bra.s   loc_12711A
SpellPalette_FireBreath:
		incbin "data/graphics/battles/spells/palettes/spellpalette-firebreath.bin"

; =============== S U B R O U T I N E =======================================

sub_12718C:
		trap    #SOUND_COMMAND
		dc.w SFX_FIRE_BREATH
		move.w  d3,-(sp)
		bsr.w   sub_126908
		lea     SpellPalette_FireBreath(pc), a0
		lea     (word_FF002C).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_StoreVDPCommandster).l
		movea.l (p_SpellTiles_FireBreath).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$420,d0
		moveq   #2,d1
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3AndWait).l
		move.w  (sp)+,d3
		rts

	; End of function sub_12718C


; START OF FUNCTION CHUNK FOR sub_12647E

loc_1271CE:
		bsr.s   sub_12718C
		bsr.w   sub_126AD6
		move.b  d3,((byte_FFB5BE-$1000000)).w
		move.b  #$A,((byte_FFB5BF-$1000000)).w
		clr.b   ((byte_FFB5BD-$1000000)).w
		move.b  #1,((byte_FFB5BC-$1000000)).w
		moveq   #4,d2
		rts

; END OF FUNCTION CHUNK FOR sub_12647E


; =============== S U B R O U T I N E =======================================

sub_1271EC:
		movem.l d0-d3/a1-a2,-(sp)
		lea     ((byte_FFB4DA-$1000000)).w,a2
		lea     (SPRITE_TABLE).l,a1
		move.w  d0,d2
		move.w  d0,d3
		addq.w  #1,d2
		rol.w   #3,d0
		ext.l   d0
		adda.l  d0,a1
		move.w  (a0)+,6(a1)
		move.w  (a0)+,(a1)
		move.w  (a0)+,d0
		move.b  (a0)+,d1
		ext.w   d1
		rol.w   #8,d1
		or.w    d2,d1
		move.w  d1,2(a1)
		move.b  (a0)+,d1
		ext.w   d1
		ror.w   #3,d1
		move.b  (a0)+,d2
		ext.w   d2
		ror.w   #5,d2
		or.w    d1,d0
		or.w    d2,d0
		ori.w   #$8000,d0
		move.w  d0,4(a1)
		move.b  (a0)+,(a2,d3.w)
		movem.l (sp)+,d0-d3/a1-a2
		addq.w  #1,d0
		rts

	; End of function sub_1271EC

		dc.b $4A 
		dc.b $38 
		dc.b $B5 
		dc.b $BC 
		dc.b $66 
		dc.b   0
		dc.b   0
		dc.b   4
		rts
		clr.w   d7
		move.b  ((byte_FFB5BF-$1000000)).w,d7
		add.w   d7,d7
		move.w  off_127258(pc,d7.w),d7
		jmp     off_127258(pc,d7.w)
off_127258:     dc.w unk_127666-off_127258
		dc.w loc_127CAA-off_127258
		dc.w loc_127FC6-off_127258
		dc.w loc_127B5C-off_127258
		dc.w loc_127904-off_127258
		dc.w loc_1281FC-off_127258
		dc.w loc_1282E0-off_127258
		dc.w loc_127286-off_127258
		dc.w loc_128536-off_127258
		dc.w loc_128536-off_127258
		dc.w loc_127E74-off_127258
		dc.w loc_127A6E-off_127258
		dc.w locret_127284-off_127258
		dc.w locret_127284-off_127258
		dc.w locret_127284-off_127258
		dc.w loc_128730-off_127258
		dc.w loc_128798-off_127258
		dc.w loc_1288B4-off_127258
		dc.w loc_128A38-off_127258
		dc.w loc_128D04-off_127258
		dc.w loc_128E16-off_127258
		dc.w loc_128F04-off_127258
locret_127284:  rts
loc_127286:     clr.w   (PALETTE_1).l   
		lea     ((word_FFB5C0-$1000000)).w,a0
		moveq   #$22,d0 
		tst.w   4(a0)
		beq.w   loc_127378
		move.w  6(a0),d7
		addq.w  #1,6(a0)
		andi.w  #7,6(a0)
		move.w  (a0),d3
		move.w  2(a0),d4
		moveq   #3,d2
		moveq   #1,d1
		move.w  d7,-(sp)
		moveq   #7,d6
		jsr     (j_UpdateRandomSeed).l
		add.w   d7,d3
		subq.l  #3,d3
		jsr     (j_UpdateRandomSeed).l
		add.w   d7,d4
		subq.l  #3,d4
		move.w  (sp)+,d7
		lea     unk_127576(pc), a0
		move.b  ((byte_FFB5BE-$1000000)).w,d6
		andi.w  #7,d6
		cmpi.b  #2,d6
		bgt.s   loc_1272E0
		addq.w  #4,d7
loc_1272E0:     tst.b   ((byte_FFB5BD-$1000000)).w
		bpl.s   loc_1272EA
		move.w  #$120,d3
loc_1272EA:     mulu.w  #$14,d7
		adda.w  d7,a0
		bsr.w   sub_12672A
		lea     ((byte_FFB5E0-$1000000)).w,a0
		move.b  ((byte_FFB5BE-$1000000)).w,d7
		andi.w  #7,d7
		subq.w  #1,d7
		cmpi.w  #3,d7
		blt.s   loc_12730A
		subq.w  #1,d7
loc_12730A:     moveq   #$26,d0 
loc_12730C:     movem.l d0/d7-a0,-(sp)
		tst.w   4(a0)
		beq.w   loc_127378
		clr.w   d2
		move.w  (a0),d3
		move.w  2(a0),d4
		move.b  ((byte_FFB5BE-$1000000)).w,d6
		andi.w  #7,d6
		subq.w  #1,d6
		lsl.w   #2,d6
		move.l  a0,-(sp)
		lea     unk_12743A(pc), a0
		move.w  2(a0,d6.w),d5
		move.w  (a0,d6.w),d6
		movea.l (sp)+,a0
		jsr     (j_UpdateRandomSeed).l
		add.w   d5,d7
		tst.b   ((byte_FFB5BE-$1000000)).w
		bpl.s   loc_12734E
		moveq   #2,d1
		bra.s   loc_127350
loc_12734E:     moveq   #1,d1
loc_127350:     subq.w  #1,4(a0)
		bne.s   loc_127362
		clr.l   (a0)
		clr.l   4(a0)
		clr.w   d7
		move.w  #$FFD8,d4
loc_127362:     move.w  6(a0),d6
		add.w   d6,(a0)
		lea     unk_12744A(pc), a0
		mulu.w  #$19,d7
		adda.w  d7,a0
		moveq   #4,d2
		bsr.w   sub_12672A
loc_127378:     movem.l (sp)+,d0/d7-a0
		addq.w  #5,d0
		addq.w  #8,a0
		dbf     d7,loc_12730C
		tst.b   ((byte_FFB5BD-$1000000)).w
		bne.s   loc_12739C
		moveq   #$10,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.s   loc_12739C
		move.w  #$2EC,(PALETTE_1).l
loc_12739C:     cmpi.b  #$FF,((byte_FFB5BD-$1000000)).w
		beq.s   loc_1273AC
		bsr.w   loc_1273E0
		bra.w   loc_1273D8
loc_1273AC:     lea     ((byte_FFB5E4-$1000000)).w,a0
		clr.w   d0
		move.b  ((byte_FFB5BE-$1000000)).w,d7
		andi.w  #7,d7
		subq.w  #1,d7
		cmpi.w  #3,d7
		blt.s   loc_1273C4
		subq.w  #1,d7
loc_1273C4:     add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_1273C4
		tst.w   d0
		bne.s   loc_1273D8
		clr.b   ((byte_FFB5BC-$1000000)).w
		bsr.w   sub_126982
loc_1273D8:     jsr     (j_StoreVDPCommandster).l
		rts
loc_1273E0:     moveq   #$A,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.w   locret_127438
		tst.b   ((byte_FFB5BE-$1000000)).w
		bpl.s   loc_1273F8
		move.w  #$B0,d5 
		bra.s   loc_1273FC
loc_1273F8:     move.w  #$A0,d5 
loc_1273FC:     moveq   #$10,d6
		jsr     (j_UpdateRandomSeed).l
		sub.w   d6,d5
		moveq   #2,d6
		jsr     (j_UpdateRandomSeed).l
		add.w   d7,d7
		subq.w  #1,d7
		lsl.w   #2,d7
		move.w  d7,d3
		move.w  #$40,d6 
		jsr     (j_UpdateRandomSeed).w
		move.w  d7,d6
		addi.w  #$20,d6 
		tst.b   ((byte_FFB5BE-$1000000)).w
		bpl.s   loc_12742E
		addi.w  #$80,d6 
loc_12742E:     moveq   #$A,d4
		bsr.w   sub_126B20
		trap    #SOUND_COMMAND
		dc.w SFX_BOLT_SPELL
locret_127438:  rts
unk_12743A:     dc.b   0
		dc.b   4
		dc.w 0
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b   8
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $C
		dc.b   0
		dc.b   0
unk_12744A:     dc.b $E6 
		dc.b $90 
		dc.b $74 
		dc.b   7
		dc.b   3
		dc.b $EE 
		dc.b $B0 
		dc.b $6C 
		dc.b   7
		dc.b   0
		dc.b $F6 
		dc.b $D0 
		dc.b $6C 
		dc.b   7
		dc.b   3
		dc.b $EE 
		dc.b $F0 
		dc.b $60 
		dc.b  $D
		dc.b   0
		dc.b   0
		dc.b $78 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $F2 
		dc.b $90 
		dc.b $6C 
		dc.b   7
		dc.b   0
		dc.b $FA 
		dc.b $B0 
		dc.b $6C 
		dc.b   7
		dc.b   3
		dc.b   2
		dc.b $D0 
		dc.b $74 
		dc.b   7
		dc.b   0
		dc.b $F2 
		dc.b $F0 
		dc.b $60 
		dc.b  $D
		dc.b   0
		dc.b   0
		dc.b $78 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $FE 
		dc.b $90 
		dc.b $6C 
		dc.b   7
		dc.b   1
		dc.b $F6 
		dc.b $B0 
		dc.b $6C 
		dc.b   7
		dc.b   2
		dc.b $EE 
		dc.b $D0 
		dc.b $74 
		dc.b   7
		dc.b   1
		dc.b $EE 
		dc.b $F0 
		dc.b $60 
		dc.b  $D
		dc.b   1
		dc.b   0
		dc.b $78 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b $90 
		dc.b $74 
		dc.b   7
		dc.b   2
		dc.b   2
		dc.b $B0 
		dc.b $6C 
		dc.b   7
		dc.b   1
		dc.b $FA 
		dc.b $D0 
		dc.b $6C 
		dc.b   7
		dc.b   2
		dc.b $F0 
		dc.b $F0 
		dc.b $60 
		dc.b  $D
		dc.b   1
		dc.b   0
		dc.b $78 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $B6 
		dc.b $90 
		dc.b   0
		dc.b  $F
		dc.b   2
		dc.b $CE 
		dc.b $B0 
		dc.b   0
		dc.b  $F
		dc.b   1
		dc.b $DE 
		dc.b $D0 
		dc.b $20
		dc.b  $F
		dc.b   0
		dc.b $EE 
		dc.b $F0 
		dc.b $60 
		dc.b  $D
		dc.b   1
		dc.b   0
		dc.b $78 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $B6 
		dc.b $90 
		dc.b   0
		dc.b  $F
		dc.b   1
		dc.b $C6 
		dc.b $B0 
		dc.b   0
		dc.b  $F
		dc.b   2
		dc.b $DE 
		dc.b $D0 
		dc.b $10
		dc.b  $F
		dc.b   1
		dc.b $EE 
		dc.b $F0 
		dc.b $60 
		dc.b  $D
		dc.b   1
		dc.b   0
		dc.b $78 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $2A 
		dc.b $90 
		dc.b   0
		dc.b  $F
		dc.b   3
		dc.b $12
		dc.b $B0 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b   2
		dc.b $D0 
		dc.b $20
		dc.b  $F
		dc.b   1
		dc.b $F2 
		dc.b $F0 
		dc.b $60 
		dc.b  $D
		dc.b   0
		dc.b   0
		dc.b $78 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $2A 
		dc.b $90 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $1A
		dc.b $B0 
		dc.b   0
		dc.b  $F
		dc.b   3
		dc.b   2
		dc.b $D0 
		dc.b $10
		dc.b  $F
		dc.b   0
		dc.b $F2 
		dc.b $F0 
		dc.b $60 
		dc.b  $D
		dc.b   0
		dc.b   0
		dc.b $78 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $EC 
		dc.b $90 
		dc.b $30 
		dc.b  $B
		dc.b   0
		dc.b $E4 
		dc.b $B0 
		dc.b $3C 
		dc.b  $B
		dc.b   0
		dc.b $EC 
		dc.b $D0 
		dc.b $68 
		dc.b   5
		dc.b   0
		dc.b $E4 
		dc.b $E0 
		dc.b $48 
		dc.b   7
		dc.b   0
		dc.b $F4 
		dc.b $E0 
		dc.b $50 
		dc.b  $F
		dc.b   0
		dc.b $FC 
		dc.b $90 
		dc.b $30 
		dc.b  $B
		dc.b   1
		dc.b   4
		dc.b $B0 
		dc.b $3C 
		dc.b  $B
		dc.b   1
		dc.b   4
		dc.b $D0 
		dc.b $68 
		dc.b   5
		dc.b   1
		dc.b $EC 
		dc.b $E0 
		dc.b $50 
		dc.b  $F
		dc.b   1
		dc.b  $C
		dc.b $E0 
		dc.b $48 
		dc.b   7
		dc.b   1
		dc.b $EC 
		dc.b $90 
		dc.b $30 
		dc.b  $B
		dc.b   0
		dc.b $E4 
		dc.b $B0 
		dc.b $3C 
		dc.b  $B
		dc.b   0
		dc.b $EC 
		dc.b $D0 
		dc.b $68 
		dc.b   5
		dc.b   0
		dc.b $E4 
		dc.b $E0 
		dc.b $48 
		dc.b   7
		dc.b   0
		dc.b $F4 
		dc.b $E0 
		dc.b $50 
		dc.b  $F
		dc.b   0
		dc.b $FC 
		dc.b $90 
		dc.b $30 
		dc.b  $B
		dc.b   1
		dc.b   4
		dc.b $B0 
		dc.b $3C 
		dc.b  $B
		dc.b   1
		dc.b   4
		dc.b $D0 
		dc.b $68 
		dc.b   5
		dc.b   1
		dc.b $EC 
		dc.b $E0 
		dc.b $50 
		dc.b  $F
		dc.b   1
		dc.b  $C
		dc.b $E0 
		dc.b $48 
		dc.b   7
		dc.b   1
unk_127576:     dc.b $E8 
		dc.b $E8 
		dc.b $7C 
		dc.b  $A
		dc.b   0
		dc.b $E8 
		dc.b   0
		dc.b $85 
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b $E8 
		dc.b $8E 
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $97 
		dc.b  $A
		dc.b   0
		dc.b $E8 
		dc.b $E8 
		dc.b $8E 
		dc.b  $A
		dc.b   1
		dc.b $E8 
		dc.b   0
		dc.b $97 
		dc.b  $A
		dc.b   1
		dc.b   0
		dc.b $E8 
		dc.b $7C 
		dc.b  $A
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $85 
		dc.b  $A
		dc.b   1
		dc.b $E8 
		dc.b $E8 
		dc.b $85 
		dc.b  $A
		dc.b   2
		dc.b $E8 
		dc.b   0
		dc.b $7C 
		dc.b  $A
		dc.b   2
		dc.b   0
		dc.b $E8 
		dc.b $97 
		dc.b  $A
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b $8E 
		dc.b  $A
		dc.b   2
		dc.b $E8 
		dc.b $E8 
		dc.b $97 
		dc.b  $A
		dc.b   3
		dc.b $E8 
		dc.b   0
		dc.b $8E 
		dc.b  $A
		dc.b   3
		dc.b   0
		dc.b $E8 
		dc.b $85 
		dc.b  $A
		dc.b   3
		dc.b   0
		dc.b   0
		dc.b $7C 
		dc.b  $A
		dc.b   3
		dc.b $F0 
		dc.b $F0 
		dc.b $A0 
		dc.b   5
		dc.b   0
		dc.b $F0 
		dc.b   0
		dc.b $A4 
		dc.b   5
		dc.b   0
		dc.b   0
		dc.b $F0 
		dc.b $A8 
		dc.b   5
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AC 
		dc.b   5
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $A8 
		dc.b   5
		dc.b   1
		dc.b $F0 
		dc.b   0
		dc.b $AC 
		dc.b   5
		dc.b   1
		dc.b   0
		dc.b $F0 
		dc.b $A0 
		dc.b   5
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $A4 
		dc.b   5
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b $A4 
		dc.b   5
		dc.b   2
		dc.b $F0 
		dc.b   0
		dc.b $A0 
		dc.b   5
		dc.b   2
		dc.b   0
		dc.b $F0 
		dc.b $AC 
		dc.b   5
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b $A8 
		dc.b   5
		dc.b   2
		dc.b $F0 
		dc.b $F0 
		dc.b $AC 
		dc.b   5
		dc.b   3
		dc.b $F0 
		dc.b   0
		dc.b $A8 
		dc.b   5
		dc.b   3
		dc.b   0
		dc.b $F0 
		dc.b $A4 
		dc.b   5
		dc.b   3
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   5
		dc.b   3
		dc.b $F0 
		dc.b $F0 
		dc.b $B0 
		dc.b   5
		dc.b   0
		dc.b $F0 
		dc.b   0
		dc.b $B4 
		dc.b   5
		dc.b   0
		dc.b   0
		dc.b $F0 
		dc.b $B8 
		dc.b   5
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $BC 
		dc.b   5
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $B8 
		dc.b   5
		dc.b   1
		dc.b $F0 
		dc.b   0
		dc.b $BC 
		dc.b   5
		dc.b   1
		dc.b   0
		dc.b $F0 
		dc.b $B0 
		dc.b   5
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $B4 
		dc.b   5
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b $B4 
		dc.b   5
		dc.b   2
		dc.b $F0 
		dc.b   0
		dc.b $B0 
		dc.b   5
		dc.b   2
		dc.b   0
		dc.b $F0 
		dc.b $BC 
		dc.b   5
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b $B8 
		dc.b   5
		dc.b   2
		dc.b $F0 
		dc.b $F0 
		dc.b $BC 
		dc.b   5
		dc.b   3
		dc.b $F0 
		dc.b   0
		dc.b $B8 
		dc.b   5
		dc.b   3
		dc.b   0
		dc.b $F0 
		dc.b $B4 
		dc.b   5
		dc.b   3
		dc.b   0
		dc.b   0
		dc.b $B0 
		dc.b   5
		dc.b   3
unk_127666:     dc.b $42 
		dc.b $79 
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b $41 
		dc.b $F8 
		dc.b $B5 
		dc.b $C0 
		dc.b $70 
		dc.b $20
		dc.b $4A 
		dc.b $68 
		dc.b   0
		dc.b   4
		dc.b $67 
		dc.b   0
		dc.b   1
		dc.b $44 
		dc.b $3E 
		dc.b $28 
		dc.b   0
		dc.b   6
		dc.b $52 
		dc.b $68 
		dc.b   0
		dc.b   6
		dc.b   2
		dc.b $68 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b   6
		dc.b $E4 
		dc.b $4F 
		dc.b $36 
		dc.b $10
		dc.b $38 
		dc.b $28 
		dc.b   0
		dc.b   2
		dc.b $74 
		dc.b   1
		dc.b $4A 
		dc.b $38 
		dc.b $B5 
		dc.b $BE 
		dc.b $6A 
		dc.b   4
		dc.b $72 
		dc.b   2
		dc.b $60 
		dc.b   2
		dc.b $72 
		dc.b   1
		dc.b $41 
		dc.b $FA 
		dc.b   2
		dc.b $28 
		dc.b $1C
		dc.b $38 
		dc.b $B5 
		dc.b $BE 
		dc.b   2
		dc.b $46 
		dc.b   0
		dc.b   7
		dc.b  $C
		dc.b   6
		dc.b   0
		dc.b   2
		dc.b $6E 
		dc.b   2
		dc.b $54 
		dc.b $47 
		dc.b $4A 
		dc.b $38 
		dc.b $B5 
		dc.b $BD 
		dc.b $67 
		dc.b   4
		dc.b $36 
		dc.b $3C 
		dc.b   1
		dc.b $20
		dc.b $CE 
		dc.b $FC 
		dc.b   0
		dc.b  $A
		dc.b $D0 
		dc.b $C7 
		dc.b $61 
		dc.b   0
		dc.b $F0 
		dc.b $66 
		dc.b $41 
		dc.b $F8 
		dc.b $B5 
		dc.b $D0 
		dc.b $7E 
		dc.b $11
		dc.b $70 
		dc.b $22 
		dc.b $48 
		dc.b $E7 
		dc.b $81 
		dc.b $80 
		dc.b $4A 
		dc.b $68 
		dc.b   0
		dc.b   4
		dc.b $67 
		dc.b   0
		dc.b   0
		dc.b $E4 
		dc.b $42 
		dc.b $42 
		dc.b $36 
		dc.b $10
		dc.b $38 
		dc.b $28 
		dc.b   0
		dc.b   2
		dc.b $D8 
		dc.b $68 
		dc.b   0
		dc.b   6
		dc.b $50 
		dc.b $68 
		dc.b   0
		dc.b   2
		dc.b $7E 
		dc.b $14
		dc.b $1C
		dc.b $38 
		dc.b $B5 
		dc.b $BE 
		dc.b   2
		dc.b $46 
		dc.b   0
		dc.b   7
		dc.b  $C
		dc.b   6
		dc.b   0
		dc.b   4
		dc.b $66 
		dc.b   2
		dc.b $42 
		dc.b $47 
		dc.b  $C
		dc.b   6
		dc.b   0
		dc.b   3
		dc.b $66 
		dc.b   2
		dc.b $7E 
		dc.b  $A
		dc.b $48 
		dc.b $A7 
		dc.b   1
		dc.b   0
		dc.b $7C 
		dc.b   4
		dc.b $4E 
		dc.b $B9 
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b $E0 
		dc.b $E2 
		dc.b $4F 
		dc.b $4C 
		dc.b $9F 
		dc.b   0
		dc.b $80 
		dc.b $67 
		dc.b   2
		dc.b $5A 
		dc.b $47 
		dc.b  $C
		dc.b $68 
		dc.b   0
		dc.b $10
		dc.b   0
		dc.b   6
		dc.b $6E 
		dc.b   4
		dc.b $42 
		dc.b $41 
		dc.b $60 
		dc.b  $E
		dc.b  $C
		dc.b $68 
		dc.b   0
		dc.b $20
		dc.b   0
		dc.b   6
		dc.b $6E 
		dc.b   4
		dc.b $72 
		dc.b   1
		dc.b $60 
		dc.b   2
		dc.b $72 
		dc.b   2
		dc.b  $C
		dc.b $68 
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b $6D 
		dc.b  $C
		dc.b $42 
		dc.b $90 
		dc.b $42 
		dc.b $A8 
		dc.b   0
		dc.b   4
		dc.b $42 
		dc.b $47 
		dc.b $38 
		dc.b $3C 
		dc.b $FF
		dc.b $D8 
		dc.b  $C
		dc.b $68 
		dc.b   0
		dc.b $80 
		dc.b   0
		dc.b   2
		dc.b $66 
		dc.b $18
		dc.b $33 
		dc.b $FC 
		dc.b   0
		dc.b $6E 
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b $1E
		dc.b $38 
		dc.b $B5 
		dc.b $BE 
		dc.b   2
		dc.b $47 
		dc.b   0
		dc.b   7
		dc.b $53 
		dc.b $47 
		dc.b $E5 
		dc.b $4F 
		dc.b $31 
		dc.b $C7 
		dc.b $B6 
		dc.b $B8 
		dc.b  $C
		dc.b $68 
		dc.b   0
		dc.b $80 
		dc.b   0
		dc.b   2
		dc.b $6D 
		dc.b $1A
		dc.b $3E 
		dc.b $28 
		dc.b   0
		dc.b   2
		dc.b   4
		dc.b $47 
		dc.b   0
		dc.b $80 
		dc.b $EA 
		dc.b $4F 
		dc.b $5C 
		dc.b $47 
		dc.b $CE 
		dc.b $FC 
		dc.b   0
		dc.b   5
		dc.b $38 
		dc.b $3C 
		dc.b   0
		dc.b $80 
		dc.b $D8 
		dc.b $68 
		dc.b   0
		dc.b   6
		dc.b $60 
		dc.b $1C
		dc.b $3F 
		dc.b   7
		dc.b $7C 
		dc.b $FC 
		dc.b $4A 
		dc.b $38 
		dc.b $B5 
		dc.b $BE 
		dc.b $6A 
		dc.b   2
		dc.b $44 
		dc.b $46 
		dc.b $DD 
		dc.b $50 
		dc.b $7C 
		dc.b   9
		dc.b $4E 
		dc.b $B9 
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b $E0 
		dc.b $59 
		dc.b $87 
		dc.b $DF 
		dc.b $50 
		dc.b $3E 
		dc.b $1F
		dc.b $4A 
		dc.b $38 
		dc.b $B5 
		dc.b $BE 
		dc.b $6A 
		dc.b   4
		dc.b   6
		dc.b $47 
		dc.b   0
		dc.b $32 
		dc.b $41 
		dc.b $FA 
		dc.b   0
		dc.b $B2 
		dc.b $D0 
		dc.b $C7 
		dc.b $42 
		dc.b $42 
		dc.b $61 
		dc.b   0
		dc.b $EF 
		dc.b $70 
		dc.b $4C 
		dc.b $DF 
		dc.b   1
		dc.b $81 
		dc.b $52 
		dc.b $40 
		dc.b $50 
		dc.b $48 
		dc.b $51 
		dc.b $CF 
		dc.b $FF
		dc.b   8
		dc.b $4A 
		dc.b $38 
		dc.b $B5 
		dc.b $BD 
		dc.b $66 
		dc.b $12
		dc.b $7C 
		dc.b   8
		dc.b $4E 
		dc.b $B8 
		dc.b   2
		dc.b $E0 
		dc.b $E2 
		dc.b $4F 
		dc.b $66 
		dc.b   8
		dc.b $33 
		dc.b $FC 
		dc.b   0
		dc.b  $C
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b  $C
		dc.b $38 
		dc.b   0
		dc.b $FF
		dc.b $B5 
		dc.b $BD 
		dc.b $67 
		dc.b   8
		dc.b $61 
		dc.b   0
		dc.b   0
		dc.b $2E 
		dc.b $60 
		dc.b   0
		dc.b   0
		dc.b $1E
		dc.b $41 
		dc.b $F8 
		dc.b $B5 
		dc.b $D4 
		dc.b $42 
		dc.b $40 
		dc.b $7E 
		dc.b $11
		dc.b $D0 
		dc.b $50 
		dc.b $50 
		dc.b $88 
		dc.b $51 
		dc.b $CF 
		dc.b $FF
		dc.b $FA 
		dc.b $4A 
		dc.b $40 
		dc.b $66 
		dc.b   8
		dc.b $42 
		dc.b $38 
		dc.b $B5 
		dc.b $BC 
		dc.b $61 
		dc.b   0
		dc.b $F1 
		dc.b $78 
		dc.b $4E 
		dc.b $B9 
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b $24 
		dc.b $61 
		dc.b   0
		dc.b  $B
		dc.b $CE 
		dc.b $4E 
		dc.b $75 
		dc.b $7E 
		dc.b $14
		dc.b $1C
		dc.b $38 
		dc.b $B5 
		dc.b $BE 
		dc.b   2
		dc.b $46 
		dc.b   0
		dc.b   7
		dc.b  $C
		dc.b   6
		dc.b   0
		dc.b   1
		dc.b $67 
		dc.b   0
		dc.b   0
		dc.b $3A 
		dc.b $7C 
		dc.b  $A
		dc.b $4E 
		dc.b $B8 
		dc.b   2
		dc.b $E0 
		dc.b $E2 
		dc.b $4F 
		dc.b $66 
		dc.b   0
		dc.b   0
		dc.b $2E 
		dc.b $3C 
		dc.b $3C 
		dc.b   0
		dc.b $80 
		dc.b $4E 
		dc.b $B8 
		dc.b   2
		dc.b $E0 
		dc.b $3C 
		dc.b   7
		dc.b   6
		dc.b $46 
		dc.b   0
		dc.b $20
		dc.b $4A 
		dc.b $38 
		dc.b $B5 
		dc.b $BE 
		dc.b $6D 
		dc.b   4
		dc.b   6
		dc.b $46 
		dc.b   0
		dc.b $40 
		dc.b $7A 
		dc.b $E0 
		dc.b $3F 
		dc.b   6
		dc.b $7C 
		dc.b $20
		dc.b $4E 
		dc.b $B8 
		dc.b   2
		dc.b $E0 
		dc.b $36 
		dc.b   7
		dc.b $3C 
		dc.b $1F
		dc.b $78 
		dc.b   1
		dc.b $61 
		dc.b   0
		dc.b $F2 
		dc.b $C0 
		dc.b $4E 
		dc.b $75 
		dc.b $F0 
		dc.b $F0 
		dc.b $40 
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $50 
		dc.b  $F
		dc.b   0
		dc.b $F4 
		dc.b $F4 
		dc.b $80 
		dc.b  $A
		dc.b   0
		dc.b $F4 
		dc.b $F4 
		dc.b $89 
		dc.b  $A
		dc.b   0
		dc.b $F8 
		dc.b $F8 
		dc.b $92 
		dc.b   5
		dc.b   0
		dc.b $F8 
		dc.b $F8 
		dc.b $96 
		dc.b   5
		dc.b   0
		dc.b $EE 
		dc.b $F4 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $EE 
		dc.b $F6 
		dc.b $10
		dc.b  $F
		dc.b   0
		dc.b $ED 
		dc.b $F8 
		dc.b $20
		dc.b  $F
		dc.b   0
		dc.b $ED 
		dc.b $F9 
		dc.b $30 
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $40 
		dc.b  $F
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b $50 
		dc.b  $F
		dc.b   1
		dc.b $F4 
		dc.b $F4 
		dc.b $80 
		dc.b  $A
		dc.b   1
		dc.b $F4 
		dc.b $F4 
		dc.b $89 
		dc.b  $A
		dc.b   1
		dc.b $F8 
		dc.b $F8 
		dc.b $92 
		dc.b   5
		dc.b   1
		dc.b $F8 
		dc.b $F8 
		dc.b $96 
		dc.b   5
		dc.b   1
		dc.b $F2 
		dc.b $F4 
		dc.b   0
		dc.b  $F
		dc.b   1
		dc.b $F2 
		dc.b $F6 
		dc.b $10
		dc.b  $F
		dc.b   1
		dc.b $F3 
		dc.b $F8 
		dc.b $20
		dc.b  $F
		dc.b   1
		dc.b $F3 
		dc.b $F9 
		dc.b $30 
		dc.b  $F
		dc.b   1
		dc.b $F0 
		dc.b $C0 
		dc.b $60 
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $E0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $C0 
		dc.b $60 
		dc.b  $F
		dc.b   1
		dc.b $F0 
		dc.b $E0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $F4 
		dc.b $D0 
		dc.b $9A 
		dc.b  $A
		dc.b   0
		dc.b $F4 
		dc.b $E8 
		dc.b $A3 
		dc.b  $A
		dc.b   0
		dc.b $F4 
		dc.b $D0 
		dc.b $9A 
		dc.b  $A
		dc.b   1
		dc.b $F4 
		dc.b $E8 
		dc.b $A3 
		dc.b  $A
		dc.b   1
		dc.b $F8 
		dc.b $E0 
		dc.b $AC 
		dc.b   5
		dc.b   0
		dc.b $F8 
		dc.b $F0 
		dc.b $B0 
		dc.b   5
		dc.b   0
		dc.b $F8 
		dc.b $E0 
		dc.b $AC 
		dc.b   5
		dc.b   1
		dc.b $F8 
		dc.b $F0 
		dc.b $B0 
		dc.b   5
		dc.b   1
loc_127904:     clr.w   (PALETTE_1).l   
		clr.w   (word_FF0500).l 
		move.w  #$100,(word_FF0500+2).l
		lea     ((word_FFB5C0-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_127920:     movem.l d0/d7-a0,-(sp)
		tst.w   4(a0)
		beq.w   loc_12796C
		move.w  (a0),d3
		move.w  2(a0),d4
		clr.w   d2
		move.w  4(a0),d1
		subq.w  #1,d1
		move.w  6(a0),d7
		movem.l d7,-(sp)
		addq.w  #1,d7
		move.w  d7,6(a0)
		cmpi.w  #$28,d7 
		movem.l (sp)+,d7
		bne.s   loc_12795C
		clr.l   (a0)
		clr.l   4(a0)
		bra.w   loc_12796C
loc_12795C:     lsr.w   #2,d7
		lea     unk_127A3C(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   sub_12672A
loc_12796C:     movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_127920
		cmpi.b  #$FF,((byte_FFB5BD-$1000000)).w
		beq.s   loc_1279A4
		bsr.w   loc_1279D4
		moveq   #$20,d6 
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.s   loc_1279A0
		moveq   #4,d6
		jsr     (j_UpdateRandomSeed).w
		add.w   d7,(word_FF0500).l
		add.w   d7,(word_FF0500+2).l
loc_1279A0:     bra.w   loc_1279C0
loc_1279A4:     lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_1279AC:     add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_1279AC
		tst.w   d0
		bne.s   loc_1279C0
		clr.b   ((byte_FFB5BC-$1000000)).w
		bsr.w   sub_126982
loc_1279C0:     jsr     (j_StoreVDPCommandster).l
		jsr     (j_StoreVDPCommandsbis).l
		jsr     (j_SetVIntParam3).l
		rts
loc_1279D4:     moveq   #8,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.w   locret_127A3A
		moveq   #6,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		addq.w  #1,d7
		move.w  d7,d4
		move.w  #$60,d6 
		jsr     (j_UpdateRandomSeed).w
		andi.w  #$20,d7 
		move.w  d7,d3
		tst.b   ((byte_FFB5BE-$1000000)).w
		blt.s   loc_127A0C
		moveq   #2,d4
		move.w  #$28,d0 
		move.w  #$90,d1 
		bra.s   loc_127A16
loc_127A0C:     moveq   #3,d4
		move.w  #$A0,d0 
		move.w  #$A0,d1 
loc_127A16:     moveq   #$40,d6 
		jsr     (j_UpdateRandomSeed).w
		add.w   d7,d0
		moveq   #$20,d6 
		jsr     (j_UpdateRandomSeed).w
		sub.w   d7,d1
		move.w  d0,d6
		move.w  d1,d5
		bsr.w   sub_126B20
		trap    #SOUND_COMMAND
		dc.w SFX_TREASURE_CHEST
		move.w  #$EE,(PALETTE_1).l 
locret_127A3A:  rts
unk_127A3C:     dc.b $F0 
		dc.b $E0 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $E0 
		dc.b   0
		dc.b  $F
		dc.b   3
		dc.b $F0 
		dc.b $E0 
		dc.b $20
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $E0 
		dc.b $20
		dc.b  $F
		dc.b   3
		dc.b $F0 
		dc.b $E0 
		dc.b $10
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $E0 
		dc.b $10
		dc.b  $F
		dc.b   3
		dc.b $F0 
		dc.b $E0 
		dc.b $30 
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $E0 
		dc.b $30 
		dc.b  $F
		dc.b   3
		dc.b   0
		dc.b $78 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $78 
		dc.b   0
		dc.b   0
		dc.b   0
loc_127A6E:     clr.w   (PALETTE_1).l   
		lea     ((word_FFB5C0-$1000000)).w,a0
		moveq   #$B,d7
		moveq   #$20,d0 
loc_127A7C:     movem.l d0/d7-a0,-(sp)
		tst.w   4(a0)
		beq.w   loc_127B02
		move.w  (a0),d3
		addi.w  #$64,d3 
		move.w  4(a0),d7
		add.w   d7,(a0)
		movem.l d7,-(sp)
		lsr.w   #3,d7
		move.w  2(a0),d4
		sub.w   d7,2(a0)
		movem.l (sp)+,d7
		addq.w  #1,d7
		cmpi.w  #$10,d7
		bgt.s   loc_127AB2
		move.w  d7,4(a0)
loc_127AB2:     move.b  ((byte_FFB5BE-$1000000)).w,d2
		andi.b  #7,d2
		cmpi.b  #1,d2
		bne.s   loc_127AC4
		moveq   #1,d2
		bra.s   loc_127AC6
loc_127AC4:     clr.l   d2
loc_127AC6:     moveq   #2,d1
		cmpi.w  #$FFE0,d3
		blt.w   loc_127AD8
		cmpi.w  #$120,d3
		ble.w   loc_127AE8
loc_127AD8:     move.l  #0,(a0)
		clr.l   4(a0)
		clr.w   d7
		move.w  #$FFD8,d4
loc_127AE8:     lea     unk_127B4C(pc), a0
		move.b  ((byte_FFB5BE-$1000000)).w,d5
		andi.b  #7,d5
		cmpi.b  #1,d5
		beq.s   loc_127AFE
		lea     unk_127B56(pc), a0
loc_127AFE:     bsr.w   sub_12672A
loc_127B02:     movem.l (sp)+,d0/d7-a0
		addq.w  #2,d0
		addq.w  #8,a0
		dbf     d7,loc_127A7C
		cmpi.b  #$FF,((byte_FFB5BD-$1000000)).w
		beq.s   loc_127B1C
		bsr.w   loc_127C2A
		bra.s   loc_127B38
loc_127B1C:     lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$B,d7
loc_127B24:     add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_127B24
		tst.w   d0
		bne.s   loc_127B38
		clr.b   ((byte_FFB5BC-$1000000)).w
		bsr.w   sub_126982
loc_127B38:     jsr     (j_StoreVDPCommandster).w
		bne.s   locret_127B4A
		jsr     (j_StoreVDPCommandsbis).l
		jsr     (j_SetVIntParam3).l
locret_127B4A:  rts
unk_127B4C:     dc.b $E0 
		dc.b $E0 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b   0
		dc.b $E0 
		dc.b $10
		dc.b  $F
		dc.b   0
unk_127B56:     dc.b $E0 
		dc.b $E0 
		dc.b $20
		dc.b  $F
		dc.b   0
		dc.b $FF
loc_127B5C:     clr.w   (PALETTE_1).l   
		lea     ((word_FFB5C0-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_127B6A:     movem.l d0/d7-a0,-(sp)
		tst.w   4(a0)
		beq.w   loc_127BDE
		move.w  (a0),d3
		move.w  4(a0),d7
		btst    #7,((byte_FFB5BE-$1000000)).w
		beq.s   loc_127B88
		sub.w   d7,(a0)
		bra.s   loc_127B8A
loc_127B88:     add.w   d7,(a0)
loc_127B8A:     movem.l d7,-(sp)
		lsr.w   #3,d7
		move.w  2(a0),d4
		btst    #7,((byte_FFB5BE-$1000000)).w
		beq.s   loc_127BA2
		sub.w   d7,2(a0)
		bra.s   loc_127BA6
loc_127BA2:     add.w   d7,2(a0)
loc_127BA6:     movem.l (sp)+,d7
		addq.w  #1,d7
		cmpi.w  #$10,d7
		bgt.s   loc_127BB6
		move.w  d7,4(a0)
loc_127BB6:     clr.w   d2
		moveq   #1,d1
		cmpi.w  #$120,d3
		bgt.w   loc_127BCA
		cmpi.w  #$FFE0,d3
		bge.w   loc_127BD6
loc_127BCA:     clr.l   (a0)
		clr.l   4(a0)
		clr.w   d7
		move.w  #$FFD8,d4
loc_127BD6:     lea     unk_127C9C(pc), a0
		bsr.w   sub_12672A
loc_127BDE:     movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_127B6A
		cmpi.b  #$FF,((byte_FFB5BD-$1000000)).w
		beq.s   loc_127BFA
		bsr.w   loc_127C2A
		bra.w   loc_127C16
loc_127BFA:     lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_127C02:     add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_127C02
		tst.w   d0
		bne.s   loc_127C16
		clr.b   ((byte_FFB5BC-$1000000)).w
		bsr.w   sub_126982
loc_127C16:     jsr     (j_StoreVDPCommandster).w
		bne.s   locret_127C28
		jsr     (j_StoreVDPCommandsbis).l
		jsr     (j_SetVIntParam3).l
locret_127C28:  rts
loc_127C2A:     movem.l d7,-(sp)
		moveq   #8,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.w   loc_127C72
		btst    #7,((byte_FFB5BE-$1000000)).w
		bne.w   loc_127C78
		moveq   #4,d4
		clr.w   d3
		moveq   #$18,d6
		jsr     (j_UpdateRandomSeed).w
		movem.l d7,-(sp)
		moveq   #$30,d6 
		jsr     (j_UpdateRandomSeed).w
		move.w  #$90,d5 
		sub.w   d7,d5
		movem.l (sp)+,d6
loc_127C62:     bsr.w   sub_126B20
		trap    #SOUND_COMMAND
		dc.w SFX_BOW_MASTER
		move.w  #$CCC,(PALETTE_1).l
loc_127C72:     movem.l (sp)+,d7
		rts
loc_127C78:     clr.w   d3
		moveq   #$18,d6
		jsr     (j_UpdateRandomSeed).w
		addi.w  #$E8,d7 
		movem.l d7,-(sp)
		moveq   #$60,d6 
		jsr     (j_UpdateRandomSeed).w
		move.w  #$90,d5 
		sub.w   d7,d5
		movem.l (sp)+,d6
		moveq   #1,d4
		bra.s   loc_127C62
unk_127C9C:     dc.b $F0 
		dc.b $F0 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b   0
		dc.b  $F
		dc.b   1
off_127CA6:     dc.l loc_100FE+2
loc_127CAA:     clr.w   (PALETTE_1).l   
		lea     ((word_FFB5C0-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_127CB8:     movem.l d0/d7-a0,-(sp)
		tst.w   4(a0)
		beq.w   loc_127D98
		clr.w   d2
		move.w  (a0),d6
		move.w  2(a0),d7
		jsr     (sub_314).l
		addi.w  #$48,d7 
		move.w  d7,d3
		move.w  (a0),d7
		lsr.w   #1,d7
		add.w   d7,d3
		move.w  2(a0),d7
		lsr.w   #2,d6
		subi.w  #$40,d7 
		jsr     (sub_314).l
		addi.w  #$80,d7 
		move.w  d7,d4
		move.w  (a0),d7
		lsr.w   #1,d7
		sub.w   d7,d4
		subq.w  #8,2(a0)
		andi.w  #$FF,2(a0)
		moveq   #4,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.s   loc_127D14
		subq.w  #1,(a0)
		beq.w   loc_127D7C
loc_127D14:     cmpi.w  #$10,(a0)
		bgt.s   loc_127D20
		moveq   #1,d1
		bra.w   loc_127D32
loc_127D20:     move.w  2(a0),d7
		lsr.w   #6,d7
		move.l  a0,-(sp)
		lea     off_127CA6(pc), a0
		move.b  (a0,d7.w),d1
		movea.l (sp)+,a0
loc_127D32:     move.w  6(a0),d7
		movem.l d7,-(sp)
		subq.w  #1,d7
		cmpi.b  #$FF,((byte_FFB5BD-$1000000)).w
		beq.s   loc_127D6A
		cmpi.b  #2,((byte_FFB5BE-$1000000)).w
		bgt.s   loc_127D56
		cmpi.w  #7,d7
		bne.s   loc_127D54
		moveq   #$17,d7
loc_127D54:     bra.s   loc_127D6A
loc_127D56:     move.w  d7,d6
		andi.w  #$3F,d6 
		cmpi.w  #$F,d6
		bne.s   loc_127D6A
		andi.w  #$40,d7 
		ori.w   #$2F,d7 
loc_127D6A:     move.w  d7,6(a0)
		andi.w  #$3F,d7 
		cmpi.w  #$3F,d7 
		movem.l (sp)+,d7
		bne.s   loc_127D88
loc_127D7C:     clr.l   (a0)
		clr.l   4(a0)
		clr.w   d7
		move.w  #$FFD8,d4
loc_127D88:     lsr.w   #2,d7
		lea     unk_12815C(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   sub_12672A
loc_127D98:     movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_127CB8
		tst.b   ((byte_FFB5BD-$1000000)).w
		bne.s   loc_127DBC
		moveq   #4,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.s   loc_127DBC
		move.w  #$EA0,(PALETTE_1).l
loc_127DBC:     cmpi.b  #$FF,((byte_FFB5BD-$1000000)).w
		beq.s   loc_127DCC
		bsr.w   loc_127DEE
		bra.w   loc_127DE8
loc_127DCC:     lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_127DD4:     add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_127DD4
		tst.w   d0
		bne.s   loc_127DE8
		clr.b   ((byte_FFB5BC-$1000000)).w
		bsr.w   sub_126982
loc_127DE8:     jsr     (j_StoreVDPCommandster).w
		rts
loc_127DEE:     movem.l d7,-(sp)
		clr.w   d7
		move.b  ((byte_FFB5BE-$1000000)).w,d7
		subq.l  #1,d7
		add.w   d7,d7
		move.w  off_127E04(pc,d7.w),d7
		jmp     off_127E04(pc,d7.w)
off_127E04:     dc.w loc_127E12-off_127E04
		dc.w loc_127E12-off_127E04
		dc.w loc_127E0C-off_127E04
		dc.w loc_127E18-off_127E04
loc_127E0C:     moveq   #$37,d3 
		bra.w   loc_127E2A
loc_127E12:     moveq   #$27,d3 
		bra.w   loc_127E2A
loc_127E18:     move.w  #$C0,d6 
		jsr     (j_UpdateRandomSeed).w
		andi.w  #$40,d7 
		addi.w  #$37,d7 
		move.w  d7,d3
loc_127E2A:     moveq   #$20,d6 
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.w   loc_127E6E
		moveq   #6,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		addq.w  #1,d7
		move.w  d7,d4
		moveq   #$20,d6 
		jsr     (j_UpdateRandomSeed).w
		addi.w  #$60,d7 
		movem.l d7,-(sp)
		move.w  #$100,d6
		jsr     (j_UpdateRandomSeed).w
		sub.w   d7,d5
		movem.l (sp)+,d6
		bsr.w   sub_126B20
		trap    #SOUND_COMMAND
		dc.w SFX_TINKLING
		move.w  #$A20,(PALETTE_1).l
loc_127E6E:     movem.l (sp)+,d7
		rts
loc_127E74:     clr.w   (PALETTE_1).l   
		lea     ((word_FFB5C0-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_127E82:     movem.l d0/d7-a0,-(sp)
		tst.w   4(a0)
		beq.w   loc_127F30
		clr.w   d2
		move.w  (a0),d6
		move.w  2(a0),d7
		moveq   #$38,d3 
		sub.w   d6,d3
		move.w  d3,d4
		add.w   d3,d3
		add.w   d4,d3
		lsr.w   #2,d3
		move.w  d7,-(sp)
		lsr.w   #1,d6
		jsr     (sub_314).l
		addi.w  #$80,d7 
		sub.w   d3,d7
		move.w  d7,d3
		move.w  (sp)+,d7
		subi.w  #$40,d7 
		jsr     (sub_314).l
		addi.w  #$70,d7 
		move.w  d7,d4
		subi.w  #$C,2(a0)
		andi.w  #$FF,2(a0)
		addq.w  #1,(a0)
		moveq   #2,d1
		move.w  6(a0),d7
		movem.l d7,-(sp)
		movem.l d7,-(sp)
		moveq   #4,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		movem.l (sp)+,d7
		bne.s   loc_127EF2
		addq.w  #1,d7
loc_127EF2:     move.w  d7,6(a0)
		andi.w  #$3F,d7 
		cmpi.w  #$38,d7 
		movem.l (sp)+,d7
		bne.s   loc_127F20
		clr.l   (a0)
		clr.l   4(a0)
		clr.w   d7
		move.w  #$FFD8,d4
		movem.l d0,-(sp)
		move.w  #$6E,(PALETTE_1).l 
		movem.l (sp)+,d0
loc_127F20:     lsr.w   #2,d7
		lea     unk_12815C(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   sub_12672A
loc_127F30:     movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_127E82
		tst.b   ((byte_FFB5BD-$1000000)).w
		bne.s   loc_127F54
		moveq   #4,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.s   loc_127F54
		move.w  #$C,(PALETTE_1).l
loc_127F54:     cmpi.b  #$FF,((byte_FFB5BD-$1000000)).w
		beq.s   loc_127F64
		bsr.w   sub_127F86
		bra.w   loc_127F80
loc_127F64:     lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_127F6C:     add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_127F6C
		tst.w   d0
		bne.s   loc_127F80
		clr.b   ((byte_FFB5BC-$1000000)).w
		bsr.w   sub_126982
loc_127F80:     jsr     (j_StoreVDPCommandster).w
		rts

; =============== S U B R O U T I N E =======================================

sub_127F86:
		movem.l d7,-(sp)
		clr.w   d3
		moveq   #$A,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.w   loc_127FC0
		moveq   #6,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		addq.w  #1,d7
		move.w  d7,d4
		moveq   #$10,d6
		jsr     (j_UpdateRandomSeed).w
		movem.l d7,-(sp)
		move.w  #$100,d6
		jsr     (j_UpdateRandomSeed).w
		sub.w   d7,d5
		movem.l (sp)+,d6
		bsr.w   sub_126B20
loc_127FC0:
		movem.l (sp)+,d7
		rts

	; End of function sub_127F86

loc_127FC6:     clr.w   (PALETTE_1).l   
		lea     ((word_FFB5C0-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_127FD4:     movem.l d0/d7-a0,-(sp)
		tst.w   4(a0)
		beq.w   loc_12809A
		clr.w   d2
		move.w  (a0),d6
		move.w  2(a0),d7
		moveq   #$38,d3 
		sub.w   d6,d3
		move.w  d3,d4
		add.w   d3,d3
		add.w   d4,d3
		lsr.w   #2,d3
		move.w  d7,-(sp)
		jsr     (sub_314).l
		addi.w  #$80,d7 
		sub.w   d3,d7
		move.w  d7,d3
		move.w  (sp)+,d7
		lsr.w   #1,d6
		subi.w  #$40,d7 
		jsr     (sub_314).l
		addi.w  #$70,d7 
		move.w  d7,d4
		subq.w  #8,2(a0)
		andi.w  #$FF,2(a0)
		addq.w  #1,(a0)
		moveq   #2,d1
		move.w  6(a0),d7
		movem.l d7,-(sp)
		movem.l d7,-(sp)
		moveq   #4,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		movem.l (sp)+,d7
		bne.s   loc_128042
		addq.w  #1,d7
loc_128042:     cmpi.b  #2,((byte_FFB5BE-$1000000)).w
		bgt.s   loc_128058
		cmpi.w  #$28,d7 
		bne.s   loc_128058
		movem.l (sp)+,d7
		bra.w   loc_12806A
loc_128058:     move.w  d7,6(a0)
		andi.w  #$3F,d7 
		cmpi.w  #$38,d7 
		movem.l (sp)+,d7
		bne.s   loc_12808A
loc_12806A:     clr.l   (a0)
		clr.l   4(a0)
		clr.w   d7
		move.w  #$FFD8,d4
		movem.l d0,-(sp)
		trap    #SOUND_COMMAND
		dc.w SFX_TINKLING
		move.w  #$EA0,(PALETTE_1).l
		movem.l (sp)+,d0
loc_12808A:     lsr.w   #2,d7
		lea     unk_12815C(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   sub_12672A
loc_12809A:     movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_127FD4
		tst.b   ((byte_FFB5BD-$1000000)).w
		bne.s   loc_1280BE
		moveq   #4,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.s   loc_1280BE
		move.w  #$EA0,(PALETTE_1).l
loc_1280BE:     cmpi.b  #$FF,((byte_FFB5BD-$1000000)).w
		beq.s   loc_1280CE
		bsr.w   loc_1280F0
		bra.w   loc_1280EA
loc_1280CE:     lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_1280D6:     add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_1280D6
		tst.w   d0
		bne.s   loc_1280EA
		clr.b   ((byte_FFB5BC-$1000000)).w
		bsr.w   sub_126982
loc_1280EA:     jsr     (j_StoreVDPCommandster).w
		rts
loc_1280F0:     movem.l d7,-(sp)
		clr.w   d7
		move.b  ((byte_FFB5BE-$1000000)).w,d7
		subq.l  #1,d7
		add.w   d7,d7
		move.w  off_128106(pc,d7.w),d7
		jmp     off_128106(pc,d7.w)
off_128106:     dc.w loc_12810E-off_128106
		dc.w loc_12810E-off_128106
		dc.w loc_12810E-off_128106
		dc.w loc_128114-off_128106
loc_12810E:     clr.w   d3
		bra.w   loc_128122
loc_128114:     move.w  #$C0,d6 
		jsr     (j_UpdateRandomSeed).w
		andi.w  #$40,d7 
		move.w  d7,d3
loc_128122:     moveq   #$10,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.w   loc_128156
		moveq   #6,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		addq.w  #1,d7
		move.w  d7,d4
		moveq   #$10,d6
		jsr     (j_UpdateRandomSeed).w
		movem.l d7,-(sp)
		move.w  #$100,d6
		jsr     (j_UpdateRandomSeed).w
		sub.w   d7,d5
		movem.l (sp)+,d6
		bsr.w   sub_126B20
loc_128156:     movem.l (sp)+,d7
		rts
unk_12815C:     dc.b $FC 
		dc.b $FC 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b $FC 
		dc.b $FC 
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b   1
		dc.b   0
		dc.b   1
		dc.b $FC 
		dc.b $FC 
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b   2
		dc.b   0
		dc.b   1
		dc.b $FC 
		dc.b $FC 
		dc.b   3
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b   3
		dc.b   0
		dc.b   1
		dc.b $F8 
		dc.b $F8 
		dc.b   4
		dc.b   5
		dc.b   0
		dc.b $F8 
		dc.b $F8 
		dc.b   4
		dc.b   5
		dc.b   1
		dc.b $F4 
		dc.b $F4 
		dc.b   8
		dc.b  $A
		dc.b   0
		dc.b $F4 
		dc.b $F4 
		dc.b   8
		dc.b  $A
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b $11
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $11
		dc.b  $F
		dc.b   1
		dc.b   0
		dc.b $78 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $78 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b $21 
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b $21 
		dc.b   0
		dc.b   1
		dc.b $FC 
		dc.b $FC 
		dc.b $22 
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b $22 
		dc.b   0
		dc.b   1
		dc.b $FC 
		dc.b $FC 
		dc.b $23 
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b $23 
		dc.b   0
		dc.b   1
		dc.b $FC 
		dc.b $FC 
		dc.b $24 
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b $24 
		dc.b   0
		dc.b   1
		dc.b $F8 
		dc.b $F8 
		dc.b $25 
		dc.b   5
		dc.b   0
		dc.b $F8 
		dc.b $F8 
		dc.b $25 
		dc.b   5
		dc.b   1
		dc.b $F4 
		dc.b $F4 
		dc.b $29 
		dc.b  $A
		dc.b   0
		dc.b $F4 
		dc.b $F4 
		dc.b $29 
		dc.b  $A
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b $32 
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $32 
		dc.b  $F
		dc.b   1
		dc.b   0
		dc.b $88 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88 
		dc.b   0
		dc.b   0
		dc.b   0
loc_1281FC:     clr.w   (PALETTE_1).l   
		lea     ((word_FFB658-$1000000)).w,a0
		tst.w   (a0)
		beq.w   loc_12825C
		movem.l a0,-(sp)
		move.w  #$80,d3 
		move.w  (a0),d6
		move.w  2(a0),d7
		jsr     (sub_314).l
		add.w   d7,d3
		move.w  #$60,d4 
		lsr.w   #2,d6
		move.w  2(a0),d7
		subi.w  #$40,d7 
		jsr     (sub_314).l
		add.w   d7,d4
		move.w  2(a0),d7
		lsr.w   #6,d7
		andi.w  #3,d7
		moveq   #$20,d0 
		bsr.w   loc_12829E
		movem.l (sp)+,a0
		moveq   #8,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.s   loc_128258
		addq.w  #1,(a0)
loc_128258:     addq.w  #2,2(a0)
loc_12825C:     moveq   #6,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.s   loc_12826E
		move.w  #$888,(PALETTE_1).l
loc_12826E:     cmpi.b  #$FF,((byte_FFB5BD-$1000000)).w
		bne.s   loc_128298
		lea     ((word_FFB658-$1000000)).w,a0
		tst.w   (a0)
		beq.w   loc_12828C
		addq.w  #2,(a0)
		cmpi.w  #$12C,(a0)
		ble.w   loc_128298
		clr.w   (a0)
loc_12828C:     clr.b   ((byte_FFB5BC-$1000000)).w
		bsr.w   sub_126704
		bsr.w   sub_126982
loc_128298:     jsr     (j_StoreVDPCommandster).w
		rts
loc_12829E:     add.w   d7,d7
		move.w  off_1282A8(pc,d7.w),d7
		jmp     off_1282A8(pc,d7.w)
off_1282A8:     dc.w loc_1282B8-off_1282A8
		dc.w loc_1282B0-off_1282A8
		dc.w loc_1282B0-off_1282A8
		dc.w loc_1282B8-off_1282A8
loc_1282B0:     lea     unk_1282CC(pc), a0
		moveq   #1,d1
		bra.s   loc_1282BE
loc_1282B8:     lea     unk_1282D6(pc), a0
		clr.w   d1
loc_1282BE:     moveq   #1,d2
		tst.b   ((byte_FFB5BE-$1000000)).w
		bne.s   loc_1282C8
		addq.w  #1,d1
loc_1282C8:     bra.w   sub_12672A
unk_1282CC:     dc.b $E0 
		dc.b $E0 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b   0
		dc.b $E0 
		dc.b $10
		dc.b  $F
		dc.b   0
unk_1282D6:     dc.b $E0 
		dc.b $E0 
		dc.b $10
		dc.b  $F
		dc.b   1
		dc.b   0
		dc.b $E0 
		dc.b   0
		dc.b  $F
		dc.b   1
loc_1282E0:     lea     ((word_FFB5C0-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_1282E8:     movem.l d0/d7-a0,-(sp)
		tst.w   4(a0)
		beq.w   loc_12833A
		move.w  (a0),d3
		move.w  2(a0),d4
		clr.w   d2
		move.w  4(a0),d1
		subq.w  #1,d1
		move.w  6(a0),d7
		movem.l d7,-(sp)
		addq.w  #1,d7
		move.w  d7,6(a0)
		andi.w  #$1F,d7
		cmpi.w  #$18,d7
		movem.l (sp)+,d7
		bne.s   loc_12832A
		clr.l   (a0)
		clr.l   4(a0)
		move.w  #$FFE0,d4
		clr.w   d7
loc_12832A:     lsr.w   #2,d7
		lea     unk_1283C4(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   sub_12672A
loc_12833A:     movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_1282E8
		cmpi.b  #$FF,((byte_FFB5BD-$1000000)).w
		beq.s   loc_128356
		bsr.w   sub_12837A
		bra.w   locret_128378
loc_128356:     lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_12835E:     add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_12835E
		tst.w   d0
		bne.s   locret_128378
		clr.b   ((byte_FFB5BC-$1000000)).w
		bsr.w   sub_126982
		jsr     (j_StoreVDPCommandster).l
locret_128378:  rts

; =============== S U B R O U T I N E =======================================

sub_12837A:
		movem.l d7,-(sp)
		clr.w   d3
		moveq   #$10,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.w   loc_1283BE
		tst.b   ((byte_FFB5BE-$1000000)).w
		bpl.s   loc_12839C
		move.w  #$D0,d0 
		moveq   #$70,d1 
		moveq   #3,d4
		bra.s   loc_1283A2
loc_12839C:
		moveq   #$60,d0 
		moveq   #$60,d1 
		moveq   #2,d4
loc_1283A2:
		moveq   #$30,d6 
		jsr     (j_UpdateRandomSeed).l
		sub.w   d7,d0
		moveq   #$30,d6 
		jsr     (j_UpdateRandomSeed).l
		sub.w   d7,d1
		move.w  d0,d6
		move.w  d1,d5
		bsr.w   sub_126B20
loc_1283BE:
		movem.l (sp)+,d7
		rts

	; End of function sub_12837A

unk_1283C4:     dc.b $F0 
		dc.b $F0 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b   0
		dc.b  $F
		dc.b   3
		dc.b $F0 
		dc.b $F0 
		dc.b $10
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $10
		dc.b  $F
		dc.b   3
		dc.b $F0 
		dc.b $F0 
		dc.b $20
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $20
		dc.b  $F
		dc.b   3
		dc.b $3C 
		dc.b $38 
		dc.b $B6 
		dc.b $B8 
		dc.b $66 
		dc.b   8
		dc.b $42 
		dc.b $40 
		dc.b $60 
		dc.b   0
		dc.b   0
		dc.b $20
		dc.b $60 
		dc.b $1C
		dc.b $53 
		dc.b $46 
		dc.b $31 
		dc.b $C6 
		dc.b $B6 
		dc.b $B8 
		dc.b $4E 
		dc.b $B9 
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b $E0 
		dc.b $30 
		dc.b   7
		dc.b $7C 
		dc.b   4
		dc.b $4E 
		dc.b $B9 
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b $E0 
		dc.b $E2 
		dc.b $4F 
		dc.b $66 
		dc.b   2
		dc.b $44 
		dc.b $40 
		dc.b $3C 
		dc.b   0
		dc.b   6
		dc.b $46 
		dc.b   1
		dc.b   0
		dc.b $41 
		dc.b $F9 
		dc.b   0
		dc.b $FF
		dc.b   5
		dc.b   0
		dc.b $30 
		dc.b $C0 
		dc.b $30 
		dc.b $C6 
		dc.b $4E 
		dc.b $B9 
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b $88 
		dc.b $4E 
		dc.b $75 
unk_128424:     dc.b $3C 
		dc.b $3C 
		dc.b   0
		dc.b $78 
		dc.b $3E 
		dc.b $28 
		dc.b   0
		dc.b   6
		dc.b $4E 
		dc.b $B9 
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b $14
		dc.b   6
		dc.b $47 
		dc.b   0
		dc.b $60 
		dc.b $36 
		dc.b   7
		dc.b $30 
		dc.b $83 
		dc.b $3E 
		dc.b $28 
		dc.b   0
		dc.b   6
		dc.b $E4 
		dc.b $4E 
		dc.b   4
		dc.b $47 
		dc.b   0
		dc.b $48 
		dc.b $4E 
		dc.b $B9 
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b $14
		dc.b   6
		dc.b $47 
		dc.b   0
		dc.b $40 
		dc.b $38 
		dc.b   7
		dc.b $31 
		dc.b $44 
		dc.b   0
		dc.b   2
		dc.b $3E 
		dc.b $28 
		dc.b   0
		dc.b   6
		dc.b $EC 
		dc.b $4F 
		dc.b $DE 
		dc.b $47 
		dc.b $32 
		dc.b $28 
		dc.b   0
		dc.b   6
		dc.b $E4 
		dc.b $49 
		dc.b   2
		dc.b $41 
		dc.b   0
		dc.b   1
		dc.b $8E 
		dc.b $41 
		dc.b $55 
		dc.b $68 
		dc.b   0
		dc.b   6
		dc.b  $C
		dc.b $68 
		dc.b   0
		dc.b $40 
		dc.b   0
		dc.b   6
		dc.b $66 
		dc.b   6
		dc.b $31 
		dc.b $7C 
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b   4
		dc.b $4E 
		dc.b $75 
unk_12847C:     dc.b $3C 
		dc.b $3C 
		dc.b   0
		dc.b $3C 
		dc.b $3E 
		dc.b $28 
		dc.b   0
		dc.b   6
		dc.b $4E 
		dc.b $B9 
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b $14
		dc.b   6
		dc.b $47 
		dc.b   0
		dc.b $9C 
		dc.b $36 
		dc.b   7
		dc.b $30 
		dc.b $83 
		dc.b $3E 
		dc.b $28 
		dc.b   0
		dc.b   6
		dc.b $E4 
		dc.b $4E 
		dc.b   4
		dc.b $47 
		dc.b   0
		dc.b $48 
		dc.b $4E 
		dc.b $B9 
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b $14
		dc.b   6
		dc.b $47 
		dc.b   0
		dc.b $40 
		dc.b $38 
		dc.b   7
		dc.b $31 
		dc.b $44 
		dc.b   0
		dc.b   2
		dc.b $3E 
		dc.b $28 
		dc.b   0
		dc.b   6
		dc.b $EC 
		dc.b $4F 
		dc.b $DE 
		dc.b $47 
		dc.b $32 
		dc.b $28 
		dc.b   0
		dc.b   6
		dc.b $E4 
		dc.b $49 
		dc.b   2
		dc.b $41 
		dc.b   0
		dc.b   1
		dc.b $8E 
		dc.b $41 
		dc.b $55 
		dc.b $68 
		dc.b   0
		dc.b   6
		dc.b $4A 
		dc.b $38 
		dc.b $B5 
		dc.b $BD 
		dc.b $6A 
		dc.b  $E
		dc.b  $C
		dc.b $68 
		dc.b   0
		dc.b $C0 
		dc.b   0
		dc.b   6
		dc.b $66 
		dc.b   6
		dc.b $31 
		dc.b $7C 
		dc.b   0
		dc.b   3
		dc.b   0
		dc.b   4
		dc.b   2
		dc.b $68 
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   6
		dc.b $4E 
		dc.b $75 
unk_1284E0:     dc.b $3C 
		dc.b $3C 
		dc.b   0
		dc.b $78 
		dc.b $3E 
		dc.b $28 
		dc.b   0
		dc.b   6
		dc.b $4E 
		dc.b $B9 
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b $14
		dc.b   6
		dc.b $47 
		dc.b   0
		dc.b $D8 
		dc.b $36 
		dc.b   7
		dc.b $30 
		dc.b $83 
		dc.b $3E 
		dc.b $28 
		dc.b   0
		dc.b   6
		dc.b $E4 
		dc.b $4E 
		dc.b   4
		dc.b $47 
		dc.b   0
		dc.b $48 
		dc.b $4E 
		dc.b $B9 
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b $14
		dc.b   6
		dc.b $47 
		dc.b   0
		dc.b $40 
		dc.b $38 
		dc.b   7
		dc.b $31 
		dc.b $44 
		dc.b   0
		dc.b   2
		dc.b $3E 
		dc.b $28 
		dc.b   0
		dc.b   6
		dc.b $EC 
		dc.b $4F 
		dc.b $DE 
		dc.b $47 
		dc.b $32 
		dc.b $28 
		dc.b   0
		dc.b   6
		dc.b $E4 
		dc.b $49 
		dc.b   2
		dc.b $41 
		dc.b   0
		dc.b   1
		dc.b $8E 
		dc.b $41 
		dc.b $55 
		dc.b $68 
		dc.b   0
		dc.b   6
		dc.b  $C
		dc.b $68 
		dc.b   0
		dc.b $40 
		dc.b   0
		dc.b   6
		dc.b $66 
		dc.b   4
		dc.b $42 
		dc.b $68 
		dc.b   0
		dc.b   4
		dc.b $4E 
		dc.b $75 
loc_128536:     lea     ((word_FFB5C0-$1000000)).w,a0
		moveq   #$20,d0 
		move.w  4(a0),d7
		beq.w   loc_128592
		subq.w  #1,d7
		add.w   d7,d7
		move.w  off_128554(pc,d7.w),d7
		jsr     off_128554(pc,d7.w)
		bra.w   loc_12855A
off_128554:     dc.w unk_128424+$10000-off_128554
		dc.w unk_12847C+$10000-off_128554
		dc.w unk_1284E0+$10000-off_128554
loc_12855A:     blt.s   loc_128560
		moveq   #2,d1
		bra.s   loc_12856E
loc_128560:     moveq   #1,d1
		move.w  d3,d2
		move.w  #$80,d3 
		sub.w   d2,d3
		eori.w  #1,d7
loc_12856E:     move.b  ((byte_FFB5BE-$1000000)).w,d2
		andi.w  #7,d2
		cmpi.w  #2,d2
		bne.s   loc_12857E
		addq.w  #8,d7
loc_12857E:     moveq   #1,d2
		lea     unk_12865E(pc), a0
		mulu.w  #$A,d7
		adda.w  d7,a0
		bsr.w   sub_12672A
		bsr.w   sub_128618
loc_128592:     lea     ((word_FFB5C8-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$22,d0 
loc_12859A:     movem.l d0/d7-a0,-(sp)
		tst.w   4(a0)
		beq.w   loc_1285EC
		move.w  (a0),d3
		move.w  2(a0),d4
		move.w  6(a0),d7
		lsr.w   #2,d7
		tst.b   ((byte_FFB5BE-$1000000)).w
		bpl.s   loc_1285BC
		moveq   #1,d1
		bra.s   loc_1285BE
loc_1285BC:     moveq   #2,d1
loc_1285BE:     cmpi.w  #$20,6(a0) 
		blt.s   loc_1285D4
		clr.l   (a0)
		clr.l   4(a0)
		clr.w   d7
		move.w  #$FFD8,d4
		bra.s   loc_1285DC
loc_1285D4:     addq.w  #1,2(a0)
		addq.w  #1,6(a0)
loc_1285DC:     lea     unk_1286FE(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		clr.w   d2
		bsr.w   sub_12672A
loc_1285EC:     movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_12859A
		tst.b   ((byte_FFB5BD-$1000000)).w
		bpl.s   locret_128616
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$14,d7
loc_128606:     add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_128606
		tst.w   d0
		bne.s   locret_128616
		clr.b   ((byte_FFB5BC-$1000000)).w
locret_128616:  rts

; =============== S U B R O U T I N E =======================================

sub_128618:
		move.w  d7,-(sp)
		tst.w   ((word_FFB5C4-$1000000)).w
		beq.s   loc_12865A
		moveq   #$A,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.w   loc_12865A
		move.w  ((word_FFB5C0-$1000000)).w,d0
		move.w  ((word_FFB5C2-$1000000)).w,d1
		moveq   #$30,d6 
		jsr     (j_UpdateRandomSeed).l
		sub.w   d7,d0
		addi.w  #$18,d0
		jsr     (j_UpdateRandomSeed).l
		sub.w   d7,d1
		addi.w  #$18,d1
		move.w  d0,d6
		move.w  d1,d5
		moveq   #1,d4
		clr.w   d3
		bsr.w   sub_126B20
loc_12865A:
		move.w  (sp)+,d7
		rts

	; End of function sub_128618

unk_12865E:     dc.b $F0 
		dc.b $F0 
		dc.b $10
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $40 
		dc.b  $D
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $10
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $48 
		dc.b  $D
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $40 
		dc.b  $D
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $48 
		dc.b  $D
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $10
		dc.b  $F
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b $40 
		dc.b  $D
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b $10
		dc.b  $F
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b $48 
		dc.b  $D
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b   0
		dc.b  $F
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b $40 
		dc.b  $D
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b   0
		dc.b  $F
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b $48 
		dc.b  $D
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b $20
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $50 
		dc.b   7
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $30 
		dc.b  $F
		dc.b   2
		dc.b $F0 
		dc.b $F0 
		dc.b $50 
		dc.b   7
		dc.b   2
		dc.b $F0 
		dc.b $F0 
		dc.b $20
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $50 
		dc.b   7
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $30 
		dc.b  $F
		dc.b   2
		dc.b $F0 
		dc.b $F0 
		dc.b $50 
		dc.b   7
		dc.b   2
		dc.b $F0 
		dc.b $F0 
		dc.b $20
		dc.b  $F
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b $50 
		dc.b   7
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b $30 
		dc.b  $F
		dc.b   3
		dc.b $F0 
		dc.b $F0 
		dc.b $50 
		dc.b   7
		dc.b   3
		dc.b $F0 
		dc.b $F0 
		dc.b $20
		dc.b  $F
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b $50 
		dc.b   7
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b $30 
		dc.b  $F
		dc.b   3
		dc.b $F0 
		dc.b $F0 
		dc.b $50 
		dc.b   7
		dc.b   3
unk_1286FE:     dc.b $FC 
		dc.b $FC 
		dc.b $50 
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b $5C 
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b $50 
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b $5C 
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b $5B 
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b $5A 
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b $59 
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b $58 
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b $59 
		dc.b   0
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b $58 
		dc.b   0
		dc.b   0
loc_128730:     clr.w   (PALETTE_1).l   
		lea     ((word_FFB5C0-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_12873E:     movem.l d0/d7-a0,-(sp)
		tst.w   4(a0)
		beq.w   loc_128788
		moveq   #1,d1
		clr.w   d2
		move.w  (a0),d3
		move.w  2(a0),d4
		addi.w  #$10,(a0)
		move.w  6(a0),d7
		add.w   d7,2(a0)
		clr.w   d7
		cmpi.w  #$150,(a0)
		blt.s   loc_128774
		addi.w  #$50,d4 
		move.w  d4,(a0)
		clr.l   2(a0)
		moveq   #2,d7
loc_128774:     lea     unk_1288A0(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		subi.w  #$34,d3 
		addq.w  #2,d4
		bsr.w   sub_12672A
loc_128788:     movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_12873E
		bra.w   loc_128808
loc_128798:     clr.w   (PALETTE_1).l   
		lea     ((word_FFB5C0-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_1287A6:     movem.l d0/d7-a0,-(sp)
		tst.w   4(a0)
		beq.w   loc_1287FC
		moveq   #1,d1
		clr.w   d2
		move.w  (a0),d3
		move.w  2(a0),d4
		cmpi.b  #2,((byte_FFB5BE-$1000000)).w
		bne.s   loc_1287CA
		subi.w  #$C,d4
		bra.s   loc_1287CE
loc_1287CA:     bcs.s   loc_1287CE
		subq.w  #8,d4
loc_1287CE:     subi.w  #$10,(a0)
		move.w  6(a0),d7
		add.w   d7,2(a0)
		clr.w   d7
		cmpi.w  #$40,(a0) 
		bgt.s   loc_1287EE
		clr.l   (a0)
		clr.l   2(a0)
		moveq   #2,d7
		addi.w  #$40,d4 
loc_1287EE:     lea     unk_1288A0(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   sub_12672A
loc_1287FC:     movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_1287A6
loc_128808:     cmpi.w  #$1E,((word_FFB610-$1000000)).w
		bge.s   loc_128818
		bsr.w   loc_12883E
		bra.w   loc_128838
loc_128818:     cmpi.b  #$FF,((byte_FFB5BD-$1000000)).w
		bne.s   loc_128838
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_128828:     add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_128828
		tst.w   d0
		bne.s   loc_128838
		clr.b   ((byte_FFB5BC-$1000000)).w
loc_128838:     jsr     (j_StoreVDPCommandster).w
		rts
loc_12883E:     moveq   #3,d6
		jsr     (j_UpdateRandomSeed).l
		subq.w  #1,d7
		move.w  d7,d3
		moveq   #4,d6
		jsr     (j_UpdateRandomSeed).w
		lsr.w   #1,d7
		bne.w   loc_1283BE
		addq.w  #1,((word_FFB610-$1000000)).w
		lea     unk_128894(pc), a0
		move.b  ((byte_FFB5BE-$1000000)).w,d7
		andi.w  #7,d7
		subq.w  #1,d7
		lsl.w   #2,d7
		adda.w  d7,a0
		moveq   #1,d4
		moveq   #4,d6
		jsr     (j_UpdateRandomSeed).l
		add.w   (a0)+,d7
		move.w  d7,d6
		move.w  d6,-(sp)
		moveq   #3,d6
		jsr     (j_UpdateRandomSeed).l
		add.w   (a0),d7
		move.w  d7,d5
		move.w  (sp)+,d6
		bsr.w   sub_126B20
		trap    #SOUND_COMMAND
		dc.w SFX_BOW_MASTER
		rts
unk_128894:     dc.b   0
		dc.b $90 
		dc.b   0
		dc.b $60 
		dc.b   0
		dc.b $90 
		dc.b   0
		dc.b $60 
		dc.b   0
		dc.b $90 
		dc.b   0
		dc.b $60 
unk_1288A0:     dc.b $FC 
		dc.b $FC 
		dc.b   0
		dc.b  $C
		dc.b   0
		dc.b $FC 
		dc.b $FC 
		dc.b   0
		dc.b  $C
		dc.b   2
		dc.b   0
		dc.b $78 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $78 
		dc.b   0
		dc.b   0
		dc.b   0
loc_1288B4:     cmpi.w  #$3C,((word_FFB5C0-$1000000)).w 
		beq.w   locret_12890E
		moveq   #$20,d0 
		moveq   #1,d1
		moveq   #5,d2
		tst.b   ((byte_FFB5BE-$1000000)).w
		bne.s   loc_1288D4
		move.w  #$98,d3 
		move.w  #$72,d4 
		bra.s   loc_1288DC
loc_1288D4:     move.w  #$98,d3 
		move.w  #$5E,d4 
loc_1288DC:     addq.w  #1,((word_FFB5C0-$1000000)).w
		move.w  ((word_FFB5C0-$1000000)).w,d7
		cmpi.w  #$3C,d7 
		bne.s   loc_1288FA
		move.w  #$180,d4
		clr.b   ((byte_FFB5BC-$1000000)).w
		bsr.w   sub_126982
		clr.w   d7
		bra.s   loc_128902
loc_1288FA:     andi.w  #3,d7
		mulu.w  #$1E,d7
loc_128902:     lea     unk_128910(pc), a0
		nop
		adda.w  d7,a0
		bsr.w   sub_12672A
locret_12890E:  rts
unk_128910:     dc.b $A0 
		dc.b $E0 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b $10
		dc.b  $F
		dc.b   0
		dc.b $C0 
		dc.b $E0 
		dc.b $40 
		dc.b  $F
		dc.b   0
		dc.b $C0 
		dc.b   0
		dc.b $50 
		dc.b  $F
		dc.b   0
		dc.b $E0 
		dc.b $E0 
		dc.b $80 
		dc.b  $F
		dc.b   0
		dc.b $E0 
		dc.b   0
		dc.b $90 
		dc.b  $F
		dc.b   0
		dc.b $A0 
		dc.b $E0 
		dc.b $20
		dc.b  $F
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b $30 
		dc.b  $F
		dc.b   0
		dc.b $C0 
		dc.b $E0 
		dc.b $60 
		dc.b  $F
		dc.b   0
		dc.b $C0 
		dc.b   0
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b $E0 
		dc.b $E0 
		dc.b $A0 
		dc.b  $F
		dc.b   0
		dc.b $E0 
		dc.b   0
		dc.b $B0 
		dc.b  $F
		dc.b   0
		dc.b $A0 
		dc.b $E0 
		dc.b $10
		dc.b  $F
		dc.b   2
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b  $F
		dc.b   2
		dc.b $C0 
		dc.b $E0 
		dc.b $50 
		dc.b  $F
		dc.b   2
		dc.b $C0 
		dc.b   0
		dc.b $40 
		dc.b  $F
		dc.b   2
		dc.b $E0 
		dc.b $E0 
		dc.b $90 
		dc.b  $F
		dc.b   2
		dc.b $E0 
		dc.b   0
		dc.b $80 
		dc.b  $F
		dc.b   2
		dc.b $A0 
		dc.b $E0 
		dc.b $30 
		dc.b  $F
		dc.b   2
		dc.b $A0 
		dc.b   0
		dc.b $20
		dc.b  $F
		dc.b   2
		dc.b $C0 
		dc.b $E0 
		dc.b $70 
		dc.b  $F
		dc.b   2
		dc.b $C0 
		dc.b   0
		dc.b $60 
		dc.b  $F
		dc.b   2
		dc.b $E0 
		dc.b $E0 
		dc.b $B0 
		dc.b  $F
		dc.b   2
		dc.b $E0 
		dc.b   0
		dc.b $A0 
		dc.b  $F
		dc.b   2
loc_128988:     clr.w   (PALETTE_1).l   
		lea     ((word_FFB5C0-$1000000)).w,a0
		moveq   #$B,d7
		moveq   #$20,d0 
loc_128996:     movem.l d0/d7-a0,-(sp)
		tst.w   4(a0)
		beq.w   loc_1289EC
		move.w  (a0),d3
		subi.w  #$FA,d3 
		move.w  4(a0),d7
		addi.w  #$10,(a0)
		move.w  2(a0),d4
		addq.w  #1,d7
		cmpi.w  #$10,d7
		bgt.s   loc_1289C0
		move.w  d7,4(a0)
loc_1289C0:     moveq   #2,d2
		moveq   #2,d1
		cmpi.w  #$FFE0,d3
		blt.w   loc_1289D4
		cmpi.w  #$120,d3
		ble.w   loc_1289E4
loc_1289D4:     move.l  #0,(a0)
		clr.l   4(a0)
		clr.w   d7
		move.w  #$FFD8,d4
loc_1289E4:     lea     unk_128BE7(pc), a0
		bsr.w   sub_12672A
loc_1289EC:     movem.l (sp)+,d0/d7-a0
		addq.w  #2,d0
		addq.w  #8,a0
		dbf     d7,loc_128996
		cmpi.b  #$FF,((byte_FFB5BD-$1000000)).w
		beq.s   loc_128A08
		bsr.w   loc_127C2A
		bra.w   loc_128A24
loc_128A08:     lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$B,d7
loc_128A10:     or.w    (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_128A10
		tst.w   d0
		bne.s   loc_128A24
		clr.b   ((byte_FFB5BC-$1000000)).w
		bsr.w   sub_126982
loc_128A24:     jsr     (j_StoreVDPCommandster).w
		bne.s   locret_128A36
		jsr     (j_StoreVDPCommandsbis).l
		jsr     (j_SetVIntParam3).l
locret_128A36:  rts
loc_128A38:     cmpi.b  #$82,((byte_FFB5BE-$1000000)).w
		beq.w   loc_128988
		cmpi.w  #$23,((word_FFB5C0-$1000000)).w 
		beq.w   locret_128AF2
		moveq   #$20,d0 
		moveq   #1,d1
		moveq   #2,d2
		move.b  ((byte_FFB5BE-$1000000)).w,d3
		move.b  d3,d4
		andi.b  #7,d3
		tst.b   d4
		bmi.s   loc_128A84
		tst.b   d3
		bne.s   loc_128A74
		lea     byte_128AF4(pc), a0
		nop
		move.w  #$8E,d3 
		move.w  #$67,d4 
		bra.s   loc_128A82
loc_128A74:     lea     byte_128B1C(pc), a0
		nop
		move.w  #$74,d3 
		move.w  #$5B,d4 
loc_128A82:     bra.s   loc_128AB6
loc_128A84:     lea     byte_128AF4(pc), a0
		nop
		tst.b   d3
		bne.s   loc_128A98
		move.w  #$50,d3 
		move.w  #$60,d4 
		bra.s   loc_128AB6
loc_128A98:     cmpi.b  #1,d3
		bne.s   loc_128AA8
		move.w  #$40,d3 
		move.w  #$58,d4 
		bra.s   loc_128AB6
loc_128AA8:     lea     byte_128B1C(pc), a0
		nop
		move.w  #$64,d3 
		move.w  #$5B,d4 
loc_128AB6:     addq.w  #1,((word_FFB5C0-$1000000)).w
		move.w  ((word_FFB5C0-$1000000)).w,d7
		cmpi.w  #$23,d7 
		bne.s   loc_128AD0
		move.w  #$180,d4
		clr.b   ((byte_FFB5BC-$1000000)).w
		bsr.w   sub_126982
loc_128AD0:     move.b  (a0,d7.w),d7
		mulu.w  #$F,d7
		tst.b   ((byte_FFB5BE-$1000000)).w
		bmi.s   loc_128AE6
		lea     unk_128B42(pc), a0
		nop
		bra.s   loc_128AEC
loc_128AE6:     lea     unk_128C23(pc), a0
		nop
loc_128AEC:     adda.w  d7,a0
		bsr.w   sub_12672A
locret_128AF2:  rts
byte_128AF4:    dc.b 0
		dc.b   1
		dc.b   0
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   3
		dc.b   4
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   6
		dc.b   7
		dc.b   8
		dc.b   9
		dc.b   9
		dc.b   9
		dc.b   9
		dc.b   9
		dc.b   9
		dc.b   9
byte_128B1C:    dc.b 0
		dc.b   1
		dc.b   0
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b  $A
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $B
		dc.b  $C
		dc.b  $C
		dc.b  $C
		dc.b  $D
		dc.b  $D
		dc.b  $E
		dc.b  $E
		dc.b  $E
		dc.b  $E
		dc.b  $E
unk_128B42:     dc.b   0
		dc.b $F0 
		dc.b $40 
		dc.b  $F
		dc.b   0
		dc.b $A0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b $A0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b   0
		dc.b $F0 
		dc.b $50 
		dc.b  $F
		dc.b   0
		dc.b $A0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b $A0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b   0
		dc.b $F0 
		dc.b $60 
		dc.b  $F
		dc.b   0
		dc.b $A0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b $A0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b   0
		dc.b $F0 
		dc.b $30 
		dc.b  $F
		dc.b   0
		dc.b $A0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b $A0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b   0
		dc.b $F0 
		dc.b $30 
		dc.b  $F
		dc.b   0
		dc.b $E0 
		dc.b $F0 
		dc.b $20
		dc.b  $F
		dc.b   0
		dc.b $A0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b   0
		dc.b $F0 
		dc.b $30 
		dc.b  $F
		dc.b   0
		dc.b $E0 
		dc.b $F0 
		dc.b $20
		dc.b  $F
		dc.b   0
		dc.b $C0 
		dc.b $F0 
		dc.b $10
		dc.b  $F
		dc.b   0
		dc.b   0
		dc.b $F0 
		dc.b   0
		dc.b  $F
		dc.b   1
		dc.b $E0 
		dc.b $F0 
		dc.b $20
		dc.b  $F
		dc.b   0
		dc.b $C0 
		dc.b $F0 
		dc.b $10
		dc.b  $F
		dc.b   0
		dc.b   0
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $E0 
		dc.b $F0 
		dc.b   0
		dc.b  $F
		dc.b   1
		dc.b $C0 
		dc.b $F0 
		dc.b $10
		dc.b  $F
		dc.b   0
		dc.b   0
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $E0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $C0 
		dc.b $F0 
		dc.b   0
		dc.b  $F
		dc.b   1
		dc.b $E0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $C0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b $A0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b   0
		dc.b $F0 
		dc.b $A0 
		dc.b  $F
		dc.b   0
		dc.b $E0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b $C0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
unk_128BE7:     dc.b   0
		dc.b $F0 
		dc.b $A0 
		dc.b  $F
		dc.b   0
		dc.b $E0 
		dc.b $F0 
		dc.b $80 
		dc.b  $F
		dc.b   0
		dc.b $C0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b   0
		dc.b $F0 
		dc.b $30 
		dc.b  $F
		dc.b   0
		dc.b $E0 
		dc.b $F0 
		dc.b $10
		dc.b  $F
		dc.b   0
		dc.b $C0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b   0
		dc.b $F0 
		dc.b   0
		dc.b  $F
		dc.b   1
		dc.b $E0 
		dc.b $F0 
		dc.b $10
		dc.b  $F
		dc.b   0
		dc.b $C0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b   0
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b $E0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b $C0 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
unk_128C23:     dc.b   0
		dc.b $F0 
		dc.b $40 
		dc.b  $F
		dc.b   1
		dc.b $60 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $60 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b   0
		dc.b $F0 
		dc.b $50 
		dc.b  $F
		dc.b   1
		dc.b $60 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $60 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b   0
		dc.b $F0 
		dc.b $60 
		dc.b  $F
		dc.b   1
		dc.b $60 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $60 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b   0
		dc.b $F0 
		dc.b $30 
		dc.b  $F
		dc.b   1
		dc.b $60 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $60 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b   0
		dc.b $F0 
		dc.b $30 
		dc.b  $F
		dc.b   1
		dc.b $20
		dc.b $F0 
		dc.b $20
		dc.b  $F
		dc.b   1
		dc.b $60 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $10
		dc.b $F0 
		dc.b $30 
		dc.b  $F
		dc.b   1
		dc.b $30 
		dc.b $F0 
		dc.b $20
		dc.b  $F
		dc.b   1
		dc.b $50 
		dc.b $F0 
		dc.b $10
		dc.b  $F
		dc.b   1
		dc.b $10
		dc.b $F0 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $30 
		dc.b $F0 
		dc.b $20
		dc.b  $F
		dc.b   1
		dc.b $50 
		dc.b $F0 
		dc.b $10
		dc.b  $F
		dc.b   1
		dc.b $10
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b $30 
		dc.b $F0 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $50 
		dc.b $F0 
		dc.b $10
		dc.b  $F
		dc.b   1
		dc.b $10
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b $30 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b $50 
		dc.b $F0 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $30 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b $50 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $70 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   0
		dc.b $10
		dc.b $F0 
		dc.b $A0 
		dc.b  $F
		dc.b   1
		dc.b $30 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $50 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $10
		dc.b $F0 
		dc.b $A0 
		dc.b  $F
		dc.b   1
		dc.b $30 
		dc.b $F0 
		dc.b $80 
		dc.b  $F
		dc.b   1
		dc.b $50 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $10
		dc.b $F0 
		dc.b $30 
		dc.b  $F
		dc.b   1
		dc.b $30 
		dc.b $F0 
		dc.b $10
		dc.b  $F
		dc.b   1
		dc.b $50 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $10
		dc.b $F0 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $30 
		dc.b $F0 
		dc.b $10
		dc.b  $F
		dc.b   1
		dc.b $50 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $10
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $30 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
		dc.b $50 
		dc.b $F0 
		dc.b $70 
		dc.b  $F
		dc.b   1
loc_128D04:     cmpi.w  #$1E,((word_FFB5C0-$1000000)).w
		bge.w   loc_128D78
		moveq   #$20,d0 
		moveq   #1,d1
		moveq   #7,d2
		move.w  #$48,d3 
		move.w  #$68,d4 
		addq.w  #1,((word_FFB5C0-$1000000)).w
		move.w  ((word_FFB5C0-$1000000)).w,d7
		cmpi.w  #$1E,d7
		bne.s   loc_128D42
		move.w  #$180,d4
		clr.b   ((byte_FFB5BC-$1000000)).w
		bsr.w   sub_126982
		clr.w   (PALETTE_1).l   
		moveq   #$1E,d7
		bra.w   loc_128D5E
loc_128D42:     cmpi.w  #$A,d7
		blt.s   loc_128D5E
		btst    #1,d7
		beq.s   loc_128D58
		move.w  #$EEC,(PALETTE_1).l
		bra.s   loc_128D5E
loc_128D58:     clr.w   (PALETTE_1).l   
loc_128D5E:     lea     byte_128D7E(pc), a0
		nop
		move.b  (a0,d7.w),d7
		mulu.w  #$28,d7 
		lea     unk_128D9E(pc), a0
		nop
		adda.w  d7,a0
		bsr.w   sub_12672A
loc_128D78:     jmp     (j_StoreVDPCommandster).l
byte_128D7E:    dc.b 0
		dc.b   1
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   2
unk_128D9E:     dc.b $E8 
		dc.b $F0 
		dc.b $18
		dc.b   9
		dc.b   0
		dc.b   0
		dc.b $F0 
		dc.b $18
		dc.b   9
		dc.b   1
		dc.b $E8 
		dc.b   0
		dc.b $18
		dc.b   9
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b $18
		dc.b   9
		dc.b   3
		dc.b $A0 
		dc.b $88 
		dc.b $7F 
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b $88 
		dc.b $7F 
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b $88 
		dc.b $7F 
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b $88 
		dc.b $7F 
		dc.b   0
		dc.b   0
		dc.b $E0 
		dc.b $E8 
		dc.b $20
		dc.b  $E
		dc.b   0
		dc.b   0
		dc.b $E8 
		dc.b $20
		dc.b  $E
		dc.b   1
		dc.b $E0 
		dc.b   0
		dc.b $20
		dc.b  $E
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b $20
		dc.b  $E
		dc.b   3
		dc.b $A0 
		dc.b $88 
		dc.b $7F 
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b $88 
		dc.b $7F 
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b $88 
		dc.b $7F 
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b $88 
		dc.b $7F 
		dc.b   0
		dc.b   0
		dc.b $D0 
		dc.b $E0 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $10
		dc.b $E0 
		dc.b   0
		dc.b  $F
		dc.b   1
		dc.b $D0 
		dc.b   0
		dc.b   0
		dc.b  $F
		dc.b   2
		dc.b $10
		dc.b   0
		dc.b   0
		dc.b  $F
		dc.b   3
		dc.b $F0 
		dc.b $E0 
		dc.b $10
		dc.b   7
		dc.b   0
		dc.b   0
		dc.b $E0 
		dc.b $10
		dc.b   7
		dc.b   1
		dc.b $F0 
		dc.b   0
		dc.b $10
		dc.b   7
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b $10
		dc.b   7
		dc.b   3
loc_128E16:     cmpi.w  #$1E,((word_FFB5C0-$1000000)).w
		beq.w   loc_128E84
		moveq   #$20,d0 
		moveq   #1,d1
		moveq   #2,d2
		move.w  #$48,d3 
		move.w  #$90,d4 
		addq.w  #1,((word_FFB5C0-$1000000)).w
		move.w  ((word_FFB5C0-$1000000)).w,d7
		cmpi.w  #$1E,d7
		bne.s   loc_128E4E
		move.w  #$180,d4
		clr.b   ((byte_FFB5BC-$1000000)).w
		clr.w   (PALETTE_1).l   
		bra.w   loc_128E6A
loc_128E4E:     cmpi.w  #$A,d7
		blt.s   loc_128E6A
		btst    #1,d7
		beq.s   loc_128E64
		move.w  #$EC8,(PALETTE_1).l
		bra.s   loc_128E6A
loc_128E64:     clr.w   (PALETTE_1).l   
loc_128E6A:     lea     unk_128E8A(pc), a0
		nop
		move.b  (a0,d7.w),d7
		mulu.w  #$F,d7
		lea     unk_128EAA(pc), a0
		nop
		adda.w  d7,a0
		bsr.w   sub_12672A
loc_128E84:     jmp     (j_StoreVDPCommandster).l
unk_128E8A:     dc.b   5
		dc.b   4
		dc.b   3
		dc.b   2
		dc.b   5
		dc.b   4
		dc.b   3
		dc.b   2
		dc.b   1
		dc.b   0
		dc.b   3
		dc.b   2
		dc.b   1
		dc.b   0
		dc.b   3
		dc.b   2
		dc.b   1
		dc.b   0
		dc.b   3
		dc.b   2
		dc.b   5
		dc.b   4
		dc.b   3
		dc.b   2
		dc.b   5
		dc.b   4
		dc.b   3
		dc.b   2
		dc.b   5
		dc.b   4
		dc.b   5
		dc.b   4
unk_128EAA:     dc.b $F0 
		dc.b $A0 
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $C0 
		dc.b $10
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $E0 
		dc.b $20
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $A0 
		dc.b   0
		dc.b  $F
		dc.b   1
		dc.b $F0 
		dc.b $C0 
		dc.b $10
		dc.b  $F
		dc.b   1
		dc.b $F0 
		dc.b $E0 
		dc.b $20
		dc.b  $F
		dc.b   1
		dc.b $F0 
		dc.b $D0 
		dc.b $30 
		dc.b  $F
		dc.b   0
		dc.b $F0 
		dc.b $F0 
		dc.b $40 
		dc.b  $F
		dc.b   0
		dc.b   0
		dc.b $88 
		dc.b $7F 
		dc.b   0
		dc.b   0
		dc.b $F0 
		dc.b $D0 
		dc.b $30 
		dc.b  $F
		dc.b   1
		dc.b $F0 
		dc.b $F0 
		dc.b $40 
		dc.b  $F
		dc.b   1
		dc.b   0
		dc.b $88 
		dc.b $7F 
		dc.b   0
		dc.b   1
		dc.b $F8 
		dc.b $E8 
		dc.b $50 
		dc.b   6
		dc.b   0
		dc.b   0
		dc.b $88 
		dc.b $7F 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88 
		dc.b $7F 
		dc.b   0
		dc.b   0
		dc.b $F8 
		dc.b $E8 
		dc.b $50 
		dc.b   6
		dc.b   1
		dc.b   0
		dc.b $88 
		dc.b $7F 
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b $88 
		dc.b $7F 
		dc.b   0
		dc.b   1
loc_128F04:     cmpi.w  #$1E,((word_FFB5C0-$1000000)).w
		beq.w   loc_128F72
		moveq   #$20,d0 
		moveq   #1,d1
		moveq   #2,d2
		move.w  #$98,d3 
		move.w  #$90,d4 
		addq.w  #1,((word_FFB5C0-$1000000)).w
		move.w  ((word_FFB5C0-$1000000)).w,d7
		sub.w   d7,d3
		sub.w   d7,d3
		sub.w   d7,d3
		sub.w   d7,d3
		cmpi.w  #$1E,d7
		bne.s   loc_128F3E
		move.w  #$180,d4
		clr.b   ((byte_FFB5BC-$1000000)).w
		bsr.w   sub_126982
loc_128F3E:     cmpi.w  #$A,d7
		blt.s   loc_128F5A
		btst    #1,d7
		beq.s   loc_128F54
		move.w  #$4E0,(PALETTE_1).l
		bra.s   loc_128F5A
loc_128F54:     clr.w   (PALETTE_1).l   
loc_128F5A:     lea     off_128F78(pc), a0
		nop
		move.b  (a0,d7.w),d7
		mulu.w  #$F,d7
		lea     unk_128EAA(pc), a0
		adda.w  d7,a0
		bsr.w   sub_12672A
loc_128F72:     jmp     (j_StoreVDPCommandster).l
off_128F78:     dc.l unk_10200
		dc.b   1
		dc.b   3
		dc.b   0
		dc.b   1
		dc.b   2
		dc.b   0
		dc.b   1
		dc.b   2
		dc.b   3
		dc.b   4
		dc.b   5
		dc.b   2
		dc.b   3
		dc.b   4
		dc.b   5
		dc.b   2
		dc.b   3
		dc.b   4
		dc.b   5
		dc.b   2
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   1
		dc.b   2
		dc.b   3
		dc.b   4
		dc.b   5

; =============== S U B R O U T I N E =======================================

sub_128F98:
		move.l  #$EEE0EEE,d4
		moveq   #$F,d7
loc_128FA0:
		lea     (PALETTE_1).l,a0
		moveq   #$1F,d6
loc_128FA8:
		eor.l   d4,(a0)+
		dbf     d6,loc_128FA8
		jsr     (j_StoreVDPCommandster).l
		moveq   #4,d0
		jsr     (j_Sleep).l
		dbf     d7,loc_128FA0
		rts

	; End of function sub_128F98

loc_128FC2:     move.w  #1,((word_FFB7C6-$1000000)).w
		bsr.w   sub_12BF92
		add.w   d0,d0
		move.w  off_128FD6(pc,d0.w),d0
		jmp     off_128FD6(pc,d0.w)
off_128FD6:     dc.w loc_129012-off_128FD6
		dc.w loc_129292-off_128FD6
		dc.w loc_129396-off_128FD6
		dc.w loc_1293B6-off_128FD6
		dc.w loc_129526-off_128FD6
		dc.w loc_129546-off_128FD6
		dc.w loc_129566-off_128FD6
		dc.w loc_12963E-off_128FD6
		dc.w loc_12978E-off_128FD6
		dc.w loc_1299C4-off_128FD6
		dc.w loc_1299E4-off_128FD6
		dc.w loc_129CE6-off_128FD6
		dc.w loc_129D74-off_128FD6
		dc.w loc_129D94-off_128FD6
		dc.w loc_129E28-off_128FD6
		dc.w loc_129E50-off_128FD6
		dc.w loc_129ED6-off_128FD6
		dc.w loc_129EFE-off_128FD6
		dc.w loc_129F6A-off_128FD6
		dc.w loc_129FE4-off_128FD6
		dc.w loc_12A004-off_128FD6
		dc.w loc_12A0D2-off_128FD6
		dc.w loc_12A0F2-off_128FD6
		dc.w loc_12A15E-off_128FD6
		dc.w loc_12A17E-off_128FD6
		dc.w loc_12A19E-off_128FD6
		dc.w locret_12A22E-off_128FD6
		dc.w loc_12A230-off_128FD6
		dc.w loc_12A3B4-off_128FD6
		dc.w loc_12A4BA-off_128FD6
loc_129012:     moveq   #$32,d0 
		jsr     (j_CheckEventFlag).l
		bne.w   locret_12BFCE
		moveq   #$32,d0 
		jsr     (j_SetEventFlag).l
		jsr     sub_8094
		move.w  #$E,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129068
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_129068:     moveq   #$E,d0
		jsr     sub_802C
		trap    #5
		move.w  #$69,d0 ; "[Hero]![Line]Goblins! Runefaust[Line]must be up to something![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		jsr     sub_8094
		move.w  #$C,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_1290C2
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_1290C2:     moveq   #$C,d0
		jsr     sub_802C
		trap    #5
		move.w  #$6A,d0 ; "We can take them,[Line][Hero]![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12911C
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_12911C:     trap    #5
		move.w  #$6B,d0 ; "Move it, vermin! Find the key[Line]to this blasted door![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12913C
		bsr.w   sub_12C342
		move.w  #1,d2
		bsr.w   sub_12C2DC
loc_12913C:     trap    #7
		move.w  #$6C,d0 ; "C'mon, we're almost in![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12915C
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12915C:     trap    #7
		move.w  #$6D,d0 ; "Where is that blasted key?[Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12917C
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12917C:     trap    #7
		move.w  #$6E,d0 ; "What? Blast it! Those fools[Line]from Guardiana are here![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8094
		move.w  #0,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_1291C8
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_1291C8:     trap    #SOUND_COMMAND
		dc.w MUSIC_EARTHQUAKE
		move.l  (dword_FF0EF6).l,-(sp)
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(dword_FF0EF6).l
		move.w  #$3C,((word_FFB7C4-$1000000)).w 
		moveq   #$1E,d0
		jsr     (j_Sleep).l
		moveq   #$11,d1
		moveq   #$F,d2
		moveq   #2,d3
		moveq   #$D,d4
		moveq   #5,d5
		moveq   #6,d6
		jsr     sub_80AC
		move.w  #$5A,((word_FFB7C4-$1000000)).w 
		moveq   #$1E,d0
		jsr     (j_Sleep).l
		moveq   #2,d1
		moveq   #7,d2
		moveq   #2,d3
		moveq   #7,d4
		moveq   #5,d5
		moveq   #$C,d6
		jsr     sub_80AC
		trap    #5
		move.w  #$6F,d0 ; "Earthquake![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_FADE_OUT
loc_12922E:     jsr     (j_WaitForVInt).l
		subq.w  #1,((word_FFB7C4-$1000000)).w
		bne.s   loc_12922E
		move.l  (sp)+,(dword_FF0EF6).l
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129286
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_129286:     trap    #5
		move.w  #$70,d0 ; "Attack, goblins and dwarves![Line]Strike a blow for the honor[Line]of Runefaust![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		rts
loc_129292:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$73,d0 ; "The earthquake blocked the[Line]road. Head north, but be[Line]ready for battle.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_1292F2
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_1292F2:     trap    #5
		move.w  #$74,d0 ; "No one enters Guardiana while[Line]we live! For Darksol![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8094
		move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12933E
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_12933E:     trap    #5
		move.w  #$75,d0 ; "Death to Guardiana![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8094
		move.w  #$83,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12938A
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_12938A:     trap    #5
		move.w  #$75,d0 ; "Death to Guardiana![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		rts
loc_129396:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$77,d0 ; "[Hero]! Enemies await[Line]you on the road to Alterone.[Line]Take all precautions![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_1293B6:     move.w  #$1DF,d0
		jsr     (j_CheckEventFlag).l
		beq.w   locret_12BFCE
		move.w  #$1DF,d0
		jsr     (j_ClearEventFlag).l
		jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129410
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_129410:     moveq   #$24,d0 
		jsr     sub_802C
		trap    #5
		move.w  #$79,d0 ; "Lowly worms, I shall crush[Line]you beneath my heel. Attack,[Line]soldiers of Runefaust![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.w  #$81,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129440
		bsr.w   sub_12C342
		moveq   #2,d2
		moveq   #2,d1
		bsr.w   loc_12C0AE
loc_129440:     move.w  #$81,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129458
		bsr.w   sub_12C342
		move.w  #1,d2
		bsr.w   sub_12C2DC
loc_129458:     trap    #5
		move.w  #$7A,d0 ; "Lord Kane, Lord Darksol[Line]commands you to return to[Line]Runefaust immediately.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12947A
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12947A:     moveq   #$24,d0 
		jsr     sub_802C
		trap    #5
		move.w  #$7B,d0 ; "Tell him I'm on my way.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		trap    #5
		move.w  #$7C,d0 ; "Yes, sir.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		move.w  #$81,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_1294B4
		bsr.w   sub_12C342
		moveq   #0,d2
		moveq   #2,d1
		bsr.w   loc_12C0AE
loc_1294B4:     move.w  #$81,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_1294C8
		moveq   #$FFFFFFFF,d1
		jsr     j_SetTargetID
loc_1294C8:     move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_1294E0
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_1294E0:     moveq   #$24,d0 
		jsr     sub_802C
		trap    #5
		move.w  #$7D,d0 ; "A shame I can't stay to watch[Line]you meet your doom! My troops[Line]can handle the likes of you.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129510
		bsr.w   sub_12C342
		moveq   #0,d2
		moveq   #2,d1
		bsr.w   loc_12C0AE
loc_129510:     move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   locret_129524
		moveq   #$FFFFFFFF,d1
		jsr     j_SetTargetID
locret_129524:  rts
loc_129526:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$7F,d0 ; "Our enemies seek to stop you[Line]from reaching Anri in[Line]Manarina. You must succeed![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_129546:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$81,d0 ; "Behold the dreaded Cavern of[Line]Darkness! You must defeat the[Line]monsters to gain the orb![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_129566:     move.w  #$1DF,d0
		jsr     (j_CheckEventFlag).l
		beq.w   locret_12BFCE
		move.w  #$1DF,d0
		jsr     (j_ClearEventFlag).l
		jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_1295C0
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_1295C0:     moveq   #$21,d0 
		jsr     sub_802C
		trap    #5
		move.w  #$84,d0 ; "Well, [Hero], remember[Line]me? You'll soon wish you'd[Line]taken my advice in Alterone![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_1295E8
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_1295E8:     trap    #7
		move.w  #$85,d0 ; "Come, my pets! Look who's[Line]come to play with you. Why,[Line]it's the Shining Force![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129608
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_129608:     trap    #7
		move.w  #$86,d0 ; "I leave you in good hands,[Line][Hero].[Wait2][Line]I have more vital matters[Line]to attend to right now![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129628
		bsr.w   sub_12C036
loc_129628:     move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   locret_12963C
		moveq   #$FFFFFFFF,d1
		jsr     j_SetTargetID
locret_12963C:  rts
loc_12963E:     move.w  #$1DE,d0
		jsr     (j_CheckEventFlag).l
		beq.w   locret_12BFCE
		move.w  #$1DE,d0
		jsr     (j_ClearEventFlag).l
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12966E
		bsr.w   sub_12C342
		moveq   #3,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_12966E:     move.l  (dword_FF0EF6).l,-(sp)
		move.l  #$8034,(dword_FF0EF6).l
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12969A
		bsr.w   sub_12C342
		moveq   #0,d2
		moveq   #3,d1
		move.w  #$8D,d3 
		bsr.w   sub_12C09E
loc_12969A:     moveq   #$2F,d0 
		jsr     sub_802C
		trap    #5
		move.w  #$89,d0 ; "Been praying, and well you[Line]might![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_1296CA
		bsr.w   sub_12C342
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_1296CA:     move.l  (sp)+,(dword_FF0EF6).l
		trap    #SOUND_COMMAND
		dc.w SFX_HIT
		bsr.w   sub_128F98
		moveq   #$28,d0 
		jsr     sub_802C
		trap    #5
		move.w  #$8A,d0 ; "You and your pitiful Shining[Line]Force cannot be saved by[Line]prayers! You won't escape![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129700
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_129700:     trap    #7
		move.w  #$8B,d0 ; "How fitting that you perish[Line]in a former chapel of Light![Line][Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129720
		bsr.w   sub_12C342
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_129720:     trap    #7
		move.w  #$8C,d0 ; "I leave you now in the care[Line]of my minions, who know well[Line]what to do with you....[Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129740
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_129740:     trap    #7
		move.w  #$8D,d0 ; "Undead! Dispose of these[Line]pests once and for all![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129760
		bsr.w   sub_12C342
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_129760:     trap    #6
		jsr     sub_8030
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129778
		bsr.w   sub_12C036
loc_129778:     move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   locret_12978C
		moveq   #$FFFFFFFF,d1
		jsr     j_SetTargetID
locret_12978C:  rts
loc_12978E:     moveq   #$32,d0 
		jsr     (j_CheckEventFlag).l
		bne.w   locret_12BFCE
		moveq   #$32,d0 
		jsr     (j_SetEventFlag).l
		jsr     sub_8094
		move.w  #$83,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_1297E4
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_1297E4:     move.w  #$83,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_1297FC
		bsr.w   sub_12C342
		move.w  #1,d2
		bsr.w   sub_12C2DC
loc_1297FC:     trap    #5
		move.w  #$8E,d0 ; "Master, we have found it![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8094
		move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129848
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_129848:     move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129860
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_129860:     trap    #5
		move.w  #$8F,d0 ; "The Laser Eye! At last![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129880
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_129880:     trap    #7
		move.w  #$90,d0 ; "This is the end of that[Line]cursed Shining Force![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_1298A0
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_1298A0:     trap    #7
		move.w  #$91,d0 ; "Get rid of those men from[Line]Bustoke. They are of no[Line]further use to us.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		move.w  #$81,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_1298C2
		bsr.w   sub_12C342
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_1298C2:     jsr     sub_8094
		move.w  #$81,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129904
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_129904:     trap    #5
		move.w  #$92,d0 ; "Alert! Intruders![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129926
		bsr.w   sub_12C342
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_129926:     jsr     sub_8094
		move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129968
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_129968:     trap    #5
		move.w  #$93,d0 ; "What? The Shining Force![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129988
		bsr.w   sub_12C342
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_129988:     move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_1299A0
		bsr.w   sub_12C342
		moveq   #$FFFFFF82,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_1299A0:     trap    #7
		move.w  #$94,d0 ; "Stop them! We must have time[Line]to remove the Laser Eye![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_1299C0
		bsr.w   sub_12C342
		moveq   #0,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_1299C0:     trap    #6
		rts
loc_1299C4:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$97,d0 ; "Look, they are trying to[Line]block our way to the bridge.[Line]Attack them, Shining Force![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_1299E4:     move.w  #$1DF,d0
		jsr     (j_CheckEventFlag).l
		beq.w   locret_12BFCE
		move.w  #$1DF,d0
		jsr     (j_ClearEventFlag).l
		move.l  (dword_FF0EF6).l,-(sp)
		move.l  #$8034,(dword_FF0EF6).l
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129A28
		bsr.w   sub_12C342
		move.w  #1,d2
		move.w  #2,d3
		bsr.w   sub_12C2BE
loc_129A28:     move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129A40
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_129A40:     jsr     sub_8094
		move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129A82
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_129A82:     trap    #5
		move.w  #$99,d0 ; "Traitor! You've betrayed Lord[Line]Kane![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129ACE
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_129ACE:     moveq   #2,d0
		jsr     sub_802C
		trap    #5
		move.w  #$9A,d0 ; "I owe no allegiance to you or[Line]him, foul fiend that he is![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		jsr     sub_8094
		move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129B28
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_129B28:     trap    #5
		move.w  #$9B,d0 ; "You are only a mercenary. You[Line]do what we pay you to do![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129B74
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_129B74:     moveq   #2,d0
		jsr     sub_802C
		trap    #5
		move.w  #$9C,d0 ; "Here, I return your gold. I[Line]shall no longer follow your[Line]orders, toad![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		jsr     sub_8094
		move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129BCE
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_129BCE:     trap    #5
		move.w  #$9D,d0 ; "If you are not with us, then[Line]you are against us![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129BF0
		bsr.w   sub_12C342
		moveq   #1,d2
		moveq   #2,d1
		bsr.w   loc_12C0AE
loc_129BF0:     move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129C08
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_129C08:     trap    #5
		move.w  #$9E,d0 ; "I will have the pleasure of[Line]killing you myself![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		move.w  #2,((word_FFB7C6-$1000000)).w
		move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129C30
		bsr.w   sub_12C342
		moveq   #3,d2
		moveq   #2,d1
		bsr.w   loc_12C0AE
loc_129C30:     trap    #SOUND_COMMAND
		dc.w SFX_HIT
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129C50
		bsr.w   sub_12C342
		move.w  #1,d2
		move.w  #2,d3
		bsr.w   sub_12C2BE
loc_129C50:     move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129C6C
		bsr.w   sub_12C342
		moveq   #$FFFFFF83,d2
		moveq   #1,d1
		move.w  #2,d3
		bsr.w   sub_12C09E
loc_129C6C:     moveq   #2,d0
		jsr     sub_802C
		trap    #5
		move.w  #$9F,d0 ; "Vile fiend! Aiiiieeeee....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		trap    #SOUND_COMMAND
		dc.w SFX_FALLING
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129CA4
		bsr.w   sub_12C342
		move.w  #1,d2
		move.w  #2,d3
		bsr.w   sub_12C2BE
loc_129CA4:     move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129CC0
		bsr.w   sub_12C342
		moveq   #$FFFFFF82,d2
		moveq   #5,d1
		move.w  #2,d3
		bsr.w   sub_12C09E
loc_129CC0:     move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129CD4
		moveq   #$FFFFFFFF,d1
		jsr     j_SetTargetID
loc_129CD4:     trap    #5
		move.w  #$A0,d0 ; "Ha, ha! Thus fall all who[Line]dare to oppose the will of[Line]Darksol![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		move.l  (sp)+,(dword_FF0EF6).l
		rts
loc_129CE6:     moveq   #$32,d0 
		jsr     (j_CheckEventFlag).l
		bne.w   locret_12BFCE
		moveq   #$32,d0 
		jsr     (j_SetEventFlag).l
		jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129D3C
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_129D3C:     moveq   #$1F,d0
		jsr     sub_802C
		trap    #5
		move.w  #$A6,d0 ; "The time for battle has come.[Line]For King Ramladu![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$A7,d0 ; "General Elliott is said to be[Line]the finest swordsman in all[Line]of Rune.[Wait2][Line]Take care, [Hero]![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_129D74:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$AA,d0 ; "[Hero], you must break[Line]through to reach the harbor.[Line]Be careful, but be quick![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_129D94:     moveq   #$33,d0 
		jsr     (j_CheckEventFlag).l
		bne.w   locret_12BFCE
		moveq   #$33,d0 
		jsr     (j_SetEventFlag).l
		jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129DEA
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_129DEA:     moveq   #$20,d0 
		jsr     sub_802C
		moveq   #$71,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$AB,d0 ; "At last we meet, [Hero].[Line]Soon you and your misfits[Line]will trouble us no longer![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$AC,d0 ; "Yes, that is Balbazak, a[Line]commander of the Runefaust[Line]army. You must destroy him![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_129E28:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$B7,d0 ; "The ship is surrounded by[Line]monsters, [Hero]![Line]Prepare to defend it![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$23,d0 
		jsr     (j_SetEventFlag).l
		rts
loc_129E50:     move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129E68
		bsr.w   sub_12C342
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_129E68:     jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129EAA
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_129EAA:     trap    #5
		move.w  #$BB,d0 ; "I invoke a path before[Line]me....What?[Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129ECA
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_129ECA:     trap    #7
		move.w  #$BC,d0 ; "Shining Force! I was so[Line]close...so close! I shall[Line]destroy you all![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		rts
loc_129ED6:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$BE,d0 ; "Here we go again. We were[Line]just about to land, too! Go[Line]get them![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$23,d0 
		jsr     (j_SetEventFlag).l
		rts
loc_129EFE:     jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129F40
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_129F40:     trap    #5
		move.w  #$C0,d0 ; "These Guardiana fools must be[Line]stopped. Kane's mission is[Line]vital. Attack![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$C1,d0 ; "[Hero], you must quickly[Line]break through to Dragonia![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_129F6A:     jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_129FAC
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_129FAC:     moveq   #$24,d0 
		jsr     sub_802C
		trap    #5
		move.w  #$C4,d0 ; "Ha! I knew you couldn't hide[Line]in there forever! Come on[Line]out, little hero![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$C5,d0 ; "[Hero], be careful.[Line]Remember that Kane killed[Line]Varios![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_129FE4:     moveq   #$21,d0 
		jsr     sub_802C
		moveq   #$72,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$C9,d0 ; "Well, [Hero], we meet[Line]once more.  For the last time,[Line]I fear, as you will die here.[Wait2][Line]My minions shall take care of[Line]you, but if they fail, I await[Line]you in Demon Castle![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12A004:     moveq   #$31,d0 
		jsr     (j_CheckEventFlag).l
		bne.w   locret_12BFCE
		moveq   #$31,d0 
		jsr     (j_SetEventFlag).l
		jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A05A
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_12A05A:     moveq   #$21,d0 
		jsr     sub_802C
		trap    #5
		move.w  #$CB,d0 ; "Well, here's the little hero[Line]coming for my Sword of Light![Line]Take it, if you dare![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A082
		bsr.w   sub_12C342
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_12A082:     trap    #7
		move.w  #$CC,d0 ; "You'll never leave my castle,[Line]you pitiful fools![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A0A2
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A0A2:     trap    #7
		move.w  #$CD,d0 ; "This is as close as you'll[Line]ever come to the Sword of[Line]Light![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$CE,d0 ; "[Hero], take great care.[Line]Mishaela is a powerful[Line]wizardess, a dangerous foe![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12A0D2:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$D1,d0 ; "The Tower of the Ancients is[Line]to the east. Hurry, while[Line]there's still time![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12A0F2:     jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A134
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_12A134:     trap    #5
		move.w  #$D3,d0 ; "Stop them! Lord Darksol must[Line]not be disturbed![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$D4,d0 ; "We must get inside the tower![Line]Smash through these monsters[Line]quickly, [Hero]![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12A15E:     moveq   #$22,d0 
		jsr     sub_802C
		moveq   #$73,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$D7,d0 ; "Screech! Kill...kill....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12A17E:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$D9,d0 ; "To the south is Runefaust.[Line]Their army approaches. You[Line]must fight your way in.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12A19E:     clr.w   ((word_FFB7C6-$1000000)).w
		jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A1E4
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_12A1E4:     moveq   #$23,d0 
		jsr     sub_802C
		moveq   #$74,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$DB,d0 ; "Long have I waited for[Line]this moment, [Hero]![Line]Prepare to meet your death.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A21A
		bsr.w   sub_12C342
		moveq   #0,d2
		moveq   #2,d1
		bsr.w   loc_12C0AE
loc_12A21A:     move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   locret_12A22E
		moveq   #$FFFFFFFF,d1
		jsr     j_SetTargetID
locret_12A22E:  rts
loc_12A230:     moveq   #$30,d0 
		jsr     (j_CheckEventFlag).l
		bne.w   locret_12BFCE
		moveq   #$30,d0 
		jsr     (j_SetEventFlag).l
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$DF,d0 ; "At last, [Hero]!  The[Line]Castle of the Ancients. The[Line]end is near, for good or ill![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.w  #2,((word_FFB7C6-$1000000)).w
		move.w  #$81,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A280
		bsr.w   sub_12C342
		moveq   #1,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_12A280:     move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A298
		bsr.w   sub_12C342
		moveq   #3,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_12A298:     jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A2DA
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_12A2DA:     moveq   #$26,d0 
		jsr     sub_802C
		moveq   #$76,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$E0,d0 ; "None shall pass Colossus,[Line]the eternal sentinel![Line]Leave now![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		clr.w   ((word_FFB7C6-$1000000)).w
		move.w  #$81,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A314
		bsr.w   sub_12C342
		moveq   #3,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_12A314:     move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A32C
		bsr.w   sub_12C342
		moveq   #1,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_12A32C:     move.w  #$81,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A344
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A344:     move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A35C
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A35C:     trap    #SOUND_COMMAND
		dc.w SFX_SPELL_CAST
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$E1,d0 ; "Colossus! I've heard of it[Line]in legends! [Hero]![Line]They are attacking![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
unk_12A388:     dc.b   0
		dc.b $1E
		dc.b   1
		dc.b $14
		dc.b   0
		dc.b  $A
		dc.b   1
		dc.b   5
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   0
		dc.b   5
		dc.b   1
		dc.b  $A
		dc.b   0
		dc.b $14
		dc.b   1
		dc.b $28 
		dc.b   0
		dc.b $3C 
		dc.b $FF
		dc.b $FF
loc_12A3B4:     moveq   #$32,d0 
		jsr     (j_CheckEventFlag).l
		bne.w   locret_12BFCE
		moveq   #$32,d0 
		jsr     (j_SetEventFlag).l
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A3E0
		bsr.w   sub_12C342
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_12A3E0:     jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A422
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_12A422:     moveq   #$28,d0 
		jsr     sub_802C
		moveq   #$6E,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$E5,d0 ; "Dark Dragon! Awake from your[Line]long sleep! The time has come[Line]for you to reclaim this land![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		lea     unk_12A388(pc), a0
loc_12A444:     clr.w   d0
		move.b  (a0)+,d0
		bmi.s   loc_12A462
		move.l  a0,-(sp)
		bsr.w   sub_12B598
		movea.l (sp)+,a0
		clr.w   d0
		move.b  (a0)+,d0
		move.l  a0,-(sp)
		jsr     (j_Sleep).l
		movea.l (sp)+,a0
		bra.s   loc_12A444
loc_12A462:     moveq   #$28,d0 
		jsr     sub_802C
		trap    #5
		move.w  #$E6,d0 ; "Awaken, Dark Dragon![Line]Something is wrong....[Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A48A
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A48A:     trap    #7
		move.w  #$E7,d0 ; "[Hero]! Blast![Line]You have meddled for the last[Line]time! Kill them, my servants![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$E8,d0 ; "[Hero]! You must stop[Line]Darksol before he completes[Line]his foul ceremony! Attack![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12A4BA:     moveq   #$2B,d0 
		jsr     (j_ClearEventFlag).l
		rts
loc_12A4C4:     tst.b   ((byte_FFC1CA-$1000000)).w
		beq.s   loc_12A4DA
		cmpi.b  #$70,(P1_INPUT).l 
		bne.s   loc_12A4DA
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
loc_12A4DA:     move.w  #1,((word_FFB7C6-$1000000)).w
		bsr.w   sub_12BF92
		add.w   d0,d0
		move.w  rjt_DialogScriptSet1(pc,d0.w),d0
		jmp     rjt_DialogScriptSet1(pc,d0.w)
rjt_DialogScriptSet1:
		dc.w loc_12A52A-rjt_DialogScriptSet1
		dc.w locret_12A560-rjt_DialogScriptSet1
		dc.w locret_12A560-rjt_DialogScriptSet1
		dc.w locret_12A560-rjt_DialogScriptSet1
		dc.w locret_12A560-rjt_DialogScriptSet1
		dc.w loc_12A562-rjt_DialogScriptSet1
		dc.w loc_12A598-rjt_DialogScriptSet1
		dc.w locret_12A5B4-rjt_DialogScriptSet1
		dc.w loc_12A5B6-rjt_DialogScriptSet1
		dc.w locret_12A5EA-rjt_DialogScriptSet1
		dc.w loc_12A5EC-rjt_DialogScriptSet1
		dc.w loc_12A622-rjt_DialogScriptSet1
		dc.w loc_12A666-rjt_DialogScriptSet1
		dc.w loc_12A6AE-rjt_DialogScriptSet1
		dc.w locret_12A7F6-rjt_DialogScriptSet1
		dc.w loc_12A7F8-rjt_DialogScriptSet1
		dc.w locret_12A82E-rjt_DialogScriptSet1
		dc.w loc_12A830-rjt_DialogScriptSet1
		dc.w loc_12A866-rjt_DialogScriptSet1
		dc.w locret_12A8EC-rjt_DialogScriptSet1
		dc.w loc_12A8EE-rjt_DialogScriptSet1
		dc.w locret_12A932-rjt_DialogScriptSet1
		dc.w loc_12A934-rjt_DialogScriptSet1
		dc.w loc_12A994-rjt_DialogScriptSet1
		dc.w loc_12A9C6-rjt_DialogScriptSet1
		dc.w locret_12A9DA-rjt_DialogScriptSet1
		dc.w loc_12A9DC-rjt_DialogScriptSet1
		dc.w loc_12AA0E-rjt_DialogScriptSet1
		dc.w loc_12AA40-rjt_DialogScriptSet1
		dc.w loc_12AB7E-rjt_DialogScriptSet1
loc_12A52A:     move.w  #$80,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A54E
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A54E:     trap    #5
		move.w  #$71,d0 ; "Fools...you have won here,[Line]but Lord Kane of Runefaust is[Line]even now attacking Guardiana![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
locret_12A560:  rts
loc_12A562:     move.w  #$80,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A586
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A586:     trap    #5
		move.w  #$82,d0 ; "No! It cannot be! After all[Line]these centuries....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
loc_12A598:     move.w  #$81,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		trap    #5
		move.w  #$87,d0 ; "Fools! Light will never defeat[Line]the Darkness....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
locret_12A5B4:  rts
loc_12A5B6:     move.w  #$82,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A5DA
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A5DA:     trap    #5
		move.w  #$95,d0 ; "You think you've won, but[Line]you've failed. The Laser Eye[Line]is ours now![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
locret_12A5EA:  rts
loc_12A5EC:     move.w  #$82,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		move.w  #$82,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A610
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A610:     trap    #5
		move.w  #$A1,d0 ; "You may have beaten us here,[Line]but General Elliott will stop[Line]you in Pao![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
loc_12A622:     move.w  #$80,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		moveq   #$1F,d0
		jsr     sub_802C
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A64E
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A64E:     trap    #5
		move.w  #$A8,d0 ; "Perhaps you have the strength[Line]to rescue King Ramladu and[Line]Runefaust! Stop Darksol![Wait2][Line]Promise that you will free[Line]Runefaust, known as Protectora[Line]before Darksol came....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
loc_12A666:     move.w  #$85,d2 
		bsr.w   sub_12BFD0
		bne.w   loc_12A68C
		moveq   #$FFFFFF80,d0
		jsr     j_GetForceMemberHP
		tst.w   d1
		bne.w   locret_12BFCE
		moveq   #$30,d0 
		jsr     (j_SetEventFlag).l
		bra.w   loc_12A6A6
loc_12A68C:     move.w  #$80,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		moveq   #$FFFFFF85,d0
		jsr     j_GetForceMemberHP
		tst.w   d1
		bne.w   locret_12BFCE
loc_12A6A6:     moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
loc_12A6AE:     move.w  #$80,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		moveq   #$20,d0 
		jsr     sub_802C
		moveq   #$71,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$AD,d0 ; "[Hero]! Take the ship,[Line]but please spare my life![Line]Please![Wait2]"
		trap    #DISPLAY_MESSAGE
loc_12A6D0:     jsr     (j_YesNoChoiceBox).l
		trap    #7
		tst.b   ((CURRENT_DIAMENU_CHOICE-$1000000)).w
		beq.s   loc_12A6E6      
		move.w  #$AE,d0 ; "You don't want to[Line]kill me, do you?[Line]Please let me go.[Wait2]"
		trap    #DISPLAY_MESSAGE
		bra.s   loc_12A6D0
loc_12A6E6:     move.w  #$AF,d0 ; "Thank you! Take the ship, go[Line]after Darksol![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$14,d0
		jsr     (j_Sleep).l
		move.b  #9,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		move.b  #$D,(FADING_PALETTE_FLAGS).l
		moveq   #$14,d0
		jsr     (j_Sleep).l
		moveq   #$6E,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$B0,d0 ; "Balbazak, you betrayed me![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$20,d0 
		jsr     sub_802C
		moveq   #$71,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$B1,d0 ; "No, no, please Darksol![Line]Leave me in peace![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		trap    #SOUND_COMMAND
		dc.w SFX_HIT
		moveq   #$28,d0 
		jsr     sub_802C
		moveq   #$6E,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$B2,d0 ; "You disgust me, Balbazak![Line]Leave you in peace? I will[Line]leave you in pieces![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$20,d0 
		jsr     sub_802C
		moveq   #$71,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$B3,d0 ; "Forgive me![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$28,d0 
		jsr     sub_802C
		moveq   #$6E,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$B4,d0 ; "Too late, worm! Receive your[Line]punishment for failure![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #SOUND_COMMAND
		dc.w SFX_HIT
		bsr.w   sub_128F98
		trap    #6
		jsr     sub_8030
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A7D0
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A7D0:     moveq   #$20,d0 
		jsr     sub_802C
		moveq   #$71,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$B5,d0 ; "I am dying, [Hero]....[Line]You must kill Darksol...[Line]free Runefaust....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
locret_12A7F6:  rts
loc_12A7F8:     move.w  #$80,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A81C
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A81C:     trap    #5
		move.w  #$BD,d0 ; "Arrghh...I was so close...the[Line]way to Metapha...almost[Line]ours....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
locret_12A82E:  rts
loc_12A830:     move.w  #$80,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A854
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A854:     trap    #5
		move.w  #$C2,d0 ; "You'll never beat Kane,[Line]Shining Fools![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
loc_12A866:     move.w  #$80,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		moveq   #$24,d0 
		jsr     sub_802C
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A892
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A892:     trap    #5
		move.w  #$C6,d0 ; "Arrgh! My mask[Line]is...breaking![Wait2]"
		trap    #DISPLAY_MESSAGE
		bsr.w   sub_128F98
		jsr     sub_8030
		trap    #SOUND_COMMAND
		dc.w SFX_METALLIC
		moveq   #$25,d0 
		jsr     sub_802C
		trap    #7
		move.w  #$C7,d0 ; "Wh...where am I? I[Line]remember now. Darksol masked[Line]my face to control me....[Wait2][Line]What have I done?[Line]He even made me fight you![Line]Forgive me, [Hero]![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A8D0
		bsr.w   sub_12C036
loc_12A8D0:     move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A8E4
		moveq   #$FFFFFFFF,d1
		jsr     j_SetTargetID
loc_12A8E4:     moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
locret_12A8EC:  rts
loc_12A8EE:     move.w  #$80,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		moveq   #$21,d0 
		jsr     sub_802C
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A91A
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A91A:     trap    #5
		move.w  #$CF,d0 ; "Though you can take...my[Line]sword...you will never...stop[Line]Darksol.[Wait2][Line]Dark Dragon will be set[Line]free....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
locret_12A932:  rts
loc_12A934:     move.w  #$80,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		jsr     sub_8094
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12A982
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_12A982:     trap    #5
		move.w  #$D5,d0 ; "Lord Darksol...I have failed[Line]...they're coming...into the[Line]tower....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
loc_12A994:     move.w  #$80,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		moveq   #$22,d0 
		jsr     sub_802C
		moveq   #$73,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$D8,d0 ; "This unit...now ceases to[Line]function...mission incomplete[Line]...system failure....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
loc_12A9C6:     move.w  #$80,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
locret_12A9DA:  rts
loc_12A9DC:     move.w  #$80,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		moveq   #$23,d0 
		jsr     sub_802C
		moveq   #$74,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$DD,d0 ; "I am dying...but my mind is[Line]once more my own. Darksol[Line]was controlling me.[Wait2][Line]You must stop Darksol![Line]If he frees Dark Dragon,[Line]all of Rune is doomed.[Wait2][Line]He has gone to the gate,[Line]to summon the castle from the[Line]depths of the sea. Go![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
loc_12AA0E:     move.w  #$80,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		moveq   #$26,d0 
		jsr     sub_802C
		moveq   #$76,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$E2,d0 ; "Fools...Dark Dragon...will[Line]come...to destroy you....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
loc_12AA40:     move.w  #$80,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
		moveq   #$28,d0 
		jsr     sub_802C
		moveq   #$6E,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$E9,d0 ; "Dark Dragon! With my dying[Line]breath...I summon you....[Line]Arise, Dark Dragon![Wait2]"
		trap    #DISPLAY_MESSAGE
		bsr.w   sub_128F98
		moveq   #$A,d0
		jsr     (j_Sleep).l
		bsr.w   sub_128F98
		moveq   #$A,d0
		jsr     (j_Sleep).l
		move.w  #$1EA,d0        ; "[Dict][Line]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12AA98
		bsr.w   sub_12C342
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_12AA98:     trap    #7
		move.w  #$EA,d0 ; "Yes! At last, you are[Line]awakening![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$EB,d0 ; "I offer myself to you, Dark[Line]Dragon! Use my power to help[Line]you cast off your bonds.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12AABE
		bsr.w   sub_12C036
loc_12AABE:     move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12AAD6
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12AAD6:     moveq   #$FFFFFF80,d2
		bsr.w   sub_12BFB6
		moveq   #$F,d1
		jsr     j_SetTargetX
		moveq   #$1E,d1
		jsr     j_SetTargetY
		jsr     sub_8094
		move.w  #$F,d1
		move.w  #7,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
		moveq   #$FFFFFF80,d2
		bsr.w   sub_12BFB6
		moveq   #7,d1
		jsr     j_SetTargetY
		jsr     sub_8028
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12AB3A
		bsr.w   sub_12BFF0
loc_12AB3A:     moveq   #$28,d0 
		jsr     sub_802C
		trap    #5
		move.w  #$EC,d0 ; "You are free once more! Let[Line]all of Rune tremble! I die[Line]fulfilled! Cringe fools![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12AB62
		bsr.w   sub_12C036
loc_12AB62:     move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12AB76
		moveq   #$FFFFFFFF,d1
		jsr     j_SetTargetID
loc_12AB76:     moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
loc_12AB7E:     move.w  #$80,d2 
		bsr.w   sub_12BFD0
		beq.s   loc_12AB9E
		move.w  #$81,d2 
		bsr.w   sub_12BFD0
		beq.s   loc_12AB9E
		move.w  #$82,d2 
		bsr.w   sub_12BFD0
		bne.w   locret_12BFCE
loc_12AB9E:     clr.w   d2
		moveq   #$FFFFFF80,d0
		jsr     j_GetForceMemberHP
		add.w   d1,d2
		moveq   #$FFFFFF81,d0
		jsr     j_GetForceMemberHP
		add.w   d1,d2
		moveq   #$FFFFFF82,d0
		jsr     j_GetForceMemberHP
		add.w   d1,d2
		bne.w   locret_12BFCE
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts
		rts
loc_12ABCC:     move.w  #1,((word_FFB7C6-$1000000)).w
		bsr.w   sub_12BF92
		add.w   d0,d0
		move.w  off_12ABE0(pc,d0.w),d0
		jmp     off_12ABE0(pc,d0.w)
off_12ABE0:     dc.w loc_12AC1C-off_12ABE0
		dc.w loc_12AC8C-off_12ABE0
		dc.w loc_12ACAC-off_12ABE0
		dc.w loc_12ACCC-off_12ABE0
		dc.w loc_12AD04-off_12ABE0
		dc.w loc_12AD24-off_12ABE0
		dc.w loc_12AD44-off_12ABE0
		dc.w loc_12AE56-off_12ABE0
		dc.w loc_12AE6A-off_12ABE0
		dc.w loc_12AEA8-off_12ABE0
		dc.w loc_12AEC8-off_12ABE0
		dc.w loc_12AFD8-off_12ABE0
		dc.w loc_12B038-off_12ABE0
		dc.w loc_12B092-off_12ABE0
		dc.w loc_12B0F2-off_12ABE0
		dc.w loc_12B212-off_12ABE0
		dc.w loc_12B216-off_12ABE0
		dc.w loc_12B256-off_12ABE0
		dc.w loc_12B276-off_12ABE0
		dc.w loc_12B2B0-off_12ABE0
		dc.w loc_12B2D0-off_12ABE0
		dc.w loc_12B31C-off_12ABE0
		dc.w loc_12B33C-off_12ABE0
		dc.w loc_12B36C-off_12ABE0
		dc.w loc_12B378-off_12ABE0
		dc.w loc_12B398-off_12ABE0
		dc.w loc_12B470-off_12ABE0
		dc.w loc_12B490-off_12ABE0
		dc.w loc_12B5E8-off_12ABE0
		dc.w loc_12B638-off_12ABE0
loc_12AC1C:     trap    #SOUND_COMMAND
		dc.w MUSIC_EARTHQUAKE
		move.l  (dword_FF0EF6).l,-(sp)
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(dword_FF0EF6).l
		move.w  #$3C,((word_FFB7C4-$1000000)).w 
		moveq   #$1E,d0
		jsr     (j_Sleep).l
		move.w  #$5A,((word_FFB7C4-$1000000)).w 
		moveq   #$1E,d0
		jsr     (j_Sleep).l
loc_12AC50:     jsr     (j_WaitForVInt).l
		subq.w  #1,((word_FFB7C4-$1000000)).w
		bne.s   loc_12AC50
		move.l  (sp)+,(dword_FF0EF6).l
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$72,d0 ; "If that creature spoke truly,[Line]we must return to help defend[Line]Guardiana![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.b  #4,((byte_FF9C4C-$1000000)).w
		rts
loc_12AC8C:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$76,d0 ; "Well done, Shining Force![Line]Now, enter Guardiana and find[Line]out what's happened there![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12ACAC:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$78,d0 ; "Excellent! Kane will have to[Line]do better than that to stop[Line]you. On to Alterone![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12ACCC:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$7E,d0 ; "[Hero], there's no time[Line]to lose. Kane must be found[Line]and stopped at all costs.[Wait2][Line]Find out all you can and[Line]be sure to talk to the king[Line]of Alterone![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$31,d0 
		jsr     (j_ClearEventFlag).l
		moveq   #$66,d0 
		jsr     (j_SetEventFlag).l
		move.b  #4,((CURRENT_MAP-$1000000)).w
		bra.w   loc_12BF66
loc_12AD04:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$80,d0 ; "[Hero], now enter[Line]Manarina! We must inform[Line]Anri about Guardiana![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12AD24:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$83,d0 ; "[Hero], the Orb of Light[Line]must be within that chest.[Line]Take it quickly![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12AD44:     move.l  (dword_FF0EF6).l,-(sp)
		move.l  #$8034,(dword_FF0EF6).l
		moveq   #$C,d0
		moveq   #$FFFFFF80,d1
		jsr     j_SetTargetID
		moveq   #$1B,d1
		jsr     j_SetTargetX
		moveq   #5,d1
		jsr     j_SetTargetY
		jsr     sub_8028
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12AD90
		bsr.w   sub_12C342
		move.w  #0,d2
		move.w  #$86,d3 
		bsr.w   sub_12C2BE
loc_12AD90:     jsr     sub_8094
		move.w  #$1B,d1
		move.w  #5,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12ADD6
		bsr.w   sub_12C342
		moveq   #3,d2
		moveq   #1,d1
		move.w  #$86,d3 
		bsr.w   sub_12C09E
loc_12ADD6:     move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12ADF2
		bsr.w   sub_12C342
		move.w  #2,d2
		move.w  #$86,d3 
		bsr.w   sub_12C2BE
loc_12ADF2:     trap    #5
		move.w  #$88,d0 ; "She...that evil woman...was[Line]going to take me to Runefaust,[Line]to feed me to a dragon![Wait2][Line]Thank you! I'm going home and[Line]I'm never leaving![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12AE18
		bsr.w   sub_12C342
		moveq   #2,d2
		moveq   #5,d1
		move.w  #$86,d3 
		bsr.w   sub_12C09E
loc_12AE18:     move.w  #2,((word_FFB7C6-$1000000)).w
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12AE3A
		bsr.w   sub_12C342
		moveq   #1,d2
		moveq   #7,d1
		move.w  #$86,d3 
		bsr.w   sub_12C09E
loc_12AE3A:     move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12AE4E
		moveq   #$FFFFFFFF,d1
		jsr     j_SetTargetID
loc_12AE4E:     move.l  (sp)+,(dword_FF0EF6).l
		rts
loc_12AE56:     moveq   #$64,d0 
		jsr     (j_SetEventFlag).l
		moveq   #$7E,d0 
		jsr     (j_ClearEventFlag).l
		bra.w   loc_12BF66
loc_12AE6A:     moveq   #$63,d0 
		jsr     (j_SetEventFlag).l
		move.w  #$2A,((MAP_HEIGHT-$1000000)).w 
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$96,d0 ; "[Hero], the Moon Stone[Line]lies inside the cavern.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #0,d1
		moveq   #$1E,d2
		moveq   #0,d3
		moveq   #$1E,d4
		moveq   #$17,d5
		moveq   #$B,d6
		jmp     sub_80AC
loc_12AEA8:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$98,d0 ; "Head for the bridge. We need[Line]to get across quickly![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12AEC8:     clr.w   ((word_FFB7C6-$1000000)).w
		move.l  (dword_FF0EF6).l,-(sp)
		move.l  #$8034,(dword_FF0EF6).l
		moveq   #$C,d0
		moveq   #$FFFFFF80,d1
		jsr     j_SetTargetID
		moveq   #$1D,d1
		jsr     j_SetTargetX
		moveq   #$14,d1
		jsr     j_SetTargetY
		jsr     sub_8028
		jsr     sub_8094
		move.w  #$1D,d1
		move.w  #$12,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12AF42
		bsr.w   sub_12C342
		moveq   #0,d2
		moveq   #4,d1
		move.w  #2,d3
		bsr.w   sub_12C09E
loc_12AF42:     moveq   #2,d0
		jsr     sub_802C
		trap    #5
		move.w  #$A2,d0 ; "Whew! I thought I was a[Line]goner, but I caught a branch[Line]and just hung on.[Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12AF6E
		bsr.w   sub_12C342
		moveq   #0,d2
		moveq   #0,d1
		move.w  #2,d3
		bsr.w   sub_12C09E
loc_12AF6E:     move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12AF8A
		bsr.w   sub_12C342
		move.w  #2,d2
		move.w  #2,d3
		bsr.w   sub_12C2BE
loc_12AF8A:     trap    #7
		move.w  #$A3,d0 ; "A great battle! I don't know[Line]who you are, but I want to[Line]tag along![Wait2]"
		trap    #DISPLAY_MESSAGE
		jsr     sub_8030
		moveq   #2,d0
		bsr.w   sub_12C446
		trap    #6
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$A4,d0 ; "A good job getting to that[Line]Laser Eye. Hurry on to Pao.[Line]Evil is afoot![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		trap    #5
		clr.w   ((word_FFC0BE-$1000000)).w
		move.w  #$166,d0        ; "With the Laser Eye gone,[Line]the Shining Force heads toward[Line]the moving town of Pao.[Wait2][Line]Knowing that Runefaust is[Line]gathering its forces, our[Line]heroes hurried onward.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$25,d0 
		jsr     (j_SetEventFlag).l
		bra.w   loc_12BF66
loc_12AFD8:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$A9,d0 ; "Elliott was a great warrior...[Line]too bad he was our enemy.[Wait2][Line]But look, the traveling town[Line]of Pao is coming up again![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		jsr     (j_FadeOutToBlack).l
		trap    #SOUND_COMMAND
		dc.w SFX_TRAIN_WHISTLE
		moveq   #$78,d0 
		jsr     (j_Sleep).l
		move.b  #1,((CURRENT_REGION-$1000000)).w
		moveq   #2,d1
		moveq   #4,d2
		moveq   #$2A,d3 
		moveq   #$B,d4
		moveq   #1,d5
		moveq   #0,d6
		jsr     sub_80AC
		jsr     (j_FadeInFromBlack).l
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		jsr     j_InitBattle
		jmp     sub_203A0
loc_12B038:     moveq   #$30,d0 
		jsr     (j_CheckEventFlag).l
		beq.s   loc_12B05C
		move.b  #3,((CURRENT_REGION-$1000000)).w
		moveq   #$26,d1 
		moveq   #$10,d2
		moveq   #$10,d3
		moveq   #$B,d4
		moveq   #0,d5
		moveq   #0,d6
		jsr     sub_80AC
		bra.s   loc_12B074
loc_12B05C:     move.b  #4,((CURRENT_REGION-$1000000)).w
		moveq   #$26,d1 
		moveq   #$10,d2
		moveq   #9,d3
		moveq   #7,d4
		moveq   #0,d5
		moveq   #0,d6
		jsr     sub_80AC
loc_12B074:     move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		jsr     j_InitBattle
		jsr     sub_203A0
		trap    #SOUND_COMMAND
		dc.w SFX_HIT
		moveq   #$14,d0
		jmp     (j_Sleep).l
loc_12B092:     moveq   #$28,d0 
		jsr     sub_802C
		moveq   #$6E,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$B6,d0 ; "Take the ship, as that fool[Line]said. You will not survive[Line]the voyage! Ha, ha, ha![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.b  #$A,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		move.b  #$D,(FADING_PALETTE_FLAGS).l
		moveq   #$14,d0
		jsr     (j_Sleep).l
		trap    #5
		clr.w   ((word_FFC0BE-$1000000)).w
		move.w  #$167,d0        ; "Thus did the Shining Force[Line]free Uranbatol and set sail[Line]for a land of legend....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$25,d0 
		jsr     (j_SetEventFlag).l
		bra.w   loc_12BF66
loc_12B0F2:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$B8,d0 ; "The ship was damaged in the[Line]battle. We must repair it.[Line]That island over there....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.l  #$8034,(dword_FF0EF6).l
		moveq   #$C,d0
		moveq   #$FFFFFF80,d1
		jsr     j_SetTargetID
		moveq   #3,d1
		jsr     j_SetTargetX
		moveq   #$1F,d1
		jsr     j_SetTargetY
		jsr     sub_8028
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12B156
		bsr.w   sub_12C342
		move.w  #1,d2
		move.w  #$7C,d3 
		bsr.w   sub_12C2BE
loc_12B156:     jsr     sub_8094
		move.w  #8,d1
		move.w  #$1F,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12B19C
		bsr.w   sub_12C342
		moveq   #1,d2
		moveq   #4,d1
		move.w  #$7C,d3 
		bsr.w   sub_12C09E
loc_12B19C:     move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12B1B8
		bsr.w   sub_12C342
		move.w  #0,d2
		move.w  #$7C,d3 
		bsr.w   sub_12C2BE
loc_12B1B8:     moveq   #$2A,d0 
		jsr     sub_802C
		trap    #5
		move.w  #$B9,d0 ; "Thank you for destroying[Line]those monsters! My name is[Line]Shell of Waral.[Wait2][Line]You can repair your ship in[Line]Waral. Please follow me![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.w  #$80,d2 
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12B1EC
		bsr.w   sub_12C342
		moveq   #2,d2
		moveq   #4,d1
		move.w  #$7C,d3 
		bsr.w   sub_12C09E
loc_12B1EC:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$BA,d0 ; "I've heard of Waral. We[Line]should be able to get the[Line]ship fixed there.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$23,d0 
		jsr     (j_ClearEventFlag).l
loc_12B212:     bra.w   loc_12BF66
loc_12B216:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$BF,d0 ; "The ship's helm was destroyed[Line]in the battle. We're now[Line]adrift at sea![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		trap    #5
		clr.w   ((word_FFC0BE-$1000000)).w
		move.w  #$168,d0        ; "The ship drifted off course,[Line]lost at sea. What will become[Line]of the Shining Force?[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$25,d0 
		jsr     (j_SetEventFlag).l
		moveq   #$23,d0 
		jsr     (j_ClearEventFlag).l
		bra.w   loc_12BF66
loc_12B256:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$C3,d0 ; "[Hero], you must[Line]stop Kane before he finds the[Line]Manual of the Seal. Onward![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12B276:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$C8,d0 ; "It seems that Darksol is[Line]behind all the evil afoot.[Line]Stop him and it all ends.[Wait2][Line]In any case, let's take[Line]another look at this village.[Wait2][Line]Check the shrine again....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$47,d0 
		jsr     (j_SetEventFlag).l
		moveq   #$30,d0 
		jsr     (j_ClearEventFlag).l
		moveq   #$7C,d0 
		jsr     (j_ClearEventFlag).l
		bra.w   loc_12BF66
loc_12B2B0:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$CA,d0 ; "Mishaela is said to possess[Line]the Sword of Light. You must[Line]enter her castle and get it![Wait2][Line]With that legendary weapon,[Line]you stand a much better[Line]chance against Darksol.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12B2D0:     moveq   #$37,d0 
		jsr     (j_CheckEventFlag).l
		beq.s   loc_12B2FC
		moveq   #$25,d0 
		jsr     (j_SetEventFlag).l
		jsr     (sub_304).l
		clr.w   ((word_FFC0BE-$1000000)).w
		move.w  #$169,d0        ; "Will Darksol release Dark[Line]Dragon from the bonds of the[Line]Ancients?[Wait2][Line]Or will [Hero] stop[Line]Darksol and save all of[Line]Rune from the ultimate evil?[Wait2][Line]The Shining Force hurries[Line]on to Prompt....[Wait2]"
		trap    #DISPLAY_MESSAGE
		jsr     (sub_30C).l
		bra.w   loc_12BF66
loc_12B2FC:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$D0,d0 ; "With the Sword of Light you[Line]might be able to defeat[Line]Darksol. We shall see![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12B31C:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$D2,d0 ; "Now, on to the Tower of the[Line]Ancients![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12B33C:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$D6,d0 ; "Get in there, quickly![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.b  #3,((CURRENT_MAP-$1000000)).w
		moveq   #$58,d0 
		jsr     (j_SetEventFlag).l
		bra.w   loc_12BF66
loc_12B36C:     moveq   #$5A,d0 
		jsr     (j_SetEventFlag).l
		bra.w   loc_12BF66
loc_12B378:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$DA,d0 ; "Now, [Hero], into[Line]Runefaust![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12B398:     moveq   #$23,d0 
		jsr     sub_802C
		moveq   #$74,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$DC,d0 ; "Is that the best you can do?[Line]Well, meet my robots,[Line]weaklings![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.b  #1,((CURRENT_MAP-$1000000)).w
		move.l  (dword_FF0EF6).l,-(sp)
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(dword_FF0EF6).l
		move.w  #$3C,((word_FFB7C4-$1000000)).w 
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		movea.l (off_124068).l,a0
		lea     ($B580).l,a1
		move.w  #$240,d0
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3).l
		moveq   #$1E,d0
		jsr     (j_Sleep).l
		movea.l (off_12406C).l,a0
		lea     ($B580).l,a1
		move.w  #$240,d0
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3).l
		moveq   #$1E,d0
		jsr     (j_Sleep).l
		movea.l (off_124070).l,a0
		lea     ($B580).l,a1
		move.w  #$240,d0
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3).l
		moveq   #$1E,d0
		jsr     (j_Sleep).l
loc_12B44A:     jsr     (j_WaitForVInt).l
		subq.w  #1,((word_FFB7C4-$1000000)).w
		bne.s   loc_12B44A
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		move.b  ((byte_FF9C51-$1000000)).w,d0
		lsl.w   #2,d0
		andi.w  #$C0,d0 
		or.b    d0,((byte_FF9C51-$1000000)).w
		bra.w   loc_12BF66
loc_12B470:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$DE,d0 ; "[Hero]! Darksol has[Line]already entered the Castle of[Line]the Ancients.  You must hurry![Wait2][Line]I found a secret passage[Line]to the gate. It is in the[Line]entry hall of this castle.[Wait2][Line]Return to town and make[Line]your final preparations. Then[Line]take the passage.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts
loc_12B490:     moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$E3,d0 ; "You've destroyed Colossus![Line]But where is Darksol?[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		trap    #SOUND_COMMAND
		dc.w MUSIC_EARTHQUAKE
		jsr     sub_8094
		move.w  #$10,d1
		move.w  #3,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
		move.l  (dword_FF0EF6).l,-(sp)
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(dword_FF0EF6).l
		move.w  #$3C,((word_FFB7C4-$1000000)).w 
		moveq   #$1E,d0
		jsr     (j_Sleep).l
		moveq   #0,d1
		moveq   #$20,d2 
		moveq   #$E,d3
		moveq   #0,d4
		moveq   #4,d5
		moveq   #5,d6
		jsr     sub_80AC
		move.w  #$5A,((word_FFB7C4-$1000000)).w 
		moveq   #$1E,d0
		jsr     (j_Sleep).l
		moveq   #5,d1
		moveq   #$20,d2 
		moveq   #$E,d3
		moveq   #0,d4
		moveq   #4,d5
		moveq   #5,d6
		jsr     sub_80AC
		moveq   #$1E,d0
		jsr     (j_Sleep).l
		moveq   #$A,d1
		moveq   #$20,d2 
		moveq   #$E,d3
		moveq   #0,d4
		moveq   #4,d5
		moveq   #5,d6
		jsr     sub_80AC
loc_12B54A:     jsr     (j_WaitForVInt).l
		subq.w  #1,((word_FFB7C4-$1000000)).w
		bne.s   loc_12B54A
		move.l  (sp)+,(dword_FF0EF6).l
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		move.b  #5,((CURRENT_REGION-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		jsr     j_InitBattle
		jsr     sub_203A0
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$E4,d0 ; "Use the staircase,[Line][Hero].[Line]Darksol must be up there![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		rts

; =============== S U B R O U T I N E =======================================

sub_12B598:
		jsr     sub_80CC
		jmp     (j_StoreVDPCommandster).l

	; End of function sub_12B598

unk_12B5A4:     dc.b   0
		dc.b $28 
		dc.b   1
		dc.b $1E
		dc.b   0
		dc.b $14
		dc.b   1
		dc.b $13
		dc.b   2
		dc.b $12
		dc.b   1
		dc.b $11
		dc.b   2
		dc.b $10
		dc.b   3
		dc.b  $F
		dc.b   2
		dc.b  $E
		dc.b   3
		dc.b  $D
		dc.b   2
		dc.b  $C
		dc.b   3
		dc.b  $B
		dc.b   4
		dc.b  $A
		dc.b   3
		dc.b   9
		dc.b   2
		dc.b   8
		dc.b   1
		dc.b   7
		dc.b   2
		dc.b   6
		dc.b   3
		dc.b   5
		dc.b   4
		dc.b   5
		dc.b   3
		dc.b   5
		dc.b   2
		dc.b   5
		dc.b   1
		dc.b   5
		dc.b   2
		dc.b   5
		dc.b   3
		dc.b   5
		dc.b   4
		dc.b   5
		dc.b   3
		dc.b   5
		dc.b   2
		dc.b   5
		dc.b   3
		dc.b   5
		dc.b   4
		dc.b   5
		dc.b   3
		dc.b   5
		dc.b   2
		dc.b  $A
		dc.b   3
		dc.b  $F
		dc.b   4
		dc.b   0
		dc.b $FF
		dc.b $FF
loc_12B5E8:     lea     unk_12B5A4(pc), a0
loc_12B5EC:     clr.w   d0
		move.b  (a0)+,d0
		bmi.s   loc_12B608
		move.l  a0,-(sp)
		bsr.s   sub_12B598
		movea.l (sp)+,a0
		clr.w   d0
		move.b  (a0)+,d0
		move.l  a0,-(sp)
		jsr     (j_Sleep).l
		movea.l (sp)+,a0
		bra.s   loc_12B5EC
loc_12B608:     moveq   #0,d1
		moveq   #$20,d2 
		moveq   #$C,d3
		moveq   #2,d4
		moveq   #6,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #$78,d0 
		jsr     (j_Sleep).l
		move.b  #1,((CURRENT_MAP-$1000000)).w
		bra.w   loc_12BF66
unk_12B62C:     dc.b   4
		dc.b $14
		dc.b   3
		dc.b $1E
		dc.b   2
		dc.b $28 
		dc.b   1
		dc.b $32 
		dc.b   0
		dc.b $3C 
		dc.b $FF
		dc.b $FF
loc_12B638:     moveq   #$27,d0 
		jsr     sub_802C
		moveq   #$77,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$ED,d0 ; "Nooooo! These puny creatures[Line]cannot defeat the Lord of[Line]Darkness![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #7
		move.w  #$EE,d0 ; "Never! I will not be banished[Line]again! The Powers of Darkness[Line]will sustain me![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.b  #1,(FADING_COUNTER_MAX).l
		jsr     (j_FadeOutToWhite).l
		jsr     (j_FadeInFromWhite).l
		jsr     (j_FadeOutToWhite).l
		jsr     (j_FadeInFromWhite).l
		move.b  #3,(FADING_COUNTER_MAX).l
		jsr     (j_FadeOutToWhite).l
		clr.w   d0
		moveq   #$F,d1
		jsr     j_SetTargetX
		moveq   #$B,d1
		jsr     j_SetTargetY
		moveq   #$1E,d7
		lea     ((byte_FFA1C8-$1000000)).w,a1
loc_12B6A4:     move.b  (a1),d0
		cmpi.b  #$B,d0
		blt.s   loc_12B6AE
		addq.b  #1,(a1)
loc_12B6AE:     lea     $10(a1),a1
		dbf     d7,loc_12B6A4
		jsr     sub_8028
		jsr     sub_8094
		move.w  #0,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12B6FE
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_12B6FE:     move.w  #0,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12B716
		bsr.w   sub_12C342
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_12B716:     jsr     (j_FadeInFromWhite).l
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		trap    #7
		move.w  #$EF,d0 ; "Dark Dragon still lives![Line]Perhaps we cannot kill him![Line]There must be a way....[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #7
		move.w  #$F0,d0 ; "[Hero]! Dark Dragon[Line]must be sealed away once[Line]again. And only you can do it![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #7
		move.w  #$F1,d0 ; "Use the Chaos Breaker! Drive[Line]it through Dark Dragon![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$27,d0 
		jsr     sub_802C
		moveq   #$77,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$F2,d0 ; "Fools! Nothing you do can[Line]stop me! I am Dark Dragon,[Line]Darkness incarnate![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$F3,d0 ; "[Hero]! Stab him with[Line]the Chaos Breaker![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$1E,d0
		jsr     (j_Sleep).l
		move.l  (dword_FF0EF6).l,-(sp)
		clr.l   (dword_FF0EF6).l
		move.w  #0,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12B7B8
		bsr.w   sub_12C342
		moveq   #0,d2
		moveq   #0,d1
		move.w  #$1E,d3
		bsr.w   sub_12C09E
loc_12B7B8:     moveq   #$14,d0
		jsr     (j_Sleep).l
		move.w  #0,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12B7DC
		bsr.w   sub_12C342
		move.w  #2,d2
		move.w  #$1E,d3
		bsr.w   sub_12C2BE
loc_12B7DC:     moveq   #$3C,d0 
		jsr     (j_Sleep).l
		move.w  #$4100,(word_FF0D34).l
		move.w  #0,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12B808
		bsr.w   sub_12C342
		move.w  #2,d2
		move.w  #$95,d3 
		bsr.w   sub_12C2BE
loc_12B808:     trap    #SOUND_COMMAND
		dc.w SFX_BOW_MASTER
		moveq   #$14,d0
		jsr     (j_Sleep).l
		move.w  #0,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12B830
		bsr.w   sub_12C342
		move.w  #0,d2
		move.w  #$95,d3 
		bsr.w   sub_12C2BE
loc_12B830:     trap    #SOUND_COMMAND
		dc.w SFX_HEALING
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		move.w  #0,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12B858
		bsr.w   sub_12C342
		move.w  #1,d2
		move.w  #$95,d3 
		bsr.w   sub_12C2BE
loc_12B858:     trap    #SOUND_COMMAND
		dc.w SFX_DOOR_OPEN
		moveq   #$14,d0
		jsr     (j_Sleep).l
		trap    #SOUND_COMMAND
		dc.w SFX_BOLT_SPELL
		bsr.w   sub_1267AC
		movea.l (off_BC018).l,a0
		lea     (PALETTE_2).l,a1
		moveq   #7,d7
loc_12B87A:     move.l  (a0),$80(a1)
		move.l  (a0)+,(a1)+
		dbf     d7,loc_12B87A
		jsr     (j_StoreVDPCommandster).l
		movea.l (off_BC008).l,a0
		lea     ($D000).l,a1
		move.w  #$300,d0
		jsr     (sub_298).l
		jsr     (j_SetVIntParam3AndWait).l
		movea.l (off_BC00C).l,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		bsr.w   sub_12BF42
		jsr     sub_801C
		jsr     sub_8054
		moveq   #5,d0
		jsr     (j_Sleep).l
		movea.l (off_BC010).l,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		bsr.w   sub_12BF42
		jsr     sub_801C
		jsr     sub_8054
		moveq   #5,d0
		jsr     (j_Sleep).l
		movea.l (off_BC014).l,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		bsr.w   sub_12BF42
		jsr     sub_801C
		jsr     sub_8054
		moveq   #$A,d0
		jsr     (j_Sleep).l
		jsr     sub_80DC
		movea.l (off_BC010).l,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		bsr.w   sub_12BF42
		jsr     sub_801C
		jsr     sub_8054
		moveq   #5,d0
		jsr     (j_Sleep).l
		jsr     sub_80DC
		movea.l (off_BC00C).l,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		bsr.w   sub_12BF42
		jsr     sub_801C
		jsr     sub_8054
		moveq   #5,d0
		jsr     (j_Sleep).l
		jsr     sub_80DC
		jsr     sub_8054
		moveq   #5,d0
		jsr     (j_Sleep).l
		bsr.w   sub_126982
		trap    #SOUND_COMMAND
		dc.w MUSIC_EARTHQUAKE
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(dword_FF0EF6).l
		move.w  #$3C,((word_FFB7C4-$1000000)).w 
		moveq   #$1E,d0
		jsr     (j_Sleep).l
		trap    #SOUND_COMMAND
		dc.w SFX_MONSTER_3
		move.w  #$5A,((word_FFB7C4-$1000000)).w 
		moveq   #$1E,d0
		jsr     (j_Sleep).l
		lea     unk_12B62C(pc), a0
loc_12B9AA:     clr.w   d0
		move.b  (a0)+,d0
		bmi.s   loc_12B9C8
		move.l  a0,-(sp)
		bsr.w   sub_12B598
		movea.l (sp)+,a0
		clr.w   d0
		move.b  (a0)+,d0
		move.l  a0,-(sp)
		jsr     (j_Sleep).l
		movea.l (sp)+,a0
		bra.s   loc_12B9AA
loc_12B9C8:     trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_FADE_OUT
loc_12B9CC:     jsr     (j_WaitForVInt).l
		subq.w  #1,((word_FFB7C4-$1000000)).w
		bne.s   loc_12B9CC
		move.w  #$B4,d0 
		jsr     (j_Sleep).l
		move.w  #$1E,((word_FFB7C4-$1000000)).w
		trap    #SOUND_COMMAND
		dc.w MUSIC_ATTACK
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$F5,d0 ; "[Hero]! The Castle of the[Line]Ancients is sinking! Let's[Line]get out of here![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.w  #$F0,d7 
loc_12BA0E:     jsr     (j_WaitForVInt).l
		tst.b   (P1_INPUT).l    
		dbne    d7,loc_12BA0E
		trap    #5
		clr.w   ((word_FFC0BE-$1000000)).w
		move.w  #$F6,d0 ; "But [Hero] cannot move![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$F7,d0 ; "[Hero] is somehow bound[Line]to the Chaos Breaker![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.w  #$3C,((word_FFB7C4-$1000000)).w 
		moveq   #$78,d0 
		jsr     (j_Sleep).l
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$F8,d0 ; "[Hero]! Break free! We[Line]won't leave without you![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.w  #$5A,((word_FFB7C4-$1000000)).w 
		moveq   #$78,d0 
		jsr     (j_Sleep).l
		moveq   #$2B,d0 
		jsr     sub_802C
		clr.w   d1
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$F9,d0 ; "I can't get free, but you[Line]won't die with me![Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #SOUND_COMMAND
		dc.w SFX_SPELL_CAST
		lea     (PALETTE_2).l,a0
		lea     (PALETTE_2_BIS).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		jsr     (j_FadeOutToWhite).l
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_FADE_OUT
		clr.b   ((byte_FFB5AC-$1000000)).w
		lea     (PALETTE_1_BIS).l,a0
		moveq   #$1F,d7
loc_12BAD0:     move.l  #$EEE0EEE,(a0)+
		dbf     d7,loc_12BAD0
		clr.w   (PALETTE_1_BIS).l
		moveq   #$78,d0 
		jsr     (j_Sleep).l
		jsr     (j_FadeOutToBlack).l
		clr.w   ((word_FFB7C4-$1000000)).w
		jsr     (j_WaitForVInt).l
		move.l  (sp)+,(dword_FF0EF6).l
		jsr     (sub_378).l
		moveq   #1,d0
		jsr     sub_802C
		moveq   #1,d1
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$FA,d0 ; "[Hero] used his Egress[Line]magic to save us. But[Line]where is [Hero]?[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$E,d0
		jsr     sub_802C
		moveq   #$E,d1
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$FB,d0 ; "That spell's supposed to[Line]get us all out. Why isn't[Line][Hero] here? Why, Nova?[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$29,d0 
		jsr     sub_802C
		moveq   #$39,d1 
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$FC,d0 ; "I have no answers for you.[Line]Perhaps a great hero is[Line]needed to guard the seal.[Delay2][Line]Perhaps he must[Line]stand as an eternal vigil to[Line]prevent Dark Dragon's return.[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$E,d0
		jsr     sub_802C
		moveq   #$E,d1
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$FD,d0 ; "But why did it have[Line]to be [Hero]? Any of us[Line]would have taken his place....[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		move.w  #1,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BB94
		bsr.w   sub_12C342
		move.w  #1,d2
		bsr.w   sub_12C2DC
loc_12BB94:     moveq   #1,d0
		jsr     sub_802C
		moveq   #1,d1
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$FE,d0 ; "I won't believe it![Line][Hero] will come back,[Line]I know it![Delay2]"
		trap    #DISPLAY_MESSAGE
		move.w  #1,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BBC2
		bsr.w   sub_12C342
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_12BBC2:     trap    #7
		move.w  #$FF,d0         ; "Perhaps [Hero] will still[Line]come out. Wait, look at[Line]the castle![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #0,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #7,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		trap    #SOUND_COMMAND
		dc.w MUSIC_EARTHQUAKE
		jsr     sub_8094
		move.w  #5,d1
		move.w  #$A,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
		move.w  #1,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BC2A
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BC2A:     move.w  #$E,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BC42
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BC42:     move.w  #$1E,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BC5A
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BC5A:     move.w  #$A,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BC72
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BC72:     move.w  #$C,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BC8A
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BC8A:     move.w  #$F,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BCA2
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BCA2:     move.w  #$13,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BCBA
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BCBA:     move.w  #8,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BCD2
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BCD2:     move.w  #3,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BCEA
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BCEA:     move.w  #$C,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BD02
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BD02:     move.l  (dword_FF0EF6).l,-(sp)
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(dword_FF0EF6).l
		move.w  #$3C,((word_FFB7C4-$1000000)).w 
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		moveq   #5,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #7,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #$1E,d0
		jsr     (j_Sleep).l
		moveq   #$A,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #7,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		moveq   #$F,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #7,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		moveq   #4,d1
		moveq   #7,d2
		moveq   #4,d3
		moveq   #7,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		move.w  #$5A,((word_FFB7C4-$1000000)).w 
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_FADE_OUT
		moveq   #$1E,d0
		jsr     (j_Sleep).l
loc_12BD96:     jsr     (j_WaitForVInt).l
		subq.w  #1,((word_FFB7C4-$1000000)).w
		bne.s   loc_12BD96
		move.l  (sp)+,(dword_FF0EF6).l
		moveq   #$E,d0
		jsr     sub_802C
		moveq   #$E,d1
		bsr.w   loc_12C34E
		trap    #5
		move.w  #$100,d0        ; "No! It's gone...the castle...[Line]and [Hero] with it....[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		jsr     sub_8094
		move.w  #$E,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BE08
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_12BE08:     trap    #SOUND_COMMAND
		dc.w MUSIC_SAD_THEME
		moveq   #$E,d0
		jsr     sub_802C
		trap    #5
		trap    #7
		move.w  #$101,d0        ; "That's it. He didn't escape.[Line]He's gone....[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #1,d0
		jsr     sub_802C
		move.w  #1,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BE46
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12BE46:     trap    #5
		move.w  #$103,d0        ; "I won't believe it....[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$29,d0 
		jsr     sub_802C
		move.w  #$1E,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BE76
		bsr.w   sub_12C342
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12BE76:     trap    #5
		move.w  #$102,d0        ; "[Hero] has saved all of[Line]Rune. His sacrifice will be[Line]remembered forever.[Delay2][Line]And now, friends, it is[Line]time for us to begin the long[Line]journey home....[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8030
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		moveq   #1,d0
		jsr     sub_802C
		move.w  #1,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BEAE
		bsr.w   sub_12C342
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BEAE:     trap    #5
		move.w  #$103,d0        ; "I won't believe it....[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     sub_8094
		move.w  #1,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12BF04
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
		lea     unk_12BF3E(pc), a0
		move.b  #1,((byte_FFB4C5-$1000000)).w
		bsr.w   sub_12C404
loc_12BF04:     moveq   #$5A,d0 
		jsr     (j_Sleep).l
		trap    #5
		move.w  #$104,d0        ; "[Hero]!"
		trap    #DISPLAY_MESSAGE
		moveq   #2,d0
		jsr     sub_80D8
		move.w  #$78,d0 
		jsr     (j_Sleep).l
		trap    #6
		jsr     sub_8030
		move.w  #$F0,d0 
		jsr     (j_Sleep).l
		jmp     j_PlayEnding
unk_12BF3E:     dc.b   3
		dc.b   3
		dc.b   3
		dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_12BF42:
		move.w  (word_FF0D36).l,d6
		lsr.w   #3,d6
		subi.w  #$1F,d6
		lsl.w   #8,d6
		move.w  (word_FF0D30).l,d7
		lsr.w   #3,d7
		subi.w  #$1C,d7
		andi.w  #$FF,d7
		or.w    d6,d7
		add.w   d7,d1
		rts

	; End of function sub_12BF42

loc_12BF66:     movea.l (dword_FF0EFE).l,sp
		jsr     (j_FadeOutToBlack).l
		clr.l   (dword_FF0EF6).l
		clr.w   d0
		rts

; =============== S U B R O U T I N E =======================================

sub_12BF7C:
		movea.l (dword_FF0EFE).l,sp
		jsr     (j_FadeOutToBlack).l
		clr.l   (dword_FF0EF6).l
		moveq   #$FFFFFFFE,d0
		rts

	; End of function sub_12BF7C


; =============== S U B R O U T I N E =======================================

sub_12BF92:
		clr.w   d0
		move.b  ((CURRENT_MAP_VERSION-$1000000)).w,d0
		bpl.s   loc_12BFA0
		move.l  (sp)+,d0
		bra.w   loc_12C480
loc_12BFA0:
		clr.w   d1
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d1
		subq.w  #1,d1
		add.b   byte_12BFAE(pc,d1.w),d0
		rts

	; End of function sub_12BF92

byte_12BFAE:    dc.b 0
		dc.b   4
		dc.b   8
		dc.b  $B
		dc.b  $E
		dc.b $11
		dc.b $15
		dc.b $19

; =============== S U B R O U T I N E =======================================

sub_12BFB6:
		clr.w   d0
		moveq   #$1F,d7
loc_12BFBA:
		jsr     j_GetTargetID
		cmp.b   d2,d1
		beq.w   locret_12BFCE
		addq.w  #1,d0
		dbf     d7,loc_12BFBA
		moveq   #$FFFFFFFF,d0
locret_12BFCE:
		
		rts

	; End of function sub_12BFB6


; =============== S U B R O U T I N E =======================================

sub_12BFD0:
		moveq   #$1F,d7
		lea     ((byte_FFC08E-$1000000)).w,a0
loc_12BFD6:
		move.w  (a0)+,d0
		bmi.w   locret_12BFEE
		jsr     j_GetTargetID
		cmp.b   d1,d2
		beq.w   locret_12BFEE
		dbf     d7,loc_12BFD6
		moveq   #$FFFFFFFF,d0
locret_12BFEE:
		
		rts

	; End of function sub_12BFD0


; =============== S U B R O U T I N E =======================================

sub_12BFF0:
		move.w  d0,d7
		lsl.w   #3,d7
		lea     (word_FF0D30).l,a0
		adda.w  d7,a0
		moveq   #1,d1
		moveq   #1,d2
		moveq   #$1D,d7
		bsr.w   sub_12C080
		moveq   #1,d1
		moveq   #3,d2
		moveq   #9,d7
		bsr.w   sub_12C080
		moveq   #1,d1
		moveq   #5,d2
		moveq   #4,d7
		bsr.w   sub_12C080
		moveq   #1,d1
		moveq   #9,d2
		moveq   #2,d7
		bsr.w   sub_12C080
		moveq   #1,d1
		moveq   #$13,d2
		moveq   #2,d7
		bsr.w   sub_12C080
		moveq   #$1E,d0
		jmp     (j_Sleep).l

	; End of function sub_12BFF0


; =============== S U B R O U T I N E =======================================

sub_12C036:
		move.w  d0,d7
		lsl.w   #3,d7
		lea     (word_FF0D30).l,a0
		adda.w  d7,a0
		moveq   #1,d1
		moveq   #$13,d2
		moveq   #2,d7
		bsr.w   sub_12C080
		moveq   #1,d1
		moveq   #9,d2
		moveq   #2,d7
		bsr.w   sub_12C080
		moveq   #1,d1
		moveq   #5,d2
		moveq   #4,d7
		bsr.w   sub_12C080
		moveq   #1,d1
		moveq   #3,d2
		moveq   #9,d7
		bsr.w   sub_12C080
		moveq   #1,d1
		moveq   #1,d2
		moveq   #$1D,d7
		bsr.w   sub_12C080
		eori.w  #$100,(a0)
		moveq   #$1E,d0
		jmp     (j_Sleep).l

	; End of function sub_12C036


; =============== S U B R O U T I N E =======================================

sub_12C080:
		eori.w  #$100,(a0)
		move.w  d1,d0
		jsr     (j_Sleep).l
		eori.w  #$100,(a0)
		move.w  d2,d0
		jsr     (j_Sleep).l
		dbf     d7,sub_12C080
		rts

	; End of function sub_12C080


; =============== S U B R O U T I N E =======================================

sub_12C09E:
		movem.w d0-d2,-(sp)
		bsr.w   sub_12C2BE
		movem.w (sp)+,d0-d2
		moveq   #1,d6
		bra.s   loc_12C0BC
loc_12C0AE:
		movem.w d0-d2,-(sp)
		bsr.w   sub_12C2DC
		movem.w (sp)+,d0-d2
		clr.w   d6
loc_12C0BC:
		move.w  d0,d7
		lsl.w   #3,d7
		lea     (word_FF0D30).l,a0
		adda.w  d7,a0
		move.w  d1,-(sp)
		jsr     j_GetTargetX
		move.w  d1,d4
		jsr     j_GetTargetY
		move.w  d1,d5
		move.w  (sp)+,d1
		movem.w d0/d4-d5,-(sp)
loc_12C0E0:
		move.w  ((word_FFB7C6-$1000000)).w,d7
		add.w   d7,d7
		lea     off_12C172(pc), a1
		move.w  (a1,d7.w),d7
loc_12C0EE:
		move.w  d2,d3
		andi.w  #3,d3
		lsl.w   #2,d3
		move.w  ((word_FFB7C6-$1000000)).w,d4
		lsl.w   #4,d4
		add.w   d4,d3
		move.w  word_12C17A(pc,d3.w),d4
		add.w   d4,6(a0)
		move.w  word_12C17C(pc,d3.w),d4
		add.w   d4,(a0)
		tst.b   d6
		beq.s   loc_12C118
		bclr    #5,4(a0)
		bra.s   loc_12C11E
loc_12C118:
		bset    #5,4(a0)
loc_12C11E:
		move.w  d0,d4
		mulu.w  #$12,d4
		btst    #2,d7
		beq.s   loc_12C130
		addi.w  #$100,d4
		bra.s   loc_12C134
loc_12C130:
		addi.w  #$109,d4
loc_12C134:
		andi.w  #$F800,4(a0)
		or.w    d4,4(a0)
		jsr     (j_WaitForVInt).l
		dbf     d7,loc_12C0EE
		dbf     d1,loc_12C0E0
		movem.w (sp)+,d0/d4-d5
		move.w  d2,d3
		andi.w  #3,d3
		lsl.w   #2,d3
		add.w   word_12C17A(pc,d3.w),d4
		add.w   word_12C17C(pc,d3.w),d5
		move.w  d4,d1
		jsr     j_SetTargetX
		move.w  d5,d1
		jsr     j_SetTargetY
		rts

	; End of function sub_12C09E

off_12C172:     dc.l byte_170000+$B
		dc.b   0
		dc.b   5
		dc.b   0
		dc.b   0
word_12C17A:    dc.w 0
word_12C17C:    dc.w $FFFF
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b $FE 
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b $FF
		dc.b $FE 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b $FC 
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   4
		dc.b $FF
		dc.b $FC 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b $F4 
		dc.b   0
		dc.b  $C
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $C
		dc.b $FF
		dc.b $F4 
		dc.b   0
		dc.b   0

; =============== S U B R O U T I N E =======================================

sub_12C1BA:
		moveq   #$1F,d7
		clr.w   d0
		lea     ((byte_FFC08E-$1000000)).w,a0
loc_12C1C2:
		jsr     j_GetTargetID
		cmpi.b  #$FF,d1
		beq.w   loc_12C1E0
		tst.b   d1
		bpl.s   loc_12C1E0
		cmpi.w  #$FFFF,d2
		beq.s   loc_12C1DE
		cmp.w   d1,d2
		bne.s   loc_12C1E0
loc_12C1DE:
		move.w  d0,(a0)+
loc_12C1E0:
		addq.w  #1,d0
		dbf     d7,loc_12C1C2
		move.w  #$FFFF,(a0)
locret_12C1EA:
		
		rts

	; End of function sub_12C1BA


; =============== S U B R O U T I N E =======================================

sub_12C1EC:
		tst.b   d2
		bmi.s   locret_12C1EA
		move.w  d2,d7
		andi.w  #3,d7
		add.w   d7,d7
		move.w  off_12C200(pc,d7.w),d7
		jmp     off_12C200(pc,d7.w)
off_12C200:
		dc.w loc_12C21C-off_12C200
		dc.w loc_12C224-off_12C200
		dc.w loc_12C208-off_12C200
		dc.w sub_12C2B4-off_12C200
loc_12C208:
		movea.l (p_pt_MapSprites).l,a0
loc_12C20E:
		move.w  d1,d0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		jmp     (sub_300).l
loc_12C21C:
		movea.l (p_p_MapSprite304).l,a0
		bra.s   loc_12C20E
loc_12C224:
		bsr.w   sub_12C2B4
		lea     (FF3000_LOADING_SPACE).l,a0
		moveq   #1,d6
loc_12C230:
		movea.l a0,a1
		adda.l  #$300,a1
		moveq   #$17,d7
loc_12C23A:
		move.l  (a0)+,d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		swap    d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		move.l  d0,(a1)+
		dbf     d7,loc_12C23A
		movea.l a0,a1
		adda.l  #$240,a1
		moveq   #$17,d7
loc_12C25A:
		move.l  (a0)+,d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		swap    d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		move.l  d0,(a1)+
		dbf     d7,loc_12C25A
		movea.l a0,a1
		adda.l  #$180,a1
		moveq   #$17,d7
loc_12C27A:
		move.l  (a0)+,d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		swap    d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		move.l  d0,(a1)+
		dbf     d7,loc_12C27A
		dbf     d6,loc_12C230
		movem.l d7-a1,-(sp)
		lea     (byte_FF3240).l,a0
		lea     (FF3000_LOADING_SPACE).l,a1
		move.w  #$240,d7
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		rts

	; End of function sub_12C1EC


; =============== S U B R O U T I N E =======================================

sub_12C2B4:
		movea.l (p_p_MapSprite156).l,a0
		bra.w   loc_12C20E

	; End of function sub_12C2B4


; =============== S U B R O U T I N E =======================================

sub_12C2BE:
		move.w  d0,-(sp)
		move.w  d3,d1
		jsr     sub_12C1EC(pc)
		move.w  (sp)+,d0
		move.w  d0,d7
		lsl.w   #3,d7
		lea     (word_FF0D30).l,a0
		adda.w  d7,a0
		bclr    #5,4(a0)
		bra.s   loc_12C2EA

	; End of function sub_12C2BE


; =============== S U B R O U T I N E =======================================

sub_12C2DC:
		move.w  d0,-(sp)
		jsr     j_GetMapSpriteFromForceID
		jsr     sub_12C1EC(pc)
		move.w  (sp)+,d0
loc_12C2EA:
		lea     (FF3000_LOADING_SPACE).l,a0
		move.w  d0,d7
		lsl.w   #3,d0
		add.w   d7,d0
		add.w   d0,d0
		addi.w  #$100,d0
		lsl.w   #5,d0
		movea.w d0,a1
		move.w  #$120,d0
		moveq   #2,d1
		jsr     (sub_278).l
		jmp     (j_SetVIntParam3AndWait).l

	; End of function sub_12C2DC


; =============== S U B R O U T I N E =======================================

sub_12C312:
		lea     ((word_FFB5C0-$1000000)).w,a0
		move.w  (dword_FF0100).l,(a0)+
		move.w  (dword_FF0100+2).l,(a0)+
		move.w  (word_FF0500).l,(a0)+
		move.w  (word_FF0500+2).l,(a0)+
		moveq   #$3F,d7 
		lea     (SPRITE_TABLE).l,a1
loc_12C336:
		move.w  (a1)+,(a0)+
		addq.l  #4,a1
		move.w  (a1)+,(a0)+
		dbf     d7,loc_12C336
		rts

	; End of function sub_12C312


; =============== S U B R O U T I N E =======================================

sub_12C342:
		move.w  d0,-(sp)
		move.w  d2,d0
		jsr     j_GetMapSprite
		move.w  (sp)+,d0
loc_12C34E:
		move.w  d1,-(sp)
		move.l  a0,-(sp)
		movea.l (p_SpriteTextSounds).l,a0
		andi.w  #$FF,d1
		move.b  (a0,d1.w),d1
		addi.w  #$45,d1 
		move.w  d1,((word_FFC0BE-$1000000)).w
		movea.l (sp)+,a0
		move.w  (sp)+,d1
		rts

	; End of function sub_12C342


; =============== S U B R O U T I N E =======================================

sub_12C36E:
		lea     ((word_FFB5C0-$1000000)).w,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		move.w  (a0)+,d2
		move.w  (a0)+,d3
		move.w  ((word_FFB7C4-$1000000)).w,d6
		lsr.w   #3,d6
		move.w  d6,d5
		lsr.w   #1,d5
		jsr     (j_UpdateRandomSeed).l
		sub.w   d5,d7
		move.w  d0,d4
		add.w   d7,d4
		move.w  d4,(dword_FF0100).l
		move.w  d1,d4
		add.w   d7,d4
		move.w  d4,(dword_FF0100+2).l
		moveq   #$3F,d0 
		lea     ((byte_FFB5CA-$1000000)).w,a0
		lea     (word_FF0C86).l,a1
loc_12C3AC:
		move.w  (a0)+,d4
		add.w   d7,d4
		move.w  d4,(a1)+
		addq.l  #2,a0
		addq.l  #6,a1
		dbf     d0,loc_12C3AC
		jsr     (j_UpdateRandomSeed).l
		sub.w   d5,d7
		move.w  d2,d4
		add.w   d7,d4
		move.w  d4,(word_FF0500).l
		move.w  d3,d4
		add.w   d7,d4
		move.w  d4,(word_FF0500+2).l
		moveq   #$3F,d0 
		lea     ((word_FFB5C8-$1000000)).w,a0
		lea     (SPRITE_TABLE).l,a1
loc_12C3E2:
		move.w  (a0)+,d4
		add.w   d7,d4
		move.w  d4,(a1)+
		addq.l  #2,a0
		addq.l  #6,a1
		dbf     d0,loc_12C3E2
		jsr     (j_StoreVDPCommands).l
		jsr     (j_StoreVDPCommandsbis).l
		jsr     (j_SetVIntParam3).l
		rts

	; End of function sub_12C36E


; =============== S U B R O U T I N E =======================================

sub_12C404:
		move.l  a0,-(sp)
		clr.w   d0
		move.b  ((byte_FFB4C5-$1000000)).w,d0
		jsr     sub_80B4
		move.b  ((byte_FFB4C5-$1000000)).w,d0
		move.b  d0,((byte_FFB4D3-$1000000)).w
		jsr     (j_WaitForVInt).l
		jsr     sub_80B8
		movea.l (sp)+,a0
loc_12C428:
		move.b  #1,((byte_FFB4D4-$1000000)).w
		jsr     sub_80B0
		move.w  d0,-(sp)
		jsr     (j_WaitForVInt).l
		move.w  (sp)+,d0
		cmpi.b  #3,d0
		bls.s   loc_12C428
		rts

	; End of function sub_12C404


; =============== S U B R O U T I N E =======================================

sub_12C446:
		movem.l d0-d1/d6,-(sp)
		move.w  d0,((TEXT_NAME_INDEX-$1000000)).w
		jsr     j_JoinForce
		jsr     sub_20014
		clr.w   ((word_FFC0BE-$1000000)).w
		trap    #7
		jsr     (j_WaitForVInt).l
		trap    #SOUND_COMMAND
		dc.w MUSIC_JOIN
		move.w  #$397,d0        ; "([Name] joins the[Line]Shining Force!)"
		trap    #DISPLAY_MESSAGE
		move.w  #$FB,d0 
		jsr     (j_PlayMusicAfterCurrentOne).l
		movem.l (sp)+,d0-d1/d6
		rts

	; End of function sub_12C446


; START OF FUNCTION CHUNK FOR sub_12BF92

loc_12C480:
		move.w  #1,((word_FFB7C6-$1000000)).w
		moveq   #$38,d0 
		moveq   #$FFFFFFFF,d1
		jsr     (sub_37C).l
		ext.w   d2
		add.w   d2,d2
		move.w  off_12C49C(pc,d2.w),d2
		jmp     off_12C49C(pc,d2.w)

; END OF FUNCTION CHUNK FOR sub_12BF92

off_12C49C:     dc.w locret_12C4A8-off_12C49C
		dc.w loc_12C4AA-off_12C49C
		dc.w loc_12C524-off_12C49C
		dc.w loc_12C59C-off_12C49C
		dc.w loc_12C608-off_12C49C
		bset    d0,(a4)+
locret_12C4A8:  rts
loc_12C4AA:     jsr     sub_8094
		move.w  #0,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12C4F6
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
		lea     unk_12C508(pc), a0
		move.b  #0,((byte_FFB4C5-$1000000)).w
		bsr.w   sub_12C404
loc_12C4F6:     moveq   #$38,d0 
		jsr     (sub_384).l
		move.b  #1,((CURRENT_MAP-$1000000)).w
		bra.w   loc_12BF66
unk_12C508:     dc.b   2
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   1
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b $FF
		dc.b $FF
loc_12C524:     jsr     sub_8094
		move.w  #0,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12C570
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
		lea     unk_12C582(pc), a0
		move.b  #0,((byte_FFB4C5-$1000000)).w
		bsr.w   sub_12C404
loc_12C570:     moveq   #$38,d0 
		jsr     (sub_384).l
		move.b  #0,((CURRENT_MAP-$1000000)).w
		bra.w   loc_12BF66
unk_12C582:     dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b $FF
loc_12C59C:     jsr     sub_8094
		move.w  #0,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12C5E8
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
		lea     unk_12C5FA(pc), a0
		move.b  #0,((byte_FFB4C5-$1000000)).w
		bsr.w   sub_12C404
loc_12C5E8:     moveq   #$38,d0 
		jsr     (sub_384).l
		move.b  #1,((CURRENT_MAP-$1000000)).w
		bra.w   loc_12BF66
unk_12C5FA:     dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   1
		dc.b   1
		dc.b $FF
		dc.b $FF
loc_12C608:     jsr     sub_8094
		move.w  #0,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12C654
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
		lea     unk_12C666(pc), a0
		move.b  #0,((byte_FFB4C5-$1000000)).w
		bsr.w   sub_12C404
loc_12C654:     moveq   #$38,d0 
		jsr     (sub_384).l
		move.b  #2,((CURRENT_MAP-$1000000)).w
		bra.w   loc_12BF66
unk_12C666:     dc.b   1
		dc.b   1
		dc.b   1
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b $FF
		moveq   #$38,d0 
		jsr     (sub_384).l
		trap    #SOUND_COMMAND
		dc.w MUSIC_RISE_OF_THE_CASTLE
		moveq   #$14,d0
		jsr     (j_Sleep).l
		move.l  (dword_FF0EF6).l,-(sp)
		clr.l   (dword_FF0EF6).l
		jsr     sub_8094
		move.w  #5,d1
		move.w  #$A,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(dword_FF0EF6).l
		move.w  #$3C,((word_FFB7C4-$1000000)).w 
		moveq   #$50,d0 
		jsr     (j_Sleep).l
		moveq   #$F,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #8,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #$50,d0 
		jsr     (j_Sleep).l
		moveq   #$A,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #8,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #$50,d0 
		jsr     (j_Sleep).l
		moveq   #5,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #8,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #$50,d0 
		jsr     (j_Sleep).l
		moveq   #0,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #8,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		move.w  #$5A,((word_FFB7C4-$1000000)).w 
		moveq   #$1E,d0
		jsr     (j_Sleep).l
loc_12C74C:     jsr     (j_WaitForVInt).l
		subq.w  #1,((word_FFB7C4-$1000000)).w
		bne.s   loc_12C74C
		move.l  (sp)+,(dword_FF0EF6).l
		move.w  #$3C,d0 
		jsr     (j_Sleep).l
		jsr     sub_8094
		move.w  #0,d2
		bsr.w   sub_12BFB6
		tst.w   d0
		blt.s   loc_12C7AA
		bsr.w   sub_12C342
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(word_FF0C98).l
		move.l  #$10F3F,(dword_FF0E30).l
loc_12C7AA:     trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		rts
SpellTiles_Freeze:
		incbin "data/graphics/battles/spells/spelltiles-freeze.bin"
SpellTiles_Bolt:incbin "data/graphics/battles/spells/spelltiles-bolt.bin"
SpellTiles_Blaze:
		incbin "data/graphics/battles/spells/spelltiles-blaze.bin"
SpellTiles_Status:
		incbin "data/graphics/battles/spells/spelltiles-status.bin"
SpellTiles_Desoul:
		incbin "data/graphics/battles/spells/spelltiles-desoul.bin"
SpellTiles_HealAuraDetox:
		incbin "data/graphics/battles/spells/spelltiles-healauradetox.bin"
SpellTiles_MachineGun:
		incbin "data/graphics/battles/spells/spelltiles-machinegun.bin"
SpellTiles_FlyingDragon:
		incbin "data/graphics/battles/spells/spelltiles-flyingdragon.bin"
SpellTiles_EnergyWave:
		incbin "data/graphics/battles/spells/spelltiles-energywave.bin"
SpellTiles_Laser:
		incbin "data/graphics/battles/spells/spelltiles-laser.bin"
SpellTiles_ElectricBreath:
		incbin "data/graphics/battles/spells/spelltiles-electricbreath.bin"
SpellTiles_BusterShot:
		incbin "data/graphics/battles/spells/spelltiles-bustershot.bin"
SpellTiles_FireBreath:
		incbin "data/graphics/battles/spells/spelltiles-firebreath.bin"
SpellTiles_DemonBlaze:
		incbin "data/graphics/battles/spells/spelltiles-demonblaze.bin"
byte_12F2E2:    dc.b 4
		dc.b   8
		dc.b $CF 
		dc.b $59 
		dc.b $93 
		dc.b   5
		dc.b $EA 
		dc.b $A8 
		dc.b $43 
		dc.b $E4 
		dc.b $85 
		dc.b $EC 
		dc.b $54 
		dc.b $92 
		dc.b $54 
		dc.b $B5 
		dc.b $14
		dc.b $46 
		dc.b $91 
		dc.b $2D 
		dc.b $2B 
		dc.b $D0 
		dc.b $2B 
		dc.b $1F
		dc.b $62 
		dc.b $2C 
		dc.b $B8 
		dc.b $78 
		dc.b $FB 
		dc.b $95 
		dc.b $32 
		dc.b $12
		dc.b $DE 
		dc.b $55 
		dc.b $25 
		dc.b $54 
		dc.b $87 
		dc.b $D5 
		dc.b $76 
		dc.b $95 
		dc.b $61 
		dc.b $9D 
		dc.b $54 
		dc.b $A5 
		dc.b $AC 
		dc.b $C9 
		dc.b $82 
		dc.b $F5 
		dc.b $81 
		dc.b $45 
		dc.b $98 
		dc.b $82 
		dc.b $71 
		dc.b $A3 
		dc.b $63 
		dc.b $7C 
		dc.b $3E 
		dc.b $E3 
		dc.b $82 
		dc.b $73 
		dc.b $86 
		dc.b $25 
		dc.b $11
		dc.b $58 
		dc.b $6B 
		dc.b $29 
		dc.b $9C 
		dc.b $F0 
		dc.b $FB 
		dc.b   7
		dc.b $7E 
		dc.b $1B
		dc.b $30 
		dc.b $4B 
		dc.b $1D
		dc.b   1
		dc.b $28 
		dc.b $96 
		dc.b $31 
		dc.b $11
		dc.b $D3 
		dc.b $B9 
		dc.b $2C 
		dc.b $95 
		dc.b $32 
		dc.b $55 
		dc.b $22 
		dc.b $8A 
		dc.b $D5 
		dc.b $72 
		dc.b $2A 
		dc.b $E9 
		dc.b $6A 
		dc.b $9D 
		dc.b  $D
		dc.b   1
		dc.b $78 
		dc.b $76 
		dc.b $20
		dc.b $ED 
		dc.b $78 
		dc.b $CA 
		dc.b $84 
		dc.b $7D 
		dc.b $84 
		dc.b $1A
		dc.b $15
		dc.b $F8 
		dc.b $28 
		dc.b $68 
		dc.b $4C 
		dc.b $B2 
		dc.b $93 
		dc.b $39 
		dc.b $64 
		dc.b $8F 
		dc.b $A9 
		dc.b $69 
		dc.b $4A 
		dc.b $C3 
		dc.b $CA 
		dc.b $1F
		dc.b $85 
		dc.b $18
		dc.b $47 
		dc.b $A4 
		dc.b $A1 
		dc.b $86 
		dc.b $84 
		dc.b $C1 
		dc.b $25 
		dc.b $83 
		dc.b $D9 
		dc.b $C5 
		dc.b $F1 
		dc.b $EE 
		dc.b $41 
		dc.b $2C 
		dc.b $BC 
		dc.b $4B 
		dc.b $C1 
		dc.b   6
		dc.b $61 
		dc.b $44 
		dc.b $5E 
		dc.b   8
		dc.b $89 
		dc.b $78 
		dc.b $61 
		dc.b $1F
		dc.b $63 
		dc.b $20
		dc.b $9D 
		dc.b $29 
		dc.b $54 
		dc.b $27 
		dc.b $5C 
		dc.b $70 
		dc.b $5C 
		dc.b $26 
		dc.b $3E 
		dc.b $36 
		dc.b $4B 
		dc.b   9
		dc.b $D3 
		dc.b $E2 
		dc.b  $B
		dc.b $C2 
		dc.b  $B
		dc.b $31 
		dc.b   7
		dc.b $C9 
		dc.b $A1 
		dc.b $73 
		dc.b $E0 
		dc.b $91 
		dc.b $E4 
		dc.b $44 
		dc.b $64 
		dc.b $14
		dc.b $7E 
		dc.b $13
		dc.b $A6 
		dc.b $12
		dc.b $E6 
		dc.b $44 
		dc.b $1C
		dc.b $64 
		dc.b $43 
		dc.b $BB 
		dc.b $21 
		dc.b $4F 
		dc.b $84 
		dc.b $33 
		dc.b  $C
		dc.b $D8 
		dc.b $28 
		dc.b $8C 
		dc.b $B0 
		dc.b $A1 
		dc.b $8A 
		dc.b $C7 
		dc.b $D8 
		dc.b $36 
		dc.b $7E 
		dc.b $C7 
		dc.b $C2 
		dc.b $30 
		dc.b $C2 
		dc.b $20
		dc.b $69 
		dc.b $A8 
		dc.b $F2 
		dc.b $A9 
		dc.b   7
		dc.b $BA 
		dc.b $8C 
		dc.b $45 
		dc.b $58 
		dc.b $57 
		dc.b   5
		dc.b   9
		dc.b $BA 
		dc.b $6F 
		dc.b $13
		dc.b $D5 
		dc.b $24 
		dc.b $9B 
		dc.b $50 
		dc.b $C6 
		dc.b $56 
		dc.b $3E 
		dc.b $20
		dc.b $BC 
		dc.b  $A
		dc.b $E4 
		dc.b $81 
		dc.b $58 
		dc.b $C4 
		dc.b $B7 
		dc.b $24 
		dc.b $CB 
		dc.b $1F
		dc.b $4B 
		dc.b $89 
		dc.b $FC 
		dc.b $17
		dc.b $6C 
		dc.b $64 
		dc.b $1A
		dc.b $E9 
		dc.b $10
		dc.b $2B 
		dc.b $86 
		dc.b $1E
		dc.b $8F 
		dc.b $33 
		dc.b  $B
		dc.b $D5 
		dc.b $24 
		dc.b $C2 
		dc.b $1F
		dc.b $70 
		dc.b $5E 
		dc.b $49 
		dc.b $48 
		dc.b $7D 
		dc.b $49 
		dc.b $5A 
		dc.b $72 
		dc.b $28 
		dc.b $A2 
		dc.b $22 
		dc.b $8C 
		dc.b $2D 
		dc.b $88 
		dc.b $3C 
		dc.b $6B 
		dc.b $50 
		dc.b $FA 
		dc.b $50 
		dc.b $F2 
		dc.b $61 
		dc.b $84 
		dc.b $E5 
		dc.b $F8 
		dc.b $C2 
		dc.b $77 
		dc.b  $B
		dc.b $62 
		dc.b $70 
		dc.b $EF 
		dc.b $58 
		dc.b $7C 
		dc.b $7E 
		dc.b $14
		dc.b $67 
		dc.b $32 
		dc.b $F1 
		dc.b $86 
		dc.b $59 
		dc.b  $E
		dc.b $EC 
		dc.b $A3 
		dc.b $1C
		dc.b $3B 
		dc.b $78 
		dc.b $61 
		dc.b $C8 
		dc.b $28 
		dc.b $66 
		dc.b $83 
		dc.b $44 
		dc.b $DD 
		dc.b $64 
		dc.b $26 
		dc.b $65 
		dc.b $22 
		dc.b $F3 
		dc.b $BC 
		dc.b $C2 
		dc.b $74 
		dc.b $D4 
		dc.b $BF 
		dc.b $8B 
		dc.b $88 
		dc.b $36 
		dc.b $55 
		dc.b   9
		dc.b $98 
		dc.b $65 
		dc.b $C2 
		dc.b $9D 
		dc.b  $D
		dc.b $97 
		dc.b $3E 
		dc.b $B2 
		dc.b $20
		dc.b $97 
		dc.b $33 
		dc.b $67 
		dc.b $87 
		dc.b $C2 
		dc.b $F0 
		dc.b $F6 
		dc.b $22 
		dc.b $E4 
		dc.b   8
		dc.b $3F 
		dc.b $3F 
		dc.b $82 
		dc.b   4
		dc.b $40 
		dc.b $E3 
		dc.b $82 
		dc.b $58 
		dc.b $8C 
		dc.b $13
		dc.b   7
		dc.b $2C 
		dc.b  $C
		dc.b $EA 
		dc.b $5E 
		dc.b $61 
		dc.b $9C 
		dc.b $45 
		dc.b $85 
		dc.b $46 
		dc.b $71 
		dc.b   7
		dc.b $C1 
		dc.b $19
		dc.b $28 
		dc.b $29 
		dc.b $E1 
		dc.b $F7 
		dc.b $3C 
		dc.b  $B
		dc.b $73 
		dc.b $1C
		dc.b   9
		dc.b $1E
		dc.b $58 
		dc.b $F0 
		dc.b $41 
		dc.b $F7 
		dc.b   2
		dc.b $77 
		dc.b $A0 
		dc.b $87 
		dc.b $8D 
		dc.b $68 
		dc.b $2B 
		dc.b $96 
		dc.b $F0 
		dc.b $4B 
		dc.b $E1 
		dc.b $4B 
		dc.b $E0 
		dc.b $BD 
		dc.b $C6 
		dc.b $3E 
		dc.b $93 
		dc.b $85 
		dc.b $71 
		dc.b $9C 
		dc.b $7C 
		dc.b $D0 
		dc.b $DF 
		dc.b $85 
		dc.b $33 
		dc.b $19
		dc.b $4C 
		dc.b $BD 
		dc.b $80 
		dc.b $8C 
		dc.b $1A
		dc.b $3F 
		dc.b   2
		dc.b $FF
		dc.b $85 
		dc.b $FE 
		dc.b   8
		dc.b $E9 
		dc.b  $F
		dc.b $25 
		dc.b $91 
		dc.b $11
		dc.b $8C 
		dc.b $64 
		dc.b $E1 
		dc.b $71 
		dc.b $97 
		dc.b  $A
		dc.b $74 
		dc.b $7D 
		dc.b $F0 
		dc.b $8F 
		dc.b $F0 
		dc.b $D6 
		dc.b $C7 
		dc.b $8F 
		dc.b $B9 
		dc.b $21 
		dc.b $B0 
		dc.b $76 
		dc.b $3E 
		dc.b $F8 
		dc.b $C6 
		dc.b $A3 
		dc.b $B3 
		dc.b $9F 
		dc.b $81 
		dc.b $39 
		dc.b $D0 
		dc.b $A7 
		dc.b $E1 
		dc.b $91 
		dc.b $E3 
		dc.b   3
		dc.b $70 
		dc.b $E5 
		dc.b $81 
		dc.b $7D 
		dc.b $41 
		dc.b  $E
		dc.b $2B 
		dc.b $89 
		dc.b $61 
		dc.b $2B 
		dc.b $62 
		dc.b $71 
		dc.b $C4 
		dc.b $84 
		dc.b $B2 
		dc.b $86 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A0 
		dc.b $37 
		dc.b $94 
		dc.b   4
		dc.b $97 
		dc.b $C9 
		dc.b $43 
		dc.b $70 
		dc.b $78 
		dc.b $79 
		dc.b $28 
		dc.b $51 
		dc.b  $E
		dc.b $3B 
		dc.b $8A 
		dc.b $1E
		dc.b $DC 
		dc.b $6A 
		dc.b   3
		dc.b $E2 
		dc.b $47 
		dc.b $A0 
		dc.b $22 
		dc.b $EA 
		dc.b $65 
		dc.b $2A 
		dc.b $70 
		dc.b $1D
		dc.b $72 
		dc.b $65 
		dc.b  $B
		dc.b $98 
		dc.b  $E
		dc.b $61 
		dc.b $6F 
		dc.b $48 
		dc.b $C6 
		dc.b $50 
		dc.b $EC 
		dc.b $3A 
		dc.b $22 
		dc.b $4E 
		dc.b $AA 
		dc.b $A0 
		dc.b $6F 
		dc.b $31 
		dc.b $86 
		dc.b $CA 
		dc.b   2
		dc.b $4E 
		dc.b $A8 
		dc.b $1C
		dc.b $8E 
		dc.b   8
		dc.b $3B 
		dc.b $43 
		dc.b $2A 
		dc.b   2
		dc.b $23 
		dc.b  $D
		dc.b $E1 
		dc.b $4B 
		dc.b   0
		dc.b   9
		dc.b   0
byte_12F502:    dc.b 4
		dc.b   8
		dc.b $CC 
		dc.b $BD 
		dc.b $52 
		dc.b $C2 
		dc.b $1F
		dc.b $26 
		dc.b $26 
		dc.b $AA 
		dc.b $82 
		dc.b $8E 
		dc.b $83 
		dc.b $3E 
		dc.b $47 
		dc.b $19
		dc.b $79 
		dc.b $1F
		dc.b $66 
		dc.b $A4 
		dc.b $8A 
		dc.b $BF 
		dc.b $B5 
		dc.b $24 
		dc.b $8A 
		dc.b $A9 
		dc.b $49 
		dc.b  $D
		dc.b $94 
		dc.b $2F 
		dc.b $62 
		dc.b $2A 
		dc.b $89 
		dc.b $2A 
		dc.b $82 
		dc.b $1D
		dc.b $95 
		dc.b $56 
		dc.b $B3 
		dc.b $26 
		dc.b $F0 
		dc.b $71 
		dc.b $66 
		dc.b $20
		dc.b $9D 
		dc.b $E2 
		dc.b $78 
		dc.b $A6 
		dc.b $8E 
		dc.b $8D 
		dc.b $2D 
		dc.b   2
		dc.b   3
		dc.b $22 
		dc.b $1D
		dc.b $88 
		dc.b $EA 
		dc.b $1C
		dc.b $E6 
		dc.b $14
		dc.b $CE 
		dc.b $78 
		dc.b $81 
		dc.b $4E 
		dc.b $F8 
		dc.b $8E 
		dc.b $4C 
		dc.b $7D 
		dc.b $2B 
		dc.b $A5 
		dc.b $52 
		dc.b  $F
		dc.b   1
		dc.b   7
		dc.b $11
		dc.b $1C
		dc.b $26 
		dc.b $4C 
		dc.b $25 
		dc.b $9B 
		dc.b $A8 
		dc.b $51 
		dc.b $C3 
		dc.b $76 
		dc.b $24 
		dc.b $71 
		dc.b $7D 
		dc.b $42 
		dc.b $41 
		dc.b $5C 
		dc.b $EE 
		dc.b $20
		dc.b $ED 
		dc.b $78 
		dc.b $CA 
		dc.b $8F 
		dc.b $BE 
		dc.b  $E
		dc.b $B2 
		dc.b $3D 
		dc.b $AB 
		dc.b $C1 
		dc.b $96 
		dc.b $24 
		dc.b $DC 
		dc.b $6F 
		dc.b $20
		dc.b $C2 
		dc.b $5E 
		dc.b $99 
		dc.b   6
		dc.b $72 
		dc.b $8E 
		dc.b $AC 
		dc.b $2B 
		dc.b $88 
		dc.b $87 
		dc.b $85 
		dc.b $2C 
		dc.b   4
		dc.b $4D 
		dc.b $D9 
		dc.b $E0 
		dc.b $43 
		dc.b $8C 
		dc.b $7F 
		dc.b $87 
		dc.b $E7 
		dc.b   5
		dc.b $79 
		dc.b   5
		dc.b $8D 
		dc.b $78 
		dc.b $23 
		dc.b $28 
		dc.b $4E 
		dc.b $79 
		dc.b $C2 
		dc.b $60 
		dc.b $BE 
		dc.b $97 
		dc.b $91 
		dc.b $2E 
		dc.b $49 
		dc.b $CD 
		dc.b $96 
		dc.b $79 
		dc.b $74 
		dc.b  $B
		dc.b $B1 
		dc.b $63 
		dc.b $42 
		dc.b $8F 
		dc.b   8
		dc.b $26 
		dc.b $2C 
		dc.b $C4 
		dc.b   8
		dc.b $E1 
		dc.b $1C
		dc.b $5C 
		dc.b $C3 
		dc.b $EC 
		dc.b   9
		dc.b $BC 
		dc.b $58 
		dc.b $57 
		dc.b $25 
		dc.b $DC 
		dc.b $82 
		dc.b $9F 
		dc.b   8
		dc.b $61 
		dc.b $6C 
		dc.b $E0 
		dc.b $25 
		dc.b $B2 
		dc.b $39 
		dc.b $78 
		dc.b $5C 
		dc.b $58 
		dc.b $7C 
		dc.b $2B 
		dc.b $28 
		dc.b $4C 
		dc.b $27 
		dc.b $6E 
		dc.b $18
		dc.b $B7 
		dc.b $23 
		dc.b $93 
		dc.b $30 
		dc.b $24 
		dc.b $8B 
		dc.b $77 
		dc.b $1F
		dc.b $52 
		dc.b $C9 
		dc.b   8
		dc.b $F8 
		dc.b $70 
		dc.b $67 
		dc.b $C3 
		dc.b $87 
		dc.b $D8 
		dc.b $24 
		dc.b $6B 
		dc.b   8
		dc.b $3F 
		dc.b $90 
		dc.b $B0 
		dc.b $F2 
		dc.b $40 
		dc.b $E7 
		dc.b $12
		dc.b $22 
		dc.b $2C 
		dc.b $B7 
		dc.b $81 
		dc.b $27 
		dc.b $FB 
		dc.b   5
		dc.b $61 
		dc.b $32 
		dc.b $7C 
		dc.b $13
		dc.b $B9 
		dc.b $4A 
		dc.b $9A 
		dc.b $40 
		dc.b $CC 
		dc.b $F9 
		dc.b $E1 
		dc.b $30 
		dc.b $E7 
		dc.b $B0 
		dc.b $54 
		dc.b $99 
		dc.b $FA 
		dc.b $82 
		dc.b $72 
		dc.b $98 
		dc.b $E1 
		dc.b $F5 
		dc.b $E8 
		dc.b $89 
		dc.b $1C
		dc.b $3E 
		dc.b $C3 
		dc.b $3C 
		dc.b $6B 
		dc.b $50 
		dc.b $F8 
		dc.b $46 
		dc.b $60 
		dc.b $DB 
		dc.b $87 
		dc.b $D2 
		dc.b $49 
		dc.b $B3 
		dc.b $95 
		dc.b $78 
		dc.b $94 
		dc.b $BD 
		dc.b $6F 
		dc.b $8A 
		dc.b $D0 
		dc.b $7F 
		dc.b $68 
		dc.b $90 
		dc.b $83 
		dc.b $48 
		dc.b $24 
		dc.b $B7 
		dc.b $11
		dc.b $C4 
		dc.b $BC 
		dc.b   8
		dc.b $EC 
		dc.b $4D 
		dc.b $F2 
		dc.b $AF 
		dc.b $87 
		dc.b $73 
		dc.b $45 
		dc.b $42 
		dc.b  $D
		dc.b $54 
		dc.b $33 
		dc.b $E0 
		dc.b $7E 
		dc.b $97 
		dc.b $E4 
		dc.b $1C
		dc.b $5D 
		dc.b $E0 
		dc.b $43 
		dc.b $D4 
		dc.b $28 
		dc.b $92 
		dc.b $E8 
		dc.b $62 
		dc.b $E1 
		dc.b $4E 
		dc.b $83 
		dc.b $35 
		dc.b $F4 
		dc.b $A0 
		dc.b $98 
		dc.b $29 
		dc.b $E6 
		dc.b $3E 
		dc.b $C1 
		dc.b $F2 
		dc.b $C0 
		dc.b $83 
		dc.b $F3 
		dc.b $28 
		dc.b $57 
		dc.b $67 
		dc.b $A2 
		dc.b $9D 
		dc.b $FA 
		dc.b  $B
		dc.b $18
		dc.b $31 
		dc.b $31 
		dc.b $20
		dc.b $9E 
		dc.b $1D
		dc.b $88 
		dc.b $16
		dc.b $E7 
		dc.b $2D 
		dc.b $D8 
		dc.b $5C 
		dc.b $2B 
		dc.b $98 
		dc.b $E5 
		dc.b $1D
		dc.b $9B 
		dc.b $41 
		dc.b $2F 
		dc.b $98 
		dc.b $4B 
		dc.b $26 
		dc.b $52 
		dc.b $3F 
		dc.b $BC 
		dc.b $36 
		dc.b $55 
		dc.b   9
		dc.b $84 
		dc.b $E9 
		dc.b $6A 
		dc.b $E9 
		dc.b $60 
		dc.b $5B 
		dc.b   5
		dc.b $9D 
		dc.b $AF 
		dc.b $F0 
		dc.b $A7 
		dc.b $F7 
		dc.b $1F
		dc.b  $F
		dc.b $7C 
		dc.b  $C
		dc.b $C7 
		dc.b $D3 
		dc.b $62 
		dc.b $C2 
		dc.b  $D
		dc.b $40 
		dc.b $B8 
		dc.b $F1 
		dc.b $F0 
		dc.b $91 
		dc.b $12
		dc.b $5F 
		dc.b   9
		dc.b $DC 
		dc.b $13
		dc.b $DC 
		dc.b $29 
		dc.b $92 
		dc.b   9
		dc.b $9F 
		dc.b $8B 
		dc.b   7
		dc.b   9
		dc.b $4C 
		dc.b $E6 
		dc.b $2D 
		dc.b $E7 
		dc.b $84 
		dc.b $17
		dc.b $DB 
		dc.b $20
		dc.b $96 
		dc.b $FB 
		dc.b $D1 
		dc.b   4
		dc.b $E2 
		dc.b $1F
		dc.b $43 
		dc.b $BF 
		dc.b   2
		dc.b $46 
		dc.b $48 
		dc.b $38 
		dc.b $90 
		dc.b $B8 
		dc.b $22 
		dc.b $C6 
		dc.b  $E
		dc.b $82 
		dc.b $BF 
		dc.b $87 
		dc.b $1E
		dc.b   6
		dc.b $58 
		dc.b $83 
		dc.b $F0 
		dc.b $34 
		dc.b $86 
		dc.b $41 
		dc.b $78 
		dc.b $99 
		dc.b $81 
		dc.b   5
		dc.b $83 
		dc.b $77 
		dc.b   8
		dc.b $F2 
		dc.b $1F
		dc.b $70 
		dc.b $9D 
		dc.b $C6 
		dc.b $7C 
		dc.b $18
		dc.b $E2 
		dc.b $78 
		dc.b $6E 
		dc.b $3B 
		dc.b $20
		dc.b $97 
		dc.b $BA 
		dc.b $38 
		dc.b $A3 
		dc.b $E7 
		dc.b $9F 
		dc.b $D9 
		dc.b $30 
		dc.b $98 
		dc.b $FA 
		dc.b $AF 
		dc.b $37 
		dc.b $46 
		dc.b $B4 
		dc.b $10
		dc.b $35 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b   1
		dc.b $C1 
		dc.b $BE 
		dc.b $18
		dc.b $5F 
		dc.b $62 
		dc.b $F2 
		dc.b $B8 
		dc.b  $F
		dc.b $3C 
		dc.b $BC 
		dc.b $2D 
		dc.b $82 
		dc.b   8
		dc.b $2F 
		dc.b   6
		dc.b $E3 
		dc.b $40 
		dc.b $28 
		dc.b $BC 
		dc.b   7
		dc.b $B2 
		dc.b $87 
		dc.b $E0 
		dc.b $E8 
		dc.b $D0 
		dc.b $82 
		dc.b $58 
		dc.b  $F
		dc.b $39 
		dc.b $2C 
		dc.b $3B 
		dc.b $98 
		dc.b $25 
		dc.b $97 
		dc.b $24 
		dc.b $10
		dc.b $E9 
		dc.b $4A 
		dc.b $81 
		dc.b $C7 
		dc.b   4
		dc.b $22 
		dc.b $EF 
		dc.b   0
		dc.b $8F 
		dc.b $2A 
		dc.b $3E 
		dc.b $A1 
		dc.b $4E 
		dc.b $D0 
		dc.b $CA 
		dc.b $80 
		dc.b $88 
		dc.b $C3 
		dc.b $C5 
		dc.b $80 
		dc.b   4
		dc.b $80 
byte_12F70E:    dc.b 4
		dc.b   8
		dc.b $CE 
		dc.b $58 
		dc.b $4E 
		dc.b $29 
		dc.b $F1 
		dc.b $97 
		dc.b $19
		dc.b $B1 
		dc.b $D0 
		dc.b $47 
		dc.b $D1 
		dc.b $E1 
		dc.b $23 
		dc.b  $F
		dc.b $B7 
		dc.b $52 
		dc.b $51 
		dc.b $F2 
		dc.b $B6 
		dc.b $91 
		dc.b $29 
		dc.b $3A 
		dc.b $45 
		dc.b $A9 
		dc.b   5
		dc.b $3B 
		dc.b   5
		dc.b $EA 
		dc.b $E4 
		dc.b $12
		dc.b $1F
		dc.b $49 
		dc.b $E5 
		dc.b $D1 
		dc.b $9E 
		dc.b $C3 
		dc.b $75 
		dc.b $42 
		dc.b $14
		dc.b $81 
		dc.b   5
		dc.b $42 
		dc.b $76 
		dc.b $4A 
		dc.b $90 
		dc.b $40 
		dc.b $E8 
		dc.b $14
		dc.b $E5 
		dc.b $2E 
		dc.b   9
		dc.b $E6 
		dc.b $5C 
		dc.b $C2 
		dc.b $77 
		dc.b $20
		dc.b $A7 
		dc.b $4A 
		dc.b $A0 
		dc.b $5B 
		dc.b $88 
		dc.b $6A 
		dc.b $10
		dc.b $5F 
		dc.b $7D 
		dc.b $40 
		dc.b $90 
		dc.b $D8 
		dc.b $3C 
		dc.b $6C 
		dc.b $17
		dc.b $38 
		dc.b $23 
		dc.b $1E
		dc.b   7
		dc.b $45 
		dc.b $72 
		dc.b $50 
		dc.b $83 
		dc.b $81 
		dc.b $25 
		dc.b $C9 
		dc.b $F0 
		dc.b $4C 
		dc.b $94 
		dc.b $70 
		dc.b $DD 
		dc.b $89 
		dc.b $1C
		dc.b $63 
		dc.b $8A 
		dc.b $3C 
		dc.b $BE 
		dc.b $10
		dc.b $E6 
		dc.b $14
		dc.b $CA 
		dc.b $6F 
		dc.b $BE 
		dc.b   2
		dc.b   2
		dc.b $BE 
		dc.b $12
		dc.b $37 
		dc.b $86 
		dc.b $12
		dc.b $F1 
		dc.b $46 
		dc.b $8D 
		dc.b $EA 
		dc.b $43 
		dc.b $ED 
		dc.b $4A 
		dc.b $41 
		dc.b $5F 
		dc.b $31 
		dc.b $43 
		dc.b $12
		dc.b $45 
		dc.b   7
		dc.b $1D
		dc.b $F3 
		dc.b $92 
		dc.b $23 
		dc.b $C0 
		dc.b $8C 
		dc.b $6A 
		dc.b $9C 
		dc.b $18
		dc.b $7C 
		dc.b $14
		dc.b $6D 
		dc.b $FE 
		dc.b $1F
		dc.b $9C 
		dc.b $3E 
		dc.b $E8 
		dc.b $2F 
		dc.b $B7 
		dc.b $C1 
		dc.b $4A 
		dc.b $96 
		dc.b  $A
		dc.b $2A 
		dc.b $44 
		dc.b $D4 
		dc.b $13
		dc.b $BC 
		dc.b $AD 
		dc.b $29 
		dc.b $29 
		dc.b   5
		dc.b $EF 
		dc.b $93 
		dc.b $51 
		dc.b $7C 
		dc.b $A5 
		dc.b $A4 
		dc.b $71 
		dc.b $11
		dc.b   1
		dc.b $53 
		dc.b $A5 
		dc.b $54 
		dc.b $49 
		dc.b $13
		dc.b $51 
		dc.b $11
		dc.b $31 
		dc.b $A6 
		dc.b $1F
		dc.b $BF 
		dc.b   5
		dc.b $3A 
		dc.b $44 
		dc.b $53 
		dc.b $92 
		dc.b $72 
		dc.b $7F 
		dc.b $9C 
		dc.b $D0 
		dc.b $11
		dc.b $73 
		dc.b $3E 
		dc.b $C0 
		dc.b $E8 
		dc.b $8C 
		dc.b $3C 
		dc.b   8
		dc.b $22 
		dc.b $1E
		dc.b $CC 
		dc.b $29 
		dc.b $5A 
		dc.b $8A 
		dc.b $62 
		dc.b $27 
		dc.b $C3 
		dc.b $13
		dc.b $32 
		dc.b $F3 
		dc.b $22 
		dc.b $3B 
		dc.b $E9 
		dc.b $BA 
		dc.b $40 
		dc.b $58 
		dc.b $CB 
		dc.b $C3 
		dc.b  $C
		dc.b $49 
		dc.b $18
		dc.b $F5 
		dc.b $24 
		dc.b $18
		dc.b $84 
		dc.b $C3 
		dc.b $76 
		dc.b $24 
		dc.b $72 
		dc.b $43 
		dc.b $3D 
		dc.b $59 
		dc.b $DC 
		dc.b $79 
		dc.b $66 
		dc.b $F2 
		dc.b $E0 
		dc.b $97 
		dc.b $C0 
		dc.b $74 
		dc.b $99 
		dc.b $F2 
		dc.b   8
		dc.b $4F 
		dc.b $AE 
		dc.b $18
		dc.b $82 
		dc.b $11
		dc.b $31 
		dc.b $F5 
		dc.b $BB 
		dc.b $4A 
		dc.b $A2 
		dc.b $A0 
		dc.b $90 
		dc.b $DE 
		dc.b $84 
		dc.b $E9 
		dc.b   2
		dc.b $F9 
		dc.b $9D 
		dc.b $43 
		dc.b $F7 
		dc.b   5
		dc.b $97 
		dc.b   4
		dc.b $D3 
		dc.b $77 
		dc.b $C6 
		dc.b $2B 
		dc.b $40 
		dc.b $A2 
		dc.b $B0 
		dc.b $63 
		dc.b $A1 
		dc.b $4E 
		dc.b $99 
		dc.b $13
		dc.b $E6 
		dc.b $10
		dc.b $E8 
		dc.b $13
		dc.b $29 
		dc.b $B3 
		dc.b $10
		dc.b $28 
		dc.b $A6 
		dc.b $83 
		dc.b $63 
		dc.b   4
		dc.b $3F 
		dc.b   6
		dc.b $EA 
		dc.b $8E 
		dc.b $1F
		dc.b $54 
		dc.b $15
		dc.b $DB 
		dc.b $4C 
		dc.b $89 
		dc.b $E6 
		dc.b   5
		dc.b $70 
		dc.b $40 
		dc.b $A8 
		dc.b $5E 
		dc.b $10
		dc.b $79 
		dc.b   8
		dc.b $2F 
		dc.b $8E 
		dc.b $66 
		dc.b $26 
		dc.b $74 
		dc.b $29 
		dc.b $B7 
		dc.b   9
		dc.b $39 
		dc.b $8C 
		dc.b $47 
		dc.b $1C
		dc.b $9C 
		dc.b   2
		dc.b   7
		dc.b $CF 
		dc.b $81 
		dc.b $47 
		dc.b $63 
		dc.b $CC 
		dc.b $16
		dc.b $4C 
		dc.b $C8 
		dc.b $25 
		dc.b $3D 
		dc.b   4
		dc.b $26 
		dc.b $6F 
		dc.b $A9 
		dc.b $23 
		dc.b $21 
		dc.b $5C 
		dc.b $CB 
		dc.b $F8 
		dc.b $7E 
		dc.b $9D 
		dc.b $93 
		dc.b   3
		dc.b $60 
		dc.b $4F 
		dc.b $33 
		dc.b $A5 
		dc.b   3
		dc.b $3A 
		dc.b $85 
		dc.b $7F 
		dc.b $82 
		dc.b $8A 
		dc.b $C3 
		dc.b $E1 
		dc.b $25 
		dc.b $68 
		dc.b $31 
		dc.b $D1 
		dc.b $BE 
		dc.b $A8 
		dc.b $63 
		dc.b $AA 
		dc.b $1B
		dc.b $FA 
		dc.b $42 
		dc.b  $F
		dc.b  $F
		dc.b $DE 
		dc.b   9
		dc.b   2
		dc.b $E3 
		dc.b $20
		dc.b $B2 
		dc.b $9B 
		dc.b $20
		dc.b $50 
		dc.b $9F 
		dc.b $52 
		dc.b $30 
		dc.b $3A 
		dc.b $7E 
		dc.b  $A
		dc.b $22 
		dc.b $89 
		dc.b $F7 
		dc.b $1B
		dc.b $D1 
		dc.b $F0 
		dc.b $83 
		dc.b $C8 
		dc.b $78 
		dc.b $C0 
		dc.b $82 
		dc.b $33 
		dc.b $9B 
		dc.b $B0 
		dc.b $30 
		dc.b $C6 
		dc.b $C0 
		dc.b $98 
		dc.b  $A
		dc.b $43 
		dc.b $EB 
		dc.b $7C 
		dc.b $56 
		dc.b $EF 
		dc.b $30 
		dc.b $63 
		dc.b $65 
		dc.b $C2 
		dc.b   6
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A0 
		dc.b $36 
		dc.b $73 
		dc.b $4A 
		dc.b $EC 
		dc.b $21 
		dc.b $52 
		dc.b $C2 
		dc.b $77 
		dc.b $95 
		dc.b $A4 
		dc.b   3
		dc.b   1
		dc.b $EC 
		dc.b $EC 
		dc.b $29 
		dc.b $58 
		dc.b   4
		dc.b $47 
		dc.b $80 
		dc.b $F1 
		dc.b   1
		dc.b   1
		dc.b $F8 
		dc.b $61 
		dc.b $C3 
		dc.b $ED 
		dc.b $14
		dc.b $68 
		dc.b   8
		dc.b $23 
		dc.b   5
		dc.b $2E 
		dc.b   7
		dc.b  $F
		dc.b $86 
		dc.b $70 
		dc.b $40 
		dc.b $58 
		dc.b $29 
		dc.b $FC 
		dc.b $27 
		dc.b $48 
		dc.b  $D
		dc.b $C6 
		dc.b  $C
		dc.b $25 
		dc.b $E0 
		dc.b $FB 
		dc.b $D0 
		dc.b $11
		dc.b $BB 
		dc.b $87 
		dc.b $C0 
		dc.b   8
		dc.b $F0 
ChapterEndTiles:incbin "data/graphics/specialscreens/chapterscreens/chapterendtiles.bin"
byte_12F938:    dc.b $10
		dc.b $10
		dc.b $C0 
		dc.b $35 
		dc.b $D8 
		dc.b $26 
		dc.b $D6 
		dc.b   9
		dc.b $95 
		dc.b $58 
		dc.b $27 
		dc.b $C9 
		dc.b $59 
		dc.b $82 
		dc.b   6
		dc.b $AA 
		dc.b $81 
		dc.b $DD 
		dc.b $9A 
		dc.b $5A 
		dc.b $A9 
		dc.b $A9 
		dc.b $AA 
		dc.b $AB 
		dc.b $99 
		dc.b $94 
		dc.b $11
		dc.b $B6 
		dc.b $69 
		dc.b $A6 
		dc.b $9A 
		dc.b $A6 
		dc.b $A6 
		dc.b $81 
		dc.b $39 
		dc.b $99 
		dc.b $99 
		dc.b $9A 
		dc.b $9A 
		dc.b $6A 
		dc.b $68 
		dc.b $12
		dc.b $1A
		dc.b $AA 
		dc.b   5
		dc.b $76 
		dc.b $49 
		dc.b $49 
		dc.b $AA 
		dc.b   4
		dc.b $6C 
		dc.b $94 
		dc.b $AA 
		dc.b   2
		dc.b $81 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A8 
		dc.b   2
		dc.b   5
		dc.b $C9 
		dc.b $66 
		dc.b   1
		dc.b $1F
		dc.b $D6 
		dc.b $59 
		dc.b $9A 
		dc.b $6A 
		dc.b $9A 
		dc.b $A8 
		dc.b   3
		dc.b  $D
		dc.b $49 
		dc.b $98 
		dc.b   1
		dc.b   4
		dc.b $32 
		dc.b $98 
		dc.b $17
		dc.b $D2 
		dc.b $24 
		dc.b $AA 
		dc.b $A8 
		dc.b $61 
		dc.b $AA 
		dc.b $AA 
		dc.b   1
		dc.b $BE 
		dc.b   1
		dc.b $FF
		dc.b   0
		dc.b $FF
		dc.b $92 
		dc.b $22 
		dc.b $52 
		dc.b $52 
		dc.b $40 
		dc.b $75 
		dc.b $D8 
		dc.b $61 
		dc.b $83 
		dc.b $F4 
		dc.b $95 
		dc.b $80 
		dc.b $10
		dc.b $7B 
		dc.b $25 
		dc.b $58 
		dc.b   1
		dc.b   5
		dc.b $92 
		dc.b $56 
		dc.b $60 
		dc.b $81 
		dc.b $AA 
		dc.b $A8 
		dc.b   5
		dc.b $DB 
		dc.b $55 
		dc.b $A8 
		dc.b   2
		dc.b $A7 
		dc.b $C9 
		dc.b $66 
		dc.b   2
		dc.b $5B 
		dc.b $49 
		dc.b $58 
		dc.b  $D
		dc.b $DE 
		dc.b $66 
		dc.b $A6 
		dc.b $A9 
		dc.b $80 
		dc.b $24 
		dc.b $F4 
		dc.b $99 
		dc.b $82 
		dc.b   6
		dc.b $AA 
		dc.b   2
		dc.b $17
		dc.b $26 
		dc.b $60 
		dc.b  $E
		dc.b $5B 
		dc.b $29 
		dc.b $80 
		dc.b $95 
		dc.b $4A 
		dc.b $60 
		dc.b   9
		dc.b $7F 
		dc.b $22 
		dc.b $48 
		dc.b   5
		dc.b $39 
		dc.b $58 
		dc.b   9
		dc.b  $D
		dc.b $60 
		dc.b  $E
		dc.b $5F 
		dc.b $47 
		dc.b $75 
		dc.b   0
		dc.b $41 
		dc.b $55 
		dc.b   0
		dc.b $41 
		dc.b   8
		dc.b $9E 
		dc.b $92 
		dc.b $AC 
		dc.b   4
		dc.b $FA 
		dc.b $CC 
		dc.b $D4 
		dc.b   1
		dc.b $C7 
		dc.b $64 
		dc.b $AC 
		dc.b $C1 
		dc.b   3
		dc.b $55 
		dc.b $50 
		dc.b $12
		dc.b  $D
		dc.b $55 
		dc.b $40 
		dc.b $22 
		dc.b  $D
		dc.b $55 
		dc.b $40 
		dc.b $6B 
		dc.b $75 
		dc.b $54 
		dc.b   9
		dc.b $CA 
		dc.b $AA 
		dc.b $B5 
		dc.b $55 
		dc.b $40 
		dc.b $29 
		dc.b $E9 
		dc.b $2C 
		dc.b $C1 
		dc.b   3
		dc.b $40 
		dc.b $8C 
		dc.b $92 
		dc.b $CC 
		dc.b  $B
		dc.b $EC 
		dc.b $CD 
		dc.b  $C
		dc.b $35 
		dc.b $54 
		dc.b   9
		dc.b $DC 
		dc.b $CD 
		dc.b   0
		dc.b $69 
		dc.b $D9 
		dc.b $33 
		dc.b   2
		dc.b $BE 
		dc.b $4C 
		dc.b $C0 
		dc.b $1E
		dc.b $B2 
		dc.b $AC 
		dc.b  $A
		dc.b $B9 
		dc.b $4C 
		dc.b   1
		dc.b $EB 
		dc.b $E8 
		dc.b $2A 
		dc.b $AB 
		dc.b   2
		dc.b $F7 
		dc.b $30 
		dc.b $2B 
		dc.b $33 
		dc.b   0
		dc.b $8A 
		dc.b $B5 
		dc.b   1
		dc.b $4E 
		dc.b   6
		dc.b $F7 
		dc.b $60 
		dc.b $50 
		dc.b $D8 
		dc.b   2
		dc.b   7
		dc.b   3
		dc.b $CA 
		dc.b $C0 
		dc.b $4F 
		dc.b $30 
		dc.b $2B 
		dc.b $F0 
		dc.b  $A
		dc.b $BA 
		dc.b $44 
		dc.b $40 
		dc.b $3F 
		dc.b $F2 
		dc.b $88 
		dc.b   8
		dc.b $1E
		dc.b $92 
		dc.b $B3 
		dc.b   4
		dc.b  $D
		dc.b $55 
		dc.b $40 
		dc.b $28 
		dc.b $DC 
		dc.b $B3 
		dc.b $40 
		dc.b $C0 
		dc.b $D0 
		dc.b   5
		dc.b  $D
		dc.b $92 
		dc.b $CC 
		dc.b $C0 
		dc.b $39 
		dc.b $E2 
		dc.b $80 
		dc.b $12
		dc.b $32 
		dc.b $4C 
		dc.b $D2 
		dc.b $C0 
		dc.b $33 
		dc.b $CA 
		dc.b $AA 
		dc.b $55 
		dc.b   5
		dc.b $E9 
		dc.b $55 
		dc.b   0
		dc.b $4E 
		dc.b $F9 
		dc.b $4D 
		dc.b $AA 
		dc.b $C0 
		dc.b $14
		dc.b $34 
		dc.b $1A
		dc.b $5D 
		dc.b $63 
		dc.b $25 
		dc.b $66 
		dc.b   5
		dc.b $F6 
		dc.b $63 
		dc.b $A1 
		dc.b $86 
		dc.b $A0 
		dc.b $6F 
		dc.b $49 
		dc.b $83 
		dc.b $86 
		dc.b $A0 
		dc.b $18
		dc.b $E8 
		dc.b $39 
		dc.b $AB 
		dc.b   1
		dc.b  $E
		dc.b $92 
		dc.b $18
		dc.b  $D
		dc.b $B2 
		dc.b $40 
		dc.b $65 
		dc.b $B2 
		dc.b $20
		dc.b $1E
		dc.b $8D 
		dc.b   5
		dc.b $6E 
		dc.b   4
		dc.b $6C 
		dc.b $A5 
		dc.b $6A 
		dc.b $81 
		dc.b $59 
		dc.b $20
		dc.b $11
		dc.b $69 
		dc.b $7B 
		dc.b   0
		dc.b $87 
		dc.b $E8 
		dc.b  $E
		dc.b $73 
		dc.b $2A 
		dc.b $CC 
		dc.b $D4 
		dc.b  $A
		dc.b $F0 
		dc.b $F6 
		dc.b $81 
		dc.b $43 
		dc.b $30 
		dc.b $4F 
		dc.b $AC 
		dc.b $12
		dc.b $EA 
		dc.b $B0 
		dc.b $4A 
		dc.b $92 
		dc.b $B3 
		dc.b   3
		dc.b $29 
		dc.b $8D 
		dc.b $AA 
		dc.b $A0 
		dc.b $4E 
		dc.b $EA 
		dc.b $AA 
		dc.b   5
		dc.b $76 
		dc.b $A0 
		dc.b $25 
		dc.b $6E 
		dc.b $AD 
		dc.b $55 
		dc.b   7
		dc.b $1C
		dc.b $D3 
		dc.b $41 
		dc.b $33 
		dc.b $55 
		dc.b $54 
		dc.b $1F
		dc.b $F2 
		dc.b $CC 
		dc.b $C0 
		dc.b $BB 
		dc.b $B2 
		dc.b $B2 
		dc.b $CC 
		dc.b $CC 
		dc.b  $B
		dc.b $AA 
		dc.b $AB 
		dc.b $2B 
		dc.b $33 
		dc.b $40 
		dc.b $A1 
		dc.b $AA 
		dc.b $AA 
		dc.b $AB 
		dc.b $32 
		dc.b   2
		dc.b $9A 
		dc.b $92 
		dc.b $CC 
		dc.b  $A
		dc.b $19
		dc.b $2C 
		dc.b $C0 
		dc.b $1E
		dc.b $86 
		dc.b $4C 
		dc.b $C0 
		dc.b $4F 
		dc.b $EA 
		dc.b $B3 
		dc.b $33 
		dc.b $50 
		dc.b   2
		dc.b $57 
		dc.b $65 
		dc.b $54 
		dc.b   1
		dc.b $FF
		dc.b $24 
		dc.b $90 
		dc.b $2F 
		dc.b $F5 
		dc.b   0
		dc.b $69 
		dc.b $BA 
		dc.b $B3 
		dc.b $35 
		dc.b   0
		dc.b $10
		dc.b $2A 
		dc.b $B3 
		dc.b $35 
		dc.b   0
		dc.b $20
		dc.b $C3 
		dc.b $55 
		dc.b $50 
		dc.b $2B 
		dc.b $B5 
		dc.b $4D 
		dc.b $4D 
		dc.b $55 
		dc.b   1
		dc.b $1C
		dc.b $7A 
		dc.b $F0 
		dc.b $57 
		dc.b $D2 
		dc.b $55 
		dc.b $5A 
		dc.b $AA 
		dc.b   1
		dc.b  $F
		dc.b $EA 
		dc.b $AA 
		dc.b  $F
		dc.b $76 
		dc.b $A6 
		dc.b $A9 
		dc.b $AA 
		dc.b $9A 
		dc.b $AA 
		dc.b $80 
		dc.b $69 
		dc.b $D9 
		dc.b $9A 
		dc.b $9A 
		dc.b $AA 
		dc.b   3
		dc.b $79 
		dc.b $AA 
		dc.b   0
		dc.b $78 
		dc.b $8E 
		dc.b $68 
		dc.b   1
		dc.b $23 
		dc.b $A2 
		dc.b $FD 
		dc.b $E6 
		dc.b $A0 
		dc.b $21 
		dc.b $72 
		dc.b $24 
		dc.b $95 
		dc.b $55 
		dc.b $AA 
		dc.b $AA 
		dc.b   9
		dc.b $FA 
		dc.b $80 
		dc.b $24 
		dc.b $F5 
		dc.b $66 
		dc.b $6A 
		dc.b $86 
		dc.b $1A
		dc.b $AA 
		dc.b $AA 
		dc.b   4
		dc.b $EE 
		dc.b $9A 
		dc.b $6A 
		dc.b $80 
		dc.b $A6 
		dc.b $DA 
		dc.b $A8 
		dc.b $17
		dc.b $F2 
		dc.b $80 
		dc.b $1B
		dc.b $FB 
		dc.b $66 
		dc.b $6A 
		dc.b   0
		dc.b $45 
		dc.b $86 
		dc.b $A0 
		dc.b $34 
		dc.b $1A
		dc.b $A0 
		dc.b $33 
		dc.b $52 
		dc.b $25 
		dc.b $55 
		dc.b $65 
		dc.b $99 
		dc.b $AA 
		dc.b $A8 
		dc.b $79 
		dc.b $AA 
		dc.b $AA 
		dc.b $A8 
		dc.b   8
		dc.b $7C 
		dc.b $95 
		dc.b $25 
		dc.b $55 
		dc.b $6A 
		dc.b   1
		dc.b $DE 
		dc.b $66 
		dc.b $68 
		dc.b   1
		dc.b $41 
		dc.b $80 
		dc.b $6C 
		dc.b $CD 
		dc.b $57 
		dc.b   4
		dc.b $EA 
		dc.b   9
		dc.b  $D
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $50 
		dc.b $33 
		dc.b $25 
		dc.b $50 
		dc.b   6
		dc.b $7F 
		dc.b $CC 
		dc.b  $E
		dc.b $D0 
		dc.b $22 
		dc.b $DC 
		dc.b $88 
		dc.b $95 
		dc.b $25 
		dc.b $50 
		dc.b $9F 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A0 
		dc.b $1D
		dc.b $6E 
		dc.b $80 
		dc.b $D7 
		dc.b $6A 
		dc.b $80 
		dc.b $30 
		dc.b $DE 
		dc.b   7
		dc.b $64 
		dc.b $80 
		dc.b $A7 
		dc.b $C8 
		dc.b  $D
		dc.b $8D 
		dc.b $55 
		dc.b $66 
		dc.b   0
		dc.b $6B 
		dc.b $FC 
		dc.b $98 
		dc.b   0
		dc.b $81 
		dc.b $D8 
		dc.b $DE 
		dc.b $AA 
		dc.b $A3 
		dc.b  $D
		dc.b $50 
		dc.b $2B 
		dc.b $75 
		dc.b $50 
		dc.b  $C
		dc.b $2A 
		dc.b $92 
		dc.b $A0 
		dc.b $2E 
		dc.b $E9 
		dc.b $40 
		dc.b $80 
		dc.b $D5 
		dc.b   2
		dc.b $EE 
		dc.b $C1 
		dc.b $E8 
		dc.b  $D
		dc.b $FB 
		dc.b $26 
		dc.b   6
		dc.b $F4 
		dc.b $89 
		dc.b  $F
		dc.b $52 
		dc.b $60 
		dc.b  $E
		dc.b $79 
		dc.b $24 
		dc.b  $A
		dc.b   8
		dc.b $BD 
		dc.b $A8 
		dc.b $2B 
		dc.b $80 
		dc.b $C1 
		dc.b $F2 
		dc.b   5
		dc.b $EC 
		dc.b $83 
		dc.b $8D 
		dc.b   2
		dc.b $1D
		dc.b $40 
		dc.b $33 
		dc.b $D8 
		dc.b $1F
		dc.b $BA 
		dc.b $CD 
		dc.b $55 
		dc.b   4
		dc.b $DB 
		dc.b $4C 
		dc.b $D4 
		dc.b $D5 
		dc.b $41 
		dc.b $B2 
		dc.b $B3 
		dc.b $35 
		dc.b $35 
		dc.b $50 
		dc.b $6F 
		dc.b $AA 
		dc.b $CC 
		dc.b $D3 
		dc.b $54 
		dc.b $1A
		dc.b $E4 
		dc.b $AB 
		dc.b $33 
		dc.b $4D 
		dc.b $41 
		dc.b $E8 
		dc.b $6F 
		dc.b $EA 
		dc.b   5
		dc.b   6
		dc.b $AA 
		dc.b $A0 
		dc.b $47 
		dc.b $6A 
		dc.b $AA 
		dc.b   4
		dc.b  $E
		dc.b $6A 
		dc.b $A0 
		dc.b $C1 
		dc.b $AA 
		dc.b $A8 
		dc.b $11
		dc.b $D6 
		dc.b $9A 
		dc.b $6A 
		dc.b $69 
		dc.b $89 
		dc.b $55 
		dc.b $5A 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A0 
		dc.b $97 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A8 
		dc.b $35 
		dc.b $6A 
		dc.b $6A 
		dc.b $6A 
		dc.b $AA 
		dc.b $6A 
		dc.b $AA 
		dc.b $6A 
		dc.b $83 
		dc.b   6
		dc.b $A0 
		dc.b   9
		dc.b $95 
		dc.b $25 
		dc.b $59 
		dc.b $99 
		dc.b $A8 
		dc.b   1
		dc.b  $E
		dc.b $23 
		dc.b $AE 
		dc.b $4D 
		dc.b $40 
		dc.b $1C
		dc.b $C6 
		dc.b $44 
		dc.b $AB 
		dc.b $4C 
		dc.b $C0 
		dc.b $37 
		dc.b $EB 
		dc.b $55 
		dc.b $40 
		dc.b  $D
		dc.b $8E 
		dc.b $AA 
		dc.b $AB 
		dc.b $55 
		dc.b $50 
		dc.b   2
		dc.b $1E
		dc.b $80 
		dc.b $FF
		dc.b $56 
		dc.b $A8 
		dc.b   7
		dc.b $36 
		dc.b   5
		dc.b $2E 
		dc.b $D5 
		dc.b $54 
		dc.b $1B
		dc.b $6D 
		dc.b $55 
		dc.b   6
		dc.b  $D
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b   1
		dc.b $91 
		dc.b $D5 
		dc.b $54 
		dc.b $D5 
		dc.b $54 
		dc.b  $B
		dc.b $D1 
		dc.b $5F 
		dc.b $A8 
		dc.b   3
		dc.b  $F
		dc.b $55 
		dc.b $94 
		dc.b $61 
		dc.b $AA 
		dc.b $AA 
		dc.b $80 
		dc.b $D6 
		dc.b $6A 
		dc.b $AA 
		dc.b   2
		dc.b $17
		dc.b $20
		dc.b   9
		dc.b $62 
		dc.b   9
		dc.b $B4 
		dc.b  $A
		dc.b $DB 
		dc.b $55 
		dc.b $96 
		dc.b $6A 
		dc.b  $E
		dc.b $20
		dc.b $9B 
		dc.b $75 
		dc.b $55 
		dc.b   1
		dc.b $3B 
		dc.b $B5 
		dc.b $50 
		dc.b   4
		dc.b $A1 
		dc.b $B4 
		dc.b   0
		dc.b $6F 
		dc.b $AA 
		dc.b $44 
		dc.b $D5 
		dc.b $40 
		dc.b $11
		dc.b $32 
		dc.b $AC 
		dc.b $C8 
		dc.b $FC 
		dc.b $56 
		dc.b $E8 
		dc.b $79 
		dc.b $A6 
		dc.b $A8 
		dc.b $3F 
		dc.b $EA 
		dc.b $AA 
		dc.b   6
		dc.b $F6 
		dc.b $80 
		dc.b $D7 
		dc.b $DA 
		dc.b $AA 
		dc.b   0
		dc.b $A3 
		dc.b $7A 
		dc.b $A0 
		dc.b   5
		dc.b $66 
		dc.b $4A 
		dc.b $AA 
		dc.b $A0 
		dc.b   2
		dc.b $2C 
		dc.b $32 
		dc.b $24 
		dc.b   7
		dc.b $7D 
		dc.b $96 
		dc.b $69 
		dc.b $AC 
		dc.b $15
		dc.b $F9 
		dc.b   9
		dc.b $56 
		dc.b $A0 
		dc.b  $D
		dc.b $3C 
		dc.b $28 
		dc.b $35 
		dc.b $55 
		dc.b $54 
		dc.b   1
		dc.b $DB 
		dc.b $A4 
		dc.b $54 
		dc.b   3
		dc.b $DD 
		dc.b  $D
		dc.b $58 
		dc.b $33 
		dc.b $D0 
		dc.b $90 
		dc.b $6A 
		dc.b   2
		dc.b $5F 
		dc.b $AA 
		dc.b $A8 
		dc.b $2D 
		dc.b $EA 
		dc.b $AA 
		dc.b  $D
		dc.b $56 
		dc.b $AA 
		dc.b $81 
		dc.b $61 
		dc.b $A0 
		dc.b $9D 
		dc.b $60 
		dc.b $50 
		dc.b $DA 
		dc.b $9A 
		dc.b   3
		dc.b $1E
		dc.b $4B 
		dc.b $95 
		dc.b $54 
		dc.b   2
		dc.b $DD 
		dc.b $91 
		dc.b $35 
		dc.b $1A
		dc.b $D5 
		dc.b   0
		dc.b $84 
		dc.b $41 
		dc.b $5F 
		dc.b $97 
		dc.b $35 
		dc.b $50 
		dc.b  $E
		dc.b $B2 
		dc.b $44 
		dc.b $A8 
		dc.b $17
		dc.b $E2 
		dc.b $8E 
		dc.b $AA 
		dc.b   1
		dc.b $5F 
		dc.b $DA 
		dc.b $A0 
		dc.b  $A
		dc.b $7C 
		dc.b   7
		dc.b $3F 
		dc.b   3
		dc.b $FF
		dc.b $C9 
		dc.b   1
		dc.b $8E 
		dc.b $D4 
		dc.b $E6 
		dc.b $A9 
		dc.b $AA 
		dc.b $AA 
		dc.b $1F
		dc.b $68 
		dc.b   4
		dc.b $F4 
		dc.b  $C
		dc.b $6E 
		dc.b $40 
		dc.b $53 
		dc.b $64 
		dc.b   3
		dc.b $DA 
		dc.b $A0 
		dc.b $10
		dc.b $35 
		dc.b $F0 
		dc.b $29 
		dc.b $D0 
		dc.b $21 
		dc.b $F6 
		dc.b   6
		dc.b $65 
		dc.b $A8 
		dc.b $37 
		dc.b $DA 
		dc.b $6A 
		dc.b $6A 
		dc.b $AA 
		dc.b   6
		dc.b $66 
		dc.b   5
		dc.b $76 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A8 
		dc.b $13
		dc.b $B6 
		dc.b $66 
		dc.b $9A 
		dc.b $9A 
		dc.b $66 
		dc.b $AA 
		dc.b $80 
		dc.b $BE 
		dc.b $66 
		dc.b $AA 
		dc.b  $D
		dc.b $5A 
		dc.b $81 
		dc.b $41 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A8 
		dc.b   2
		dc.b  $E
		dc.b $49 
		dc.b $55 
		dc.b $AA 
		dc.b $1E
		dc.b $EA 
		dc.b   5
		dc.b $76 
		dc.b $A0 
		dc.b $6F 
		dc.b $85 
		dc.b $B3 
		dc.b $32 
		dc.b $CC 
		dc.b $D3 
		dc.b $4D 
		dc.b $4D 
		dc.b $20
		dc.b $1A
		dc.b $FF
		dc.b $40 
		dc.b $2F 
		dc.b $10
		dc.b $29 
		dc.b $E8 
		dc.b $2D 
		dc.b $1B
		dc.b $50 
		dc.b   5
		dc.b $3D 
		dc.b $95 
		dc.b $40 
		dc.b $BB 
		dc.b   3
		dc.b $FD 
		dc.b $EA 
		dc.b   0
		dc.b $E1 
		dc.b $F5 
		dc.b $55 
		dc.b $A8 
		dc.b $26 
		dc.b $6A 
		dc.b $AA 
		dc.b $A0 
		dc.b $23 
		dc.b $80 
		dc.b $7A 
		dc.b $BC 
		dc.b $D5 
		dc.b $50 
		dc.b $7C 
		dc.b $19
		dc.b $40 
		dc.b $75 
		dc.b $CB 
		dc.b $50 
		dc.b $2E 
		dc.b $A5 
		dc.b $40 
		dc.b $20
		dc.b $CD 
		dc.b $55 
		dc.b $45 
		dc.b $35 
		dc.b $53 
		dc.b $55 
		dc.b $50 
		dc.b $23 
		dc.b $F5 
		dc.b $35 
		dc.b $4D 
		dc.b $55 
		dc.b $35 
		dc.b $55 
		dc.b   4
		dc.b $BD 
		dc.b $50 
		dc.b   3
		dc.b $26 
		dc.b $EA 
		dc.b $A8 
		dc.b $11
		dc.b $F9 
		dc.b   2
		dc.b $84 
		dc.b  $F
		dc.b $A3 
		dc.b $6A 
		dc.b $35 
		dc.b $89 
		dc.b $50 
		dc.b  $F
		dc.b $5F 
		dc.b $6A 
		dc.b   1
		dc.b $9D 
		dc.b $4A 
		dc.b $A8 
		dc.b   1
		dc.b $AD 
		dc.b $72 
		dc.b $22 
		dc.b $AA 
		dc.b   0
		dc.b $E7 
		dc.b $40 
		dc.b $7D 
		dc.b $ED 
		dc.b $4D 
		dc.b $53 
		dc.b $55 
		dc.b $41 
		dc.b $F6 
		dc.b $CD 
		dc.b $35 
		dc.b $35 
		dc.b $50 
		dc.b $FF
		dc.b $41 
		dc.b $2E 
		dc.b $CD 
		dc.b $55 
		dc.b $55 
		dc.b $50 
		dc.b $6A 
		dc.b $B3 
		dc.b $34 
		dc.b $D4 
		dc.b $D4 
		dc.b  $C
		dc.b $AA 
		dc.b $44 
		dc.b $AC 
		dc.b   6
		dc.b $B7 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $50 
		dc.b   2
		dc.b $50 
		dc.b $65 
		dc.b $55 
		dc.b   0
		dc.b $33 
		dc.b $C7 
		dc.b $34 
		dc.b $D4 
		dc.b $D4 
		dc.b   0
		dc.b $A2 
		dc.b $FD 
		dc.b $40 
		dc.b   7
		dc.b $8F 
		dc.b $B4 
		dc.b  $A
		dc.b  $D
		dc.b $55 
		dc.b $40 
		dc.b $9E 
		dc.b $AA 
		dc.b $B2 
		dc.b $1F
		dc.b $72 
		dc.b $B2 
		dc.b $86 
		dc.b  $D
		dc.b $55 
		dc.b $40 
		dc.b $9E 
		dc.b $D5 
		dc.b $4C 
		dc.b   4
		dc.b $C3 
		dc.b $55 
		dc.b $50 
		dc.b   4
		dc.b $9C 
		dc.b $D5 
		dc.b $50 
		dc.b   1
		dc.b  $B
		dc.b $DD 
		dc.b   0
		dc.b $18
		dc.b $2C 
		dc.b $C0 
		dc.b  $F
		dc.b $30 
		dc.b $FF
		dc.b $FF
		align $8000

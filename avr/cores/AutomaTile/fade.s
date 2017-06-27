
fadeTo.ino.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	10 c0       	rjmp	.+32     	; 0x22 <__ctors_end>
       2:	2a c0       	rjmp	.+84     	; 0x58 <__bad_interrupt>
       4:	09 c6       	rjmp	.+3090   	; 0xc18 <__vector_2>
       6:	f7 c5       	rjmp	.+3054   	; 0xbf6 <__vector_3>
       8:	27 c0       	rjmp	.+78     	; 0x58 <__bad_interrupt>
       a:	26 c0       	rjmp	.+76     	; 0x58 <__bad_interrupt>
       c:	25 c0       	rjmp	.+74     	; 0x58 <__bad_interrupt>
       e:	24 c0       	rjmp	.+72     	; 0x58 <__bad_interrupt>
      10:	23 c0       	rjmp	.+70     	; 0x58 <__bad_interrupt>
      12:	8f c3       	rjmp	.+1822   	; 0x732 <__vector_9>
      14:	21 c0       	rjmp	.+66     	; 0x58 <__bad_interrupt>
      16:	20 c0       	rjmp	.+64     	; 0x58 <__bad_interrupt>
      18:	1f c0       	rjmp	.+62     	; 0x58 <__bad_interrupt>
      1a:	1e c0       	rjmp	.+60     	; 0x58 <__bad_interrupt>
      1c:	1d c0       	rjmp	.+58     	; 0x58 <__bad_interrupt>
      1e:	1c c0       	rjmp	.+56     	; 0x58 <__bad_interrupt>
      20:	1b c0       	rjmp	.+54     	; 0x58 <__bad_interrupt>

00000022 <__ctors_end>:
      22:	11 24       	eor	r1, r1
      24:	1f be       	out	0x3f, r1	; 63
      26:	cf e5       	ldi	r28, 0x5F	; 95
      28:	d2 e0       	ldi	r29, 0x02	; 2
      2a:	de bf       	out	0x3e, r29	; 62
      2c:	cd bf       	out	0x3d, r28	; 61

0000002e <__do_copy_data>:
      2e:	10 e0       	ldi	r17, 0x00	; 0
      30:	a0 e6       	ldi	r26, 0x60	; 96
      32:	b0 e0       	ldi	r27, 0x00	; 0
      34:	e4 ed       	ldi	r30, 0xD4	; 212
      36:	f1 e1       	ldi	r31, 0x11	; 17
      38:	02 c0       	rjmp	.+4      	; 0x3e <__SP_H__>
      3a:	05 90       	lpm	r0, Z+
      3c:	0d 92       	st	X+, r0
      3e:	a4 38       	cpi	r26, 0x84	; 132
      40:	b1 07       	cpc	r27, r17
      42:	d9 f7       	brne	.-10     	; 0x3a <__do_copy_data+0xc>

00000044 <__do_clear_bss>:
      44:	21 e0       	ldi	r18, 0x01	; 1
      46:	a4 e8       	ldi	r26, 0x84	; 132
      48:	b0 e0       	ldi	r27, 0x00	; 0
      4a:	01 c0       	rjmp	.+2      	; 0x4e <.do_clear_bss_start>

0000004c <.do_clear_bss_loop>:
      4c:	1d 92       	st	X+, r1

0000004e <.do_clear_bss_start>:
      4e:	ab 35       	cpi	r26, 0x5B	; 91
      50:	b2 07       	cpc	r27, r18
      52:	e1 f7       	brne	.-8      	; 0x4c <.do_clear_bss_loop>
      54:	5f d7       	rcall	.+3774   	; 0xf14 <main>
      56:	bc c8       	rjmp	.-3720   	; 0xfffff1d0 <__eeprom_end+0xff7ef1d0>

00000058 <__bad_interrupt>:
      58:	d3 cf       	rjmp	.-90     	; 0x0 <__vectors>

0000005a <setup>:
 *  by Jonathan Bobrow
 *  01.10.2017
 */
 
void setup() {
   setColorRGB(0,255,0);
      5a:	40 e0       	ldi	r20, 0x00	; 0
      5c:	6f ef       	ldi	r22, 0xFF	; 255
      5e:	80 e0       	ldi	r24, 0x00	; 0
      60:	62 d0       	rcall	.+196    	; 0x126 <setColorRGB>
   int i = 0;
   fadeTo(0,0,255, 4000);
      62:	20 ea       	ldi	r18, 0xA0	; 160
      64:	3f e0       	ldi	r19, 0x0F	; 15
      66:	4f ef       	ldi	r20, 0xFF	; 255
      68:	60 e0       	ldi	r22, 0x00	; 0
      6a:	80 e0       	ldi	r24, 0x00	; 0
      6c:	66 c0       	rjmp	.+204    	; 0x13a <fadeTo>

0000006e <loop>:
}

void loop() {
      6e:	08 95       	ret

00000070 <buttonClicked>:
}

void buttonClicked(){
      70:	08 95       	ret

00000072 <buttonDoubleClicked>:
}

void buttonDoubleClicked(){
      72:	08 95       	ret

00000074 <buttonTripleClicked>:
}

void buttonTripleClicked(){
      74:	08 95       	ret

00000076 <buttonPressed>:
}

void buttonPressed() {
   setColorRGB(255, 0, 0);
      76:	40 e0       	ldi	r20, 0x00	; 0
      78:	60 e0       	ldi	r22, 0x00	; 0
      7a:	8f ef       	ldi	r24, 0xFF	; 255
      7c:	54 d0       	rcall	.+168    	; 0x126 <setColorRGB>
   fadeTo(0,0,255, 4000);
      7e:	20 ea       	ldi	r18, 0xA0	; 160
      80:	3f e0       	ldi	r19, 0x0F	; 15
      82:	4f ef       	ldi	r20, 0xFF	; 255
      84:	60 e0       	ldi	r22, 0x00	; 0
      86:	80 e0       	ldi	r24, 0x00	; 0
      88:	58 c0       	rjmp	.+176    	; 0x13a <fadeTo>

0000008a <buttonReleased>:

}

void buttonReleased() {
      8a:	08 95       	ret

0000008c <buttonLongPressed>:
}

void buttonLongPressed(){
  blink(1000);
      8c:	88 ee       	ldi	r24, 0xE8	; 232
      8e:	93 e0       	ldi	r25, 0x03	; 3
      90:	61 c2       	rjmp	.+1218   	; 0x554 <blink>

00000092 <emptyCB>:
      92:	08 95       	ret

00000094 <getTimer>:
      94:	8f b7       	in	r24, 0x3f	; 63
      96:	28 2f       	mov	r18, r24
      98:	20 78       	andi	r18, 0x80	; 128
      9a:	09 f0       	breq	.+2      	; 0x9e <getTimer+0xa>
      9c:	f8 94       	cli
      9e:	60 91 0e 01 	lds	r22, 0x010E
      a2:	70 91 0f 01 	lds	r23, 0x010F
      a6:	80 91 10 01 	lds	r24, 0x0110
      aa:	90 91 11 01 	lds	r25, 0x0111
      ae:	22 23       	and	r18, r18
      b0:	09 f0       	breq	.+2      	; 0xb4 <getTimer+0x20>
      b2:	78 94       	sei
      b4:	08 95       	ret

000000b6 <getSleepTimer>:
      b6:	8f b7       	in	r24, 0x3f	; 63
      b8:	28 2f       	mov	r18, r24
      ba:	20 78       	andi	r18, 0x80	; 128
      bc:	09 f0       	breq	.+2      	; 0xc0 <getSleepTimer+0xa>
      be:	f8 94       	cli
      c0:	60 91 a0 00 	lds	r22, 0x00A0
      c4:	70 91 a1 00 	lds	r23, 0x00A1
      c8:	80 91 a2 00 	lds	r24, 0x00A2
      cc:	90 91 a3 00 	lds	r25, 0x00A3
      d0:	22 23       	and	r18, r18
      d2:	09 f0       	breq	.+2      	; 0xd6 <getSleepTimer+0x20>
      d4:	78 94       	sei
      d6:	08 95       	ret

000000d8 <tileSetup>:
      d8:	9d d6       	rcall	.+3386   	; 0xe14 <initIO>
      da:	88 e3       	ldi	r24, 0x38	; 56
      dc:	90 e0       	ldi	r25, 0x00	; 0
      de:	c8 d7       	rcall	.+3984   	; 0x1070 <setPort>
      e0:	20 91 75 00 	lds	r18, 0x0075
      e4:	30 91 76 00 	lds	r19, 0x0076
      e8:	40 91 77 00 	lds	r20, 0x0077
      ec:	62 e0       	ldi	r22, 0x02	; 2
      ee:	70 e0       	ldi	r23, 0x00	; 0
      f0:	81 e0       	ldi	r24, 0x01	; 1
      f2:	90 e0       	ldi	r25, 0x00	; 0
      f4:	be d7       	rcall	.+3964   	; 0x1072 <sendColor>
      f6:	78 94       	sei
      f8:	9c d6       	rcall	.+3384   	; 0xe32 <initTimer>
      fa:	85 b7       	in	r24, 0x35	; 53
      fc:	87 7e       	andi	r24, 0xE7	; 231
      fe:	80 61       	ori	r24, 0x10	; 16
     100:	85 bf       	out	0x35, r24	; 53
     102:	85 b7       	in	r24, 0x35	; 53
     104:	80 62       	ori	r24, 0x20	; 32
     106:	85 bf       	out	0x35, r24	; 53
     108:	e8 ea       	ldi	r30, 0xA8	; 168
     10a:	f0 e0       	ldi	r31, 0x00	; 0
     10c:	10 82       	st	Z, r1
     10e:	11 82       	std	Z+1, r1	; 0x01
     110:	12 82       	std	Z+2, r1	; 0x02
     112:	13 82       	std	Z+3, r1	; 0x03
     114:	14 82       	std	Z+4, r1	; 0x04
     116:	15 82       	std	Z+5, r1	; 0x05
     118:	81 e0       	ldi	r24, 0x01	; 1
     11a:	90 e0       	ldi	r25, 0x00	; 0
     11c:	90 93 67 00 	sts	0x0067, r25
     120:	80 93 66 00 	sts	0x0066, r24
     124:	08 95       	ret

00000126 <setColorRGB>:
     126:	10 92 94 00 	sts	0x0094, r1
     12a:	10 92 93 00 	sts	0x0093, r1
     12e:	e2 e7       	ldi	r30, 0x72	; 114
     130:	f0 e0       	ldi	r31, 0x00	; 0
     132:	80 83       	st	Z, r24
     134:	61 83       	std	Z+1, r22	; 0x01
     136:	42 83       	std	Z+2, r20	; 0x02
     138:	08 95       	ret

0000013a <fadeTo>:
     13a:	cf 93       	push	r28
     13c:	df 93       	push	r29
     13e:	e1 e0       	ldi	r30, 0x01	; 1
     140:	f0 e0       	ldi	r31, 0x00	; 0
     142:	f0 93 94 00 	sts	0x0094, r31
     146:	e0 93 93 00 	sts	0x0093, r30
     14a:	90 91 72 00 	lds	r25, 0x0072
     14e:	90 93 3c 01 	sts	0x013C, r25
     152:	90 91 73 00 	lds	r25, 0x0073
     156:	90 93 45 01 	sts	0x0145, r25
     15a:	90 91 74 00 	lds	r25, 0x0074
     15e:	90 93 4e 01 	sts	0x014E, r25
     162:	80 93 3d 01 	sts	0x013D, r24
     166:	60 93 46 01 	sts	0x0146, r22
     16a:	40 93 4f 01 	sts	0x014F, r20
     16e:	85 e0       	ldi	r24, 0x05	; 5
     170:	36 95       	lsr	r19
     172:	27 95       	ror	r18
     174:	8a 95       	dec	r24
     176:	e1 f7       	brne	.-8      	; 0x170 <fadeTo+0x36>
     178:	c2 2f       	mov	r28, r18
     17a:	02 2e       	mov	r0, r18
     17c:	00 0c       	add	r0, r0
     17e:	dd 0b       	sbc	r29, r29
     180:	ee e3       	ldi	r30, 0x3E	; 62
     182:	f1 e0       	ldi	r31, 0x01	; 1
     184:	36 83       	std	Z+6, r19	; 0x06
     186:	25 83       	std	Z+5, r18	; 0x05
     188:	12 82       	std	Z+2, r1	; 0x02
     18a:	11 82       	std	Z+1, r1	; 0x01
     18c:	df 01       	movw	r26, r30
     18e:	11 97       	sbiw	r26, 0x01	; 1
     190:	8c 91       	ld	r24, X
     192:	90 e0       	ldi	r25, 0x00	; 0
     194:	11 97       	sbiw	r26, 0x01	; 1
     196:	4c 91       	ld	r20, X
     198:	84 1b       	sub	r24, r20
     19a:	91 09       	sbc	r25, r1
     19c:	94 83       	std	Z+4, r25	; 0x04
     19e:	83 83       	std	Z+3, r24	; 0x03
     1a0:	be 01       	movw	r22, r28
     1a2:	03 d8       	rcall	.-4090   	; 0xfffff1aa <__eeprom_end+0xff7ef1aa>
     1a4:	60 83       	st	Z, r22
     1a6:	39 96       	adiw	r30, 0x09	; 9
     1a8:	81 e0       	ldi	r24, 0x01	; 1
     1aa:	e9 35       	cpi	r30, 0x59	; 89
     1ac:	f8 07       	cpc	r31, r24
     1ae:	51 f7       	brne	.-44     	; 0x184 <fadeTo+0x4a>
     1b0:	30 93 3b 01 	sts	0x013B, r19
     1b4:	20 93 3a 01 	sts	0x013A, r18
     1b8:	df 91       	pop	r29
     1ba:	cf 91       	pop	r28
     1bc:	08 95       	ret

000001be <fadeUpdateRGBComponent>:
     1be:	ef 92       	push	r14
     1c0:	ff 92       	push	r15
     1c2:	0f 93       	push	r16
     1c4:	1f 93       	push	r17
     1c6:	cf 93       	push	r28
     1c8:	df 93       	push	r29
     1ca:	a8 2f       	mov	r26, r24
     1cc:	b0 e0       	ldi	r27, 0x00	; 0
     1ce:	cd 01       	movw	r24, r26
     1d0:	69 e0       	ldi	r22, 0x09	; 9
     1d2:	70 e0       	ldi	r23, 0x00	; 0
     1d4:	b9 d7       	rcall	.+3954   	; 0x1148 <__mulhi3>
     1d6:	ec 01       	movw	r28, r24
     1d8:	c6 5c       	subi	r28, 0xC6	; 198
     1da:	de 4f       	sbci	r29, 0xFE	; 254
     1dc:	2a 81       	ldd	r18, Y+2	; 0x02
     1de:	3c 81       	ldd	r19, Y+4	; 0x04
     1e0:	83 2f       	mov	r24, r19
     1e2:	03 2e       	mov	r0, r19
     1e4:	00 0c       	add	r0, r0
     1e6:	99 0b       	sbc	r25, r25
     1e8:	ac 01       	movw	r20, r24
     1ea:	42 0f       	add	r20, r18
     1ec:	51 1d       	adc	r21, r1
     1ee:	57 ff       	sbrs	r21, 7
     1f0:	02 c0       	rjmp	.+4      	; 0x1f6 <fadeUpdateRGBComponent+0x38>
     1f2:	1a 82       	std	Y+2, r1	; 0x02
     1f4:	9e c0       	rjmp	.+316    	; 0x332 <__stack+0xd3>
     1f6:	4f 3f       	cpi	r20, 0xFF	; 255
     1f8:	51 05       	cpc	r21, r1
     1fa:	49 f0       	breq	.+18     	; 0x20e <fadeUpdateRGBComponent+0x50>
     1fc:	44 f0       	brlt	.+16     	; 0x20e <fadeUpdateRGBComponent+0x50>
     1fe:	cd 01       	movw	r24, r26
     200:	69 e0       	ldi	r22, 0x09	; 9
     202:	70 e0       	ldi	r23, 0x00	; 0
     204:	a1 d7       	rcall	.+3906   	; 0x1148 <__mulhi3>
     206:	86 5c       	subi	r24, 0xC6	; 198
     208:	9e 4f       	sbci	r25, 0xFE	; 254
     20a:	2f ef       	ldi	r18, 0xFF	; 255
     20c:	90 c0       	rjmp	.+288    	; 0x32e <__stack+0xcf>
     20e:	23 0f       	add	r18, r19
     210:	2a 83       	std	Y+2, r18	; 0x02
     212:	4f 81       	ldd	r20, Y+7	; 0x07
     214:	58 85       	ldd	r21, Y+8	; 0x08
     216:	eb 81       	ldd	r30, Y+3	; 0x03
     218:	14 16       	cp	r1, r20
     21a:	15 06       	cpc	r1, r21
     21c:	ec f5       	brge	.+122    	; 0x298 <__stack+0x39>
     21e:	2e 17       	cp	r18, r30
     220:	e8 f5       	brcc	.+122    	; 0x29c <__stack+0x3d>
     222:	31 11       	cpse	r19, r1
     224:	2a c0       	rjmp	.+84     	; 0x27a <__stack+0x1b>
     226:	44 0f       	add	r20, r20
     228:	55 1f       	adc	r21, r21
     22a:	ed 81       	ldd	r30, Y+5	; 0x05
     22c:	fe 81       	ldd	r31, Y+6	; 0x06
     22e:	7f 01       	movw	r14, r30
     230:	e4 0e       	add	r14, r20
     232:	f5 1e       	adc	r15, r21
     234:	fe 82       	std	Y+6, r15	; 0x06
     236:	ed 82       	std	Y+5, r14	; 0x05
     238:	cd 01       	movw	r24, r26
     23a:	01 96       	adiw	r24, 0x01	; 1
     23c:	69 e0       	ldi	r22, 0x09	; 9
     23e:	70 e0       	ldi	r23, 0x00	; 0
     240:	83 d7       	rcall	.+3846   	; 0x1148 <__mulhi3>
     242:	86 5c       	subi	r24, 0xC6	; 198
     244:	9e 4f       	sbci	r25, 0xFE	; 254
     246:	fc 01       	movw	r30, r24
     248:	00 81       	ld	r16, Z
     24a:	11 81       	ldd	r17, Z+1	; 0x01
     24c:	0e 15       	cp	r16, r14
     24e:	1f 05       	cpc	r17, r15
     250:	08 f0       	brcs	.+2      	; 0x254 <fadeUpdateRGBComponent+0x96>
     252:	6f c0       	rjmp	.+222    	; 0x332 <__stack+0xd3>
     254:	2f 5f       	subi	r18, 0xFF	; 255
     256:	2a 83       	std	Y+2, r18	; 0x02
     258:	cd 01       	movw	r24, r26
     25a:	69 e0       	ldi	r22, 0x09	; 9
     25c:	70 e0       	ldi	r23, 0x00	; 0
     25e:	74 d7       	rcall	.+3816   	; 0x1148 <__mulhi3>
     260:	86 5c       	subi	r24, 0xC6	; 198
     262:	9e 4f       	sbci	r25, 0xFE	; 254
     264:	00 0f       	add	r16, r16
     266:	11 1f       	adc	r17, r17
     268:	a7 01       	movw	r20, r14
     26a:	40 1b       	sub	r20, r16
     26c:	51 0b       	sbc	r21, r17
     26e:	dc 01       	movw	r26, r24
     270:	16 96       	adiw	r26, 0x06	; 6
     272:	5c 93       	st	X, r21
     274:	4e 93       	st	-X, r20
     276:	15 97       	sbiw	r26, 0x05	; 5
     278:	5c c0       	rjmp	.+184    	; 0x332 <__stack+0xd3>
     27a:	c2 2f       	mov	r28, r18
     27c:	d0 e0       	ldi	r29, 0x00	; 0
     27e:	f0 e0       	ldi	r31, 0x00	; 0
     280:	60 91 3a 01 	lds	r22, 0x013A
     284:	70 91 3b 01 	lds	r23, 0x013B
     288:	5f d7       	rcall	.+3774   	; 0x1148 <__mulhi3>
     28a:	e8 1b       	sub	r30, r24
     28c:	f9 0b       	sbc	r31, r25
     28e:	ce 17       	cp	r28, r30
     290:	df 07       	cpc	r29, r31
     292:	08 f0       	brcs	.+2      	; 0x296 <__stack+0x37>
     294:	4e c0       	rjmp	.+156    	; 0x332 <__stack+0xd3>
     296:	44 c0       	rjmp	.+136    	; 0x320 <__stack+0xc1>
     298:	e2 17       	cp	r30, r18
     29a:	50 f0       	brcs	.+20     	; 0x2b0 <__stack+0x51>
     29c:	cd 01       	movw	r24, r26
     29e:	69 e0       	ldi	r22, 0x09	; 9
     2a0:	70 e0       	ldi	r23, 0x00	; 0
     2a2:	52 d7       	rcall	.+3748   	; 0x1148 <__mulhi3>
     2a4:	86 5c       	subi	r24, 0xC6	; 198
     2a6:	9e 4f       	sbci	r25, 0xFE	; 254
     2a8:	dc 01       	movw	r26, r24
     2aa:	12 96       	adiw	r26, 0x02	; 2
     2ac:	ec 93       	st	X, r30
     2ae:	41 c0       	rjmp	.+130    	; 0x332 <__stack+0xd3>
     2b0:	31 11       	cpse	r19, r1
     2b2:	29 c0       	rjmp	.+82     	; 0x306 <__stack+0xa7>
     2b4:	44 0f       	add	r20, r20
     2b6:	55 1f       	adc	r21, r21
     2b8:	ed 81       	ldd	r30, Y+5	; 0x05
     2ba:	fe 81       	ldd	r31, Y+6	; 0x06
     2bc:	7f 01       	movw	r14, r30
     2be:	e4 1a       	sub	r14, r20
     2c0:	f5 0a       	sbc	r15, r21
     2c2:	fe 82       	std	Y+6, r15	; 0x06
     2c4:	ed 82       	std	Y+5, r14	; 0x05
     2c6:	cd 01       	movw	r24, r26
     2c8:	01 96       	adiw	r24, 0x01	; 1
     2ca:	69 e0       	ldi	r22, 0x09	; 9
     2cc:	70 e0       	ldi	r23, 0x00	; 0
     2ce:	3c d7       	rcall	.+3704   	; 0x1148 <__mulhi3>
     2d0:	86 5c       	subi	r24, 0xC6	; 198
     2d2:	9e 4f       	sbci	r25, 0xFE	; 254
     2d4:	fc 01       	movw	r30, r24
     2d6:	00 81       	ld	r16, Z
     2d8:	11 81       	ldd	r17, Z+1	; 0x01
     2da:	0e 15       	cp	r16, r14
     2dc:	1f 05       	cpc	r17, r15
     2de:	48 f5       	brcc	.+82     	; 0x332 <__stack+0xd3>
     2e0:	21 50       	subi	r18, 0x01	; 1
     2e2:	2a 83       	std	Y+2, r18	; 0x02
     2e4:	cd 01       	movw	r24, r26
     2e6:	69 e0       	ldi	r22, 0x09	; 9
     2e8:	70 e0       	ldi	r23, 0x00	; 0
     2ea:	2e d7       	rcall	.+3676   	; 0x1148 <__mulhi3>
     2ec:	86 5c       	subi	r24, 0xC6	; 198
     2ee:	9e 4f       	sbci	r25, 0xFE	; 254
     2f0:	00 0f       	add	r16, r16
     2f2:	11 1f       	adc	r17, r17
     2f4:	f7 01       	movw	r30, r14
     2f6:	e0 1b       	sub	r30, r16
     2f8:	f1 0b       	sbc	r31, r17
     2fa:	dc 01       	movw	r26, r24
     2fc:	16 96       	adiw	r26, 0x06	; 6
     2fe:	fc 93       	st	X, r31
     300:	ee 93       	st	-X, r30
     302:	15 97       	sbiw	r26, 0x05	; 5
     304:	16 c0       	rjmp	.+44     	; 0x332 <__stack+0xd3>
     306:	c2 2f       	mov	r28, r18
     308:	d0 e0       	ldi	r29, 0x00	; 0
     30a:	f0 e0       	ldi	r31, 0x00	; 0
     30c:	60 91 3a 01 	lds	r22, 0x013A
     310:	70 91 3b 01 	lds	r23, 0x013B
     314:	19 d7       	rcall	.+3634   	; 0x1148 <__mulhi3>
     316:	e8 1b       	sub	r30, r24
     318:	f9 0b       	sbc	r31, r25
     31a:	ec 17       	cp	r30, r28
     31c:	fd 07       	cpc	r31, r29
     31e:	48 f4       	brcc	.+18     	; 0x332 <__stack+0xd3>
     320:	cd 01       	movw	r24, r26
     322:	69 e0       	ldi	r22, 0x09	; 9
     324:	70 e0       	ldi	r23, 0x00	; 0
     326:	10 d7       	rcall	.+3616   	; 0x1148 <__mulhi3>
     328:	86 5c       	subi	r24, 0xC6	; 198
     32a:	9e 4f       	sbci	r25, 0xFE	; 254
     32c:	23 0f       	add	r18, r19
     32e:	fc 01       	movw	r30, r24
     330:	22 83       	std	Z+2, r18	; 0x02
     332:	df 91       	pop	r29
     334:	cf 91       	pop	r28
     336:	1f 91       	pop	r17
     338:	0f 91       	pop	r16
     33a:	ff 90       	pop	r15
     33c:	ef 90       	pop	r14
     33e:	08 95       	ret

00000340 <fadeUpdate>:
     340:	80 91 3c 01 	lds	r24, 0x013C
     344:	80 93 72 00 	sts	0x0072, r24
     348:	80 91 45 01 	lds	r24, 0x0145
     34c:	80 93 73 00 	sts	0x0073, r24
     350:	80 91 4e 01 	lds	r24, 0x014E
     354:	80 93 74 00 	sts	0x0074, r24
     358:	20 91 72 00 	lds	r18, 0x0072
     35c:	30 91 73 00 	lds	r19, 0x0073
     360:	40 91 74 00 	lds	r20, 0x0074
     364:	62 e0       	ldi	r22, 0x02	; 2
     366:	70 e0       	ldi	r23, 0x00	; 0
     368:	81 e0       	ldi	r24, 0x01	; 1
     36a:	90 e0       	ldi	r25, 0x00	; 0
     36c:	82 d6       	rcall	.+3332   	; 0x1072 <sendColor>
     36e:	80 91 3a 01 	lds	r24, 0x013A
     372:	90 91 3b 01 	lds	r25, 0x013B
     376:	9c 01       	movw	r18, r24
     378:	21 50       	subi	r18, 0x01	; 1
     37a:	31 09       	sbc	r19, r1
     37c:	30 93 3b 01 	sts	0x013B, r19
     380:	20 93 3a 01 	sts	0x013A, r18
     384:	89 2b       	or	r24, r25
     386:	31 f0       	breq	.+12     	; 0x394 <fadeUpdate+0x54>
     388:	80 e0       	ldi	r24, 0x00	; 0
     38a:	19 df       	rcall	.-462    	; 0x1be <fadeUpdateRGBComponent>
     38c:	81 e0       	ldi	r24, 0x01	; 1
     38e:	17 df       	rcall	.-466    	; 0x1be <fadeUpdateRGBComponent>
     390:	82 e0       	ldi	r24, 0x02	; 2
     392:	15 cf       	rjmp	.-470    	; 0x1be <fadeUpdateRGBComponent>
     394:	10 92 94 00 	sts	0x0094, r1
     398:	10 92 93 00 	sts	0x0093, r1
     39c:	08 95       	ret

0000039e <fadeRainbowUpdate>:
     39e:	60 91 1a 01 	lds	r22, 0x011A
     3a2:	70 91 1b 01 	lds	r23, 0x011B
     3a6:	80 91 1c 01 	lds	r24, 0x011C
     3aa:	4a d5       	rcall	.+2708   	; 0xe40 <hsv2rgb>
     3ac:	60 93 72 00 	sts	0x0072, r22
     3b0:	70 93 73 00 	sts	0x0073, r23
     3b4:	80 93 74 00 	sts	0x0074, r24
     3b8:	20 91 72 00 	lds	r18, 0x0072
     3bc:	30 91 73 00 	lds	r19, 0x0073
     3c0:	40 91 74 00 	lds	r20, 0x0074
     3c4:	62 e0       	ldi	r22, 0x02	; 2
     3c6:	70 e0       	ldi	r23, 0x00	; 0
     3c8:	81 e0       	ldi	r24, 0x01	; 1
     3ca:	90 e0       	ldi	r25, 0x00	; 0
     3cc:	52 d6       	rcall	.+3236   	; 0x1072 <sendColor>
     3ce:	80 91 20 01 	lds	r24, 0x0120
     3d2:	90 91 21 01 	lds	r25, 0x0121
     3d6:	bc 01       	movw	r22, r24
     3d8:	61 50       	subi	r22, 0x01	; 1
     3da:	71 09       	sbc	r23, r1
     3dc:	70 93 21 01 	sts	0x0121, r23
     3e0:	60 93 20 01 	sts	0x0120, r22
     3e4:	89 2b       	or	r24, r25
     3e6:	09 f4       	brne	.+2      	; 0x3ea <fadeRainbowUpdate+0x4c>
     3e8:	a3 c0       	rjmp	.+326    	; 0x530 <fadeRainbowUpdate+0x192>
     3ea:	80 91 23 01 	lds	r24, 0x0123
     3ee:	90 91 1a 01 	lds	r25, 0x011A
     3f2:	30 91 22 01 	lds	r19, 0x0122
     3f6:	88 23       	and	r24, r24
     3f8:	09 f4       	brne	.+2      	; 0x3fc <fadeRainbowUpdate+0x5e>
     3fa:	4d c0       	rjmp	.+154    	; 0x496 <fadeRainbowUpdate+0xf8>
     3fc:	43 2f       	mov	r20, r19
     3fe:	50 e0       	ldi	r21, 0x00	; 0
     400:	fa 01       	movw	r30, r20
     402:	e9 0f       	add	r30, r25
     404:	f1 1d       	adc	r31, r1
     406:	97 fd       	sbrc	r25, 7
     408:	fa 95       	dec	r31
     40a:	ef 37       	cpi	r30, 0x7F	; 127
     40c:	f1 05       	cpc	r31, r1
     40e:	1c f0       	brlt	.+6      	; 0x416 <fadeRainbowUpdate+0x78>
     410:	3f 57       	subi	r19, 0x7F	; 127
     412:	93 0f       	add	r25, r19
     414:	4f c0       	rjmp	.+158    	; 0x4b4 <fadeRainbowUpdate+0x116>
     416:	29 2f       	mov	r18, r25
     418:	23 0f       	add	r18, r19
     41a:	20 93 1a 01 	sts	0x011A, r18
     41e:	31 11       	cpse	r19, r1
     420:	25 c0       	rjmp	.+74     	; 0x46c <fadeRainbowUpdate+0xce>
     422:	20 91 26 01 	lds	r18, 0x0126
     426:	30 91 27 01 	lds	r19, 0x0127
     42a:	22 0f       	add	r18, r18
     42c:	33 1f       	adc	r19, r19
     42e:	40 91 24 01 	lds	r20, 0x0124
     432:	50 91 25 01 	lds	r21, 0x0125
     436:	24 0f       	add	r18, r20
     438:	35 1f       	adc	r19, r21
     43a:	30 93 25 01 	sts	0x0125, r19
     43e:	20 93 24 01 	sts	0x0124, r18
     442:	40 91 28 01 	lds	r20, 0x0128
     446:	50 91 29 01 	lds	r21, 0x0129
     44a:	42 17       	cp	r20, r18
     44c:	53 07       	cpc	r21, r19
     44e:	0c f0       	brlt	.+2      	; 0x452 <fadeRainbowUpdate+0xb4>
     450:	80 c0       	rjmp	.+256    	; 0x552 <fadeRainbowUpdate+0x1b4>
     452:	9f 5f       	subi	r25, 0xFF	; 255
     454:	90 93 1a 01 	sts	0x011A, r25
     458:	ca 01       	movw	r24, r20
     45a:	88 0f       	add	r24, r24
     45c:	99 1f       	adc	r25, r25
     45e:	28 1b       	sub	r18, r24
     460:	39 0b       	sbc	r19, r25
     462:	30 93 25 01 	sts	0x0125, r19
     466:	20 93 24 01 	sts	0x0124, r18
     46a:	08 95       	ret
     46c:	e0 91 1d 01 	lds	r30, 0x011D
     470:	0e 2e       	mov	r0, r30
     472:	00 0c       	add	r0, r0
     474:	ff 0b       	sbc	r31, r31
     476:	ca 01       	movw	r24, r20
     478:	67 d6       	rcall	.+3278   	; 0x1148 <__mulhi3>
     47a:	e8 1b       	sub	r30, r24
     47c:	f9 0b       	sbc	r31, r25
     47e:	82 2f       	mov	r24, r18
     480:	02 2e       	mov	r0, r18
     482:	00 0c       	add	r0, r0
     484:	99 0b       	sbc	r25, r25
     486:	8e 17       	cp	r24, r30
     488:	9f 07       	cpc	r25, r31
     48a:	08 f0       	brcs	.+2      	; 0x48e <fadeRainbowUpdate+0xf0>
     48c:	62 c0       	rjmp	.+196    	; 0x552 <fadeRainbowUpdate+0x1b4>
     48e:	2f 5f       	subi	r18, 0xFF	; 255
     490:	20 93 1a 01 	sts	0x011A, r18
     494:	08 95       	ret
     496:	49 2f       	mov	r20, r25
     498:	09 2e       	mov	r0, r25
     49a:	00 0c       	add	r0, r0
     49c:	55 0b       	sbc	r21, r21
     49e:	e3 2f       	mov	r30, r19
     4a0:	f0 e0       	ldi	r31, 0x00	; 0
     4a2:	4e 1b       	sub	r20, r30
     4a4:	5f 0b       	sbc	r21, r31
     4a6:	29 2f       	mov	r18, r25
     4a8:	23 1b       	sub	r18, r19
     4aa:	14 16       	cp	r1, r20
     4ac:	15 06       	cpc	r1, r21
     4ae:	2c f0       	brlt	.+10     	; 0x4ba <fadeRainbowUpdate+0x11c>
     4b0:	9f e7       	ldi	r25, 0x7F	; 127
     4b2:	92 0f       	add	r25, r18
     4b4:	90 93 1a 01 	sts	0x011A, r25
     4b8:	08 95       	ret
     4ba:	20 93 1a 01 	sts	0x011A, r18
     4be:	31 11       	cpse	r19, r1
     4c0:	23 c0       	rjmp	.+70     	; 0x508 <fadeRainbowUpdate+0x16a>
     4c2:	40 91 26 01 	lds	r20, 0x0126
     4c6:	50 91 27 01 	lds	r21, 0x0127
     4ca:	44 0f       	add	r20, r20
     4cc:	55 1f       	adc	r21, r21
     4ce:	80 91 24 01 	lds	r24, 0x0124
     4d2:	90 91 25 01 	lds	r25, 0x0125
     4d6:	48 0f       	add	r20, r24
     4d8:	59 1f       	adc	r21, r25
     4da:	50 93 25 01 	sts	0x0125, r21
     4de:	40 93 24 01 	sts	0x0124, r20
     4e2:	80 91 28 01 	lds	r24, 0x0128
     4e6:	90 91 29 01 	lds	r25, 0x0129
     4ea:	84 17       	cp	r24, r20
     4ec:	95 07       	cpc	r25, r21
     4ee:	8c f5       	brge	.+98     	; 0x552 <fadeRainbowUpdate+0x1b4>
     4f0:	21 50       	subi	r18, 0x01	; 1
     4f2:	20 93 1a 01 	sts	0x011A, r18
     4f6:	88 0f       	add	r24, r24
     4f8:	99 1f       	adc	r25, r25
     4fa:	48 1b       	sub	r20, r24
     4fc:	59 0b       	sbc	r21, r25
     4fe:	50 93 25 01 	sts	0x0125, r21
     502:	40 93 24 01 	sts	0x0124, r20
     506:	08 95       	ret
     508:	cf 01       	movw	r24, r30
     50a:	1e d6       	rcall	.+3132   	; 0x1148 <__mulhi3>
     50c:	30 91 1d 01 	lds	r19, 0x011D
     510:	83 0f       	add	r24, r19
     512:	91 1d       	adc	r25, r1
     514:	37 fd       	sbrc	r19, 7
     516:	9a 95       	dec	r25
     518:	6f e7       	ldi	r22, 0x7F	; 127
     51a:	70 e0       	ldi	r23, 0x00	; 0
     51c:	32 d6       	rcall	.+3172   	; 0x1182 <__udivmodhi4>
     51e:	42 2f       	mov	r20, r18
     520:	02 2e       	mov	r0, r18
     522:	00 0c       	add	r0, r0
     524:	55 0b       	sbc	r21, r21
     526:	84 17       	cp	r24, r20
     528:	95 07       	cpc	r25, r21
     52a:	98 f4       	brcc	.+38     	; 0x552 <fadeRainbowUpdate+0x1b4>
     52c:	9f ef       	ldi	r25, 0xFF	; 255
     52e:	c1 cf       	rjmp	.-126    	; 0x4b2 <fadeRainbowUpdate+0x114>
     530:	10 92 94 00 	sts	0x0094, r1
     534:	10 92 93 00 	sts	0x0093, r1
     538:	60 91 1d 01 	lds	r22, 0x011D
     53c:	70 91 1e 01 	lds	r23, 0x011E
     540:	80 91 1f 01 	lds	r24, 0x011F
     544:	7d d4       	rcall	.+2298   	; 0xe40 <hsv2rgb>
     546:	60 93 72 00 	sts	0x0072, r22
     54a:	70 93 73 00 	sts	0x0073, r23
     54e:	80 93 74 00 	sts	0x0074, r24
     552:	08 95       	ret

00000554 <blink>:
     554:	cf 93       	push	r28
     556:	df 93       	push	r29
     558:	20 91 93 00 	lds	r18, 0x0093
     55c:	30 91 94 00 	lds	r19, 0x0094
     560:	23 30       	cpi	r18, 0x03	; 3
     562:	31 05       	cpc	r19, r1
     564:	39 f4       	brne	.+14     	; 0x574 <blink+0x20>
     566:	20 91 2b 01 	lds	r18, 0x012B
     56a:	30 91 2c 01 	lds	r19, 0x012C
     56e:	28 17       	cp	r18, r24
     570:	39 07       	cpc	r19, r25
     572:	e1 f0       	breq	.+56     	; 0x5ac <blink+0x58>
     574:	ec 01       	movw	r28, r24
     576:	83 e0       	ldi	r24, 0x03	; 3
     578:	90 e0       	ldi	r25, 0x00	; 0
     57a:	90 93 94 00 	sts	0x0094, r25
     57e:	80 93 93 00 	sts	0x0093, r24
     582:	10 92 2a 01 	sts	0x012A, r1
     586:	d0 93 2c 01 	sts	0x012C, r29
     58a:	c0 93 2b 01 	sts	0x012B, r28
     58e:	82 dd       	rcall	.-1276   	; 0x94 <getTimer>
     590:	dc 01       	movw	r26, r24
     592:	cb 01       	movw	r24, r22
     594:	8c 0f       	add	r24, r28
     596:	9d 1f       	adc	r25, r29
     598:	a1 1d       	adc	r26, r1
     59a:	b1 1d       	adc	r27, r1
     59c:	80 93 2d 01 	sts	0x012D, r24
     5a0:	90 93 2e 01 	sts	0x012E, r25
     5a4:	a0 93 2f 01 	sts	0x012F, r26
     5a8:	b0 93 30 01 	sts	0x0130, r27
     5ac:	df 91       	pop	r29
     5ae:	cf 91       	pop	r28
     5b0:	08 95       	ret

000005b2 <blinkUpdate>:
     5b2:	cf 92       	push	r12
     5b4:	df 92       	push	r13
     5b6:	ef 92       	push	r14
     5b8:	ff 92       	push	r15
     5ba:	c0 90 2d 01 	lds	r12, 0x012D
     5be:	d0 90 2e 01 	lds	r13, 0x012E
     5c2:	e0 90 2f 01 	lds	r14, 0x012F
     5c6:	f0 90 30 01 	lds	r15, 0x0130
     5ca:	64 dd       	rcall	.-1336   	; 0x94 <getTimer>
     5cc:	c6 1a       	sub	r12, r22
     5ce:	d7 0a       	sbc	r13, r23
     5d0:	e8 0a       	sbc	r14, r24
     5d2:	f9 0a       	sbc	r15, r25
     5d4:	80 91 2b 01 	lds	r24, 0x012B
     5d8:	90 91 2c 01 	lds	r25, 0x012C
     5dc:	a0 e0       	ldi	r26, 0x00	; 0
     5de:	b0 e0       	ldi	r27, 0x00	; 0
     5e0:	8c 15       	cp	r24, r12
     5e2:	9d 05       	cpc	r25, r13
     5e4:	ae 05       	cpc	r26, r14
     5e6:	bf 05       	cpc	r27, r15
     5e8:	c0 f5       	brcc	.+112    	; 0x65a <blinkUpdate+0xa8>
     5ea:	80 91 2a 01 	lds	r24, 0x012A
     5ee:	88 23       	and	r24, r24
     5f0:	71 f0       	breq	.+28     	; 0x60e <blinkUpdate+0x5c>
     5f2:	20 91 75 00 	lds	r18, 0x0075
     5f6:	30 91 76 00 	lds	r19, 0x0076
     5fa:	40 91 77 00 	lds	r20, 0x0077
     5fe:	62 e0       	ldi	r22, 0x02	; 2
     600:	70 e0       	ldi	r23, 0x00	; 0
     602:	81 e0       	ldi	r24, 0x01	; 1
     604:	90 e0       	ldi	r25, 0x00	; 0
     606:	35 d5       	rcall	.+2666   	; 0x1072 <sendColor>
     608:	10 92 2a 01 	sts	0x012A, r1
     60c:	0e c0       	rjmp	.+28     	; 0x62a <blinkUpdate+0x78>
     60e:	20 91 72 00 	lds	r18, 0x0072
     612:	30 91 73 00 	lds	r19, 0x0073
     616:	40 91 74 00 	lds	r20, 0x0074
     61a:	62 e0       	ldi	r22, 0x02	; 2
     61c:	70 e0       	ldi	r23, 0x00	; 0
     61e:	81 e0       	ldi	r24, 0x01	; 1
     620:	90 e0       	ldi	r25, 0x00	; 0
     622:	27 d5       	rcall	.+2638   	; 0x1072 <sendColor>
     624:	81 e0       	ldi	r24, 0x01	; 1
     626:	80 93 2a 01 	sts	0x012A, r24
     62a:	20 91 2b 01 	lds	r18, 0x012B
     62e:	30 91 2c 01 	lds	r19, 0x012C
     632:	80 91 2d 01 	lds	r24, 0x012D
     636:	90 91 2e 01 	lds	r25, 0x012E
     63a:	a0 91 2f 01 	lds	r26, 0x012F
     63e:	b0 91 30 01 	lds	r27, 0x0130
     642:	82 0f       	add	r24, r18
     644:	93 1f       	adc	r25, r19
     646:	a1 1d       	adc	r26, r1
     648:	b1 1d       	adc	r27, r1
     64a:	80 93 2d 01 	sts	0x012D, r24
     64e:	90 93 2e 01 	sts	0x012E, r25
     652:	a0 93 2f 01 	sts	0x012F, r26
     656:	b0 93 30 01 	sts	0x0130, r27
     65a:	ff 90       	pop	r15
     65c:	ef 90       	pop	r14
     65e:	df 90       	pop	r13
     660:	cf 90       	pop	r12
     662:	08 95       	ret

00000664 <pulsingUpdate>:
     664:	60 91 35 01 	lds	r22, 0x0135
     668:	70 91 36 01 	lds	r23, 0x0136
     66c:	80 91 37 01 	lds	r24, 0x0137
     670:	e7 d3       	rcall	.+1998   	; 0xe40 <hsv2rgb>
     672:	60 93 72 00 	sts	0x0072, r22
     676:	70 93 73 00 	sts	0x0073, r23
     67a:	80 93 74 00 	sts	0x0074, r24
     67e:	20 91 72 00 	lds	r18, 0x0072
     682:	30 91 73 00 	lds	r19, 0x0073
     686:	40 91 74 00 	lds	r20, 0x0074
     68a:	62 e0       	ldi	r22, 0x02	; 2
     68c:	70 e0       	ldi	r23, 0x00	; 0
     68e:	81 e0       	ldi	r24, 0x01	; 1
     690:	90 e0       	ldi	r25, 0x00	; 0
     692:	ef d4       	rcall	.+2526   	; 0x1072 <sendColor>
     694:	20 91 39 01 	lds	r18, 0x0139
     698:	80 91 37 01 	lds	r24, 0x0137
     69c:	90 91 38 01 	lds	r25, 0x0138
     6a0:	22 23       	and	r18, r18
     6a2:	81 f0       	breq	.+32     	; 0x6c4 <pulsingUpdate+0x60>
     6a4:	40 91 34 01 	lds	r20, 0x0134
     6a8:	29 2f       	mov	r18, r25
     6aa:	30 e0       	ldi	r19, 0x00	; 0
     6ac:	28 0f       	add	r18, r24
     6ae:	31 1d       	adc	r19, r1
     6b0:	64 2f       	mov	r22, r20
     6b2:	70 e0       	ldi	r23, 0x00	; 0
     6b4:	26 17       	cp	r18, r22
     6b6:	37 07       	cpc	r19, r23
     6b8:	1c f0       	brlt	.+6      	; 0x6c0 <pulsingUpdate+0x5c>
     6ba:	10 92 39 01 	sts	0x0139, r1
     6be:	10 c0       	rjmp	.+32     	; 0x6e0 <pulsingUpdate+0x7c>
     6c0:	89 0f       	add	r24, r25
     6c2:	12 c0       	rjmp	.+36     	; 0x6e8 <pulsingUpdate+0x84>
     6c4:	40 91 33 01 	lds	r20, 0x0133
     6c8:	28 2f       	mov	r18, r24
     6ca:	30 e0       	ldi	r19, 0x00	; 0
     6cc:	29 1b       	sub	r18, r25
     6ce:	31 09       	sbc	r19, r1
     6d0:	64 2f       	mov	r22, r20
     6d2:	70 e0       	ldi	r23, 0x00	; 0
     6d4:	62 17       	cp	r22, r18
     6d6:	73 07       	cpc	r23, r19
     6d8:	34 f0       	brlt	.+12     	; 0x6e6 <pulsingUpdate+0x82>
     6da:	81 e0       	ldi	r24, 0x01	; 1
     6dc:	80 93 39 01 	sts	0x0139, r24
     6e0:	40 93 37 01 	sts	0x0137, r20
     6e4:	08 95       	ret
     6e6:	89 1b       	sub	r24, r25
     6e8:	80 93 37 01 	sts	0x0137, r24
     6ec:	08 95       	ret

000006ee <updateLed>:
     6ee:	80 91 93 00 	lds	r24, 0x0093
     6f2:	90 91 94 00 	lds	r25, 0x0094
     6f6:	82 30       	cpi	r24, 0x02	; 2
     6f8:	91 05       	cpc	r25, r1
     6fa:	c1 f0       	breq	.+48     	; 0x72c <updateLed+0x3e>
     6fc:	28 f4       	brcc	.+10     	; 0x708 <updateLed+0x1a>
     6fe:	00 97       	sbiw	r24, 0x00	; 0
     700:	49 f0       	breq	.+18     	; 0x714 <updateLed+0x26>
     702:	01 97       	sbiw	r24, 0x01	; 1
     704:	91 f0       	breq	.+36     	; 0x72a <updateLed+0x3c>
     706:	08 95       	ret
     708:	83 30       	cpi	r24, 0x03	; 3
     70a:	91 05       	cpc	r25, r1
     70c:	81 f0       	breq	.+32     	; 0x72e <updateLed+0x40>
     70e:	04 97       	sbiw	r24, 0x04	; 4
     710:	79 f0       	breq	.+30     	; 0x730 <updateLed+0x42>
     712:	08 95       	ret
     714:	20 91 72 00 	lds	r18, 0x0072
     718:	30 91 73 00 	lds	r19, 0x0073
     71c:	40 91 74 00 	lds	r20, 0x0074
     720:	62 e0       	ldi	r22, 0x02	; 2
     722:	70 e0       	ldi	r23, 0x00	; 0
     724:	81 e0       	ldi	r24, 0x01	; 1
     726:	90 e0       	ldi	r25, 0x00	; 0
     728:	a4 c4       	rjmp	.+2376   	; 0x1072 <sendColor>
     72a:	0a ce       	rjmp	.-1004   	; 0x340 <fadeUpdate>
     72c:	38 ce       	rjmp	.-912    	; 0x39e <fadeRainbowUpdate>
     72e:	41 cf       	rjmp	.-382    	; 0x5b2 <blinkUpdate>
     730:	99 cf       	rjmp	.-206    	; 0x664 <pulsingUpdate>

00000732 <__vector_9>:
     732:	1f 92       	push	r1
     734:	0f 92       	push	r0
     736:	0f b6       	in	r0, 0x3f	; 63
     738:	0f 92       	push	r0
     73a:	11 24       	eor	r1, r1
     73c:	cf 92       	push	r12
     73e:	df 92       	push	r13
     740:	ef 92       	push	r14
     742:	ff 92       	push	r15
     744:	0f 93       	push	r16
     746:	1f 93       	push	r17
     748:	2f 93       	push	r18
     74a:	3f 93       	push	r19
     74c:	4f 93       	push	r20
     74e:	5f 93       	push	r21
     750:	6f 93       	push	r22
     752:	7f 93       	push	r23
     754:	8f 93       	push	r24
     756:	9f 93       	push	r25
     758:	af 93       	push	r26
     75a:	bf 93       	push	r27
     75c:	ef 93       	push	r30
     75e:	ff 93       	push	r31
     760:	80 91 0e 01 	lds	r24, 0x010E
     764:	90 91 0f 01 	lds	r25, 0x010F
     768:	a0 91 10 01 	lds	r26, 0x0110
     76c:	b0 91 11 01 	lds	r27, 0x0111
     770:	01 96       	adiw	r24, 0x01	; 1
     772:	a1 1d       	adc	r26, r1
     774:	b1 1d       	adc	r27, r1
     776:	80 93 0e 01 	sts	0x010E, r24
     77a:	90 93 0f 01 	sts	0x010F, r25
     77e:	a0 93 10 01 	sts	0x0110, r26
     782:	b0 93 11 01 	sts	0x0111, r27
     786:	80 91 91 00 	lds	r24, 0x0091
     78a:	90 91 92 00 	lds	r25, 0x0092
     78e:	01 96       	adiw	r24, 0x01	; 1
     790:	90 93 92 00 	sts	0x0092, r25
     794:	80 93 91 00 	sts	0x0091, r24
     798:	20 91 91 00 	lds	r18, 0x0091
     79c:	30 91 92 00 	lds	r19, 0x0092
     7a0:	80 91 60 00 	lds	r24, 0x0060
     7a4:	90 91 61 00 	lds	r25, 0x0061
     7a8:	28 17       	cp	r18, r24
     7aa:	39 07       	cpc	r19, r25
     7ac:	48 f0       	brcs	.+18     	; 0x7c0 <__vector_9+0x8e>
     7ae:	e0 91 62 00 	lds	r30, 0x0062
     7b2:	f0 91 63 00 	lds	r31, 0x0063
     7b6:	09 95       	icall
     7b8:	10 92 92 00 	sts	0x0092, r1
     7bc:	10 92 91 00 	sts	0x0091, r1
     7c0:	80 91 66 00 	lds	r24, 0x0066
     7c4:	90 91 67 00 	lds	r25, 0x0067
     7c8:	81 30       	cpi	r24, 0x01	; 1
     7ca:	91 05       	cpc	r25, r1
     7cc:	09 f0       	breq	.+2      	; 0x7d0 <__vector_9+0x9e>
     7ce:	20 c1       	rjmp	.+576    	; 0xa10 <__vector_9+0x2de>
     7d0:	80 91 14 01 	lds	r24, 0x0114
     7d4:	88 23       	and	r24, r24
     7d6:	69 f0       	breq	.+26     	; 0x7f2 <__vector_9+0xc0>
     7d8:	e0 91 64 00 	lds	r30, 0x0064
     7dc:	f0 91 65 00 	lds	r31, 0x0065
     7e0:	09 95       	icall
     7e2:	84 e6       	ldi	r24, 0x64	; 100
     7e4:	90 e0       	ldi	r25, 0x00	; 0
     7e6:	90 93 71 00 	sts	0x0071, r25
     7ea:	80 93 70 00 	sts	0x0070, r24
     7ee:	10 92 14 01 	sts	0x0114, r1
     7f2:	80 91 8f 00 	lds	r24, 0x008F
     7f6:	8f 5f       	subi	r24, 0xFF	; 255
     7f8:	80 93 8f 00 	sts	0x008F, r24
     7fc:	90 91 8f 00 	lds	r25, 0x008F
     800:	80 91 8e 00 	lds	r24, 0x008E
     804:	88 0f       	add	r24, r24
     806:	88 0f       	add	r24, r24
     808:	88 0f       	add	r24, r24
     80a:	8c 5f       	subi	r24, 0xFC	; 252
     80c:	98 17       	cp	r25, r24
     80e:	50 f0       	brcs	.+20     	; 0x824 <__vector_9+0xf2>
     810:	10 92 8f 00 	sts	0x008F, r1
     814:	80 91 13 01 	lds	r24, 0x0113
     818:	81 11       	cpse	r24, r1
     81a:	04 c0       	rjmp	.+8      	; 0x824 <__vector_9+0xf2>
     81c:	80 91 12 01 	lds	r24, 0x0112
     820:	80 93 8e 00 	sts	0x008E, r24
     824:	80 91 8f 00 	lds	r24, 0x008F
     828:	85 30       	cpi	r24, 0x05	; 5
     82a:	19 f4       	brne	.+6      	; 0x832 <__vector_9+0x100>
     82c:	c2 9a       	sbi	0x18, 2	; 24
     82e:	ba 9a       	sbi	0x17, 2	; 23
     830:	cb c1       	rjmp	.+918    	; 0xbc8 <__vector_9+0x496>
     832:	80 91 8f 00 	lds	r24, 0x008F
     836:	87 30       	cpi	r24, 0x07	; 7
     838:	41 f4       	brne	.+16     	; 0x84a <__vector_9+0x118>
     83a:	80 91 13 01 	lds	r24, 0x0113
     83e:	82 30       	cpi	r24, 0x02	; 2
     840:	20 f0       	brcs	.+8      	; 0x84a <__vector_9+0x118>
     842:	c2 9a       	sbi	0x18, 2	; 24
     844:	ba 9a       	sbi	0x17, 2	; 23
     846:	81 e0       	ldi	r24, 0x01	; 1
     848:	1e c0       	rjmp	.+60     	; 0x886 <__vector_9+0x154>
     84a:	80 91 8f 00 	lds	r24, 0x008F
     84e:	89 30       	cpi	r24, 0x09	; 9
     850:	49 f4       	brne	.+18     	; 0x864 <__vector_9+0x132>
     852:	80 91 13 01 	lds	r24, 0x0113
     856:	81 30       	cpi	r24, 0x01	; 1
     858:	29 f4       	brne	.+10     	; 0x864 <__vector_9+0x132>
     85a:	c2 9a       	sbi	0x18, 2	; 24
     85c:	ba 9a       	sbi	0x17, 2	; 23
     85e:	10 92 13 01 	sts	0x0113, r1
     862:	b2 c1       	rjmp	.+868    	; 0xbc8 <__vector_9+0x496>
     864:	80 91 8e 00 	lds	r24, 0x008E
     868:	81 11       	cpse	r24, r1
     86a:	13 c0       	rjmp	.+38     	; 0x892 <__vector_9+0x160>
     86c:	80 91 13 01 	lds	r24, 0x0113
     870:	88 23       	and	r24, r24
     872:	79 f0       	breq	.+30     	; 0x892 <__vector_9+0x160>
     874:	80 91 8f 00 	lds	r24, 0x008F
     878:	80 ff       	sbrs	r24, 0
     87a:	08 c0       	rjmp	.+16     	; 0x88c <__vector_9+0x15a>
     87c:	c2 9a       	sbi	0x18, 2	; 24
     87e:	ba 9a       	sbi	0x17, 2	; 23
     880:	80 91 13 01 	lds	r24, 0x0113
     884:	81 50       	subi	r24, 0x01	; 1
     886:	80 93 13 01 	sts	0x0113, r24
     88a:	9e c1       	rjmp	.+828    	; 0xbc8 <__vector_9+0x496>
     88c:	ba 98       	cbi	0x17, 2	; 23
     88e:	c2 98       	cbi	0x18, 2	; 24
     890:	9b c1       	rjmp	.+822    	; 0xbc8 <__vector_9+0x496>
     892:	ba 98       	cbi	0x17, 2	; 23
     894:	c2 98       	cbi	0x18, 2	; 24
     896:	80 91 8d 00 	lds	r24, 0x008D
     89a:	88 23       	and	r24, r24
     89c:	49 f0       	breq	.+18     	; 0x8b0 <__vector_9+0x17e>
     89e:	80 91 99 00 	lds	r24, 0x0099
     8a2:	90 91 9a 00 	lds	r25, 0x009A
     8a6:	01 96       	adiw	r24, 0x01	; 1
     8a8:	90 93 9a 00 	sts	0x009A, r25
     8ac:	80 93 99 00 	sts	0x0099, r24
     8b0:	80 91 8c 00 	lds	r24, 0x008C
     8b4:	88 23       	and	r24, r24
     8b6:	49 f1       	breq	.+82     	; 0x90a <__vector_9+0x1d8>
     8b8:	80 91 97 00 	lds	r24, 0x0097
     8bc:	90 91 98 00 	lds	r25, 0x0098
     8c0:	01 96       	adiw	r24, 0x01	; 1
     8c2:	90 93 98 00 	sts	0x0098, r25
     8c6:	80 93 97 00 	sts	0x0097, r24
     8ca:	20 91 97 00 	lds	r18, 0x0097
     8ce:	30 91 98 00 	lds	r19, 0x0098
     8d2:	80 91 68 00 	lds	r24, 0x0068
     8d6:	90 91 69 00 	lds	r25, 0x0069
     8da:	28 17       	cp	r18, r24
     8dc:	39 07       	cpc	r19, r25
     8de:	a8 f0       	brcs	.+42     	; 0x90a <__vector_9+0x1d8>
     8e0:	80 91 8b 00 	lds	r24, 0x008B
     8e4:	82 30       	cpi	r24, 0x02	; 2
     8e6:	31 f0       	breq	.+12     	; 0x8f4 <__vector_9+0x1c2>
     8e8:	83 30       	cpi	r24, 0x03	; 3
     8ea:	31 f0       	breq	.+12     	; 0x8f8 <__vector_9+0x1c6>
     8ec:	81 30       	cpi	r24, 0x01	; 1
     8ee:	29 f4       	brne	.+10     	; 0x8fa <__vector_9+0x1c8>
     8f0:	bf db       	rcall	.-2178   	; 0x70 <buttonClicked>
     8f2:	03 c0       	rjmp	.+6      	; 0x8fa <__vector_9+0x1c8>
     8f4:	be db       	rcall	.-2180   	; 0x72 <buttonDoubleClicked>
     8f6:	01 c0       	rjmp	.+2      	; 0x8fa <__vector_9+0x1c8>
     8f8:	bd db       	rcall	.-2182   	; 0x74 <buttonTripleClicked>
     8fa:	10 92 8c 00 	sts	0x008C, r1
     8fe:	10 92 98 00 	sts	0x0098, r1
     902:	10 92 97 00 	sts	0x0097, r1
     906:	10 92 8b 00 	sts	0x008B, r1
     90a:	80 91 8f 00 	lds	r24, 0x008F
     90e:	85 30       	cpi	r24, 0x05	; 5
     910:	08 f0       	brcs	.+2      	; 0x914 <__vector_9+0x1e2>
     912:	5a c1       	rjmp	.+692    	; 0xbc8 <__vector_9+0x496>
     914:	80 91 70 00 	lds	r24, 0x0070
     918:	90 91 71 00 	lds	r25, 0x0071
     91c:	89 2b       	or	r24, r25
     91e:	09 f0       	breq	.+2      	; 0x922 <__vector_9+0x1f0>
     920:	53 c1       	rjmp	.+678    	; 0xbc8 <__vector_9+0x496>
     922:	b2 9b       	sbis	0x16, 2	; 22
     924:	3f c0       	rjmp	.+126    	; 0x9a4 <__vector_9+0x272>
     926:	80 91 8d 00 	lds	r24, 0x008D
     92a:	81 11       	cpse	r24, r1
     92c:	01 c0       	rjmp	.+2      	; 0x930 <__vector_9+0x1fe>
     92e:	a3 db       	rcall	.-2234   	; 0x76 <buttonPressed>
     930:	81 e0       	ldi	r24, 0x01	; 1
     932:	80 93 8d 00 	sts	0x008D, r24
     936:	80 93 8c 00 	sts	0x008C, r24
     93a:	80 91 0e 01 	lds	r24, 0x010E
     93e:	90 91 0f 01 	lds	r25, 0x010F
     942:	a0 91 10 01 	lds	r26, 0x0110
     946:	b0 91 11 01 	lds	r27, 0x0111
     94a:	80 93 a0 00 	sts	0x00A0, r24
     94e:	90 93 a1 00 	sts	0x00A1, r25
     952:	a0 93 a2 00 	sts	0x00A2, r26
     956:	b0 93 a3 00 	sts	0x00A3, r27
     95a:	80 91 0e 01 	lds	r24, 0x010E
     95e:	90 91 0f 01 	lds	r25, 0x010F
     962:	a0 91 10 01 	lds	r26, 0x0110
     966:	b0 91 11 01 	lds	r27, 0x0111
     96a:	80 93 9c 00 	sts	0x009C, r24
     96e:	90 93 9d 00 	sts	0x009D, r25
     972:	a0 93 9e 00 	sts	0x009E, r26
     976:	b0 93 9f 00 	sts	0x009F, r27
     97a:	20 91 99 00 	lds	r18, 0x0099
     97e:	30 91 9a 00 	lds	r19, 0x009A
     982:	80 91 6a 00 	lds	r24, 0x006A
     986:	90 91 6b 00 	lds	r25, 0x006B
     98a:	28 17       	cp	r18, r24
     98c:	39 07       	cpc	r19, r25
     98e:	28 f0       	brcs	.+10     	; 0x99a <__vector_9+0x268>
     990:	7d db       	rcall	.-2310   	; 0x8c <buttonLongPressed>
     992:	10 92 9a 00 	sts	0x009A, r1
     996:	10 92 99 00 	sts	0x0099, r1
     99a:	10 92 71 00 	sts	0x0071, r1
     99e:	10 92 70 00 	sts	0x0070, r1
     9a2:	12 c1       	rjmp	.+548    	; 0xbc8 <__vector_9+0x496>
     9a4:	80 91 8d 00 	lds	r24, 0x008D
     9a8:	88 23       	and	r24, r24
     9aa:	09 f4       	brne	.+2      	; 0x9ae <__vector_9+0x27c>
     9ac:	0d c1       	rjmp	.+538    	; 0xbc8 <__vector_9+0x496>
     9ae:	6d db       	rcall	.-2342   	; 0x8a <buttonReleased>
     9b0:	80 91 8b 00 	lds	r24, 0x008B
     9b4:	8f 5f       	subi	r24, 0xFF	; 255
     9b6:	80 93 8b 00 	sts	0x008B, r24
     9ba:	10 92 98 00 	sts	0x0098, r1
     9be:	10 92 97 00 	sts	0x0097, r1
     9c2:	80 91 0e 01 	lds	r24, 0x010E
     9c6:	90 91 0f 01 	lds	r25, 0x010F
     9ca:	a0 91 10 01 	lds	r26, 0x0110
     9ce:	b0 91 11 01 	lds	r27, 0x0111
     9d2:	80 93 a0 00 	sts	0x00A0, r24
     9d6:	90 93 a1 00 	sts	0x00A1, r25
     9da:	a0 93 a2 00 	sts	0x00A2, r26
     9de:	b0 93 a3 00 	sts	0x00A3, r27
     9e2:	80 91 0e 01 	lds	r24, 0x010E
     9e6:	90 91 0f 01 	lds	r25, 0x010F
     9ea:	a0 91 10 01 	lds	r26, 0x0110
     9ee:	b0 91 11 01 	lds	r27, 0x0111
     9f2:	80 93 9c 00 	sts	0x009C, r24
     9f6:	90 93 9d 00 	sts	0x009D, r25
     9fa:	a0 93 9e 00 	sts	0x009E, r26
     9fe:	b0 93 9f 00 	sts	0x009F, r27
     a02:	10 92 8d 00 	sts	0x008D, r1
     a06:	10 92 9a 00 	sts	0x009A, r1
     a0a:	10 92 99 00 	sts	0x0099, r1
     a0e:	dc c0       	rjmp	.+440    	; 0xbc8 <__vector_9+0x496>
     a10:	89 2b       	or	r24, r25
     a12:	09 f0       	breq	.+2      	; 0xa16 <__vector_9+0x2e4>
     a14:	d9 c0       	rjmp	.+434    	; 0xbc8 <__vector_9+0x496>
     a16:	40 91 0e 01 	lds	r20, 0x010E
     a1a:	50 91 0f 01 	lds	r21, 0x010F
     a1e:	60 91 10 01 	lds	r22, 0x0110
     a22:	70 91 11 01 	lds	r23, 0x0111
     a26:	00 91 9c 00 	lds	r16, 0x009C
     a2a:	10 91 9d 00 	lds	r17, 0x009D
     a2e:	20 91 9e 00 	lds	r18, 0x009E
     a32:	30 91 9f 00 	lds	r19, 0x009F
     a36:	80 91 0e 01 	lds	r24, 0x010E
     a3a:	90 91 0f 01 	lds	r25, 0x010F
     a3e:	a0 91 10 01 	lds	r26, 0x0110
     a42:	b0 91 11 01 	lds	r27, 0x0111
     a46:	c0 90 a4 00 	lds	r12, 0x00A4
     a4a:	d0 90 a5 00 	lds	r13, 0x00A5
     a4e:	e0 90 a6 00 	lds	r14, 0x00A6
     a52:	f0 90 a7 00 	lds	r15, 0x00A7
     a56:	8c 19       	sub	r24, r12
     a58:	9d 09       	sbc	r25, r13
     a5a:	ae 09       	sbc	r26, r14
     a5c:	bf 09       	sbc	r27, r15
     a5e:	40 1b       	sub	r20, r16
     a60:	51 0b       	sbc	r21, r17
     a62:	62 0b       	sbc	r22, r18
     a64:	73 0b       	sbc	r23, r19
     a66:	45 3f       	cpi	r20, 0xF5	; 245
     a68:	51 40       	sbci	r21, 0x01	; 1
     a6a:	61 05       	cpc	r22, r1
     a6c:	71 05       	cpc	r23, r1
     a6e:	d0 f0       	brcs	.+52     	; 0xaa4 <__vector_9+0x372>
     a70:	20 91 9b 00 	lds	r18, 0x009B
     a74:	21 11       	cpse	r18, r1
     a76:	16 c0       	rjmp	.+44     	; 0xaa4 <__vector_9+0x372>
     a78:	78 94       	sei
     a7a:	88 95       	sleep
     a7c:	f8 94       	cli
     a7e:	21 e0       	ldi	r18, 0x01	; 1
     a80:	20 93 9b 00 	sts	0x009B, r18
     a84:	40 91 0e 01 	lds	r20, 0x010E
     a88:	50 91 0f 01 	lds	r21, 0x010F
     a8c:	60 91 10 01 	lds	r22, 0x0110
     a90:	70 91 11 01 	lds	r23, 0x0111
     a94:	40 93 a0 00 	sts	0x00A0, r20
     a98:	50 93 a1 00 	sts	0x00A1, r21
     a9c:	60 93 a2 00 	sts	0x00A2, r22
     aa0:	70 93 a3 00 	sts	0x00A3, r23
     aa4:	20 91 9b 00 	lds	r18, 0x009B
     aa8:	21 30       	cpi	r18, 0x01	; 1
     aaa:	99 f4       	brne	.+38     	; 0xad2 <__vector_9+0x3a0>
     aac:	80 91 0e 01 	lds	r24, 0x010E
     ab0:	90 91 0f 01 	lds	r25, 0x010F
     ab4:	a0 91 10 01 	lds	r26, 0x0110
     ab8:	b0 91 11 01 	lds	r27, 0x0111
     abc:	80 93 a4 00 	sts	0x00A4, r24
     ac0:	90 93 a5 00 	sts	0x00A5, r25
     ac4:	a0 93 a6 00 	sts	0x00A6, r26
     ac8:	b0 93 a7 00 	sts	0x00A7, r27
     acc:	de 98       	cbi	0x1b, 6	; 27
     ace:	82 e0       	ldi	r24, 0x02	; 2
     ad0:	48 c0       	rjmp	.+144    	; 0xb62 <__vector_9+0x430>
     ad2:	20 91 9b 00 	lds	r18, 0x009B
     ad6:	22 30       	cpi	r18, 0x02	; 2
     ad8:	41 f4       	brne	.+16     	; 0xaea <__vector_9+0x3b8>
     ada:	8b 3f       	cpi	r24, 0xFB	; 251
     adc:	91 05       	cpc	r25, r1
     ade:	a1 05       	cpc	r26, r1
     ae0:	b1 05       	cpc	r27, r1
     ae2:	08 f4       	brcc	.+2      	; 0xae6 <__vector_9+0x3b4>
     ae4:	71 c0       	rjmp	.+226    	; 0xbc8 <__vector_9+0x496>
     ae6:	83 e0       	ldi	r24, 0x03	; 3
     ae8:	3c c0       	rjmp	.+120    	; 0xb62 <__vector_9+0x430>
     aea:	20 91 9b 00 	lds	r18, 0x009B
     aee:	23 30       	cpi	r18, 0x03	; 3
     af0:	f9 f4       	brne	.+62     	; 0xb30 <__vector_9+0x3fe>
     af2:	c2 9a       	sbi	0x18, 2	; 24
     af4:	ba 9a       	sbi	0x17, 2	; 23
     af6:	20 91 81 00 	lds	r18, 0x0081
     afa:	30 91 82 00 	lds	r19, 0x0082
     afe:	40 91 83 00 	lds	r20, 0x0083
     b02:	62 e0       	ldi	r22, 0x02	; 2
     b04:	70 e0       	ldi	r23, 0x00	; 0
     b06:	81 e0       	ldi	r24, 0x01	; 1
     b08:	90 e0       	ldi	r25, 0x00	; 0
     b0a:	b3 d2       	rcall	.+1382   	; 0x1072 <sendColor>
     b0c:	80 91 0e 01 	lds	r24, 0x010E
     b10:	90 91 0f 01 	lds	r25, 0x010F
     b14:	a0 91 10 01 	lds	r26, 0x0110
     b18:	b0 91 11 01 	lds	r27, 0x0111
     b1c:	80 93 a4 00 	sts	0x00A4, r24
     b20:	90 93 a5 00 	sts	0x00A5, r25
     b24:	a0 93 a6 00 	sts	0x00A6, r26
     b28:	b0 93 a7 00 	sts	0x00A7, r27
     b2c:	84 e0       	ldi	r24, 0x04	; 4
     b2e:	19 c0       	rjmp	.+50     	; 0xb62 <__vector_9+0x430>
     b30:	20 91 9b 00 	lds	r18, 0x009B
     b34:	24 30       	cpi	r18, 0x04	; 4
     b36:	21 f4       	brne	.+8      	; 0xb40 <__vector_9+0x40e>
     b38:	88 b3       	in	r24, 0x18	; 24
     b3a:	18 ba       	out	0x18, r1	; 24
     b3c:	85 e0       	ldi	r24, 0x05	; 5
     b3e:	11 c0       	rjmp	.+34     	; 0xb62 <__vector_9+0x430>
     b40:	20 91 9b 00 	lds	r18, 0x009B
     b44:	25 30       	cpi	r18, 0x05	; 5
     b46:	19 f4       	brne	.+6      	; 0xb4e <__vector_9+0x41c>
     b48:	c2 9a       	sbi	0x18, 2	; 24
     b4a:	86 e0       	ldi	r24, 0x06	; 6
     b4c:	0a c0       	rjmp	.+20     	; 0xb62 <__vector_9+0x430>
     b4e:	20 91 9b 00 	lds	r18, 0x009B
     b52:	26 30       	cpi	r18, 0x06	; 6
     b54:	49 f4       	brne	.+18     	; 0xb68 <__vector_9+0x436>
     b56:	85 3f       	cpi	r24, 0xF5	; 245
     b58:	91 40       	sbci	r25, 0x01	; 1
     b5a:	a1 05       	cpc	r26, r1
     b5c:	b1 05       	cpc	r27, r1
     b5e:	a0 f1       	brcs	.+104    	; 0xbc8 <__vector_9+0x496>
     b60:	87 e0       	ldi	r24, 0x07	; 7
     b62:	80 93 9b 00 	sts	0x009B, r24
     b66:	30 c0       	rjmp	.+96     	; 0xbc8 <__vector_9+0x496>
     b68:	80 91 9b 00 	lds	r24, 0x009B
     b6c:	87 30       	cpi	r24, 0x07	; 7
     b6e:	61 f5       	brne	.+88     	; 0xbc8 <__vector_9+0x496>
     b70:	80 91 0e 01 	lds	r24, 0x010E
     b74:	90 91 0f 01 	lds	r25, 0x010F
     b78:	a0 91 10 01 	lds	r26, 0x0110
     b7c:	b0 91 11 01 	lds	r27, 0x0111
     b80:	80 93 9c 00 	sts	0x009C, r24
     b84:	90 93 9d 00 	sts	0x009D, r25
     b88:	a0 93 9e 00 	sts	0x009E, r26
     b8c:	b0 93 9f 00 	sts	0x009F, r27
     b90:	80 91 0e 01 	lds	r24, 0x010E
     b94:	90 91 0f 01 	lds	r25, 0x010F
     b98:	a0 91 10 01 	lds	r26, 0x0110
     b9c:	b0 91 11 01 	lds	r27, 0x0111
     ba0:	80 93 a0 00 	sts	0x00A0, r24
     ba4:	90 93 a1 00 	sts	0x00A1, r25
     ba8:	a0 93 a2 00 	sts	0x00A2, r26
     bac:	b0 93 a3 00 	sts	0x00A3, r27
     bb0:	84 ef       	ldi	r24, 0xF4	; 244
     bb2:	91 e0       	ldi	r25, 0x01	; 1
     bb4:	90 93 71 00 	sts	0x0071, r25
     bb8:	80 93 70 00 	sts	0x0070, r24
     bbc:	81 e0       	ldi	r24, 0x01	; 1
     bbe:	90 e0       	ldi	r25, 0x00	; 0
     bc0:	90 93 67 00 	sts	0x0067, r25
     bc4:	80 93 66 00 	sts	0x0066, r24
     bc8:	ff 91       	pop	r31
     bca:	ef 91       	pop	r30
     bcc:	bf 91       	pop	r27
     bce:	af 91       	pop	r26
     bd0:	9f 91       	pop	r25
     bd2:	8f 91       	pop	r24
     bd4:	7f 91       	pop	r23
     bd6:	6f 91       	pop	r22
     bd8:	5f 91       	pop	r21
     bda:	4f 91       	pop	r20
     bdc:	3f 91       	pop	r19
     bde:	2f 91       	pop	r18
     be0:	1f 91       	pop	r17
     be2:	0f 91       	pop	r16
     be4:	ff 90       	pop	r15
     be6:	ef 90       	pop	r14
     be8:	df 90       	pop	r13
     bea:	cf 90       	pop	r12
     bec:	0f 90       	pop	r0
     bee:	0f be       	out	0x3f, r0	; 63
     bf0:	0f 90       	pop	r0
     bf2:	1f 90       	pop	r1
     bf4:	18 95       	reti

00000bf6 <__vector_3>:
     bf6:	1f 92       	push	r1
     bf8:	0f 92       	push	r0
     bfa:	0f b6       	in	r0, 0x3f	; 63
     bfc:	0f 92       	push	r0
     bfe:	11 24       	eor	r1, r1
     c00:	8f 93       	push	r24
     c02:	ba 99       	sbic	0x17, 2	; 23
     c04:	03 c0       	rjmp	.+6      	; 0xc0c <__vector_3+0x16>
     c06:	81 e0       	ldi	r24, 0x01	; 1
     c08:	80 93 9b 00 	sts	0x009B, r24
     c0c:	8f 91       	pop	r24
     c0e:	0f 90       	pop	r0
     c10:	0f be       	out	0x3f, r0	; 63
     c12:	0f 90       	pop	r0
     c14:	1f 90       	pop	r1
     c16:	18 95       	reti

00000c18 <__vector_2>:
     c18:	1f 92       	push	r1
     c1a:	0f 92       	push	r0
     c1c:	0f b6       	in	r0, 0x3f	; 63
     c1e:	0f 92       	push	r0
     c20:	11 24       	eor	r1, r1
     c22:	6f 92       	push	r6
     c24:	7f 92       	push	r7
     c26:	8f 92       	push	r8
     c28:	9f 92       	push	r9
     c2a:	af 92       	push	r10
     c2c:	bf 92       	push	r11
     c2e:	cf 92       	push	r12
     c30:	df 92       	push	r13
     c32:	ef 92       	push	r14
     c34:	ff 92       	push	r15
     c36:	0f 93       	push	r16
     c38:	1f 93       	push	r17
     c3a:	2f 93       	push	r18
     c3c:	3f 93       	push	r19
     c3e:	4f 93       	push	r20
     c40:	5f 93       	push	r21
     c42:	6f 93       	push	r22
     c44:	7f 93       	push	r23
     c46:	8f 93       	push	r24
     c48:	9f 93       	push	r25
     c4a:	af 93       	push	r26
     c4c:	bf 93       	push	r27
     c4e:	cf 93       	push	r28
     c50:	df 93       	push	r29
     c52:	ef 93       	push	r30
     c54:	ff 93       	push	r31
     c56:	69 b3       	in	r22, 0x19	; 25
     c58:	6f 73       	andi	r22, 0x3F	; 63
     c5a:	40 91 8a 00 	lds	r20, 0x008A
     c5e:	80 91 66 00 	lds	r24, 0x0066
     c62:	90 91 67 00 	lds	r25, 0x0067
     c66:	01 97       	sbiw	r24, 0x01	; 1
     c68:	09 f1       	breq	.+66     	; 0xcac <__vector_2+0x94>
     c6a:	60 93 8a 00 	sts	0x008A, r22
     c6e:	ff 91       	pop	r31
     c70:	ef 91       	pop	r30
     c72:	df 91       	pop	r29
     c74:	cf 91       	pop	r28
     c76:	bf 91       	pop	r27
     c78:	af 91       	pop	r26
     c7a:	9f 91       	pop	r25
     c7c:	8f 91       	pop	r24
     c7e:	7f 91       	pop	r23
     c80:	6f 91       	pop	r22
     c82:	5f 91       	pop	r21
     c84:	4f 91       	pop	r20
     c86:	3f 91       	pop	r19
     c88:	2f 91       	pop	r18
     c8a:	1f 91       	pop	r17
     c8c:	0f 91       	pop	r16
     c8e:	ff 90       	pop	r15
     c90:	ef 90       	pop	r14
     c92:	df 90       	pop	r13
     c94:	cf 90       	pop	r12
     c96:	bf 90       	pop	r11
     c98:	af 90       	pop	r10
     c9a:	9f 90       	pop	r9
     c9c:	8f 90       	pop	r8
     c9e:	7f 90       	pop	r7
     ca0:	6f 90       	pop	r6
     ca2:	0f 90       	pop	r0
     ca4:	0f be       	out	0x3f, r0	; 63
     ca6:	0f 90       	pop	r0
     ca8:	1f 90       	pop	r1
     caa:	18 95       	reti
     cac:	80 91 0e 01 	lds	r24, 0x010E
     cb0:	90 91 0f 01 	lds	r25, 0x010F
     cb4:	a0 91 10 01 	lds	r26, 0x0110
     cb8:	b0 91 11 01 	lds	r27, 0x0111
     cbc:	80 93 9c 00 	sts	0x009C, r24
     cc0:	90 93 9d 00 	sts	0x009D, r25
     cc4:	a0 93 9e 00 	sts	0x009E, r26
     cc8:	b0 93 9f 00 	sts	0x009F, r27
     ccc:	a4 e8       	ldi	r26, 0x84	; 132
     cce:	b0 e0       	ldi	r27, 0x00	; 0
     cd0:	20 e0       	ldi	r18, 0x00	; 0
     cd2:	30 e0       	ldi	r19, 0x00	; 0
     cd4:	40 95       	com	r20
     cd6:	46 23       	and	r20, r22
     cd8:	04 2e       	mov	r0, r20
     cda:	00 0c       	add	r0, r0
     cdc:	55 0b       	sbc	r21, r21
     cde:	77 24       	eor	r7, r7
     ce0:	73 94       	inc	r7
     ce2:	13 e0       	ldi	r17, 0x03	; 3
     ce4:	61 2e       	mov	r6, r17
     ce6:	ca 01       	movw	r24, r20
     ce8:	02 2e       	mov	r0, r18
     cea:	02 c0       	rjmp	.+4      	; 0xcf0 <__vector_2+0xd8>
     cec:	95 95       	asr	r25
     cee:	87 95       	ror	r24
     cf0:	0a 94       	dec	r0
     cf2:	e2 f7       	brpl	.-8      	; 0xcec <__vector_2+0xd4>
     cf4:	80 ff       	sbrs	r24, 0
     cf6:	86 c0       	rjmp	.+268    	; 0xe04 <__vector_2+0x1ec>
     cf8:	c0 90 0e 01 	lds	r12, 0x010E
     cfc:	d0 90 0f 01 	lds	r13, 0x010F
     d00:	e0 90 10 01 	lds	r14, 0x0110
     d04:	f0 90 11 01 	lds	r15, 0x0111
     d08:	f9 01       	movw	r30, r18
     d0a:	e8 55       	subi	r30, 0x58	; 88
     d0c:	ff 4f       	sbci	r31, 0xFF	; 255
     d0e:	70 81       	ld	r23, Z
     d10:	c9 01       	movw	r24, r18
     d12:	88 0f       	add	r24, r24
     d14:	99 1f       	adc	r25, r25
     d16:	88 0f       	add	r24, r24
     d18:	99 1f       	adc	r25, r25
     d1a:	8c 01       	movw	r16, r24
     d1c:	07 0f       	add	r16, r23
     d1e:	11 1d       	adc	r17, r1
     d20:	00 0f       	add	r16, r16
     d22:	11 1f       	adc	r17, r17
     d24:	00 0f       	add	r16, r16
     d26:	11 1f       	adc	r17, r17
     d28:	02 55       	subi	r16, 0x52	; 82
     d2a:	1f 4f       	sbci	r17, 0xFF	; 255
     d2c:	e8 01       	movw	r28, r16
     d2e:	88 80       	ld	r8, Y
     d30:	99 80       	ldd	r9, Y+1	; 0x01
     d32:	aa 80       	ldd	r10, Y+2	; 0x02
     d34:	bb 80       	ldd	r11, Y+3	; 0x03
     d36:	c8 18       	sub	r12, r8
     d38:	d9 08       	sbc	r13, r9
     d3a:	ea 08       	sbc	r14, r10
     d3c:	fb 08       	sbc	r15, r11
     d3e:	da e0       	ldi	r29, 0x0A	; 10
     d40:	cd 16       	cp	r12, r29
     d42:	d1 04       	cpc	r13, r1
     d44:	e1 04       	cpc	r14, r1
     d46:	f1 04       	cpc	r15, r1
     d48:	08 f0       	brcs	.+2      	; 0xd4c <__vector_2+0x134>
     d4a:	3f c0       	rjmp	.+126    	; 0xdca <__vector_2+0x1b2>
     d4c:	8c 91       	ld	r24, X
     d4e:	8f 5f       	subi	r24, 0xFF	; 255
     d50:	8c 93       	st	X, r24
     d52:	70 92 9b 00 	sts	0x009B, r7
     d56:	82 30       	cpi	r24, 0x02	; 2
     d58:	e1 f4       	brne	.+56     	; 0xd92 <__vector_2+0x17a>
     d5a:	80 91 70 00 	lds	r24, 0x0070
     d5e:	90 91 71 00 	lds	r25, 0x0071
     d62:	89 2b       	or	r24, r25
     d64:	09 f0       	breq	.+2      	; 0xd68 <__vector_2+0x150>
     d66:	4e c0       	rjmp	.+156    	; 0xe04 <__vector_2+0x1ec>
     d68:	70 92 14 01 	sts	0x0114, r7
     d6c:	60 92 13 01 	sts	0x0113, r6
     d70:	c0 90 0e 01 	lds	r12, 0x010E
     d74:	d0 90 0f 01 	lds	r13, 0x010F
     d78:	e0 90 10 01 	lds	r14, 0x0110
     d7c:	f0 90 11 01 	lds	r15, 0x0111
     d80:	c0 92 a0 00 	sts	0x00A0, r12
     d84:	d0 92 a1 00 	sts	0x00A1, r13
     d88:	e0 92 a2 00 	sts	0x00A2, r14
     d8c:	f0 92 a3 00 	sts	0x00A3, r15
     d90:	39 c0       	rjmp	.+114    	; 0xe04 <__vector_2+0x1ec>
     d92:	84 30       	cpi	r24, 0x04	; 4
     d94:	b8 f1       	brcs	.+110    	; 0xe04 <__vector_2+0x1ec>
     d96:	10 92 14 01 	sts	0x0114, r1
     d9a:	10 92 13 01 	sts	0x0113, r1
     d9e:	20 93 96 00 	sts	0x0096, r18
     da2:	80 e0       	ldi	r24, 0x00	; 0
     da4:	90 e0       	ldi	r25, 0x00	; 0
     da6:	e0 91 95 00 	lds	r30, 0x0095
     daa:	f0 e0       	ldi	r31, 0x00	; 0
     dac:	8e 17       	cp	r24, r30
     dae:	9f 07       	cpc	r25, r31
     db0:	4c f4       	brge	.+18     	; 0xdc4 <__vector_2+0x1ac>
     db2:	e0 91 15 01 	lds	r30, 0x0115
     db6:	f0 91 16 01 	lds	r31, 0x0116
     dba:	e8 0f       	add	r30, r24
     dbc:	f9 1f       	adc	r31, r25
     dbe:	10 82       	st	Z, r1
     dc0:	01 96       	adiw	r24, 0x01	; 1
     dc2:	f1 cf       	rjmp	.-30     	; 0xda6 <__vector_2+0x18e>
     dc4:	10 92 90 00 	sts	0x0090, r1
     dc8:	1d c0       	rjmp	.+58     	; 0xe04 <__vector_2+0x1ec>
     dca:	1c 92       	st	X, r1
     dcc:	70 81       	ld	r23, Z
     dce:	7f 5f       	subi	r23, 0xFF	; 255
     dd0:	70 83       	st	Z, r23
     dd2:	70 81       	ld	r23, Z
     dd4:	73 70       	andi	r23, 0x03	; 3
     dd6:	70 83       	st	Z, r23
     dd8:	70 81       	ld	r23, Z
     dda:	c0 90 0e 01 	lds	r12, 0x010E
     dde:	d0 90 0f 01 	lds	r13, 0x010F
     de2:	e0 90 10 01 	lds	r14, 0x0110
     de6:	f0 90 11 01 	lds	r15, 0x0111
     dea:	fc 01       	movw	r30, r24
     dec:	e7 0f       	add	r30, r23
     dee:	f1 1d       	adc	r31, r1
     df0:	ee 0f       	add	r30, r30
     df2:	ff 1f       	adc	r31, r31
     df4:	ee 0f       	add	r30, r30
     df6:	ff 1f       	adc	r31, r31
     df8:	e2 55       	subi	r30, 0x52	; 82
     dfa:	ff 4f       	sbci	r31, 0xFF	; 255
     dfc:	c0 82       	st	Z, r12
     dfe:	d1 82       	std	Z+1, r13	; 0x01
     e00:	e2 82       	std	Z+2, r14	; 0x02
     e02:	f3 82       	std	Z+3, r15	; 0x03
     e04:	2f 5f       	subi	r18, 0xFF	; 255
     e06:	3f 4f       	sbci	r19, 0xFF	; 255
     e08:	11 96       	adiw	r26, 0x01	; 1
     e0a:	26 30       	cpi	r18, 0x06	; 6
     e0c:	31 05       	cpc	r19, r1
     e0e:	09 f0       	breq	.+2      	; 0xe12 <__vector_2+0x1fa>
     e10:	6a cf       	rjmp	.-300    	; 0xce6 <__vector_2+0xce>
     e12:	2b cf       	rjmp	.-426    	; 0xc6a <__vector_2+0x52>

00000e14 <initIO>:
 */

#include "Inits.h"

void initIO(){//Set up pin directions, pull up/downs, overrides, pin change interrupts
	DDRA = POWER; //Set IR LED pin as output
     e14:	80 e4       	ldi	r24, 0x40	; 64
     e16:	8a bb       	out	0x1a, r24	; 26
	PORTA = 0x00; //No pull ups and POWER is set low
     e18:	1b ba       	out	0x1b, r1	; 27
	DDRB = LEDCLK|LEDDAT; //Set LED signals as outputs
     e1a:	83 e0       	ldi	r24, 0x03	; 3
     e1c:	87 bb       	out	0x17, r24	; 23
	PORTB = 0x00; //No pull ups and IR LED is low
     e1e:	18 ba       	out	0x18, r1	; 24
	PCMSK1 = BUTTON; //Mask out only the button for the pin change interrupt
     e20:	84 e0       	ldi	r24, 0x04	; 4
     e22:	80 bd       	out	0x20, r24	; 32
	PCMSK0 = 0x3F; //Mask out only the phototransistors for the pin change interrupt
     e24:	8f e3       	ldi	r24, 0x3F	; 63
     e26:	82 bb       	out	0x12, r24	; 18
	GIMSK = (1<<PCIE1)|(1<<PCIE0);//Enable Pin change interrupt for the button and Pin change interrupts for the phototransistors
     e28:	80 e3       	ldi	r24, 0x30	; 48
     e2a:	8b bf       	out	0x3b, r24	; 59
	PRR = (1<<PRTIM1)|(1<<PRUSI);//Disable unused modules
     e2c:	8a e0       	ldi	r24, 0x0A	; 10
     e2e:	80 b9       	out	0x00, r24	; 0
     e30:	08 95       	ret

00000e32 <initTimer>:
void setDirAll(){//make tile listen to all phototransistors
	PCMSK0 = 0x3F;
}

void initTimer(){//Set up global .1ms timer used for various protocols
	TCCR0A = (0<<COM0A1)|(0<<COM0A0)//OC0A Disconnected
     e32:	82 e0       	ldi	r24, 0x02	; 2
     e34:	80 bf       	out	0x30, r24	; 48
		|(0<<COM0B1)|(0<<COM0B0)//OC0B Disconnected
		|(1<<WGM01)|(0<<WGM00);//Clear timer on compare match
	TCCR0B = (0<<WGM02)
     e36:	83 bf       	out	0x33, r24	; 51
		|(0<<CS02)|(1<<CS01)|(0<<CS00);//ClkIO/8 (125kHz)
	OCR0A = 125; //125 cycles at 125kHZ = 1ms
     e38:	9d e7       	ldi	r25, 0x7D	; 125
     e3a:	96 bf       	out	0x36, r25	; 54
	TIMSK0 = (0<<OCIE0B)|(1<<OCIE0A)|(0<<TOIE0);//Only enable OC Match A interrupt
     e3c:	89 bf       	out	0x39, r24	; 57
     e3e:	08 95       	ret

00000e40 <hsv2rgb>:
const rgb blue = {0, 0, 0xff};
const rgb transmitColor = {0xff, 0x55, 0x00};
const rgb recieveColor = {0x00, 0xff, 0x55};
const rgb black = {0x00, 0x00, 0x00};

rgb hsv2rgb(hsv in){
     e40:	df 92       	push	r13
     e42:	ef 92       	push	r14
     e44:	ff 92       	push	r15
     e46:	0f 93       	push	r16
     e48:	1f 93       	push	r17
     e4a:	cf 93       	push	r28
     e4c:	df 93       	push	r29
     e4e:	28 2f       	mov	r18, r24
     e50:	08 2f       	mov	r16, r24
    rgb out;
    uint8_t region, p, q, t;
    uint16_t h, s, v, remainder;

    if (in.s == 0) {
     e52:	71 11       	cpse	r23, r1
     e54:	04 c0       	rjmp	.+8      	; 0xe5e <hsv2rgb+0x1e>
        out.r = in.v;
        out.g = in.v;
        out.b = in.v;
        return out;
     e56:	68 2f       	mov	r22, r24
     e58:	72 2f       	mov	r23, r18
     e5a:	82 2f       	mov	r24, r18
     e5c:	53 c0       	rjmp	.+166    	; 0xf04 <hsv2rgb+0xc4>
    }

    // 2* to transform our hue range from 127 to 255
    // converting to 16 bit to prevent overflow
    h = 2*in.h;
     e5e:	c6 2f       	mov	r28, r22
     e60:	cc 0f       	add	r28, r28
     e62:	dd 0b       	sbc	r29, r29
    s = in.s;
     e64:	e7 2f       	mov	r30, r23
     e66:	f0 e0       	ldi	r31, 0x00	; 0
    v = in.v;
     e68:	a8 2f       	mov	r26, r24
     e6a:	b0 e0       	ldi	r27, 0x00	; 0
    // in what region of the hue wheel this color is (there are 6 regions red, yellow, green, cyan, blue, and magenta)
    // since our value goes from 0 to 255, each reason will be equal 255/6=43
    // https://en.wikipedia.org/wiki/HSL_and_HSV#Hue_and_chroma
    region = (uint8_t)(h) / 43;
     e6c:	8c 2f       	mov	r24, r28
     e6e:	6b e2       	ldi	r22, 0x2B	; 43
     e70:	7c d1       	rcall	.+760    	; 0x116a <__udivmodqi4>
     e72:	48 2f       	mov	r20, r24
    remainder = (h - (region * 43)) * 6; 
     e74:	90 e0       	ldi	r25, 0x00	; 0
     e76:	65 ed       	ldi	r22, 0xD5	; 213
     e78:	7f ef       	ldi	r23, 0xFF	; 255
     e7a:	66 d1       	rcall	.+716    	; 0x1148 <__mulhi3>
     e7c:	8c 0f       	add	r24, r28
     e7e:	9d 1f       	adc	r25, r29
     e80:	66 e0       	ldi	r22, 0x06	; 6
     e82:	70 e0       	ldi	r23, 0x00	; 0
     e84:	61 d1       	rcall	.+706    	; 0x1148 <__mulhi3>
     e86:	7c 01       	movw	r14, r24

    p = (v * (255 - s)) >> 8;
     e88:	cf ef       	ldi	r28, 0xFF	; 255
     e8a:	d0 e0       	ldi	r29, 0x00	; 0
     e8c:	ce 01       	movw	r24, r28
     e8e:	8e 1b       	sub	r24, r30
     e90:	9f 0b       	sbc	r25, r31
     e92:	bd 01       	movw	r22, r26
     e94:	59 d1       	rcall	.+690    	; 0x1148 <__mulhi3>
     e96:	39 2f       	mov	r19, r25
     e98:	d9 2e       	mov	r13, r25
    q = (v * (255 - ((s * remainder) >> 8))) >> 8;
     e9a:	c7 01       	movw	r24, r14
     e9c:	bf 01       	movw	r22, r30
     e9e:	54 d1       	rcall	.+680    	; 0x1148 <__mulhi3>
     ea0:	69 2f       	mov	r22, r25
     ea2:	70 e0       	ldi	r23, 0x00	; 0
     ea4:	ce 01       	movw	r24, r28
     ea6:	86 1b       	sub	r24, r22
     ea8:	97 0b       	sbc	r25, r23
     eaa:	bd 01       	movw	r22, r26
     eac:	4d d1       	rcall	.+666    	; 0x1148 <__mulhi3>
     eae:	19 2f       	mov	r17, r25
    t = (v * (255 - ((s * (255 - remainder)) >> 8))) >> 8;
     eb0:	ce 01       	movw	r24, r28
     eb2:	8e 19       	sub	r24, r14
     eb4:	9f 09       	sbc	r25, r15
     eb6:	bf 01       	movw	r22, r30
     eb8:	47 d1       	rcall	.+654    	; 0x1148 <__mulhi3>
     eba:	69 2f       	mov	r22, r25
     ebc:	70 e0       	ldi	r23, 0x00	; 0
     ebe:	ce 01       	movw	r24, r28
     ec0:	86 1b       	sub	r24, r22
     ec2:	97 0b       	sbc	r25, r23
     ec4:	bd 01       	movw	r22, r26
     ec6:	40 d1       	rcall	.+640    	; 0x1148 <__mulhi3>

    // printf("region = %d, remainder = %d\n", region, remainder);
    // printf("p = %d, q = %d, t = %d \n", p, q, t);

    switch (region) {
     ec8:	42 30       	cpi	r20, 0x02	; 2
     eca:	79 f0       	breq	.+30     	; 0xeea <hsv2rgb+0xaa>
     ecc:	38 f4       	brcc	.+14     	; 0xedc <hsv2rgb+0x9c>
     ece:	44 23       	and	r20, r20
     ed0:	b1 f0       	breq	.+44     	; 0xefe <hsv2rgb+0xbe>
     ed2:	41 30       	cpi	r20, 0x01	; 1
     ed4:	91 f4       	brne	.+36     	; 0xefa <hsv2rgb+0xba>
        case 0:
            out.r = v; out.g = t; out.b = p;
            break;
        case 1:
            out.r = q; out.g = v; out.b = p;
     ed6:	92 2f       	mov	r25, r18
     ed8:	21 2f       	mov	r18, r17
     eda:	11 c0       	rjmp	.+34     	; 0xefe <hsv2rgb+0xbe>
    t = (v * (255 - ((s * (255 - remainder)) >> 8))) >> 8;

    // printf("region = %d, remainder = %d\n", region, remainder);
    // printf("p = %d, q = %d, t = %d \n", p, q, t);

    switch (region) {
     edc:	43 30       	cpi	r20, 0x03	; 3
     ede:	49 f0       	breq	.+18     	; 0xef2 <hsv2rgb+0xb2>
     ee0:	44 30       	cpi	r20, 0x04	; 4
     ee2:	59 f4       	brne	.+22     	; 0xefa <hsv2rgb+0xba>
            break;
        case 3:
            out.r = p; out.g = q; out.b = v;
            break;
        case 4:
            out.r = t; out.g = p; out.b = v;
     ee4:	29 2f       	mov	r18, r25
     ee6:	93 2f       	mov	r25, r19
     ee8:	06 c0       	rjmp	.+12     	; 0xef6 <hsv2rgb+0xb6>
            break;
        case 1:
            out.r = q; out.g = v; out.b = p;
            break;
        case 2:
            out.r = p; out.g = v; out.b = t;
     eea:	23 2f       	mov	r18, r19
     eec:	39 2f       	mov	r19, r25
     eee:	90 2f       	mov	r25, r16
            break;
     ef0:	06 c0       	rjmp	.+12     	; 0xefe <hsv2rgb+0xbe>
        case 3:
            out.r = p; out.g = q; out.b = v;
     ef2:	91 2f       	mov	r25, r17
     ef4:	23 2f       	mov	r18, r19
            break;
        case 4:
            out.r = t; out.g = p; out.b = v;
     ef6:	30 2f       	mov	r19, r16
            break;
     ef8:	02 c0       	rjmp	.+4      	; 0xefe <hsv2rgb+0xbe>
        default:
            out.r = v; out.g = p; out.b = q;
     efa:	9d 2d       	mov	r25, r13
     efc:	31 2f       	mov	r19, r17
            break;
    }

    return out;
     efe:	62 2f       	mov	r22, r18
     f00:	79 2f       	mov	r23, r25
     f02:	83 2f       	mov	r24, r19
}
     f04:	df 91       	pop	r29
     f06:	cf 91       	pop	r28
     f08:	1f 91       	pop	r17
     f0a:	0f 91       	pop	r16
     f0c:	ff 90       	pop	r15
     f0e:	ef 90       	pop	r14
     f10:	df 90       	pop	r13
     f12:	08 95       	ret

00000f14 <main>:
     f14:	e1 d8       	rcall	.-3646   	; 0xd8 <tileSetup>
     f16:	11 d1       	rcall	.+546    	; 0x113a <debugBlinkBlue>
     f18:	a0 d8       	rcall	.-3776   	; 0x5a <setup>
     f1a:	bc d8       	rcall	.-3720   	; 0x94 <getTimer>
     f1c:	60 93 57 01 	sts	0x0157, r22
     f20:	70 93 58 01 	sts	0x0158, r23
     f24:	80 93 59 01 	sts	0x0159, r24
     f28:	90 93 5a 01 	sts	0x015A, r25
     f2c:	c0 90 75 00 	lds	r12, 0x0075
     f30:	d0 90 76 00 	lds	r13, 0x0076
     f34:	e0 90 77 00 	lds	r14, 0x0077
     f38:	80 91 66 00 	lds	r24, 0x0066
     f3c:	90 91 67 00 	lds	r25, 0x0067
     f40:	81 30       	cpi	r24, 0x01	; 1
     f42:	91 05       	cpc	r25, r1
     f44:	e9 f7       	brne	.-6      	; 0xf40 <main+0x2c>
     f46:	a6 d8       	rcall	.-3764   	; 0x94 <getTimer>
     f48:	00 91 57 01 	lds	r16, 0x0157
     f4c:	10 91 58 01 	lds	r17, 0x0158
     f50:	20 91 59 01 	lds	r18, 0x0159
     f54:	30 91 5a 01 	lds	r19, 0x015A
     f58:	dc 01       	movw	r26, r24
     f5a:	cb 01       	movw	r24, r22
     f5c:	80 1b       	sub	r24, r16
     f5e:	91 0b       	sbc	r25, r17
     f60:	a2 0b       	sbc	r26, r18
     f62:	b3 0b       	sbc	r27, r19
     f64:	80 90 70 00 	lds	r8, 0x0070
     f68:	90 90 71 00 	lds	r9, 0x0071
     f6c:	09 2c       	mov	r0, r9
     f6e:	00 0c       	add	r0, r0
     f70:	aa 08       	sbc	r10, r10
     f72:	bb 08       	sbc	r11, r11
     f74:	88 16       	cp	r8, r24
     f76:	99 06       	cpc	r9, r25
     f78:	aa 06       	cpc	r10, r26
     f7a:	bb 06       	cpc	r11, r27
     f7c:	28 f4       	brcc	.+10     	; 0xf88 <main+0x74>
     f7e:	10 92 71 00 	sts	0x0071, r1
     f82:	10 92 70 00 	sts	0x0070, r1
     f86:	0a c0       	rjmp	.+20     	; 0xf9c <main+0x88>
     f88:	40 91 70 00 	lds	r20, 0x0070
     f8c:	50 91 71 00 	lds	r21, 0x0071
     f90:	48 1b       	sub	r20, r24
     f92:	59 0b       	sbc	r21, r25
     f94:	50 93 71 00 	sts	0x0071, r21
     f98:	40 93 70 00 	sts	0x0070, r20
     f9c:	0f 73       	andi	r16, 0x3F	; 63
     f9e:	01 32       	cpi	r16, 0x21	; 33
     fa0:	48 f4       	brcc	.+18     	; 0xfb4 <main+0xa0>
     fa2:	80 0f       	add	r24, r16
     fa4:	91 1d       	adc	r25, r1
     fa6:	a1 1d       	adc	r26, r1
     fa8:	b1 1d       	adc	r27, r1
     faa:	80 97       	sbiw	r24, 0x20	; 32
     fac:	a1 05       	cpc	r26, r1
     fae:	b1 05       	cpc	r27, r1
     fb0:	08 f0       	brcs	.+2      	; 0xfb4 <main+0xa0>
     fb2:	9d db       	rcall	.-2246   	; 0x6ee <updateLed>
     fb4:	6f d8       	rcall	.-3874   	; 0x94 <getTimer>
     fb6:	60 93 57 01 	sts	0x0157, r22
     fba:	70 93 58 01 	sts	0x0158, r23
     fbe:	80 93 59 01 	sts	0x0159, r24
     fc2:	90 93 5a 01 	sts	0x015A, r25
     fc6:	80 91 6c 00 	lds	r24, 0x006C
     fca:	90 91 6d 00 	lds	r25, 0x006D
     fce:	a0 91 6e 00 	lds	r26, 0x006E
     fd2:	b0 91 6f 00 	lds	r27, 0x006F
     fd6:	89 2b       	or	r24, r25
     fd8:	8a 2b       	or	r24, r26
     fda:	8b 2b       	or	r24, r27
     fdc:	b9 f1       	breq	.+110    	; 0x104c <main+0x138>
     fde:	5a d8       	rcall	.-3916   	; 0x94 <getTimer>
     fe0:	4b 01       	movw	r8, r22
     fe2:	5c 01       	movw	r10, r24
     fe4:	68 d8       	rcall	.-3888   	; 0xb6 <getSleepTimer>
     fe6:	68 15       	cp	r22, r8
     fe8:	79 05       	cpc	r23, r9
     fea:	8a 05       	cpc	r24, r10
     fec:	9b 05       	cpc	r25, r11
     fee:	3c f4       	brge	.+14     	; 0xffe <main+0xea>
     ff0:	24 01       	movw	r4, r8
     ff2:	35 01       	movw	r6, r10
     ff4:	46 1a       	sub	r4, r22
     ff6:	57 0a       	sbc	r5, r23
     ff8:	68 0a       	sbc	r6, r24
     ffa:	79 0a       	sbc	r7, r25
     ffc:	03 c0       	rjmp	.+6      	; 0x1004 <main+0xf0>
     ffe:	41 2c       	mov	r4, r1
    1000:	51 2c       	mov	r5, r1
    1002:	32 01       	movw	r6, r4
    1004:	00 91 6c 00 	lds	r16, 0x006C
    1008:	10 91 6d 00 	lds	r17, 0x006D
    100c:	20 91 6e 00 	lds	r18, 0x006E
    1010:	30 91 6f 00 	lds	r19, 0x006F
    1014:	04 15       	cp	r16, r4
    1016:	15 05       	cpc	r17, r5
    1018:	26 05       	cpc	r18, r6
    101a:	37 05       	cpc	r19, r7
    101c:	b8 f4       	brcc	.+46     	; 0x104c <main+0x138>
    101e:	68 15       	cp	r22, r8
    1020:	79 05       	cpc	r23, r9
    1022:	8a 05       	cpc	r24, r10
    1024:	9b 05       	cpc	r25, r11
    1026:	14 f4       	brge	.+4      	; 0x102c <main+0x118>
    1028:	81 d0       	rcall	.+258    	; 0x112c <debugBlinkGreen>
    102a:	01 c0       	rjmp	.+2      	; 0x102e <main+0x11a>
    102c:	78 d0       	rcall	.+240    	; 0x111e <debugBlinkRed>
    102e:	85 d0       	rcall	.+266    	; 0x113a <debugBlinkBlue>
    1030:	10 92 67 00 	sts	0x0067, r1
    1034:	10 92 66 00 	sts	0x0066, r1
    1038:	ba 98       	cbi	0x17, 2	; 23
    103a:	c2 98       	cbi	0x18, 2	; 24
    103c:	4e 2d       	mov	r20, r14
    103e:	96 01       	movw	r18, r12
    1040:	62 e0       	ldi	r22, 0x02	; 2
    1042:	81 e0       	ldi	r24, 0x01	; 1
    1044:	16 d0       	rcall	.+44     	; 0x1072 <sendColor>
    1046:	de 9a       	sbi	0x1b, 6	; 27
    1048:	10 92 9b 00 	sts	0x009B, r1
    104c:	10 d8       	rcall	.-4064   	; 0x6e <loop>
    104e:	74 cf       	rjmp	.-280    	; 0xf38 <main+0x24>

00001050 <sendByte>:

void setPort(volatile uint8_t* port){
}

//bit bangs an SPI signal to the specified pins of the given data
static void sendByte( uint8_t data){
    1050:	28 e0       	ldi	r18, 0x08	; 8
    1052:	30 e0       	ldi	r19, 0x00	; 0
    
    uint8_t bitmask = 0b10000000;
    1054:	90 e8       	ldi	r25, 0x80	; 128
    
    while (bitmask) {
        
        // Set the data pin
        
        if (data&bitmask) {
    1056:	49 2f       	mov	r20, r25
    1058:	48 23       	and	r20, r24
    105a:	11 f0       	breq	.+4      	; 0x1060 <sendByte+0x10>
            LEDPORT |= LEDDAT;
    105c:	c1 9a       	sbi	0x18, 1	; 24
    105e:	01 c0       	rjmp	.+2      	; 0x1062 <sendByte+0x12>
            } else {
            LEDPORT &= ~LEDDAT;
    1060:	c1 98       	cbi	0x18, 1	; 24
        }
        
        // strobe the clock pin
        
        LEDPORT |= LEDCLK;
    1062:	c0 9a       	sbi	0x18, 0	; 24
        LEDPORT &= ~LEDCLK;
    1064:	c0 98       	cbi	0x18, 0	; 24
        
        bitmask >>= 1;               // Walk to next bit
    1066:	96 95       	lsr	r25
    1068:	21 50       	subi	r18, 0x01	; 1
    106a:	31 09       	sbc	r19, r1
//bit bangs an SPI signal to the specified pins of the given data
static void sendByte( uint8_t data){
    
    uint8_t bitmask = 0b10000000;
    
    while (bitmask) {
    106c:	a1 f7       	brne	.-24     	; 0x1056 <sendByte+0x6>
        LEDPORT |= LEDCLK;
        LEDPORT &= ~LEDCLK;
        
        bitmask >>= 1;               // Walk to next bit
    }
 }    
    106e:	08 95       	ret

00001070 <setPort>:
#include <avr/interrupt.h>
#include "APA102C.h"

#include "Pins.h"

void setPort(volatile uint8_t* port){
    1070:	08 95       	ret

00001072 <sendColor>:
    }
 }    
 
//bit bangs an SPI signal to the specified pins that generates the specified color 
//	formatted for the APA102, provided as a byte array of R,G,B
void sendColor(uint8_t clkPin, uint8_t datPin,const rgb c){
    1072:	cf 93       	push	r28
    1074:	df 93       	push	r29
    1076:	00 d0       	rcall	.+0      	; 0x1078 <sendColor+0x6>
    1078:	1f 92       	push	r1
    107a:	cd b7       	in	r28, 0x3d	; 61
    107c:	de b7       	in	r29, 0x3e	; 62
	//Start Frame
	sendByte( 0x00);
    107e:	80 e0       	ldi	r24, 0x00	; 0
    1080:	2b 83       	std	Y+3, r18	; 0x03
    1082:	3a 83       	std	Y+2, r19	; 0x02
    1084:	49 83       	std	Y+1, r20	; 0x01
    1086:	e4 df       	rcall	.-56     	; 0x1050 <sendByte>
	sendByte( 0x00);
    1088:	80 e0       	ldi	r24, 0x00	; 0
    108a:	e2 df       	rcall	.-60     	; 0x1050 <sendByte>
	sendByte( 0x00);
    108c:	80 e0       	ldi	r24, 0x00	; 0
    108e:	e0 df       	rcall	.-64     	; 0x1050 <sendByte>
	sendByte( 0x00);
    1090:	80 e0       	ldi	r24, 0x00	; 0
    1092:	de df       	rcall	.-68     	; 0x1050 <sendByte>
	//Data
	sendByte( 0xE1);//Set brightness to current to minimum TODO: Add setBrightness function (0xE1...0xFF)
    1094:	81 ee       	ldi	r24, 0xE1	; 225
    1096:	dc df       	rcall	.-72     	; 0x1050 <sendByte>
	sendByte( c.b);
    1098:	49 81       	ldd	r20, Y+1	; 0x01
    109a:	84 2f       	mov	r24, r20
    109c:	d9 df       	rcall	.-78     	; 0x1050 <sendByte>
	sendByte( c.g);
    109e:	3a 81       	ldd	r19, Y+2	; 0x02
    10a0:	83 2f       	mov	r24, r19
    10a2:	d6 df       	rcall	.-84     	; 0x1050 <sendByte>
	sendByte( c.r);
    10a4:	2b 81       	ldd	r18, Y+3	; 0x03
    10a6:	82 2f       	mov	r24, r18
}
    10a8:	0f 90       	pop	r0
    10aa:	0f 90       	pop	r0
    10ac:	0f 90       	pop	r0
    10ae:	df 91       	pop	r29
    10b0:	cf 91       	pop	r28
	sendByte( 0x00);
	//Data
	sendByte( 0xE1);//Set brightness to current to minimum TODO: Add setBrightness function (0xE1...0xFF)
	sendByte( c.b);
	sendByte( c.g);
	sendByte( c.r);
    10b2:	ce cf       	rjmp	.-100    	; 0x1050 <sendByte>

000010b4 <debugBlinkColor>:

void debugBlinkBlue(void){
	debugBlinkColor(blue);
}

void debugBlinkColor(const rgb c){
    10b4:	6f 92       	push	r6
    10b6:	7f 92       	push	r7
    10b8:	8f 92       	push	r8
    10ba:	cf 92       	push	r12
    10bc:	df 92       	push	r13
    10be:	ef 92       	push	r14
    10c0:	cf 93       	push	r28
    10c2:	6b 01       	movw	r12, r22
    10c4:	e8 2e       	mov	r14, r24
	uint8_t i=4;
	while (i--) {
    10c6:	c5 e0       	ldi	r28, 0x05	; 5
		sendColor(LEDCLK, LEDDAT, c);
		_delay_ms(100);
		sendColor(LEDCLK, LEDDAT, black);
    10c8:	60 90 75 00 	lds	r6, 0x0075
    10cc:	70 90 76 00 	lds	r7, 0x0076
    10d0:	80 90 77 00 	lds	r8, 0x0077
    10d4:	c1 50       	subi	r28, 0x01	; 1
	debugBlinkColor(blue);
}

void debugBlinkColor(const rgb c){
	uint8_t i=4;
	while (i--) {
    10d6:	d9 f0       	breq	.+54     	; 0x110e <debugBlinkColor+0x5a>
		sendColor(LEDCLK, LEDDAT, c);
    10d8:	4e 2d       	mov	r20, r14
    10da:	96 01       	movw	r18, r12
    10dc:	62 e0       	ldi	r22, 0x02	; 2
    10de:	70 e0       	ldi	r23, 0x00	; 0
    10e0:	81 e0       	ldi	r24, 0x01	; 1
    10e2:	90 e0       	ldi	r25, 0x00	; 0
    10e4:	c6 df       	rcall	.-116    	; 0x1072 <sendColor>
	#else
		//round up by default
		__ticks_dc = (uint32_t)(ceil(fabs(__tmp)));
	#endif

	__builtin_avr_delay_cycles(__ticks_dc);
    10e6:	87 ea       	ldi	r24, 0xA7	; 167
    10e8:	91 e6       	ldi	r25, 0x61	; 97
    10ea:	01 97       	sbiw	r24, 0x01	; 1
    10ec:	f1 f7       	brne	.-4      	; 0x10ea <debugBlinkColor+0x36>
    10ee:	00 c0       	rjmp	.+0      	; 0x10f0 <debugBlinkColor+0x3c>
    10f0:	00 00       	nop
		_delay_ms(100);
		sendColor(LEDCLK, LEDDAT, black);
    10f2:	48 2d       	mov	r20, r8
    10f4:	93 01       	movw	r18, r6
    10f6:	62 e0       	ldi	r22, 0x02	; 2
    10f8:	70 e0       	ldi	r23, 0x00	; 0
    10fa:	81 e0       	ldi	r24, 0x01	; 1
    10fc:	90 e0       	ldi	r25, 0x00	; 0
    10fe:	b9 df       	rcall	.-142    	; 0x1072 <sendColor>
    1100:	87 ea       	ldi	r24, 0xA7	; 167
    1102:	91 e6       	ldi	r25, 0x61	; 97
    1104:	01 97       	sbiw	r24, 0x01	; 1
    1106:	f1 f7       	brne	.-4      	; 0x1104 <debugBlinkColor+0x50>
    1108:	00 c0       	rjmp	.+0      	; 0x110a <debugBlinkColor+0x56>
    110a:	00 00       	nop
    110c:	e3 cf       	rjmp	.-58     	; 0x10d4 <debugBlinkColor+0x20>
		_delay_ms(100);	
	}
    110e:	cf 91       	pop	r28
    1110:	ef 90       	pop	r14
    1112:	df 90       	pop	r13
    1114:	cf 90       	pop	r12
    1116:	8f 90       	pop	r8
    1118:	7f 90       	pop	r7
    111a:	6f 90       	pop	r6
    111c:	08 95       	ret

0000111e <debugBlinkRed>:
#include "color.h"
#include "Pins.h"
#include "avr/delay.h"

void debugBlinkRed(void){
	debugBlinkColor(red);
    111e:	60 91 7e 00 	lds	r22, 0x007E
    1122:	70 91 7f 00 	lds	r23, 0x007F
    1126:	80 91 80 00 	lds	r24, 0x0080
    112a:	c4 cf       	rjmp	.-120    	; 0x10b4 <debugBlinkColor>

0000112c <debugBlinkGreen>:
}

void debugBlinkGreen(void){
	debugBlinkColor(green);
    112c:	60 91 7b 00 	lds	r22, 0x007B
    1130:	70 91 7c 00 	lds	r23, 0x007C
    1134:	80 91 7d 00 	lds	r24, 0x007D
    1138:	bd cf       	rjmp	.-134    	; 0x10b4 <debugBlinkColor>

0000113a <debugBlinkBlue>:
}

void debugBlinkBlue(void){
	debugBlinkColor(blue);
    113a:	60 91 78 00 	lds	r22, 0x0078
    113e:	70 91 79 00 	lds	r23, 0x0079
    1142:	80 91 7a 00 	lds	r24, 0x007A
    1146:	b6 cf       	rjmp	.-148    	; 0x10b4 <debugBlinkColor>

00001148 <__mulhi3>:
    1148:	00 24       	eor	r0, r0
    114a:	55 27       	eor	r21, r21
    114c:	04 c0       	rjmp	.+8      	; 0x1156 <__mulhi3+0xe>
    114e:	08 0e       	add	r0, r24
    1150:	59 1f       	adc	r21, r25
    1152:	88 0f       	add	r24, r24
    1154:	99 1f       	adc	r25, r25
    1156:	00 97       	sbiw	r24, 0x00	; 0
    1158:	29 f0       	breq	.+10     	; 0x1164 <__mulhi3+0x1c>
    115a:	76 95       	lsr	r23
    115c:	67 95       	ror	r22
    115e:	b8 f3       	brcs	.-18     	; 0x114e <__mulhi3+0x6>
    1160:	71 05       	cpc	r23, r1
    1162:	b9 f7       	brne	.-18     	; 0x1152 <__mulhi3+0xa>
    1164:	80 2d       	mov	r24, r0
    1166:	95 2f       	mov	r25, r21
    1168:	08 95       	ret

0000116a <__udivmodqi4>:
    116a:	99 1b       	sub	r25, r25
    116c:	79 e0       	ldi	r23, 0x09	; 9
    116e:	04 c0       	rjmp	.+8      	; 0x1178 <__udivmodqi4_ep>

00001170 <__udivmodqi4_loop>:
    1170:	99 1f       	adc	r25, r25
    1172:	96 17       	cp	r25, r22
    1174:	08 f0       	brcs	.+2      	; 0x1178 <__udivmodqi4_ep>
    1176:	96 1b       	sub	r25, r22

00001178 <__udivmodqi4_ep>:
    1178:	88 1f       	adc	r24, r24
    117a:	7a 95       	dec	r23
    117c:	c9 f7       	brne	.-14     	; 0x1170 <__udivmodqi4_loop>
    117e:	80 95       	com	r24
    1180:	08 95       	ret

00001182 <__udivmodhi4>:
    1182:	aa 1b       	sub	r26, r26
    1184:	bb 1b       	sub	r27, r27
    1186:	51 e1       	ldi	r21, 0x11	; 17
    1188:	07 c0       	rjmp	.+14     	; 0x1198 <__udivmodhi4_ep>

0000118a <__udivmodhi4_loop>:
    118a:	aa 1f       	adc	r26, r26
    118c:	bb 1f       	adc	r27, r27
    118e:	a6 17       	cp	r26, r22
    1190:	b7 07       	cpc	r27, r23
    1192:	10 f0       	brcs	.+4      	; 0x1198 <__udivmodhi4_ep>
    1194:	a6 1b       	sub	r26, r22
    1196:	b7 0b       	sbc	r27, r23

00001198 <__udivmodhi4_ep>:
    1198:	88 1f       	adc	r24, r24
    119a:	99 1f       	adc	r25, r25
    119c:	5a 95       	dec	r21
    119e:	a9 f7       	brne	.-22     	; 0x118a <__udivmodhi4_loop>
    11a0:	80 95       	com	r24
    11a2:	90 95       	com	r25
    11a4:	bc 01       	movw	r22, r24
    11a6:	cd 01       	movw	r24, r26
    11a8:	08 95       	ret

000011aa <__divmodhi4>:
    11aa:	97 fb       	bst	r25, 7
    11ac:	07 2e       	mov	r0, r23
    11ae:	16 f4       	brtc	.+4      	; 0x11b4 <__divmodhi4+0xa>
    11b0:	00 94       	com	r0
    11b2:	06 d0       	rcall	.+12     	; 0x11c0 <__divmodhi4_neg1>
    11b4:	77 fd       	sbrc	r23, 7
    11b6:	08 d0       	rcall	.+16     	; 0x11c8 <__divmodhi4_neg2>
    11b8:	e4 df       	rcall	.-56     	; 0x1182 <__udivmodhi4>
    11ba:	07 fc       	sbrc	r0, 7
    11bc:	05 d0       	rcall	.+10     	; 0x11c8 <__divmodhi4_neg2>
    11be:	3e f4       	brtc	.+14     	; 0x11ce <__divmodhi4_exit>

000011c0 <__divmodhi4_neg1>:
    11c0:	90 95       	com	r25
    11c2:	81 95       	neg	r24
    11c4:	9f 4f       	sbci	r25, 0xFF	; 255
    11c6:	08 95       	ret

000011c8 <__divmodhi4_neg2>:
    11c8:	70 95       	com	r23
    11ca:	61 95       	neg	r22
    11cc:	7f 4f       	sbci	r23, 0xFF	; 255

000011ce <__divmodhi4_exit>:
    11ce:	08 95       	ret

000011d0 <_exit>:
    11d0:	f8 94       	cli

000011d2 <__stop_program>:
    11d2:	ff cf       	rjmp	.-2      	; 0x11d2 <__stop_program>

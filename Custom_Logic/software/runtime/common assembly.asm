addi x9,x0,12
addi x8,x0,11
addi x7,x0,10
addi x6,x0,9
addi x15,x0,1
addi x16,x0,0
addi x20,x0,9
li x17,0x8C000120
li x4,0x8C000000
sd x9,0x0(x4)
sd x8,0x8(x4)
sd x7,0x10(x4)
sd x6,0x18(x4)
ld x11,0x0(x4)
ld x12,0x8(x4)
ld x13,0x10(x4)
ld x14,0x18(x4)
beq x11,x9,jump
jal exit
jump:
beq x8,x12,jump1
jal exit
jump1:
beq x7,x13,jump2
jal exit
jump2:
beq x6,x14,jump3
jal exit
jump3:
sd x20,0x0(x17)
jal end
exit:
sd x1,0x0(x17)
end:
li x4 0x88000000
li x5 0xE
sw x5 0x4(x4)

rep:
jal rep

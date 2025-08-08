@ .global _start
@ _start:
@     ldr r0,=0x020c406c
@     ldr r1,=0x0c000000
@     str r1,[r0]

@     ldr r0,=0x020e0068
@     ldr r1,=0x00000005
@     str r1,[r0]

@     ldr r0,=0x020e02f4
@     ldr r1,=0x000010b0
@     str r1,[r0]

@     //GPIO_GDIR用于控制引脚输出输入
@     ldr r0,=0x0209c004
@     ldr r1,=0x00000008
@     str r1,[r0]

@     //GPIO_DR用于控制引脚高低电平
@     ldr r0,=0x0209c000
@     ldr r1,=0x00000000
@     str r1,[r0]

@ loop:
@     b loop


.global _start
_start:
    ldr r0,=0x020c4068
    ldr r1,=0xffffffff
    str r1,[r0]
    ldr r0,=0x020c406c
    str r1,[r0]
    ldr r0,=0x020c4070
    str r1,[r0]
    ldr r0,=0x020c4074
    str r1,[r0]
    ldr r0,=0x020c4078
    str r1,[r0]
    ldr r0,=0x020c407c
    str r1,[r0]
    ldr r0,=0x020c4080
    str r1,[r0]

    @ 配置 GPIO_IO03PIN
    ldr r0,=0x020e0068
    ldr r1,=0x5
    str r1,[r0]

    @配置电气属性
    ldr r0,=0x020e02f4
    ldr r1,=0x10b0
    str r1,[r0]

    @设置GPIO
    ldr r0,=0x0209c004
    ldr r1,=0x8
    str r1,[r0]

    @打开led
    ldr r0,=0x0209c000
    ldr r1,=0x0
    str r1,[r0]

loop:
    b loop

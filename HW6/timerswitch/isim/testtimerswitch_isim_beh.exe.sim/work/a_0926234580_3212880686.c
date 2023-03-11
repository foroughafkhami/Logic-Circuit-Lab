/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/finalsix/timerswitch/timerswitch.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0926234580_3212880686_p_0(char *t0)
{
    char t8[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1632U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4376);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1992U);
    t9 = *((char **)t4);
    t4 = (t0 + 6684U);
    t10 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t8, t9, t4, 1);
    t11 = (t8 + 12U);
    t12 = *((unsigned int *)t11);
    t13 = (1U * t12);
    t14 = (7U != t13);
    if (t14 == 1)
        goto LAB8;

LAB9:    t15 = (t0 + 4504);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 7U);
    xsi_driver_first_trans_fast(t15);
    goto LAB3;

LAB5:    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_size_not_matching(7U, t13, 0);
    goto LAB9;

}

static void work_a_0926234580_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (6 - 6);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4568);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_delta(t8, 0U, 1, 0LL);

LAB2:    t13 = (t0 + 4392);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0926234580_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (5 - 6);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4632);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_delta(t8, 1U, 1, 0LL);

LAB2:    t13 = (t0 + 4408);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0926234580_3212880686_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned char t24;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned char t31;
    unsigned char t32;
    char *t33;
    char *t34;
    int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned char t39;
    unsigned char t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned char t47;
    char *t48;
    char *t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned char t54;
    unsigned char t55;
    char *t56;
    char *t57;
    int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned char t62;
    unsigned char t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;

LAB0:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t4 = (0 - 1);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (t8 == (unsigned char)2);
    if (t9 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t25 = (t0 + 2152U);
    t26 = *((char **)t25);
    t27 = (0 - 1);
    t28 = (t27 * -1);
    t29 = (1U * t28);
    t30 = (0 + t29);
    t25 = (t26 + t30);
    t31 = *((unsigned char *)t25);
    t32 = (t31 == (unsigned char)3);
    if (t32 == 1)
        goto LAB10;

LAB11:    t24 = (unsigned char)0;

LAB12:    if (t24 != 0)
        goto LAB8;

LAB9:    t48 = (t0 + 2152U);
    t49 = *((char **)t48);
    t50 = (0 - 1);
    t51 = (t50 * -1);
    t52 = (1U * t51);
    t53 = (0 + t52);
    t48 = (t49 + t53);
    t54 = *((unsigned char *)t48);
    t55 = (t54 == (unsigned char)2);
    if (t55 == 1)
        goto LAB15;

LAB16:    t47 = (unsigned char)0;

LAB17:    if (t47 != 0)
        goto LAB13;

LAB14:
LAB18:    t70 = (t0 + 1512U);
    t71 = *((char **)t70);
    t70 = (t0 + 4696);
    t72 = (t70 + 56U);
    t73 = *((char **)t72);
    t74 = (t73 + 56U);
    t75 = *((char **)t74);
    memcpy(t75, t71, 4U);
    xsi_driver_first_trans_fast_port(t70);

LAB2:    t76 = (t0 + 4424);
    *((int *)t76) = 1;

LAB1:    return;
LAB3:    t18 = (t0 + 1032U);
    t19 = *((char **)t18);
    t18 = (t0 + 4696);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t19, 4U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB2;

LAB5:    t10 = (t0 + 2152U);
    t11 = *((char **)t10);
    t12 = (1 - 1);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t16 = *((unsigned char *)t10);
    t17 = (t16 == (unsigned char)2);
    t1 = t17;
    goto LAB7;

LAB8:    t41 = (t0 + 1192U);
    t42 = *((char **)t41);
    t41 = (t0 + 4696);
    t43 = (t41 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memcpy(t46, t42, 4U);
    xsi_driver_first_trans_fast_port(t41);
    goto LAB2;

LAB10:    t33 = (t0 + 2152U);
    t34 = *((char **)t33);
    t35 = (1 - 1);
    t36 = (t35 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t33 = (t34 + t38);
    t39 = *((unsigned char *)t33);
    t40 = (t39 == (unsigned char)2);
    t24 = t40;
    goto LAB12;

LAB13:    t64 = (t0 + 1352U);
    t65 = *((char **)t64);
    t64 = (t0 + 4696);
    t66 = (t64 + 56U);
    t67 = *((char **)t66);
    t68 = (t67 + 56U);
    t69 = *((char **)t68);
    memcpy(t69, t65, 4U);
    xsi_driver_first_trans_fast_port(t64);
    goto LAB2;

LAB15:    t56 = (t0 + 2152U);
    t57 = *((char **)t56);
    t58 = (1 - 1);
    t59 = (t58 * -1);
    t60 = (1U * t59);
    t61 = (0 + t60);
    t56 = (t57 + t61);
    t62 = *((unsigned char *)t56);
    t63 = (t62 == (unsigned char)3);
    t47 = t63;
    goto LAB17;

LAB19:    goto LAB2;

}


extern void work_a_0926234580_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0926234580_3212880686_p_0,(void *)work_a_0926234580_3212880686_p_1,(void *)work_a_0926234580_3212880686_p_2,(void *)work_a_0926234580_3212880686_p_3};
	xsi_register_didat("work_a_0926234580_3212880686", "isim/testtimerswitch_isim_beh.exe.sim/work/a_0926234580_3212880686.didat");
	xsi_register_executes(pe);
}

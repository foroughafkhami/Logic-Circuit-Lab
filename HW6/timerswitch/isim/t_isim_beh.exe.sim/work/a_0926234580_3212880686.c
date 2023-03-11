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

char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );


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

LAB0:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1632U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4128);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 1992U);
    t9 = *((char **)t4);
    t4 = (t0 + 6308U);
    t10 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t8, t9, t4, (unsigned char)3);
    t11 = (t8 + 12U);
    t12 = *((unsigned int *)t11);
    t13 = (1U * t12);
    t14 = (7U != t13);
    if (t14 == 1)
        goto LAB8;

LAB9:    t15 = (t0 + 4240);
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
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(56, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (6 - 6);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 4304);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 4144);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0926234580_3212880686_p_2(char *t0)
{
    char t5[16];
    char t20[16];
    char t34[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t21;
    char *t22;
    int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t35;
    char *t36;
    int t37;
    unsigned char t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;

LAB0:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 6324U);
    t3 = (t0 + 6374);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t16 = (t0 + 2152U);
    t17 = *((char **)t16);
    t16 = (t0 + 6324U);
    t18 = (t0 + 6376);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 1;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t23 = (1 - 0);
    t9 = (t23 * 1);
    t9 = (t9 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t9;
    t24 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t17, t16, t18, t20);
    if (t24 != 0)
        goto LAB5;

LAB6:    t30 = (t0 + 2152U);
    t31 = *((char **)t30);
    t30 = (t0 + 6324U);
    t32 = (t0 + 6378);
    t35 = (t34 + 0U);
    t36 = (t35 + 0U);
    *((int *)t36) = 0;
    t36 = (t35 + 4U);
    *((int *)t36) = 1;
    t36 = (t35 + 8U);
    *((int *)t36) = 1;
    t37 = (1 - 0);
    t9 = (t37 * 1);
    t9 = (t9 + 1);
    t36 = (t35 + 12U);
    *((unsigned int *)t36) = t9;
    t38 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t31, t30, t32, t34);
    if (t38 != 0)
        goto LAB7;

LAB8:
LAB9:    t44 = (t0 + 1512U);
    t45 = *((char **)t44);
    t44 = (t0 + 4368);
    t46 = (t44 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memcpy(t49, t45, 4U);
    xsi_driver_first_trans_fast_port(t44);

LAB2:    t50 = (t0 + 4160);
    *((int *)t50) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1032U);
    t11 = *((char **)t7);
    t7 = (t0 + 4368);
    t12 = (t7 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 4U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB5:    t22 = (t0 + 1192U);
    t25 = *((char **)t22);
    t22 = (t0 + 4368);
    t26 = (t22 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB2;

LAB7:    t36 = (t0 + 1352U);
    t39 = *((char **)t36);
    t36 = (t0 + 4368);
    t40 = (t36 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t39, 4U);
    xsi_driver_first_trans_fast_port(t36);
    goto LAB2;

LAB10:    goto LAB2;

}


extern void work_a_0926234580_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0926234580_3212880686_p_0,(void *)work_a_0926234580_3212880686_p_1,(void *)work_a_0926234580_3212880686_p_2};
	xsi_register_didat("work_a_0926234580_3212880686", "isim/t_isim_beh.exe.sim/work/a_0926234580_3212880686.didat");
	xsi_register_executes(pe);
}

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
static const char *ng0 = "D:/hw32/comparator2bit/comparator.vhd";



static void work_a_2683404259_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3312);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t9 = (1 - 1);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t4 = (t8 + t12);
    t13 = *((unsigned char *)t4);
    t14 = (t0 + 1352U);
    t15 = *((char **)t14);
    t16 = (1 - 1);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t14 = (t15 + t19);
    t20 = *((unsigned char *)t14);
    t21 = (t13 > t20);
    if (t21 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t9 = (1 - 1);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t2 = (t4 + t12);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 1352U);
    t8 = *((char **)t5);
    t16 = (1 - 1);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t5 = (t8 + t19);
    t3 = *((unsigned char *)t5);
    t6 = (t1 < t3);
    if (t6 != 0)
        goto LAB11;

LAB12:    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t9 = (0 - 1);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t2 = (t4 + t12);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 1352U);
    t8 = *((char **)t5);
    t16 = (0 - 1);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t5 = (t8 + t19);
    t3 = *((unsigned char *)t5);
    t6 = (t1 > t3);
    if (t6 != 0)
        goto LAB13;

LAB14:    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t9 = (0 - 1);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t2 = (t4 + t12);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 1352U);
    t8 = *((char **)t5);
    t16 = (0 - 1);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t5 = (t8 + t19);
    t3 = *((unsigned char *)t5);
    t6 = (t1 < t3);
    if (t6 != 0)
        goto LAB15;

LAB16:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3392);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t14 = *((char **)t8);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3456);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t14 = *((char **)t8);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3520);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t14 = *((char **)t8);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(50, ng0);
    t22 = (t0 + 3392);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    *((unsigned char *)t26) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t22);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3456);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t14 = *((char **)t8);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 3520);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t14 = *((char **)t8);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

LAB11:    xsi_set_current_line(54, ng0);
    t14 = (t0 + 3392);
    t15 = (t14 + 56U);
    t22 = *((char **)t15);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3456);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t14 = *((char **)t8);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 3520);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t14 = *((char **)t8);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

LAB13:    xsi_set_current_line(58, ng0);
    t14 = (t0 + 3392);
    t15 = (t14 + 56U);
    t22 = *((char **)t15);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3456);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t14 = *((char **)t8);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 3520);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t14 = *((char **)t8);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

LAB15:    xsi_set_current_line(62, ng0);
    t14 = (t0 + 3392);
    t15 = (t14 + 56U);
    t22 = *((char **)t15);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3456);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t14 = *((char **)t8);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3520);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t14 = *((char **)t8);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

}


extern void work_a_2683404259_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2683404259_3212880686_p_0};
	xsi_register_didat("work_a_2683404259_3212880686", "isim/testbenchofcomparator_isim_beh.exe.sim/work/a_2683404259_3212880686.didat");
	xsi_register_executes(pe);
}

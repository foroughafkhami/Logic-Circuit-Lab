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
static const char *ng0 = "D:/hwone/encoder4to3/encoder4to3.vhd";



static void work_a_0168046571_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    unsigned char t23;
    char *t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned char t37;
    unsigned char t38;
    char *t39;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned char t52;
    unsigned char t53;
    char *t54;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;

LAB0:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (3 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB3;

LAB4:    t16 = (t0 + 1032U);
    t17 = *((char **)t16);
    t18 = (2 - 3);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = (t22 == (unsigned char)3);
    if (t23 != 0)
        goto LAB5;

LAB6:    t31 = (t0 + 1032U);
    t32 = *((char **)t31);
    t33 = (1 - 3);
    t34 = (t33 * -1);
    t35 = (1U * t34);
    t36 = (0 + t35);
    t31 = (t32 + t36);
    t37 = *((unsigned char *)t31);
    t38 = (t37 == (unsigned char)3);
    if (t38 != 0)
        goto LAB7;

LAB8:    t46 = (t0 + 1032U);
    t47 = *((char **)t46);
    t48 = (0 - 3);
    t49 = (t48 * -1);
    t50 = (1U * t49);
    t51 = (0 + t50);
    t46 = (t47 + t51);
    t52 = *((unsigned char *)t46);
    t53 = (t52 == (unsigned char)3);
    if (t53 != 0)
        goto LAB9;

LAB10:
LAB11:    t61 = (t0 + 4256);
    t63 = (t0 + 2752);
    t64 = (t63 + 56U);
    t65 = *((char **)t64);
    t66 = (t65 + 56U);
    t67 = *((char **)t66);
    memcpy(t67, t61, 3U);
    xsi_driver_first_trans_fast_port(t63);

LAB2:    t68 = (t0 + 2672);
    *((int *)t68) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 4244);
    t11 = (t0 + 2752);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 3U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB2;

LAB5:    t24 = (t0 + 4247);
    t26 = (t0 + 2752);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t24, 3U);
    xsi_driver_first_trans_fast_port(t26);
    goto LAB2;

LAB7:    t39 = (t0 + 4250);
    t41 = (t0 + 2752);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t39, 3U);
    xsi_driver_first_trans_fast_port(t41);
    goto LAB2;

LAB9:    t54 = (t0 + 4253);
    t56 = (t0 + 2752);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    memcpy(t60, t54, 3U);
    xsi_driver_first_trans_fast_port(t56);
    goto LAB2;

LAB12:    goto LAB2;

}


extern void work_a_0168046571_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0168046571_3212880686_p_0};
	xsi_register_didat("work_a_0168046571_3212880686", "isim/test_encoder_isim_beh.exe.sim/work/a_0168046571_3212880686.didat");
	xsi_register_executes(pe);
}

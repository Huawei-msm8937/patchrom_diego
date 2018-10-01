.class public interface abstract Landroid/rms/HwSysResource;
.super Ljava/lang/Object;
.source "HwSysResource.java"


# static fields
.field public static final ALARM:I = 0xd

.field public static final ALOWED:I = 0x1

.field public static final ANR:I = 0x18

.field public static final APP:I = 0x13

.field public static final APPOPS:I = 0xe

.field public static final APPSERVICE:I = 0x12

.field public static final BASE:I = 0xa

.field public static final BROADCAST:I = 0xb

.field public static final BUDDYINFO:I = 0x64

.field public static final CPU:I = 0x15

.field public static final CURSOR:I = 0x11

.field public static final DELAY:I = 0x19

.field public static final DELAYED:I = 0x3

.field public static final DROPPED:I = 0x2

.field public static final FACTOR_BASE:I = 0x64

.field public static final FRAMELOST:I = 0x1a

.field public static final IO:I = 0x16

.field public static final IOABN_DEV_LIFE_TIME_A:I = 0x1d

.field public static final IOABN_DEV_LIFE_TIME_B:I = 0x1e

.field public static final IOABN_DEV_RSV_BLK:I = 0x1f

.field public static final IOABN_WR_TOTAL:I = 0x1c

.field public static final IOABN_WR_UID:I = 0x1b

.field public static final MAINSERVICES:I = 0x65

.field public static final MEMORY:I = 0x14

.field public static final NOTIFICATION:I = 0xa

.field public static final PIDS:I = 0x10

.field public static final PROCESS_APP_HW:I = 0x1

.field public static final PROCESS_APP_THIRDPARTY:I = 0x0

.field public static final PROCESS_SYSTEM:I = 0x2

.field public static final PROCESS_TOTAL:I = 0x3

.field public static final PROCESS_TYPE_NUM:I = 0x4

.field public static final PROCESS_UNKNOW:I = -0x1

.field public static final PROVIDER:I = 0xf

.field public static final RECEIVER:I = 0xc

.field public static final SCHEDGROUP:I = 0x17

.field public static final TOTAL:I = 0x1f


# virtual methods
.method public abstract acquire(ILjava/lang/String;I)I
.end method

.method public abstract acquire(ILjava/lang/String;II)I
.end method

.method public abstract acquire(Landroid/net/Uri;Landroid/database/IContentObserver;Landroid/os/Bundle;)I
.end method

.method public abstract clear(ILjava/lang/String;I)V
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
.end method

.method public abstract query()Landroid/os/Bundle;
.end method

.method public abstract release(ILjava/lang/String;I)V
.end method

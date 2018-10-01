.class public abstract Landroid/os/IMultiWinService$Stub;
.super Landroid/os/Binder;
.source "IMultiWinService.java"

# interfaces
.implements Landroid/os/IMultiWinService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IMultiWinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IMultiWinService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IMultiWinService"

.field static final TRANSACTION_buildMultiWinIntent:I = 0x27

.field static final TRANSACTION_changeFrameSize:I = 0xf

.field static final TRANSACTION_checkAndHandleLaunchOnWhiteListApp:I = 0x10

.field static final TRANSACTION_clearAllTokens:I = 0xc

.field static final TRANSACTION_clearMultiWinTaskList:I = 0x29

.field static final TRANSACTION_getFlagMW:I = 0x31

.field static final TRANSACTION_getFocusMultiWinAbsoluteFrame:I = 0x14

.field static final TRANSACTION_getFocusMultiWinFrame:I = 0x13

.field static final TRANSACTION_getIsTopMWFlag:I = 0x2e

.field static final TRANSACTION_getMWAppNames:I = 0x18

.field static final TRANSACTION_getMWMaintained:I = 0x17

.field static final TRANSACTION_getMWNonSystemAppNames:I = 0x19

.field static final TRANSACTION_getMultiWinCount:I = 0x9

.field static final TRANSACTION_getMultiWinFrame:I = 0x4

.field static final TRANSACTION_getMultiWinFrameByTaskID:I = 0x34

.field static final TRANSACTION_getMultiWinFramePosition:I = 0x2a

.field static final TRANSACTION_getNextTaskAtPos:I = 0x1f

.field static final TRANSACTION_getResumedActivities:I = 0x11

.field static final TRANSACTION_getResumedPackages:I = 0x32

.field static final TRANSACTION_getResumedTasks:I = 0x20

.field static final TRANSACTION_getRootMWFlag:I = 0x30

.field static final TRANSACTION_getTaskCountAtPos:I = 0x28

.field static final TRANSACTION_getTaskPosition:I = 0x22

.field static final TRANSACTION_getTopAreaLaunchFlag:I = 0x2f

.field static final TRANSACTION_hasMwSession:I = 0x21

.field static final TRANSACTION_isCloseChangeViewVisible:I = 0xd

.field static final TRANSACTION_isLauncherVisible:I = 0x15

.field static final TRANSACTION_isMultiWin:I = 0x1

.field static final TRANSACTION_isMultiWinNotificationIntent:I = 0x2c

.field static final TRANSACTION_isOrientationBlacklist:I = 0x38

.field static final TRANSACTION_isPartOfMWTaskStack:I = 0x2b

.field static final TRANSACTION_isPartOfMultiWindow:I = 0xa

.field static final TRANSACTION_isResumedMultiWin:I = 0x2d

.field static final TRANSACTION_isRootIntent:I = 0xb

.field static final TRANSACTION_isWhitelisted:I = 0x1a

.field static final TRANSACTION_moveTask:I = 0x1c

.field static final TRANSACTION_registerMWCallBack:I = 0x25

.field static final TRANSACTION_registerMultiWin:I = 0x2

.field static final TRANSACTION_registerThirdPartyCallBack:I = 0x35

.field static final TRANSACTION_releaseMultiWin:I = 0x3

.field static final TRANSACTION_releaseTokens:I = 0x1b

.field static final TRANSACTION_removeFromTaskList:I = 0x1d

.field static final TRANSACTION_setCloseChangeViewInvisible:I = 0xe

.field static final TRANSACTION_setFrameSize:I = 0x37

.field static final TRANSACTION_setLauncherVisibility:I = 0x16

.field static final TRANSACTION_setMWOtherTaskID:I = 0x12

.field static final TRANSACTION_setMultiWinResumed:I = 0x5

.field static final TRANSACTION_setMultiWinSoftKeyBoardInvisible:I = 0x8

.field static final TRANSACTION_setMultiWinSoftKeyBoardVisible:I = 0x7

.field static final TRANSACTION_systemRunning:I = 0x33

.field static final TRANSACTION_unregisterMWCallBack:I = 0x26

.field static final TRANSACTION_unregisterThirdPartyCallBack:I = 0x36

.field static final TRANSACTION_updateFrameVisibility:I = 0x24

.field static final TRANSACTION_updateMultiWinFrame:I = 0x23

.field static final TRANSACTION_updateMultiWinPosition:I = 0x6

.field static final TRANSACTION_updateTaskList:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.IMultiWinService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IMultiWinService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IMultiWinService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.os.IMultiWinService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IMultiWinService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/os/IMultiWinService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/os/IMultiWinService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IMultiWinService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 693
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->isMultiWin(Landroid/os/IBinder;)Z

    move-result v3

    .line 54
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :sswitch_2
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 64
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 71
    .local v1, "_arg1":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 72
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IMultiWinService$Stub;->registerMultiWin(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)I

    move-result v3

    .line 73
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {v1, p3, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 68
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/Intent;
    goto :goto_1

    .line 80
    .restart local v2    # "_arg2":Landroid/os/IBinder;
    .restart local v3    # "_result":I
    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :sswitch_3
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 89
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->releaseMultiWin(Landroid/os/IBinder;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_4
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 99
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 100
    sget-object v7, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 105
    .local v1, "_arg1":Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/os/IMultiWinService$Stub;->getMultiWinFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v1, :cond_4

    .line 108
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-virtual {v1, p3, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 103
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Rect;
    goto :goto_2

    .line 112
    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :sswitch_5
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 122
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v1, v6

    .line 123
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/os/IMultiWinService$Stub;->setMultiWinResumed(Landroid/os/IBinder;Z)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_5
    move v1, v5

    .line 122
    goto :goto_3

    .line 129
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_6
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 133
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 134
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 140
    .local v1, "_arg1":Landroid/content/Intent;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 141
    .restart local v2    # "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IMultiWinService$Stub;->updateMultiWinPosition(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)I

    move-result v3

    .line 142
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/Intent;
    goto :goto_4

    .line 148
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    :sswitch_7
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 152
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 153
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/os/IMultiWinService$Stub;->setMultiWinSoftKeyBoardVisible(Landroid/os/IBinder;I)I

    move-result v3

    .line 154
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_8
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 163
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->setMultiWinSoftKeyBoardInvisible(Landroid/os/IBinder;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 169
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_9
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->getMultiWinCount()I

    move-result v3

    .line 171
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 177
    .end local v3    # "_result":I
    :sswitch_a
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->isPartOfMultiWindow(I)Z

    move-result v3

    .line 181
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v3, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 187
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_b
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    .line 190
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 195
    .local v0, "_arg0":Landroid/content/Intent;
    :goto_5
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->isRootIntent(Landroid/content/Intent;)Z

    move-result v3

    .line 196
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v3, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 193
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_result":Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_5

    .line 202
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_c
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->clearAllTokens()V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 209
    :sswitch_d
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->isCloseChangeViewVisible()Z

    move-result v3

    .line 211
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    if-eqz v3, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 217
    .end local v3    # "_result":Z
    :sswitch_e
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->setCloseChangeViewInvisible()V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 224
    :sswitch_f
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 227
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->changeFrameSize(I)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 233
    .end local v0    # "_arg0":I
    :sswitch_10
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    .line 236
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 242
    .local v0, "_arg0":Landroid/content/Intent;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    .line 243
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 249
    .local v1, "_arg1":Landroid/content/Intent;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 250
    .restart local v2    # "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IMultiWinService$Stub;->checkAndHandleLaunchOnWhiteListApp(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/IBinder;)I

    move-result v3

    .line 251
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    if-eqz v0, :cond_d

    .line 254
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    invoke-virtual {v0, p3, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 239
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_6

    .line 246
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/Intent;
    goto :goto_7

    .line 258
    .restart local v2    # "_arg2":Landroid/os/IBinder;
    .restart local v3    # "_result":I
    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 264
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :sswitch_11
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->getResumedActivities()[Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    .end local v3    # "_result":[Ljava/lang/String;
    :sswitch_12
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 276
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/os/IMultiWinService$Stub;->setMWOtherTaskID(Landroid/os/IBinder;I)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 283
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :sswitch_13
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_e

    .line 286
    sget-object v7, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 291
    .local v0, "_arg0":Landroid/graphics/Rect;
    :goto_8
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->getFocusMultiWinFrame(Landroid/graphics/Rect;)I

    move-result v3

    .line 292
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    if-eqz v0, :cond_f

    .line 295
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    invoke-virtual {v0, p3, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 289
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v3    # "_result":I
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Rect;
    goto :goto_8

    .line 299
    .restart local v3    # "_result":I
    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 305
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v3    # "_result":I
    :sswitch_14
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_10

    .line 308
    sget-object v7, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 313
    .restart local v0    # "_arg0":Landroid/graphics/Rect;
    :goto_9
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->getFocusMultiWinAbsoluteFrame(Landroid/graphics/Rect;)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    if-eqz v0, :cond_11

    .line 316
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    invoke-virtual {v0, p3, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 311
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Rect;
    goto :goto_9

    .line 320
    :cond_11
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 326
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :sswitch_15
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->isLauncherVisible()Z

    move-result v3

    .line 328
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v3, :cond_12

    move v5, v6

    :cond_12
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 334
    .end local v3    # "_result":Z
    :sswitch_16
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_13

    move v0, v6

    .line 337
    .local v0, "_arg0":Z
    :goto_a
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->setLauncherVisibility(Z)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_13
    move v0, v5

    .line 336
    goto :goto_a

    .line 343
    :sswitch_17
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->getMWMaintained()Z

    move-result v3

    .line 345
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    if-eqz v3, :cond_14

    move v5, v6

    :cond_14
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 351
    .end local v3    # "_result":Z
    :sswitch_18
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->getMWAppNames()Ljava/util/List;

    move-result-object v4

    .line 353
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 359
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_19
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->getMWNonSystemAppNames()Ljava/util/List;

    move-result-object v4

    .line 361
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 367
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1a
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->isWhitelisted(Ljava/lang/String;)Z

    move-result v3

    .line 371
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v3, :cond_15

    move v5, v6

    :cond_15
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 377
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_1b
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 380
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->releaseTokens(I)V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 386
    .end local v0    # "_arg0":I
    :sswitch_1c
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 390
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_16

    move v1, v6

    .line 392
    .local v1, "_arg1":Z
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 393
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IMultiWinService$Stub;->moveTask(IZI)V

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :cond_16
    move v1, v5

    .line 390
    goto :goto_b

    .line 399
    .end local v0    # "_arg0":I
    :sswitch_1d
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 402
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->removeFromTaskList(I)V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 408
    .end local v0    # "_arg0":I
    :sswitch_1e
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 412
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 413
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/os/IMultiWinService$Stub;->updateTaskList(II)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 419
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_1f
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 423
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 424
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/os/IMultiWinService$Stub;->getNextTaskAtPos(II)I

    move-result v3

    .line 425
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 431
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_20
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->getResumedTasks()[I

    move-result-object v3

    .line 433
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 439
    .end local v3    # "_result":[I
    :sswitch_21
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->hasMwSession()Z

    move-result v3

    .line 441
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v3, :cond_17

    move v5, v6

    :cond_17
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 447
    .end local v3    # "_result":Z
    :sswitch_22
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 450
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->getTaskPosition(I)I

    move-result v3

    .line 451
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 457
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_23
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_18

    .line 460
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 465
    .local v0, "_arg0":Landroid/graphics/Rect;
    :goto_c
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->updateMultiWinFrame(Landroid/graphics/Rect;)V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 463
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :cond_18
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Rect;
    goto :goto_c

    .line 471
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :sswitch_24
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19

    move v0, v6

    .line 475
    .local v0, "_arg0":Z
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1a

    move v1, v6

    .line 476
    .local v1, "_arg1":Z
    :goto_e
    invoke-virtual {p0, v0, v1}, Landroid/os/IMultiWinService$Stub;->updateFrameVisibility(ZZ)V

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_19
    move v0, v5

    .line 473
    goto :goto_d

    .restart local v0    # "_arg0":Z
    :cond_1a
    move v1, v5

    .line 475
    goto :goto_e

    .line 482
    .end local v0    # "_arg0":Z
    :sswitch_25
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IMultiWinServiceCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMultiWinServiceCallBack;

    move-result-object v0

    .line 485
    .local v0, "_arg0":Landroid/os/IMultiWinServiceCallBack;
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->registerMWCallBack(Landroid/os/IMultiWinServiceCallBack;)Z

    move-result v3

    .line 486
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    if-eqz v3, :cond_1b

    move v5, v6

    :cond_1b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 492
    .end local v0    # "_arg0":Landroid/os/IMultiWinServiceCallBack;
    .end local v3    # "_result":Z
    :sswitch_26
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IMultiWinServiceCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMultiWinServiceCallBack;

    move-result-object v0

    .line 495
    .restart local v0    # "_arg0":Landroid/os/IMultiWinServiceCallBack;
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->unregisterMWCallBack(Landroid/os/IMultiWinServiceCallBack;)Z

    move-result v3

    .line 496
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    if-eqz v3, :cond_1c

    move v5, v6

    :cond_1c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 502
    .end local v0    # "_arg0":Landroid/os/IMultiWinServiceCallBack;
    .end local v3    # "_result":Z
    :sswitch_27
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1d

    .line 505
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 510
    .local v0, "_arg0":Landroid/content/Intent;
    :goto_f
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->buildMultiWinIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 511
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    if-eqz v3, :cond_1e

    .line 513
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    invoke-virtual {v3, p3, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 508
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_result":Landroid/content/Intent;
    :cond_1d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_f

    .line 517
    .restart local v3    # "_result":Landroid/content/Intent;
    :cond_1e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 523
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_result":Landroid/content/Intent;
    :sswitch_28
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 526
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->getTaskCountAtPos(I)I

    move-result v3

    .line 527
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 533
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_29
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->clearMultiWinTaskList()V

    .line 535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 540
    :sswitch_2a
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 543
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->getMultiWinFramePosition(Landroid/os/IBinder;)I

    move-result v3

    .line 544
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 550
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :sswitch_2b
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 553
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->isPartOfMWTaskStack(I)Z

    move-result v3

    .line 554
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    if-eqz v3, :cond_1f

    move v5, v6

    :cond_1f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 560
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_2c
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 563
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->isMultiWinNotificationIntent(I)Z

    move-result v3

    .line 564
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    if-eqz v3, :cond_20

    move v5, v6

    :cond_20
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 570
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_2d
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 573
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->isResumedMultiWin(Landroid/os/IBinder;)Z

    move-result v3

    .line 574
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    if-eqz v3, :cond_21

    move v5, v6

    :cond_21
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 580
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :sswitch_2e
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->getIsTopMWFlag()I

    move-result v3

    .line 582
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 588
    .end local v3    # "_result":I
    :sswitch_2f
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->getTopAreaLaunchFlag()I

    move-result v3

    .line 590
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 596
    .end local v3    # "_result":I
    :sswitch_30
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->getRootMWFlag()I

    move-result v3

    .line 598
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 604
    .end local v3    # "_result":I
    :sswitch_31
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->getFlagMW()I

    move-result v3

    .line 606
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 612
    .end local v3    # "_result":I
    :sswitch_32
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->getResumedPackages()Ljava/util/List;

    move-result-object v4

    .line 614
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 620
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_33
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Landroid/os/IMultiWinService$Stub;->systemRunning()V

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 627
    :sswitch_34
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 631
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_22

    .line 632
    sget-object v7, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 637
    .local v1, "_arg1":Landroid/graphics/Rect;
    :goto_10
    invoke-virtual {p0, v0, v1}, Landroid/os/IMultiWinService$Stub;->getMultiWinFrameByTaskID(ILandroid/graphics/Rect;)V

    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    if-eqz v1, :cond_23

    .line 640
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    invoke-virtual {v1, p3, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 635
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :cond_22
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Rect;
    goto :goto_10

    .line 644
    :cond_23
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 650
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :sswitch_35
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IMWThirdpartyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMWThirdpartyCallback;

    move-result-object v0

    .line 653
    .local v0, "_arg0":Landroid/os/IMWThirdpartyCallback;
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->registerThirdPartyCallBack(Landroid/os/IMWThirdpartyCallback;)Z

    move-result v3

    .line 654
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    if-eqz v3, :cond_24

    move v5, v6

    :cond_24
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 660
    .end local v0    # "_arg0":Landroid/os/IMWThirdpartyCallback;
    .end local v3    # "_result":Z
    :sswitch_36
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IMWThirdpartyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMWThirdpartyCallback;

    move-result-object v0

    .line 663
    .restart local v0    # "_arg0":Landroid/os/IMWThirdpartyCallback;
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->unregisterThirdPartyCallBack(Landroid/os/IMWThirdpartyCallback;)Z

    move-result v3

    .line 664
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    if-eqz v3, :cond_25

    move v5, v6

    :cond_25
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 670
    .end local v0    # "_arg0":Landroid/os/IMWThirdpartyCallback;
    .end local v3    # "_result":Z
    :sswitch_37
    const-string v5, "android.os.IMultiWinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26

    .line 673
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 678
    .local v0, "_arg0":Landroid/graphics/Rect;
    :goto_11
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->setFrameSize(Landroid/graphics/Rect;)V

    .line 679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 676
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :cond_26
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Rect;
    goto :goto_11

    .line 684
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :sswitch_38
    const-string v7, "android.os.IMultiWinService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IMultiWinService$Stub;->isOrientationBlacklist(Ljava/lang/String;)Z

    move-result v3

    .line 688
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    if-eqz v3, :cond_27

    move v5, v6

    :cond_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

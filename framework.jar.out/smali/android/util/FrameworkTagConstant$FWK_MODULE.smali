.class public final enum Landroid/util/FrameworkTagConstant$FWK_MODULE;
.super Ljava/lang/Enum;
.source "FrameworkTagConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/FrameworkTagConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FWK_MODULE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/util/FrameworkTagConstant$FWK_MODULE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum ALARM:Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum AM:Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum ANIMATION:Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum DEAMON:Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum FWK:Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum INPUT:Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum NM:Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum PM:Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum POWER:Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum POWERONOFF:Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum SECURITY:Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum SENSOR:Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum SERVICES:Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum STORAGE:Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum USERS:Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum VIEW:Landroid/util/FrameworkTagConstant$FWK_MODULE;

.field public static final enum WM:Landroid/util/FrameworkTagConstant$FWK_MODULE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 260
    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "FWK"

    invoke-direct {v0, v1, v3}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->FWK:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "AM"

    invoke-direct {v0, v1, v4}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->AM:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "PM"

    invoke-direct {v0, v1, v5}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->PM:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "WM"

    invoke-direct {v0, v1, v6}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->WM:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "NM"

    invoke-direct {v0, v1, v7}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->NM:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "ALARM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->ALARM:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "POWER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->POWER:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "DEAMON"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->DEAMON:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "SERVICES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->SERVICES:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "USERS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->USERS:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "STORAGE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->STORAGE:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "SENSOR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->SENSOR:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "VIEW"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->VIEW:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "SECURITY"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->SECURITY:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "ANIMATION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->ANIMATION:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "INPUT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->INPUT:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    new-instance v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    const-string v1, "POWERONOFF"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Landroid/util/FrameworkTagConstant$FWK_MODULE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->POWERONOFF:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    .line 259
    const/16 v0, 0x11

    new-array v0, v0, [Landroid/util/FrameworkTagConstant$FWK_MODULE;

    sget-object v1, Landroid/util/FrameworkTagConstant$FWK_MODULE;->FWK:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v1, v0, v3

    sget-object v1, Landroid/util/FrameworkTagConstant$FWK_MODULE;->AM:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v1, v0, v4

    sget-object v1, Landroid/util/FrameworkTagConstant$FWK_MODULE;->PM:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v1, v0, v5

    sget-object v1, Landroid/util/FrameworkTagConstant$FWK_MODULE;->WM:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v1, v0, v6

    sget-object v1, Landroid/util/FrameworkTagConstant$FWK_MODULE;->NM:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/util/FrameworkTagConstant$FWK_MODULE;->ALARM:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/util/FrameworkTagConstant$FWK_MODULE;->POWER:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/util/FrameworkTagConstant$FWK_MODULE;->DEAMON:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/util/FrameworkTagConstant$FWK_MODULE;->SERVICES:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/util/FrameworkTagConstant$FWK_MODULE;->USERS:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/util/FrameworkTagConstant$FWK_MODULE;->STORAGE:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/util/FrameworkTagConstant$FWK_MODULE;->SENSOR:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/util/FrameworkTagConstant$FWK_MODULE;->VIEW:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/util/FrameworkTagConstant$FWK_MODULE;->SECURITY:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/util/FrameworkTagConstant$FWK_MODULE;->ANIMATION:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/util/FrameworkTagConstant$FWK_MODULE;->INPUT:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/util/FrameworkTagConstant$FWK_MODULE;->POWERONOFF:Landroid/util/FrameworkTagConstant$FWK_MODULE;

    aput-object v2, v0, v1

    sput-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->$VALUES:[Landroid/util/FrameworkTagConstant$FWK_MODULE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/FrameworkTagConstant$FWK_MODULE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 259
    const-class v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;

    return-object v0
.end method

.method public static values()[Landroid/util/FrameworkTagConstant$FWK_MODULE;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Landroid/util/FrameworkTagConstant$FWK_MODULE;->$VALUES:[Landroid/util/FrameworkTagConstant$FWK_MODULE;

    invoke-virtual {v0}, [Landroid/util/FrameworkTagConstant$FWK_MODULE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/FrameworkTagConstant$FWK_MODULE;

    return-object v0
.end method

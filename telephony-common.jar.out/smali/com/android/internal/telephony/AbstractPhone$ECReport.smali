.class public final enum Lcom/android/internal/telephony/AbstractPhone$ECReport;
.super Ljava/lang/Enum;
.source "AbstractPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AbstractPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECReport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/AbstractPhone$ECReport;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/AbstractPhone$ECReport;

.field public static final enum ESTABLISH_SUCCESS_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

.field public static final enum INNER_HANDLE_ERROR_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

.field public static final enum LOCAL_ILLEGAL_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

.field public static final enum LOCAL_NO_PERMISSION_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

.field public static final enum MT_EC_NOTIFICATION_ENEVT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

.field public static final enum NETWORK_UNKNOWN_FAULT_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

.field public static final enum REMOTE_ILLEGAL_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

.field public static final enum REMOTE_NO_PERMISSION_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

.field public static final enum SECURE_INFO_ERASE_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

.field public static final enum SECURE_MODE_PWD_RESET_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

.field public static final enum SIGN_VERIFY_FAILURE_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

.field public static final enum TIMER_EXPIRE_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;

    const-string v1, "INNER_HANDLE_ERROR_EVENT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AbstractPhone$ECReport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;->INNER_HANDLE_ERROR_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;

    const-string v1, "TIMER_EXPIRE_EVENT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/AbstractPhone$ECReport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;->TIMER_EXPIRE_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;

    const-string v1, "LOCAL_NO_PERMISSION_EVENT"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/AbstractPhone$ECReport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;->LOCAL_NO_PERMISSION_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;

    const-string v1, "REMOTE_NO_PERMISSION_EVENT"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/AbstractPhone$ECReport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;->REMOTE_NO_PERMISSION_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;

    const-string v1, "LOCAL_ILLEGAL_EVENT"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/AbstractPhone$ECReport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;->LOCAL_ILLEGAL_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;

    const-string v1, "REMOTE_ILLEGAL_EVENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AbstractPhone$ECReport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;->REMOTE_ILLEGAL_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;

    const-string v1, "NETWORK_UNKNOWN_FAULT_EVENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AbstractPhone$ECReport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;->NETWORK_UNKNOWN_FAULT_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;

    const-string v1, "SIGN_VERIFY_FAILURE_EVENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AbstractPhone$ECReport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;->SIGN_VERIFY_FAILURE_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;

    const-string v1, "ESTABLISH_SUCCESS_EVENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AbstractPhone$ECReport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;->ESTABLISH_SUCCESS_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;

    const-string v1, "MT_EC_NOTIFICATION_ENEVT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AbstractPhone$ECReport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;->MT_EC_NOTIFICATION_ENEVT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;

    const-string v1, "SECURE_INFO_ERASE_EVENT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AbstractPhone$ECReport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;->SECURE_INFO_ERASE_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;

    const-string v1, "SECURE_MODE_PWD_RESET_EVENT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AbstractPhone$ECReport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;->SECURE_MODE_PWD_RESET_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    .line 35
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/internal/telephony/AbstractPhone$ECReport;

    sget-object v1, Lcom/android/internal/telephony/AbstractPhone$ECReport;->INNER_HANDLE_ERROR_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/AbstractPhone$ECReport;->TIMER_EXPIRE_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/AbstractPhone$ECReport;->LOCAL_NO_PERMISSION_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/AbstractPhone$ECReport;->REMOTE_NO_PERMISSION_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/AbstractPhone$ECReport;->LOCAL_ILLEGAL_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/AbstractPhone$ECReport;->REMOTE_ILLEGAL_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/AbstractPhone$ECReport;->NETWORK_UNKNOWN_FAULT_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/AbstractPhone$ECReport;->SIGN_VERIFY_FAILURE_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/AbstractPhone$ECReport;->ESTABLISH_SUCCESS_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/AbstractPhone$ECReport;->MT_EC_NOTIFICATION_ENEVT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/AbstractPhone$ECReport;->SECURE_INFO_ERASE_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/AbstractPhone$ECReport;->SECURE_MODE_PWD_RESET_EVENT:Lcom/android/internal/telephony/AbstractPhone$ECReport;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;->$VALUES:[Lcom/android/internal/telephony/AbstractPhone$ECReport;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/AbstractPhone$ECReport;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/AbstractPhone$ECReport;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/internal/telephony/AbstractPhone$ECReport;->$VALUES:[Lcom/android/internal/telephony/AbstractPhone$ECReport;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/AbstractPhone$ECReport;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/AbstractPhone$ECReport;

    return-object v0
.end method

.class Lcom/android/internal/telephony/imsphone/HwImsPhone$Cf;
.super Ljava/lang/Object;
.source "HwImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/HwImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cf"
.end annotation


# instance fields
.field final mIsCfu:Z

.field final mOnComplete:Landroid/os/Message;

.field final mSetCfNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "cfNumber"    # Ljava/lang/String;
    .param p2, "isCfu"    # Z
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone$Cf;->mSetCfNumber:Ljava/lang/String;

    .line 183
    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone$Cf;->mIsCfu:Z

    .line 184
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone$Cf;->mOnComplete:Landroid/os/Message;

    .line 185
    return-void
.end method


# virtual methods
.method getCfNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone$Cf;->mSetCfNumber:Ljava/lang/String;

    return-object v0
.end method

.method getIsCfu()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone$Cf;->mIsCfu:Z

    return v0
.end method

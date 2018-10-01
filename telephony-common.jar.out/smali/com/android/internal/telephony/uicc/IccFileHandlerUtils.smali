.class public Lcom/android/internal/telephony/uicc/IccFileHandlerUtils;
.super Ljava/lang/Object;
.source "IccFileHandlerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParentApp(Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .param p0, "iccFileHandler"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 7
    if-eqz p0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 10
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

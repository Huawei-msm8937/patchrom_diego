.class public abstract Lcom/android/internal/telephony/cat/AbstractCatService;
.super Landroid/os/Handler;
.source "AbstractCatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/AbstractCatService$CatServiceReference;
    }
.end annotation


# instance fields
.field mReference:Lcom/android/internal/telephony/cat/AbstractCatService$CatServiceReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 24
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwUiccManager()Lcom/android/internal/telephony/HwUiccManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwUiccManager;->createHwCatServiceReference()Lcom/android/internal/telephony/cat/AbstractCatService$CatServiceReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/AbstractCatService;->mReference:Lcom/android/internal/telephony/cat/AbstractCatService$CatServiceReference;

    .line 26
    return-void
.end method


# virtual methods
.method public getLanguageNotificationCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/telephony/cat/AbstractCatService;->mReference:Lcom/android/internal/telephony/cat/AbstractCatService$CatServiceReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/cat/AbstractCatService$CatServiceReference;->getLanguageNotificationCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 0
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    .line 32
    return-void
.end method

.method public setLanguageNotificationCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "strLanguageNotificationCode"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/cat/AbstractCatService;->mReference:Lcom/android/internal/telephony/cat/AbstractCatService$CatServiceReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cat/AbstractCatService$CatServiceReference;->setLanguageNotificationCode(Ljava/lang/String;)V

    .line 41
    return-void
.end method

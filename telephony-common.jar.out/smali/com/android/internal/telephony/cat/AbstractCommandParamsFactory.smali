.class public abstract Lcom/android/internal/telephony/cat/AbstractCommandParamsFactory;
.super Landroid/os/Handler;
.source "AbstractCommandParamsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/AbstractCommandParamsFactory$CommandParamsFactoryReference;
    }
.end annotation


# instance fields
.field mReference:Lcom/android/internal/telephony/cat/AbstractCommandParamsFactory$CommandParamsFactoryReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 27
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwUiccManager()Lcom/android/internal/telephony/HwUiccManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwUiccManager;->createHwCommandParamsFactoryReference(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/AbstractCommandParamsFactory$CommandParamsFactoryReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/AbstractCommandParamsFactory;->mReference:Lcom/android/internal/telephony/cat/AbstractCommandParamsFactory$CommandParamsFactoryReference;

    .line 29
    return-void
.end method


# virtual methods
.method public processLanguageNotification(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/cat/AbstractCommandParamsFactory;->mReference:Lcom/android/internal/telephony/cat/AbstractCommandParamsFactory$CommandParamsFactoryReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/cat/AbstractCommandParamsFactory$CommandParamsFactoryReference;->processLanguageNotification(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.class public interface abstract Lcom/android/internal/telephony/cat/AbstractCommandParamsFactory$CommandParamsFactoryReference;
.super Ljava/lang/Object;
.source "AbstractCommandParamsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/AbstractCommandParamsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommandParamsFactoryReference"
.end annotation


# virtual methods
.method public abstract processLanguageNotification(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
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
.end method

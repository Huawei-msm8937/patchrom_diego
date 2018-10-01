.class Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyDefaultImpl;
.super Ljava/lang/Object;
.source "HwAddonTelephonyFactory.java"

# interfaces
.implements Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HwAddonTelephonyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HwAddonTelephonyDefaultImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/HwAddonTelephonyFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/HwAddonTelephonyFactory$1;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/telephony/HwAddonTelephonyFactory$HwAddonTelephonyDefaultImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefault4GSlotId()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

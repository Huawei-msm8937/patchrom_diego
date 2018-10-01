.class public Lcom/android/internal/telephony/OnsDisplayParams;
.super Ljava/lang/Object;
.source "OnsDisplayParams.java"


# instance fields
.field public mPlmn:Ljava/lang/String;

.field public mRule:I

.field public mShowPlmn:Z

.field public mShowSpn:Z

.field public mSpn:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "showSpn"    # Z
    .param p2, "showPlmn"    # Z
    .param p3, "rule"    # I
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "spn"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/android/internal/telephony/OnsDisplayParams;->mShowSpn:Z

    .line 13
    iput-boolean p2, p0, Lcom/android/internal/telephony/OnsDisplayParams;->mShowPlmn:Z

    .line 14
    iput p3, p0, Lcom/android/internal/telephony/OnsDisplayParams;->mRule:I

    .line 15
    iput-object p4, p0, Lcom/android/internal/telephony/OnsDisplayParams;->mPlmn:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/android/internal/telephony/OnsDisplayParams;->mSpn:Ljava/lang/String;

    .line 17
    return-void
.end method

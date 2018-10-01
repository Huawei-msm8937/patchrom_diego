.class public Lcom/android/server/util/AbsUserBehaviourRecord;
.super Ljava/lang/Object;
.source "AbsUserBehaviourRecord.java"


# static fields
.field private static record:Lcom/android/server/util/AbsUserBehaviourRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/util/AbsUserBehaviourRecord;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public appEnterRecord(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 19
    return-void
.end method

.method public appExitRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "backreson"    # Ljava/lang/String;

    .prologue
    .line 23
    return-void
.end method
